class Cat < ApplicationRecord
    validates :name, :color, :birth_date, presence: true
end
