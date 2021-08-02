class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  with_options presence: true do
    validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
    validates :image
  end

  belongs_to :user
 # has_many :comments
  has_one_attached :image
end
