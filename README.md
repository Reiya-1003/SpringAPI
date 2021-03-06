# ページ概要

<img width="1440" alt="スクリーンショット 2022-05-10 17 21 29" src="https://user-images.githubusercontent.com/80142183/167583837-b45a516d-5654-43c4-8223-a6f40ea506ad.png">


リンク先：https://springyoutube.herokuapp.com/
フロント：https://github.com/Reiya-1003/springFRONT
※バックエンドのデプロイができていないので検索機能のみ使用できます。

## 使用言語
* React.js  18.0.0
* Java  １１
* Springframework   2.5.12
* MAMP 4.5
* MySQL 5.6.38

## アーキテクチャ
　　
  
<img width="488" alt="スクリーンショット 2022-05-09 16 29 27" src="https://user-images.githubusercontent.com/80142183/167585611-4d472f4e-756d-43e0-b8d4-3b616c851910.png">
  
## デプロイ
* フロントエンド　→ Heroku
* バックエンド　→ 未達　Herokuで試みたもののAPIリクエストが不可。後日再挑戦予定




## 機能面
### YoutubeAPIを使用した検索機能
<img width="1440" alt="スクリーンショット 2022-05-10 17 21 29" src="https://user-images.githubusercontent.com/80142183/167586149-36811019-0ed3-48dc-b78a-f74ad10bfa78.png">

* 入力フォームに検索ワードを入力後、検索ボタンを押したタイミングでAxiosによるYoutube APIリクエストが飛び、結果が返ってくるように調整。
* 主にReactHookのUseStateを使用して実装。



### サインイン機能
<img width="1440" alt="スクリーンショット 2022-05-10 17 22 50" src="https://user-images.githubusercontent.com/80142183/167757620-735c1c55-3247-4895-8481-5d8b2ffb9c89.png">
* ユーザーネーム・メールアドレス・パスワード・個人のユーチューブアカウントのIDを登録できる。
* データベースに重複がある場合登録ができないようにバリデーションを組んでいる。


### ログイン機能
<img width="523" alt="スクリーンショット 2022-05-10 17 23 51" src="https://user-images.githubusercontent.com/80142183/167757990-40450fac-c7f0-46fb-aaba-1ff4e7316871.png">

<img width="1440" alt="スクリーンショット 2022-05-10 17 23 30" src="https://user-images.githubusercontent.com/80142183/167757996-605d7f94-4f57-495b-a9f8-78c948b5377f.png">
* サインイン機能でユーザーを登録した後、ログインすることができる。
* ログイン後、ユーザー名が表示される。
* サインイン時にユーチューブアカウントIDを登録しているので、YoutubeAPIを介して特定の情報を持ってこれる。


### 登録したユーチューブIDから取得し、プレイリストを一覧表示
<img width="1440" alt="スクリーンショット 2022-05-10 17 21 49" src="https://user-images.githubusercontent.com/80142183/167758887-d48115e3-a08d-4f06-94e5-4fe0d04b34a9.png">
* 登録したユーチューブIDでYoutubeAPIを叩き、取得したデータをuseStateで保持、mapを使用してデータの数だけ表示する。
* クリックするとプレイリストのページに飛ぶ。

### 余談　ピクセルパーフェクト
<img width="1440" alt="スクリーンショット 2022-05-11 15 00 08" src="https://user-images.githubusercontent.com/80142183/167779328-ce3c517e-0d9a-4184-8475-a308bb4d9725.png">

* Figmaで作成しページレイアウトの設計図のピクセルをずれずにデザインをしていく。
* フォントの種類等で多少のずれが出てしまうものの、widthやheightといったものはピッタリデザインが可能。

## 所感
* Javaの実装は他のバックエンド言語に比べて幅広く深いと感じました。アノテーションやビーンといった他にないものも理解しなければりません。
* 他のフレームワークと同じくローカル環境ではloclahostのリクエストでバックエンドのやり取りができるところはLarabelやDjangoと同じでしたが、デプロイした場合は上手くいかなかったのでそこは今後勉強します。
* 実際にJavaの実装をしている時、Macがとても重かったのでWindowsを購入することを考えました。
