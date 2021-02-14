# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# MensPlaceRecorder
- 自分が行った場所についてコメント付きで投稿出来るサイトでも良かった
- が、コンセプトが欲しい。

- メンズの外見やファッション、デートに関して、自分が行ったことのある場所をコメント付きで投稿するサイト。
    - オシャレなカフェや居酒屋、ファッションやコスメに関する場所を投稿・記録する
    - 自分がそもそもそれらを一元管理できる、記録用のアプリが欲しいなと思っていた。
    - おしゃれカフェや居酒屋の情報はなかなか下見するか、行ったことがないと共有できない。
    - そういう場所を、ユーザ間で手軽に共有したい。
      - 雰囲気は静かすぎないか。適度にがやがやしているか。
      - お酒の種類はどうか。
      - テーブルが狭すぎないか。
      - カウンター席があるか。
      
    - 少し開発に慣れたら、場所レコメンドなども実装したい（だいぶ先） 
      - ここに行ったことがあるなら、この場所もどうですか？ 

- カフェに関しては、このサイトが参考になるかも
  - [link](https://tokyocafe365days.com/) 

# データベースに必要なもの

- users
  - id
  - 
  
- posts
  - id:references
  - content:text
  - title:string
  - open:boolean

@posts = Post.where(open: true)
# MensPlaceRecorder
