class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :store_name, :image, :address, :latitude, :longitude, :is_store, :products
end
