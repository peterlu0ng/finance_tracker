class StocksController < ApplicationController

  def search
    stock = Stock.new_lookup(params[:stock])

  end
  private

end
