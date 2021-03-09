module Api
  module V1

    class UserSerializer < ActiveModel::Serializer
      attributes :id, :nombre, :apellidos, :username, :email
    end

  end
end
