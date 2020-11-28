# Todo Share APP
**Todoの共有アプリ**　[（https://todoshareapp2020nov.herokuapp.com/）](https://todoshareapp2020nov.herokuapp.com/)

## 概要
業務でのタスク管理をイメージして作成しました。<br>
進捗や作業漏れ確認、分担見直しなどができるように、タスク一覧をみんなで共有・管理するツールです。<br>
Todoリストには、備考欄に加えて、いいね機能を実装することで、<br>
メンバー間のちょっとしたコミュニケーションが生まれるように設計しています。<br>
<br>
<br>
1.トップ画面は、ユーザーログイン／新規ユーザー登録を表示<br>
緑の「ゲストログイン」ボタンからユーザー登録無しでログイン可能<br>
<img src="https://user-images.githubusercontent.com/69382548/100492968-a4c15380-3175-11eb-906b-76c51439f429.JPG" width = "683px" height = "315px"><br>
<br>
2.Todo一覧画面では、Todo情報を表示、右端にいいねボタンを追加<br>
<img src="https://user-images.githubusercontent.com/69382548/100492969-a559ea00-3175-11eb-8264-d7d9eeaa4891.JPG" width = "683px" height = "315px"><br>
<br>
3.Todo詳細画面から、一覧、更新、削除画面へ遷移<br>
<img src="https://user-images.githubusercontent.com/69382548/100492970-a5f28080-3175-11eb-845f-4e5e51bf740a.JPG" width = "683px" height = "315px"><br>
<br>
4.ユーザー一覧画面にて、このアプリに登録しているユーザーの確認が可能<br>
<img src="https://user-images.githubusercontent.com/69382548/100492971-a68b1700-3175-11eb-9733-8f8e509ac22f.JPG" width = "683px" height = "315px">


## 使用技術
- Ruby 2.5.3
- Rails 5.2.4.4
- jQuery
- Bootstrap
- PostgreSQL
- デプロイ：　heroku

## 実装機能
### ユーザー関連
- 登録機能
- ログイン、ログアウト機能
- ゲストユーザーでのログイン、ログアウト機能
- ユーザー一覧表示

### Todo関連
- 投稿、削除、更新機能
- 詳細／一覧表示

### その他機能
- 同期／非同期の「いいね」機能
