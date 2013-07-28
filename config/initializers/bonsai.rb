ENV["ELASTICSEARCH_URL"] = ENV["BONSAI_URL"]
name = Rails.application.class.parent_name.underscore.dasherize
env = Rails.env
INDEX_NAME = "#{name}-#{env}"
