body=["中日ドラゴンズの動画です。素晴らしい勝利をおさめました
    このまま頑張ってAクラスを死守してほしいです。","阪神タイガースの動画です。
    青柳投手が6回無失点の好投でしたが残念ながら負けしまいました",
    "読売ジャイアンツの動画です。戸郷選手がナイスピッチングでしたが
    9回に菊池選手にホームランを打たれてしまい完封とはなりませんでしたが
    ナイスゲームでした。"]
    teams=[1,2,3]
    videoid=["https://www.youtube.com/watch?v=dEFgfUxH938","https://www.youtube.com/watch?v=k1aTyi6bZPc","https://www.youtube.com/watch?v=DsNduaNB6_Q"]
    ["鈴木 次郎","佐藤 太郎","高橋 花子"].each do |username|
        user=User.find_by(username: username)
        0.upto(3) do |idx|
            Article.create(
                author: user,
                team_id: teams[idx % 3],
                title: "野球観戦#{idx}",
                videoid:videoid[idx % 3] ,
                body: body[idx % 3]
            )
        end
    end