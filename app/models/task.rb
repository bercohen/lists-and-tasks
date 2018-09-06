class Task < ActiveRecord::Base
  validates :name, presence: true

    def self.completed
      all.select { |task| task.completed }
    end

    def self.not_completed
      all.select { |task| !task.completed }
    end

end
