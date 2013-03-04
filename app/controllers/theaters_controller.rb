class TheatersController < ApplicationController
  def index
    @theaters = Theater.all
  end

  def show
    @theater = Theater.find(params[:id])
  end

  def buy
    tickets = params[:ticket_ids]
    tickets = tickets.split
    tickets.each do |ticket|
      t = Ticket.find(ticket)
      @current_user.tickets << t
      t.is_bought = true
      t.save
    end
    bought = Ticket.all.select {|i| i.is_bought}
    bought.map(&:id)
    bought = bought.join(" ")
    render :json => bought
  end
end
