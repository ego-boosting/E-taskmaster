class Suggest < ApplicationRecord

  belongs_to :admin

    validates :suggest_word, presence: true
    validates :suggest_english, presence: true
    validates :suggest_japanese, presence: true


    def self.suggest_created(num)

    end
end
