require './app'
require 'test/unit'
require 'rack/test'

class MyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_h1_hello
    get '/yaz/tea'
    assert last_response.body.include?("Would you like a cup of tea Yaz?"), 'Should say "Would you like a cup of tea Yaz?" but doesn\'t'
  end
  def test_title_name
    get '/tom'
    assert last_response.body.include?("<title>Tea Yaz?</title>"), "Title should be 'Tea Yaz?'"
  end
end