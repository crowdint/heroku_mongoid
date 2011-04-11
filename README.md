# Heroku Mongoid

You know how when you setup MongoHQ in Heroku it creates this ENV variable
that works out of the box with MongoMapper, but it doesn't with Mongoid?

Well this gem just breaks ENV['MONGOHQ_URL'] into pieces that Mongoid can
use.

So, this:

    ENV['MONGOHQ_URL'] = 'mongodb://heroku:93hk3fco1t063sftxv8z1a@flame.mongohq.com:27029/app111111'

Becomes this:

    ENV['MONGOID_HOST'] = 'flame.mongohq.com'
    ENV['MONGOID_PORT'] = '27029'
    ENV['MONGOID_USERNAME'] = 'heroku'
    ENV['MONGOID_PASSWORD'] = '93hk3fco1t063sftxv8z1a'
		ENV['MONGOID_DATABASE'] = 'app111111'

## Usage

Just include the gem on your Gemfile

    gem "heroku_mongoid"

# About the Author

[Crowd Interactive](http://www.crowdint.com) is an American web design and development company that happens to work in Colima, Mexico.
We specialize in building and growing online retail stores. We don’t work with everyone – just companies we believe in. Call us today to see if there’s a fit.
Find more info [here](http://www.crowdint.com)!
