if Rails.env.production?
  Rails.application.config.after_initialize do
    ActiveRecord::Base.connection_pool.disconnect!
    ActiveSupport.on_load(:active_record) do
      begin
        uri = URI.parse(ENV["DATABASE_URL"])
      rescue URI::InvalidURIError
        raise "Invalid DATABASE_URL"
      end

      adapter = uri.scheme
      adapter = "postgresql" if adapter == "postgres"

      database = (uri.path || "").split("/")[1]

      username = uri.user
      password = uri.password

      host = uri.host
      port = uri.port

      ActiveRecord::Base.establish_connection(
        adapter: adapter,
        host: host,
        port: port,
        username: username,
        password: password,
        database: database,
        reaping_frequency: ENV['DB_REAP_FREQ'] || 10,
        pool: ENV['DB_POOL'] || 5
      )
    end
  end
end
