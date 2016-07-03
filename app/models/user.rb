class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [ :google_oauth2 ]

  has_many :contacts

  class << self
    def from_omniauth(access_token)
      where(provider: access_token.provider, uid: access_token.uid).first_or_create do |user|
        user.provider = access_token.provider
        user.uid      = access_token.uid
        user.email    = access_token.info.email
        user.password = Devise.friendly_token[0,20]
      end
    end
  end
end
