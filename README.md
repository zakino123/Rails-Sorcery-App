# RAILS-SORCERY-APP

・Rails6.1 + Sorcery：docker-compose で rails new

## Rails README
・Ruby version(2.6)

・Database creation

    rails db:create

    rails db:migrate

・Deployment instructions

    docker-compose up -d

## Reference sources
・docker-compose下でrails newして Rails6.1 + Sorcery を試す（ Sorcery の仕組み少し解説） | 北山淳也 | zenn

  https://zenn.dev/junki555/articles/e4172b3b79c29e#user-%E3%83%A2%E3%83%87%E3%83%AB%E3%82%92%E6%93%8D%E4%BD%9C%E3%81%99%E3%82%8B%E3%82%B3%E3%83%B3%E3%83%88%E3%83%AD%E3%83%BC%E3%83%A9%E3%81%A8%E3%83%93%E3%83%A5%E3%83%BC%E3%82%92%E4%BD%9C%E6%88%90

・【Rails】ログイン機能を実装

  https://qiita.com/ryota21/items/83a2cfed9e775be58382

・docker-compose 下で rails new して Rails6.1+deviseを試す | 北山淳也 | zenn

  https://zenn.dev/junki555/articles/83339b5d58f416

・0.0.0.0にはアクセスしないこと

  https://qiita.com/amuyikam/items/0063df223aed40193ba9

・ホスト上にコンテナのポートを割り当て

  http://docs.docker.jp/v1.11/engine/userguide/networking/default_network/binding.html

・sorcery/lib/sorcery/model.rb | Sorcery / sorcery | GitHub

  https://github.com/Sorcery/sorcery/blob/a02c1247642357129ea739354c22978a06fccaa9/lib/sorcery/model.rb
