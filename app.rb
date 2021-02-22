require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number*@number}"
  end

  get "/say/:number/:phrase" do
    ans = ''
    params[:number].to_i.times do 
      ans += params[:phrase]
    end
    ans
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    params.values.join(" ") + "."
  end

  get "/:operation/:number1/:number2" do
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    ans = ''
    case params[:operation]
    when "add"
      ans = (n1+n2).to_s
    when "subtract"
      ans = (n1-n2).to_s
    when "multiply"
      ans = (n1*n2).to_s
    when "divide"
      ans = (n1/n2).to_s
    end
    ans
  end

end