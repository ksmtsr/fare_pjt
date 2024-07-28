class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: [:username]

         validates :password, presence: false, on: :create
         validates :password_confirmation, presence: false, on: :create
       
         # デフォルトのDeviseのパスワード要件を無効にする
         def password_required?
           false
         end
       
         # パスワードの確認要件を無効にする
         def password_match?
           true
         end

  validates :username, presence: true
end
