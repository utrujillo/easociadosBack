module Api
  module V1

    class UserSerializer < ActiveModel::Serializer
      attributes :id, :nombre, :apellidos, :username, :email, :password_digest
    end

  end
end
