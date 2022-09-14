# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 管理者側のpassword
Admin.create(email: "eigo@eigo.com",password:"123456")

User.create(name: "kazueigo", email: "kazukipump7@gmail.com", is_deleted: false, password: "123456")

User.create(name: "hogefuga", email: "hoge@fuga.com", is_deleted: false, password: "123456")

Suggest.create(suggest_word: "once-in-a-lifetime", suggest_english: "This is a once-in-a-life opportunity, so don't let it slip", suggest_japanese: "これは、人生に一度の機会だから逃すなよ", admin_id: 1)

Suggest.create(suggest_word: "sloppy", suggest_english: "The bridge collapsed soon after completion because of the sloppy construction work.", suggest_japanese: "雑な建設作業のせいでその橋は完成後すぐに崩壊した。", admin_id: 1)

Suggest.create(suggest_word: "figure sth out", suggest_english: "Should I ask the mentor or figure it out myself?", suggest_japanese: "メンターに聞くのと自分で考えるのどっちがいいかな？", admin_id: 1)

Suggest.create(suggest_word: "slack off", suggest_english: "Everyone slacks off on Friday.", suggest_japanese: "金曜日はみんなダラダラしている", admin_id: 1)

Suggest.create(suggest_word: "black and white", suggest_english: "Things in life are never black and white.", suggest_japanese: "人生における物事というのは決して白黒はっきりしたものではない。", admin_id: 1)

Suggest.create(suggest_word: "watch out for sth/sb", suggest_english: "Watch out for that broken stair at the bottom of the staircase!", suggest_japanese: "階段の下の壊れている段に気をつけてね!", admin_id: 1)

Suggest.create(suggest_word: "overpaid", suggest_english: "Many pepole think that politician are overpaid", suggest_japanese: "たくさんの人が政治家はもらいすぎだと思っている。", admin_id: 1)

Suggest.create(suggest_word: "grab sth", suggest_english: "I'm going to downstairs to grab some food for lunch.", suggest_japanese: "ご飯買いに下に行ってくるわ!", admin_id: 1)

Suggest.create(suggest_word: "cut sb off", suggest_english: "Sorry to cut you off, but I have a question about that last point you made.", suggest_japanese: "途中で遮って申し訳ないんですが、その最後の点に関して質問があります。", admin_id: 1)

Suggest.create(suggest_word: "freebie", suggest_english: "I got a freebie from the website for completing their survey.", suggest_japanese: "そのサイトでアンケートでもらって無料で貰った。", admin_id: 1)

Suggest.create(suggest_word: "crear-cut", suggest_english: "Dr.Hiruruku's instructions were very clear-cut.", suggest_japanese: "Dr.ヒルルクの指示はとても明確だった。", admin_id: 1)

Suggest.create(suggest_word: "gray area", suggest_english: "There's a substantial amount of gray area between what is legal and what is not.", suggest_japanese: "何が合法で何が違法かに関しては大量のグレーゾーンが存在する。", admin_id: 1)

Suggest.create(suggest_word: "fiddy", suggest_english: "It always requiresa six digix SMS code just to log in. Very fiddy ", suggest_japanese: "ログインのためだけにいつも6行のSMSコードを要求されるんだよ。めっちゃ面倒くさい。", admin_id: 1)

Suggest.create(suggest_word: "crystal-clear", suggest_english: "It's crystal-crear that Taichi is going to be late to the party.", suggest_japanese: "太一がパーティに遅れる事になるのは明らかだな。", admin_id: 1)

Suggest.create(suggest_word: "downtime", suggest_english: "I'm having some downtime tonight.", suggest_japanese: "今夜はゆっくり時間を過ごす予定だ。", admin_id: 1)

Suggest.create(suggest_word: "check sth out", suggest_english: "For more pictures, please check out our instagram!", suggest_japanese: "もっと写真を見たい人は私たちのインスタグラムをチェックしてね!", admin_id: 1)

Suggest.create(suggest_word: "hold sth/sb up", suggest_english: "Sorry for holding you up from going home.", suggest_japanese: "家に帰るところだったのに時間を取らせてごめんね。", admin_id: 1)

Suggest.create(suggest_word: "legit", suggest_english: "Does this website look legit to you?", suggest_japanese: "このサイトちゃんとしている？", admin_id: 1)

Suggest.create(suggest_word: "catch up", suggest_english: "I miss you so mouch! I really wanna catch up with you.", suggest_japanese: "君が居なくてとても寂しいよ。ほんまに会いたい。", admin_id: 1)

Suggest.create(suggest_word: "hyped", suggest_english: "I'm feeling really hyped about this new restaurant.", suggest_japanese: "この新しいレストラン、すごいワクワクするよ。", admin_id: 1)

Suggest.create(suggest_word: "attention-seeking", suggest_english: "Narcissists are often attention-seeking.", suggest_japanese: "ナルシストにはかまってしちゃんが多い。", admin_id: 1)

Suggest.create(suggest_word: "get into sth", suggest_english: "I wanna ask you how you got into English.", suggest_japanese: "どのように英語にハマっていったんですか？", admin_id: 1)

Suggest.create(suggest_word: "cut corners", suggest_english: "If you wanna be more efficient, it's important to find where you can cut corners.", suggest_japanese: "もっと効率的になりたいなら、手を抜ける部分を見つけることが重要だよ。", admin_id: 1)

Suggest.create(suggest_word: "pretty much", suggest_english: "I've given you pretty much all the money in my wallet.", suggest_japanese: "俺の財布に入っているお金は君にほぼ全てあげたよ。", admin_id: 1)

Suggest.create(suggest_word: "big deal", suggest_english: "Chill out. It's not a big deal.", suggest_japanese: "落ち着けよ。大した問題じゃねぇからさ。", admin_id: 1)

Suggest.create(suggest_word: "spot sth/sb", suggest_english: "I spotted Dobby on the train this morning.", suggest_japanese: "今朝電車でドビーを見つけたよ。", admin_id: 1)

Suggest.create(suggest_word: "on the dot", suggest_english: "Let's catch up at 6 o'clock on the dot.", suggest_japanese: "6時ちょうどに会おう。", admin_id: 1)

Suggest.create(suggest_word: "bring sth up", suggest_english: "You don't wanna talk about it ? You brought it up, didn't you ?", suggest_japanese: "その話はしたくないだって？お前が言い出したんだろ？", admin_id: 1)

Suggest.create(suggest_word: "pricey", suggest_english: "Foot at the concert is pretty pricey. Should we eat before we go?", suggest_japanese: "コンサートでの食べ物結構高いよ。行く前に食べていく?", admin_id: 1)

Suggest.create(suggest_word: "touchy subject", suggest_english: "He's lack of money right now is a touchy subject.", suggest_japanese: "今お金がないということは彼に撮って触れられたくない話なんだ。", admin_id: 1)

Suggest.create(suggest_word: "one-off", suggest_english: "The expense incurred this year to construct the building is a one off cost.", suggest_japanese: "今年こそそのビルを建てるのにかかった費用は一度限りのコストだ。", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)

Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)
Suggest.create(suggest_word: "", suggest_english: "", suggest_japanese: "", admin_id: 1)