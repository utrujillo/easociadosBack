module Api
  module V1

    class JobSerializer < ActiveModel::Serializer
      include Rails.application.routes.url_helpers

      attributes :id, :nombre, :descripcion, :fotos
      has_one :category

      def fotos
        return unless object.fotos.attachments
        fotos_url = object.fotos.map do |foto|
          rails_blob_path(foto, only_path: true)
        end
        fotos_url
      end
    end

  end
end
