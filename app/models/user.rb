class User < ActiveRecord::Base
    
    has_many :imbibes
    has_many :vibes, through: :imbibes
    
    has_secure_password

    validates_presence_of :username, :email
    validates :email, uniqueness: true

end