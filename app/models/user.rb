class User < ActiveRecord::Base
    has_many :favorites
    has_many :searches, through: :favorites

    

end