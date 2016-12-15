class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :store_name, :image, :address, :latitude, :longitude, :is_store, :open_from, :open_until, :website, :phone_number, :products
end
