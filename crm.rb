require 'sinatra'
require './contact.rb'

get '/' do
  redirect '/index'
end

get '/index' do
  erb :index
end

get '/contacts' do
  @contacts = Contact.all
  erb :contacts
end


after do
  ActiveRecord::Base.connection.close
end
