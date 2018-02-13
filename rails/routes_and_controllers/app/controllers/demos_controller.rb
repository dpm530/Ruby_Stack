class DemosController < ApplicationController
  def index
     render text: "What do you want me to say?"
  end

  def hello
     render text: "Hello Coding Dojo!"
  end

  def say
     render text: "Saying Hello!"
  end

  def hellojoe
     render text: "Saying Hello Joe!"
  end

  def times
     session[:count] ||=0
     render text: "You have visited this url #{session[:count]+=1} time(s)"
  end

  def restart
     reset_session
     render text: "Destroyed Session"
  end

end
