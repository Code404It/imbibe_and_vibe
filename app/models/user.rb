class User < ActiveRecord::Base
    
    has_many :imbibes
    has_many :vibes, through: :imbibes

end