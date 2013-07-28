class DownloadableSerializer < ActiveModel::Serializer
  attributes :id, :name, :version, :compatible, :description, :changelog, :guide, :link, :download_count, :bookmark_count, :source, :license, :type
  has_one :account
end
