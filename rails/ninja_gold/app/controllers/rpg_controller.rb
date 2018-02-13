class RpgController < ApplicationController

@@time=Time.new

   def index
      if !(session[:gold_count]) and !(session[:activities])
         session[:gold_count]=0
         session[:activities]=[]
      @activities=session[:activities]
      end
   end

   def farm
      @random_number=rand(10..20)
      @timestamp=@@time.strftime('%Y/%m/%d %H:%M %p')
      session[:gold_count] += @random_number
      session[:activities].push("Earned #{@random_number} from the Farm.(#{@timestamp})")

      redirect_to '/'
   end

   def cave
      @random_number=rand(5..10)
      @timestamp=@@time.strftime('%Y/%m/%d %H:%M %p')
      session[:gold_count] += @random_number
      session[:activities].push("Earned #{@random_number} from the Cave.(#{@timestamp})")

      redirect_to '/'
   end

   def house
      @random_number=rand(2..5)
      @timestamp=@@time.strftime('%Y/%m/%d %H:%M %p')
      session[:gold_count] += @random_number
      session[:activities].push("Earned #{@random_number} from the House.(#{@timestamp})")

      redirect_to '/'
   end

   def casino
      @random_number=rand(-50..50)
      @timestamp=@@time.strftime('%Y/%m/%d %H:%M %p')
      session[:gold_count] += @random_number

      if @random_number<0
         session[:activities].push("Entered a Casino and lost #{@random_number} golds....Ouch.(#{@timestamp})")
      else
         session[:activities].push("Earned #{@random_number} from the Casino.(#{@timestamp})")
      end
      redirect_to '/'
   end

end
