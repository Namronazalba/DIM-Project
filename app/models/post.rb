class Post < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :content
  validates_presence_of :address
  validates_presence_of :generate_short_url

  belongs_to :user
  belongs_to :disaster
  has_many :comments

  mount_uploader :image, ImageUploader

  def generate_short_url
    loop do
      @short = rand(0..9999).to_s.rjust(4,'0')
      break unless Post.exists?(url_short: @short)
    end
    self.url_short = @short
  end
end
