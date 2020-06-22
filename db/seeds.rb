# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(nickname: 'けんたろう', image:File.open("./db/fixtures/cat.jpg"), content: '初めまして。健太郎と申します。洋服が大好きで、友達にコーディネートするのが得意です。私のアドバイスで、違った自分を発見してください！', birthday: '1998-12-11', age: '２０代', gender: '男性', email: 'kentar11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: true, phone_number: 8011111111)
User.create!(nickname: 'けんじ', image:File.open("./db/fixtures/dog.jpg"), content: 'こんにちは＾＾着こなしがわからない人は結局自分がわかっていないのと同じです。着こなしを理解して、自分をもっと理解しましょう。', birthday: '1985-12-11', age: '3０代', gender: '男性', email: 'kenj11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: true, phone_number: 8011111112)
User.create!(nickname: 'かな', image:File.open("./db/fixtures/daisies.jpg"), content: '学生時代の夢は、有名雑誌のスタイリストになる事でした。友達からも、かなのアドバイスが的確で嬉しいとよく言われます。皆さんのお役に立ちたいです。', birthday: '1998-12-11', age: '２０代', gender: '女性', email: 'kan11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: true, phone_number: 8011111113)
User.create!(nickname: 'みき', image:File.open("./db/fixtures/cat.jpg"), content: 'レジャーが大好きで、仕事が休みの日は旅行に出かけます。レジャー関係の服装のコーディネートはまかせてください。きっといい思い出ができますよ♪', birthday: '1985-12-11', age: '3０代', gender: '女性', email: 'mik11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: true, phone_number: 8011111114)
User.create!(nickname: 'かんな', image:File.open("./db/fixtures/dog.jpg"), content: '彼氏の心を捕まえて離さない、ゆるふわコーデはできてますか？誰からも愛される可愛い女に慣れる着こなしを教えちゃいます！今日から違う自分を楽しみましょっ！！！', birthday: '1998-12-11', age: '２０代', gender: '女性', email: 'kann11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: true, phone_number: 8011111115)
User.create!(nickname: 'こうた', image:File.open("./db/fixtures/daisies.jpg"), content: 'スーツは大事な仕事を支えます。着こなし次第で、契約が取れないなんてこともあるかも！？営業職の男性向けに、同じ営業の僕からアドバイスできると思います。', birthday: '1998-12-11', age: '２０代', gender: '男性', email: 'kot11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: true, phone_number: 8011111116)
User.create!(nickname: 'あきお', image:File.open("./db/fixtures/cat.jpg"), content: '男の人生は４０代からです。毎日仕事場と会社の往復で疲れ切っていませんか？思い切って服装を変えることで人生がいい方向に開けるかも知れません。', birthday: '1973-12-11', age: '4０代', gender: '男性', email: 'aki11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: true, phone_number: 8011111117)
User.create!(nickname: 'ゆうこ', image:File.open("./db/fixtures/dog.jpg"), content: '妹のコーディネートを考えるのが昔から好きでした。服は大好きで１００着以上持っています。ママ友からも服の相談によくのっています。皆さんに喜んでもらいたいです。', birthday: '1985-12-11', age: '3０代', gender: '女性', email: 'yuk11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: true, phone_number: 8011111118)
User.create!(nickname: 'りか', image:File.open("./db/fixtures/daisies.jpg"), content: '４０代の服装は２０代と同じでないほうがいいです。今更、どんな服装をしたらいいかわからないというあなたへ、元プロのスタイリストがアドバイスします。', birthday: '1973-12-11', age: '4０代', gender: '女性', email: 'rik11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: true, phone_number: 8011111119)
User.create!(nickname: 'ただお', image:File.open("./db/fixtures/cat.jpg"), content: '大学生活を満喫したい人、集まれ！でも、毎日着ていく服を揃えるのが大変って人、集まれ！少ない服で着回しの達人の僕が、こっそり秘密を教えます。', birthday: '1998-12-11', age: '２０代', gender: '男性', email: 'tada11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: true, phone_number: 8011111110)
User.create!(nickname: 'ももこ', image:File.open("./db/fixtures/dog.jpg"), content: '今度娘が結婚します。子供の結婚式は初めてなのでどういうものをきたらいいかさっぱりわかりません。相手の親御さんに引かれないような着こなしはありますか？', birthday: '1963-12-11', age: '5０代以上', gender: '女性', email: 'momok11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: false, phone_number: 8011111121)
User.create!(nickname: 'さとる', image:File.open("./db/fixtures/daisies.jpg"), content: '友人と独立して会社を立ち上げる予定です。得意先周りに印象付けるために清潔感溢れる服装を心がけたいです。気取らず、誰でも親を持ってくれそうなスタイルはありますか？', birthday: '1985-12-11', age: '3０代', gender: '男性', email: 'sator11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: false, phone_number: 8011111122)
User.create!(nickname: 'ゆみ', image:File.open("./db/fixtures/cat.jpg"), content: '私はポッチャリ体型が昔からコンプレックスです。うまく体型を隠せるような服装がしたいと思っています。服装もだけど、アクセサリーなんかもアドバイスいただけると嬉しいです。', birthday: '1998-12-11', age: '２０代', gender: '女性', email: 'yum11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: false, phone_number: 8011111123)
User.create!(nickname: 'ゆうじ', image:File.open("./db/fixtures/dog.jpg"), content: 'メタボ体型が気になっています。来月転職活動を始めるので、心機一転、LEONに出てくるようなちょいわる親父を目指したいです。ブランドものを着てみたいですが、わかる方いらっしゃいますか？', birthday: '1973-12-11', age: '4０代', gender: '男性', email: 'yuj11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: false, phone_number: 8011111124)
User.create!(nickname: 'ゆか', image:File.open("./db/fixtures/daisies.jpg"), content: '今度旦那と映画を見に行きます。新婚時代に戻ったつもりで、ワンピースを着て行きたいです。主婦のため散財できません。手ごろな値段で良いお店はありますか？', birthday: '1985-12-11', age: '3０代', gender: '女性', email: 'yuk11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: false, phone_number: 8011111125)
User.create!(nickname: 'かいと', image:File.open("./db/fixtures/cat.jpg"), content: '今年の秋に海外留学でアメリカに行きます。アメリカンなスタイルで海外を満喫したいので、コーディネートをよろしくお願いします。予算は１万円以内です。', birthday: '1998-12-11', age: '２０代', gender: '男性', email: 'kait11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: false, phone_number: 8011111126)
User.create!(nickname: 'れな', image:File.open("./db/fixtures/dog.jpg"), content: '年齢を重ねるたびに体型が変わってしまって、自分の思ったような服が着れません。今度同窓会があるのでそれなりの服をきて行きたいのですが、困っています。', birthday: '1963-12-11', age: '5０代以上', gender: '女性', email: 'ren11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: false, phone_number: 8011111127)
User.create!(nickname: 'ゆうと', image:File.open("./db/fixtures/daisies.jpg"), content: '彼女ができないので、少しでも自分を変えたいと思いジムに通い始めました。今ではジムが良いにハマってしまって、私服もスポーティにしたいがどうすればいいかわかりません。', birthday: '1998-12-11', age: '２０代', gender: '男性', email: 'yut11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: false, phone_number: 8011111128)
User.create!(nickname: 'さくら', image:File.open("./db/fixtures/cat.jpg"), content: '婚活に力を入れています。派手すぎず、かと言って地味すぎないクールで仕事ができる系のキャリアウーマンの着こなしを模索しています。', birthday: '1985-12-11', age: '3０代',  gender: '女性', email: 'sakur11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: false, phone_number: 8011111129)
User.create!(nickname: 'あさこ', image:File.open("./db/fixtures/daisies.jpg"), content: '私は幼稚園の先生をしています。毎日子供が相手なので可愛い服装ができません。でもお洒落は楽しみたいので、アドバイスお願いします。', birthday: '1998-12-11', age: '２０代', gender: '女性', email: 'asak11@gmail.com', password: 'password', password_confirmation: 'password', name: '相模健太郎', address: '新宿', adviser: false, phone_number: 8011111120)

users = User.all
user  = users.first
following = users[17..20]
followers = users[16..20]
following.each { |followed| user.follow!(followed) }
followers.each { |follower| follower.follow!(user) }

Comment.create!(review: '大変ためになりました。またよろしくお願いします。', user_id: 1, rate: 4.5)
Comment.create!(review: 'レスポンスも遅かったし、アドバイスもためになりませんでした。もう少し、時間に遅れないようにしてください。', user_id: 1, rate: 1.5)
Comment.create!(review: '私に似合う服を一生懸命探してくれました。でも、あまり自分で似合っているとは思いません。でも楽しかったです。', user_id: 1, rate: 3.5)
Comment.create!(review: 'まあまあです。緊張していらっしゃったのか、声が聞き取りにくくよくわかりませんでした。服は気に入っています。', user_id: 1, rate: 2.5)
Comment.create!(review: 'ずっと待ち合わせの場所にいたのに、30分も遅刻してきました。アドバイスも的確だと思わず、なんだかなあという気分です。', user_id: 2, rate: 0.5)
Comment.create!(review: '常に笑顔でいらっしゃって、とてもいい１日を過ごしました。おかげさまで、彼とのデートが成功しました。ありがとうございます。', user_id: 2, rate: 5.0)
Comment.create!(review: 'アドバイスをいただいたのですが、あまり好きではありませんでした。もう少し、相手のことを理解してほしいです。', user_id: 2, rate: 3.0)
Comment.create!(review: '雨だったせいもあり、会話が弾みませんでした。このアプリは洋服選びなので、それも期待していましたが、センスがあいませんでした。', user_id: 2, rate: 2.0)
Comment.create!(review: '話しやすくて、とても素敵な方でした。質問も的確にして頂いてアドバイスしやすかったです。', user_id: 11, rate: 4.5)
Comment.create!(review: '予算は二百円と言われ、正直「そんな服ないし」と思いました。フリマで見つけるしかないとアドバイスすることしかできませんでした。', user_id: 11, rate: 1.5)
Comment.create!(review: '楽しい方でしたが、服に関しては何をアドバイスしても「えー、こんなのやだ」としか言っていただけず、悲しい。', user_id: 11, rate: 3.5)
Comment.create!(review: '待ち合わせの時間に30分遅刻してこられて、「時間延長して」と言われましたが、その分追加料金も払ってもらえず、コーヒーを奢ってくれただけでした。', user_id: 11, rate: 2.5)
Comment.create!(review: '結局待ち合わせに来ず、レビューでいきなり悪口を書かれました。このお客さん、登録抹消してほしい。', user_id: 12, rate: 0.5)
Comment.create!(review: '人間的にとても信頼のおける方でした。また、機会があればぜひお願いします。また会いたいなと思える素敵な人です。', user_id: 12, rate: 5.0)
Comment.create!(review: '１日楽しく過ごせたと思ったのですが、別れ際に、「予算よりオーバーしてた。」と言われました。先に言って欲しかったです。', user_id: 12, rate: 3.0)
Comment.create!(review: '日時を間違えてこられました。気持ちはわかるのですが、返金には応じかねます …', user_id: 12, rate: 2.0)