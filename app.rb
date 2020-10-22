require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end
  
  get '/square/:number' do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end
<<<<<<< HEAD
  
  get '/say/:number/:phrase' do
    result = []
    @phrase = params[:phrase]
    @number = params[:number].to_i
    @number.times do
      result << "#{@phrase}"
    end
    result
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  
  get '/:operation/:number1/:number2' do
    if params[:operation] == 'add'
      @result = params[:number1].to_i + params[:number2].to_i
      "#{@result}"
    elsif params[:operation] == 'subtract'
      @result = params[:number1].to_i - params[:number2].to_i
      "#{@result}"
    elsif params[:operation] == 'multiply'
      @result = params[:number1].to_i * params[:number2].to_i
      "#{@result}"
    else
      @result = params[:number1].to_i / params[:number2].to_i
      "#{@result}"
    end  
  end
=======
>>>>>>> 37f5fdd0af438e0e727625b7c1e29a513aaacc55

end