require 'sinatra'
require 'pp'

def all_methods(path, opts={}, &block)
  get path, opts, &block
  post path, opts, &block
  put path, opts, &block
  delete path, opts, &block
end


all_methods '/' do
    pp params
    pp headers
    sleepTime = params[:sleep].to_i
    statusParam = params[:status]
    response_body = params[:response_body] || "response_body"
    repeat = (params[:repeat] || 1).to_i
    sleep(sleepTime) if sleepTime > 0
    status statusParam if statusParam
    response_body * repeat
end

get '/throw_exception' do
  raise "an exception"
end
