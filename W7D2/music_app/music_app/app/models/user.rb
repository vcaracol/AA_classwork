class User < ApplicationRecord
    before_validation :ensure_session_token

    validates :email, presence: true, uniqueness: true
    validates :password_digest, presence: true
    validates :session_token, presence: true, uniqueness: true
    validates :password, length: {minimum: 6, allow_nil: true }
    attr_reader: :password

    def self.find_by_credentials(email, password)
        user = User.find_by(user: user)
        if user && user.is_password?(password)
            user
        else
            nil
        end
    end
    
    def reset_session_token!
        self.session_token = SecureRandom.urlsafe_base
        self.save!
        self.session_token
    end
    
    def ensure_session_token
        self.session_token ||= SecureRandom.urlsafe_base
    end
    
    def password=(password)
        self.password_digest = BCrypt::Password.create(password)
        @password = password
    end
    
    def  is_password?(password)
        saved_pass = BCrypt::Password.new(self.password_digest)
        saved_pass.is_password?(password)
    end
end
