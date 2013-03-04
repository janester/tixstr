class TheatersController < ApplicationController
  def index
    @theaters = Theater.all
  end

  def show
    @theater = Theater.find(params[:id])
  end

  def buy
    tickets = params[:ticket_ids]
    theater = Theater.find(params[:id])
    tickets = tickets.split
    tickets.each do |ticket|
      t = Ticket.find(ticket)
      if t.user_id != nil
        @current_user.tickets << t
        t.is_bought = true
        t.save
      end
    end
    bought = theater.movie.tickets.select {|i| i.is_bought}
    render :json => bought
  end
end
