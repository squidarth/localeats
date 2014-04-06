class DashboardController < ApplicationController
  def index
    
  end
  
  def create_bank
    #HTTParty.post("https://tartan.plaid.com/connect", body: {client_id: ENV["PLAID_ID"], secret: ENV["PLAID_SECRET"], credentials: {username: "sps123wfwf", password: "MYPASS"}, type: "wells", email: "sshanker220@gmail.com"}) 
  end
end
