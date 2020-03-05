class Favorite < ActiveRecord::Base
    belongs_to :search
    belongs_to :user

    def favorites
        Favorite.all
    end
end