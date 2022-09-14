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

Suggest.create(suggest_word: "", suggest_english: "I got a freebie from the website for completing their survey.", suggest_japanese: "そのサイトでアンケートでもらって無料で貰った。", admin_id: 1)

Suggest.create(suggest_word: "crear-cut", suggest_english: "Dr.Hiruruku's instructions were very clear-cut.", suggest_japanese: "Dr.ヒルルクの指示はとても明確だった。", admin_id: 1)

Suggest.create(suggest_word: "gray area", suggest_english: "There's a substantial amount of gray area between what is legal and what is not.", suggest_japanese: "何が合法で何が違法かに関しては大量のグレーゾーンが存在する。", admin_id: 1)

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