class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  with_options presence: true do
    validates :category_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :image
  end

  def self.search(search)
    if search != ''
      Post.where('title LIKE(?) OR summary LIKE(?)', "%#{search}%", "%#{search}%")
    else
      Post.all
    end
  end

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
end
