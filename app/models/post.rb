class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable

  #Validations
  has_attached_file :image, styles: { large: "500x500>", medium: "300x300>", small: "100x100>", thumb: "50x50>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
