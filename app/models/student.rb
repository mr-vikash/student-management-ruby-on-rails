class Student < ApplicationRecord
    validates :firstname, :lastname, :email, presense: true
end
