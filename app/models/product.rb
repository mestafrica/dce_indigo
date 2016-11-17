class Product < ApplicationRecord
   mount_uploader :product_table, ProductTableUploader # Tells rails to use this uploader for this model.
   validates :company, presence: true # Make sure the owner's name is present.

end
