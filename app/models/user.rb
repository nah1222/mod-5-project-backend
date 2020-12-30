class User < ApplicationRecord
    has_secure_password
    has_many :routines

    # def password=(secret)
    #     hashed_pass = Bcrypt::Password.create(secret)
    #     self.password_digest = hashed_pass
    # end

    # def password 
    # end
end
