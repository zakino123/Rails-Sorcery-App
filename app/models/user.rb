class User < ApplicationRecord
  authenticates_with_sorcery!

  # パスワードを最低3文字に変更
  # crypted_passwordはパスワードを暗号化したもの
  # if: -> { new_record? || changes[:crypted_password] }で、ユーザーがパスワード以外のプロフィール項目を(メールアドレスや名前)を更新したい場合に、パスワードの入力を省略
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  # passwordというDBに存在しない仮想的な属性の追加
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence:true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, presence: true
  validates :email, uniqueness: true
end
