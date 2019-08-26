class Post < ApplicationRecord
  validates :titulo, :contenido, presence: true
end
