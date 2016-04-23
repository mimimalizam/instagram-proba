class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Sad cemo definisemo ruby metodu
  def hello
    render text: "hello, world!"
  end

  # Sada treba da objasnimo Railsu da koristi ovu nasu akciju umesto default strane
  # Da bismo to uradili, editujemo Rails router koji nam je ovde u ulozi dispecera
  # On odredjuje gde treba da se prosledi zahtev koji primi iz browsera
  # Zelimo da promenimo "the root route", koja odredjuje sta se otvara na root URL
  # otvaramo config/routes.rb
end
