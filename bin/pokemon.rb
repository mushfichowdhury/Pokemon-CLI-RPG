class Pokemon < ActiveRecord::Base
    has_many :attacks
    belongs_to :user
end