body=["中日ドラゴンズ、高橋周平選手の動画です。阪神の抑えスアレス投手から
    劇的な逆転サヨナラ3ランホームランを打ちました！","10月11日の対DeNAとの試合です。
    大山選手が25号逆転ツーランホームランを打ちました！先発の秋山投手は今シーズン7勝目です！",
    "読売ジャイアンツの動画です。今日の円陣の一声は吉川大畿選手でした。
    youtubeのタイトルにあるように日本一の円陣芸だと思います。ファンを楽しましてくれるし
    選手たちの仲の良さも伝わってきます笑"]
    teams=[1,2,3]
    videoid=["https://www.youtube.com/watch?v=6P6VQOLhBnw","https://www.youtube.com/watch?v=RXc5rzmMXV4","https://www.youtube.com/watch?v=I0mS7-jx5Sc"]
    ["鈴木 次郎","佐藤 太郎","高橋 花子"].each do |username|
        user=User.find_by(username: username)
        0.upto(3) do |idx|
            Article.create(
                author: user,
                team_id: teams[idx % 3],
                title: "野球観戦",
                videoid:videoid[idx % 3] ,
                body: body[idx % 3]
            )
        end
    end