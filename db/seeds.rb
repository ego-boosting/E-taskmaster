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

Suggest.create(suggest_word: "catch up", suggest_english: "I miss you so much! I really wanna catch up with you.", suggest_japanese: "君が居なくてとても寂しいよ。ほんまに会いたい。", admin_id: 1)

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

Suggest.create(suggest_word: "bug sb", suggest_english: "Don't bug me, I really need to concentrate.", suggest_japanese: "邪魔しないで、本当に集中しないといけないから。", admin_id: 1)

Suggest.create(suggest_word: "rusty", suggest_english: "As I haven't played handball for a while, I'm pretty rusty.", suggest_japanese: "しばらくハンドボールしてないからもう下手だよ。", admin_id: 1)

Suggest.create(suggest_word: "bright and early", suggest_english: "As I wanted to get a few things done before work, I had breakfast bright and early today.", suggest_japanese: "仕事にいく前にいくつか終わらせたいことがあったから、今日は朝早くに朝食を取ったんだ。", admin_id: 1)

Suggest.create(suggest_word: "give sb a buzz", suggest_english: "I'll give you a buzz when I get there tomorrow.", suggest_japanese: "明日そこに着いたら電話します。", admin_id: 1)

Suggest.create(suggest_word: "work on sth", suggest_english: "I need to work on being more puctual.", suggest_japanese: "私はもう少し時間に遅れないようにする必要があるんだよね。", admin_id: 1)

Suggest.create(suggest_word: "in-your-face", suggest_english: "I hate the in-your-face anti-smoking campaign.", suggest_japanese: "私はあの攻撃的な禁煙キャンペーン嫌いですね。", admin_id: 1)

Suggest.create(suggest_word: "come clean", suggest_english: "I'll come clean and admit that I haven't done my homework. I'm sorry.", suggest_japanese: "正直に宿題をやっていないと認めます。すいません。", admin_id: 1)

Suggest.create(suggest_word: "downer", suggest_english: "The news is a bit of a downer.", suggest_japanese: "そのニュースにはちょっとガッカリだね。", admin_id: 1)

Suggest.create(suggest_word: "packed", suggest_english: "The nightclub gets packed at around 1 a.m.", suggest_japanese: "そのナイトクラブは午前1時ごろにいっぱいになる。", admin_id: 1)

Suggest.create(suggest_word: "bail sb out", suggest_english: "You can't expect your parents to bail you out of trouble all the time.", suggest_japanese: "何かあったら両親が助けてくれると思っちゃだめだよ。", admin_id: 1)

Suggest.create(suggest_word: "get one's head around sth", suggest_english: "I'm struggling to get my head around this new project.", suggest_japanese: "僕は、中々この新しいプログラムを理解できないでいる。", admin_id: 1)

Suggest.create(suggest_word: "cut to the chase", suggest_english: "Since we've only got five minutes, I'm going to cut to the chase.", suggest_japanese: "5分しかないので、要点を言いますね。", admin_id: 1)

Suggest.create(suggest_word: "flag sth", suggest_english: "There's a mistake in this report. Let's Flag it in the meeting.", suggest_japanese: "この報告書、ミスがあるよ。会議で知らせよう。", admin_id: 1)

Suggest.create(suggest_word: "old-school", suggest_english: "This song is so old-school.", suggest_japanese: "この曲、超懐かしい", admin_id: 1)

Suggest.create(suggest_word: "get one's hopes up", suggest_english: "I got my hopes up for nothing.", suggest_japanese: "無駄に期待しちゃった。", admin_id: 1)

Suggest.create(suggest_word: "behind sb's back", suggest_english: "He's so angry because his wife bought a new car behind his back.", suggest_japanese: "彼は奥さんが隠れて新しい車を買ったのですごく怒っていいる。", admin_id: 1)

Suggest.create(suggest_word: "get back to sb", suggest_english: "I'll get back to you once I figure that out.", suggest_japanese: "分かったらまた連絡する。", admin_id: 1)

Suggest.create(suggest_word: "freak (sb) out", suggest_english: "Don't freak me out.", suggest_japanese: "おどかすなよ。", admin_id: 1)

Suggest.create(suggest_word: "put sth together", suggest_english: "I'm putting together the itinerary", suggest_japanese: "私は休暇の為の旅程を組んでいる。", admin_id: 1)

Suggest.create(suggest_word: "sounds like a plan", suggest_english: "Sleeping all day sounds like a plan.", suggest_japanese: "一日中寝るで決まり。", admin_id: 1)

Suggest.create(suggest_word: "drop sth/sb off", suggest_english: "On your to work can you please drop the kids off at school?", suggest_japanese: "仕事に行く途中で子供を学校まで送っていってくれる？", admin_id: 1)

Suggest.create(suggest_word: "attention to detail", suggest_english: "Japanese people's attention to detail is just incredible.", suggest_japanese: "日本人の細かく気を配れる能力はただただ素晴らしい。", admin_id: 1)

Suggest.create(suggest_word: "sick of", suggest_english: "I'm sick of eating apples. I wanna eat something different.", suggest_japanese: "りんごには飽きたよ。何か違うものを食べたい。", admin_id: 1)

Suggest.create(suggest_word: "tricky", suggest_english: "Surfing can be tricky untill you've practiced a few times.", suggest_japanese: "あのゴルフコースは前にプレーしたことがないと少し厄介だ。", admin_id: 1)

Suggest.create(suggest_word: "slammed", suggest_english: "Actually,I can't go after all. I'm slammed with homework.", suggest_japanese: "やっぱり結局行けないわ。宿題でめっちゃ忙しい。", admin_id: 1)

Suggest.create(suggest_word: "in a rush", suggest_english: "He always seems to be in a rush.", suggest_japanese: "彼はいつも急いでいるように見える。", admin_id: 1)

Suggest.create(suggest_word: "nice-to-have", suggest_english: "Let's decide what items are must-haves and nice-to-haves on our wish lish.", suggest_japanese: "欲しいものリストの中で何が絶対に必要なもので何があった方が良いものか決めよう。", admin_id: 1)

Suggest.create(suggest_word: 'tell me about it', suggest_english: 'He complained that traffic was swful, so I was like "Tell me about it."', suggest_japanese: "彼が渋滞がひどかったって文句言ったから、俺も「本当だよな」って。", admin_id: 1)

Suggest.create(suggest_word: "wing it", suggest_english: "You want to have something to say confidently in your interview, right? So don't just wing it.", suggest_japanese: "面接では何か自信を持って言えることがあった方がいいでしょ？", admin_id: 1)

Suggest.create(suggest_word: "trun sth/sb down", suggest_english: "I was really full, but it's hard to turn down food that my girlfriend makes for me, isn't it?", suggest_japanese: "ものすごいお腹いっぱいだったけど、彼女が僕のために作ってくれたごはんを断ること出来ないでしょ？", admin_id: 1)

Suggest.create(suggest_word: "keep one's cool", suggest_english: "I need to keep my cool to work through this problem methodically.", suggest_japanese: "この問題を順序立てて解決するためには冷静でいる必要があるんだ。", admin_id: 1)

Suggest.create(suggest_word: "fill in for sb", suggest_english: "I'm filling in for him this week, as she is on holidays.", suggest_japanese: "今週は僕が彼の代わりをしています。彼女は休暇中なので。", admin_id: 1)

Suggest.create(suggest_word: "keeep one's voice down", suggest_english: "We should keep our voices down in the library, as pepole are trying to concentrate on their studies.", suggest_japanese: "みんな勉強に集中しようとしてるから図書館では静かにすべきだよ。", admin_id: 1)

Suggest.create(suggest_word: "bite the bullet", suggest_english: "I'm finally bite the bullet and got a haircut.", suggest_japanese: "私はついに思い切って髪を切った。", admin_id: 1)

Suggest.create(suggest_word: "clear sth up", suggest_english: "This new methodically could help clear up cross-cultural misunderstandings", suggest_japanese: "この新しい方法論を配分日間における誤解を解消するのに役立つかもしれない。", admin_id: 1)

Suggest.create(suggest_word: "shattered", suggest_english: "I'm shattered that I'm going to miss out on the function on friday.", suggest_japanese: "金融日の飲み会に行けないなんてとても残念だよ。", admin_id: 1)

Suggest.create(suggest_word: "give credit", suggest_english: "We should give your team credit for thier great ideas.", suggest_japanese: "君はチームの素晴らしいアイディアをほめるべきだよ。", admin_id: 1)

Suggest.create(suggest_word: "close enough", suggest_english: "This new laptop is not exactly perfect, but it's close enough.", suggest_japanese: "この新しいノートパソコンは完璧とは言えないけどかなり良い線いってるよ。", admin_id: 1)

Suggest.create(suggest_word: "look sth down", suggest_english: "We've got the report locked down it's ready to submit now.", suggest_japanese: "レポートは完成もう提出できるよ。", admin_id: 1)

Suggest.create(suggest_word: "deal-breaker", suggest_english: "Snoring is literally a deal-breaker for me. I'm like Don't be  within a five-meter radius of me if you snore.", suggest_japanese: "いびきかく人と付き合うの本当無理だな。いびきかくなる半径5メートル以内に居ないでって感じ。", admin_id: 1)

Suggest.create(suggest_word: "loaded", suggest_english: "He is loaded from renting his house on Airbnb.", suggest_japanese: "彼は Airbnb で家を貸して儲かっている。", admin_id: 1)

Suggest.create(suggest_word: "double-check sth/(that)", suggest_english: "Can you double-check that you locked the house?", suggest_japanese: "家に鍵かけたか再確認してくれる?", admin_id: 1)

Suggest.create(suggest_word: "cutting-edge", suggest_english: "AI and similar cutting-edge technologies raise many complex ethical issues.", suggest_japanese: "人工知能やそれ日に似た最先端技術は多くの複雑な論理的問題を引き起こす。", admin_id: 1)

Suggest.create(suggest_word: "break for lunch", suggest_english: "Let's break for lunch and come back to this problem later.", suggest_japanese: "とりあえずお昼ご飯にして、この問題は後でまた考えよう。", admin_id: 1)

Suggest.create(suggest_word: "stretch", suggest_english: "It's a stretch to say Yuki is a nice person.", suggest_japanese: "ゆきが良い人っていうのは無理があるよ。", admin_id: 1)

Suggest.create(suggest_word: "on the right track", suggest_english: "Are you on the right track", suggest_japanese: "そのタスク、順調に進んでる？", admin_id: 1)

Suggest.create(suggest_word: "get one's hands on sth", suggest_english: "I managed to get my hands on the new iPhone on launch day.", suggest_japanese: "なんとか発売日に新しいiphoneを手に入れたよ。", admin_id: 1)

Suggest.create(suggest_word: "kick sth off", suggest_english: "I'll kick the meeting off early tomorrow mornin, so try not to be late.", suggest_japanese: "明日朝早くにミーティングを開始しますので、遅れないよおうに。", admin_id: 1)

Suggest.create(suggest_word: "on its last legs", suggest_english: "Your business is on its last legs.", suggest_japanese: "君のビジネスは死にかかっているよ。", admin_id: 1)

Suggest.create(suggest_word: "pluck sth out of thin air", suggest_english: "I can't trust anything Yuki says, as she just plucks things out of thin air.", suggest_japanese: "ゆきはただテキトーなこと言うから、彼女の発言はどれも信用できない。", admin_id: 1)

Suggest.create(suggest_word: "make a move", suggest_english: "It's getting pretty late, so I might make a move.", suggest_japanese: "もう結構遅くなってきたから、行こうかな。", admin_id: 1)

Suggest.create(suggest_word: "selling point", suggest_english: "My selling point as an employee is my experience as a strategy consultant.", suggest_japanese: "自分のアピールポイントは戦略コンサルタントとしての経験だね。", admin_id: 1)

Suggest.create(suggest_word: "all-in on sth", suggest_english: "I'm all-in on that horse.", suggest_japanese: "俺はあの馬に全賭けだ。", admin_id: 1)

Suggest.create(suggest_word: "light at the end of the tunnel", suggest_english: "No matter what you've going through, there's always light at the end of the tunnel. So just keep working towards it.", suggest_japanese: "君がどんなことを経験していようと、常に苦しみの先には光があるんだ。だから、ただそれに向かって努力し続けなさい。", admin_id: 1)

Suggest.create(suggest_word: "party animal", suggest_english: "I'm tired of being judged for being a party animal.", suggest_japanese: "パリピだってことで判断されるのは、もううんざりだよ。", admin_id: 1)

Suggest.create(suggest_word: "wordy", suggest_english: "The email is a bit wordy, so I'm struggling to upderstand the point that he's trying to make.", suggest_japanese: "メールが少し長すぎて、彼が何を言おうとしているのかちょっと理解できない。", admin_id: 1)

Suggest.create(suggest_word: "surefire", suggest_english: "He will be a surefire winner at the election.", suggest_japanese: "彼が選挙で勝利するのは間違いない。", admin_id: 1)

Suggest.create(suggest_word: "up in the air", suggest_english: "The company's growth plan is still up in the air.", suggest_japanese: "その会社の成長計画は、まだ決まってない。", admin_id: 1)

Suggest.create(suggest_word: "worth a shot", suggest_english: "I don't know if it will succeed, but it's worth a shot.", suggest_japanese: "成功するか分からないけど、試す価値はあるよ。", admin_id: 1)

Suggest.create(suggest_word: "character", suggest_english: "She is a character.", suggest_japanese: "彼女は個性が強い。", admin_id: 1)

Suggest.create(suggest_word: "sharp", suggest_english: "He lerans things really quickly. He's very sharp.", suggest_japanese: "彼は浦東に学習スピードが速いよ。とても頭が良いね。", admin_id: 1)

Suggest.create(suggest_word: "burning desire", suggest_english: "I have a burning desire to score the maximum amount of goals possible.", suggest_japanese: "俺は、とにかく多くのゴールを決めたいと強く思っているよ。", admin_id: 1)

Suggest.create(suggest_word: "fly on the wall", suggest_english: "I wish I were a fly on the wall when they broke up.", suggest_japanese: "あいつらが別れるところを隠れて見たかったな。", admin_id: 1)

Suggest.create(suggest_word: "gibberish", suggest_english: "I didn't understand Ryoya because he was speaking gibberish.", suggest_japanese: "りょうやは意味不明な言葉を話していて、理解ができなかった。", admin_id: 1)

Suggest.create(suggest_word: "egg sb on", suggest_english: "Stop egging me on to do a stupid thing when I'm drunk because you know I'm going to do it.", suggest_japanese: "酔ってる時にバカなことするようにそそのかすのやめてよ。俺がやっちゃうのわかってるんだから。", admin_id: 1)

Suggest.create(suggest_word: "face-time", suggest_english: "I'm so expected to got some face-time with you in Tokyo!", suggest_japanese: "東京で君と直接会って話す時間を過ごすことが、すごい楽しみだよ。", admin_id: 1)

Suggest.create(suggest_word: "pull an all-nighter", suggest_english: "I pulled an all-nighter last night to finish his homework.", suggest_japanese: "僕は昨夜宿題を終わらせるために徹夜した。", admin_id: 1)

Suggest.create(suggest_word: "leave it there", suggest_english: "I've been talking for two hours, so I'll just leave it there.", suggest_japanese: "もう2時間も話しているから、この辺でやめておきます。", admin_id: 1)

Suggest.create(suggest_word: "down-to-earth", suggest_english: "She's the most down-to-earth person I've ever met.", suggest_japanese: "彼女ほど現実的な人には人には人には会ったことない。", admin_id: 1)

Suggest.create(suggest_word: "jump the gun", suggest_english: "Is that a good company to work for? I haven't even done the interview yet, so this might be jumping the gun a bit.", suggest_japanese: "それって良い会社なの？面接すらまだ受けてないからちょっと早まってるかもしれないけど。", admin_id: 1)

Suggest.create(suggest_word: "back sth up", suggest_english: "Can you back up your claim that she doesn't like me?", suggest_japanese: "彼女が俺のこと好きじゃないって言う君の主張を証明してよ。", admin_id: 1)

Suggest.create(suggest_word: "hands down", suggest_english: "He is the best character on the show. Hands down.", suggest_japanese: "彼はこの番組で最高の登場人物だよ。間違いない。", admin_id: 1)

Suggest.create(suggest_word: "dump sth down", suggest_english: "What do you mean? Can you dump your explanation down for me?", suggest_japanese: "どう言う意味？簡単に説明してくれる?", admin_id: 1)

Suggest.create(suggest_word: "on the fly", suggest_english: "Let's make decisions on the fly.", suggest_japanese: "その場で決定しよう。", admin_id: 1)

Suggest.create(suggest_word: "fishy", suggest_english: "I have spotted something fishy here.", suggest_japanese: "何か怪しいものを見つけたよ。", admin_id: 1)