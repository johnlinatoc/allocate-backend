class UserSerializer < ActiveModel::Serializer
  attributes :username, :id, :password_digest
end
