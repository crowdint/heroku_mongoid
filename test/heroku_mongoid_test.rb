require 'test_helper'

describe HerokuMongoid do
  it "sets the ENV variables required on Heroku" do
    ENV['MONGOHQ'] = 'mongodb://heroku:93hk3fco1t063sftxv8z1a@flame.mongohq.com:27029/app111111'

    HerokuMongoid::Env.break

    assert_equal 'flame.mongohq.com', ENV['MONGOID_HOST']
    assert_equal '27029', ENV['MONGOID_PORT']
    assert_equal 'heroku', ENV['MONGOID_USERNAME']
    assert_equal '93hk3fco1t063sftxv8z1a', ENV['MONGOID_PASSWORD']
    assert_equal 'app111111', ENV['MONGOID_DATABASE']
  end
end
