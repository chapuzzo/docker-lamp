require 'sinatra/base'
require 'mongo'
require 'ap'

class App < Sinatra::Base

  configure do |config|
    set :database, Mongo::Client.new('mongodb://mongo:27017/cg_test').database
  end

  helpers do
    def notifications
      settings.database[:notifications]
    end

    def registrations
      settings.database[:registrations]
    end
  end

  get '/schedule' do
    notifications.insert_one({
      aa: 'bb',
      cc: 'dd'
    })
    'ok'
  end

 get '/register' do
  ap :hoa
  # ap params.class
  # registrations.insert_one({
  #   aa: 'bbcc',
  #   cc: 'ddddd'
  # })
  # 'ok'
end

end
