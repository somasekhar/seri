class PostSerializer < ActiveModel::Serializer
  attributes :id, :title
  #belongs_to :user
  has_many :comments
end
