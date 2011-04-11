module HerokuMongoid
  class Env
    REGEXP = /^mongodb:\/\/(\w+):(\w+)@([\w\.]+):(\d+)\/(\w+)$/

    def self.break
      REGEXP.match(ENV['MONGOHQ'])

      ENV['MONGOID_HOST']     = $3
      ENV['MONGOID_PORT']     = $4
      ENV['MONGOID_USERNAME'] = $1
      ENV['MONGOID_PASSWORD'] = $2
      ENV['MONGOID_DATABASE'] = $5
    end
  end
end
