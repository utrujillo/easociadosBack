module Api
  module V1

    class OpinionSerializer < ActiveModel::Serializer
      include Rails.application.routes.url_helpers
      attributes :id, :cliente, :descripcion, :calificacion, :foto

      def foto
        rails_blob_path(object.foto, only_path: true) if object.foto.attached?
      end
    end

  end
end
