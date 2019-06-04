require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    return "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    return "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do 
    name = params[:name]
    return "Goodbye, #{name}."
  end

  get '/multiply/:num1/:num2' do 
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    result = num1 * num2
    return "#{num1} * #{num2} = #{result}"
  end


  # Code your final two routes here:

end