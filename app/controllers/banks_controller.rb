class BanksController < ApplicationController
  def create
    @bank = current_user.banks.build(bank_params)
    response = HTTParty.post("https://tartan.plaid.com/connect", body: {
      client_id: ENV["PLAID_ID"], 
      secret: ENV["PLAID_SECRET"], 
      credentials: {username: @bank.username, password: @bank.password}, 
      type: @bank.bank_type, 
      email: current_user.email
    })
    
    
    binding.pry
    #handle response, create transactions, etc
    
    return redirect_to dashboard_path
  end
  
  private
  
  def bank_params
    params.require(:bank).permit(:username, :password, :bank_type)
  end
end


