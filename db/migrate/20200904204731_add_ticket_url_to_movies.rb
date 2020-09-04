class AddTicketUrlToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :ticketURL, :string
  end
end
