class Task < ActiveRecord::Base
    belongs_to :category

    def say_hi
        "Hi, my description is #{self.description}"
    end
end