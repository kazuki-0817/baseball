# Baseball commentator

### アプリの概要
    プロ野球に関連するyoutubeの動画とその動画に対するコメントをサイトに投稿するアプリ<br/>
    テストアカウント 

### 開発環境
* OS 「Windows」
* エディター 「Visual Studio Code」

### 使用言語・ライブラリ・フレームワーク
* HTML、CSS、JavaScript,Ruby2.6.6
* jQuery
* Ruby on Rails 5.2.4

### 機能
* ユーザー新規登録、ログイン、ログアウト機能
* 新規登録時、二段階認証制
* ユーザー編集
* 新規記事投稿
* 記事編集
* 記事検索（球団別に）
* バリデーション設定
        <br/>ユーザー(名前:空白禁止,email:@の前後に文字列必要,password:6文字以上必須)
        <br/>記事(タイトル:空白禁止.32文字以内,url:空白禁止,推しチーム:空白禁止,本文:200文字以内)  

### 注力した機能や工夫した点
* 球団別の記事の表示<br/>→このサイトの使用者はプロ野球をよくみる人が想定されるので
    ファンの球団があると思っています。そのため自分の好きな球団の記事が
    絞り込まれて表示されるようにしました。<br/>
    (https://github.com/kazuki-0817/ba1/blob/master/config/routes.rb)<br/>
    (https://github.com/kazuki-0817/ba1/blob/master/app/controllers/articles_controller.rb)
* youtubeのurlからiframeを作成<br/>→このサイト内で紹介されている動画を見れるようにデータベース
    に保存されているurlをiframeに代入して表示できるようにしました。<br/>
    (https://github.com/kazuki-0817/ba1/blob/master/app/views/articles/index.html.erb)

* レスポンシブデザインへの対応<br/>→youtubeをスマホで見る人が多いと思うのでそんなユーザーも
    スマホからこのサイトでyoutubeの動画を紹介できるように
    レスポンシブデザインに対応しました。
* 二段階認証への対応<br/>→架空のメールアドレスや他人のメールアドレスを無断で使用してサイトに登録されない
ようにしました。
