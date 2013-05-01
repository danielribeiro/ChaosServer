require 'sinatra'

get '/' do
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
