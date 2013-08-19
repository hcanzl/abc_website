# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  remember_token  :string(255)
#  admin           :boolean          default(FALSE)
#  position        :string(255)      default("")
#  address         :string(255)      default("")
#  phone           :string(255)      default("")
#

class User < ActiveRecord::Base

  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 64 }

  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@abcinc\.com\z/i
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  #TODO: Allow company e-mail only add a message for invalid emails

  has_secure_password
  validates :password, length: { minimum: 6 }
  #TODO: validates :phone, length: { is: 10 }

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
