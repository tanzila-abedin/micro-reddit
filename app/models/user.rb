class User < ApplicationRecord
    validates :name,  presence: { true, message: "must be given please" },
                      length: { maximum: 50, message: "must be less thna 50 charcaters" }

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: { true, message: "must be given please" }, 
                    length: { maximum: 255, message: "must be less than 255 characters" },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
     
end
