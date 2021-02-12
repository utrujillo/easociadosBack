module Api
  module V1

    class JobSerializer < ActiveModel::Serializer
      attributes :id, :nombre, :descripcion, :foto
      has_one :category
    end

  end
end
