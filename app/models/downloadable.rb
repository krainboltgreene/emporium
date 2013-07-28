class Downloadable < ActiveRecord::Base
  MAXIMUM_IMAGES = 3
  include Tire::Model::Search
  include Tire::Model::Callbacks

  VERSION_SKIP_FIELDS = [:description, :tags, :source, :images, :bookmark_count, :download_count, :name]

  belongs_to :account

  has_many :images, -> { order(id).uniq }, dependent: :destroy

  has_paper_trail on: [:create, :update], only: :version, skip: VERSION_SKIP_FIELDS, versions: :releases, version: :release

  index_name INDEX_NAME

  mapping do
    indexes :name, boost: 10
    indexes :description
  end

  accepts_nested_attributes_for :images

  validates :name, presence: true, uniqueness: true
  validates :version, presence: true, format: /\d+\.\d+\.\d+/
  validates :compatible, presence: true

  def self.search(q)
    tire.search(load: true) do
      query { string q, default_operator: "AND" } if q.present?
    end
  end

  def self.type(type_name)
    where(type: type_name)
  end
end
