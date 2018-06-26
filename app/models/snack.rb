class Snack < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user



    validates :title, :brand, presence: true
    validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed." }
    validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed" }
    validates :price, numericality: { only_integer: true }, length: { maximum: 7 }

    BRAND = %w{ KitKat Pocky Yakuza }

end
