class Vibe < ActiveRecord::Base
    
    has_many :imbibes
    has_many :users, through: :imbibes

end


