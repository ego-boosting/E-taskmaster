class Public::HomesController < ApplicationController
  def top
    @user = current_user
    @note = Note.new
    # margin-bottomを効かせないための条件を渡す
    @top = true
    # TODO top page ランダムな今日のフレーズの実装
    # -----------------------------------
    # 今日のおすすめフレーズをランダムに表示させる
    # 一日毎にフレーズが変わるようにする
    # 一日の判定にupdated_atを使用する
    # その日の初回のアクセスでランダムに一つupdated_atを今日の日時に更新することで、以降のアクセスで同じものが表示できる
    # 管理者が新たにフレーズを投稿したときに、今日のフレーズにならないようにcreated_atの今日のレコードは除く

    #------------------------------------
    from = Time.current.beginning_of_day
    to = Time.current.end_of_day

    #updated_atが今日の日付のものを取得.なければnil
    @suggest = Suggest.find_by(updated_at: from..to)

    unless @suggest # 昨日より前のレコードからランダムに一件取得
      max_count = Suggest.where("created_at < ?", Time.current.beginning_of_day).count # 昨日より前のレコードの総数
      if max_count > 0 # max_countが、0より大きければ場合以下を実行する
        random_num = (1..max_count).to_a.sample # ランダムな数を取得する
        @suggest = Suggest.where("created_at < ?", Time.current.beginning_of_day).offset(random_num - 1).limit(1).first # 上からN番目のレコードを1件取得
        @suggest.touch # 今日の日付にupdated_atを更新する(touchにより)
      end
    end

    if user_signed_in?
      activities = current_user.activities.where(read: false).order(created_at: :desc)
      activities_array = []
      activities.each do |activity|
        if activity.subject.user.id != current_user.id
          activities_array.push(activity)
        end
      end
      @activities = Kaminari.paginate_array(activities_array).page(params[:page]).per(8)
    end
  end
end
