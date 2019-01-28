require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

    get "/reversename/:name" do
        name = params[:name]
        "#{name.reverse}"
    end

    get "/square/:number" do
        number = params[:number].to_i
        number = number ** 2
        "#{number}"
    end

    get "/say/:number/:phrase" do
      number = params[:number].to_i
      phrase = params[:phrase]
      string = phrase * number
      "#{string}"
    end

    get "/say/:word1/:word2/:word3/:word4/:word5" do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."

    end

    get "/:operation/:number1/:number2" do

        number1 = params[:number1].to_i
        op = params[:operation]
        number2 = params[:number2].to_i
        case op
        when "add"
            number = number1 + number2
            "#{number}"
        when "subtract"
          number = number1 - number2
          "#{number}"
        when "divide"
          number = number1 / number2
          "#{number}"
        when "multiply"
          number = number1 * number2
          "#{number}"
        end

    end



end
