class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  ## {Marce}: como conectar otra vista adicional a home, pero que se acceda desde el usuario loggeado
end
