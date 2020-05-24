class Dog < ApplicationRecord
  belongs_to :list

  validates_presence_of :list
  validates :image, presence: true
  validates :breed, presence: true
  validates :color, presence: true
  validates :size,  presence: true
  validates :location, presence: true
  validates :date, presence: true
  # validates_format_of :date, :with => /(0[1-9]|1[012])[- \/.](0[1-9]|[12][0-9]|3[01])[- \/.](19|20)\d\d/i, :message => "must be in the following format: mm/dd/yyyy"
  validates :description, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true
  validates :phone, numericality: { only_integer: true }
  validates :phone, length: { is: 10}
  validates :email, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  mount_uploader :image, ImageUploader

  validates_processing_of :image
  validate :image_size_validation


  private
  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end

end
