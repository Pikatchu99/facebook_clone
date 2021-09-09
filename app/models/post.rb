class Post < ApplicationRecord
  before_validation :check_for_existence
  validates :title, presence: {message: " ne dois pas être vide", }
  validates :content, presence: {message: " ne dois pas être vide", }
  belongs_to :user
  mount_uploader :image, ImageUploader
  private
  def check_for_existence
    self.attributes.each do |attr|
      return false if self[attr].nil?
    end
  end

end
