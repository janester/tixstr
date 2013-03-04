User.delete_all
Movie.delete_all
Theater.delete_all
Ticket.delete_all

u1 = User.create(:name => "Jane", :email => "jane@jane.com", :password => "abc", :password_confirmation => "abc")
u2 = User.create(:name => "Bob", :email => "bob@bob.com", :password => "abc", :password_confirmation => "abc")

m1 = Movie.create(:title => "Silver Linings Playbook", :runtime => "2hrs and 10mins", :rating => "R", :image => "http://ia.media-imdb.com/images/M/MV5BMTM2MTI5NzA3MF5BMl5BanBnXkFtZTcwODExNTc0OA@@._V1_SX214_.jpg")
m2 = Movie.create(:title => "The Dark Knight Rises", :runtime => "2hrs and 46mins", :rating => "R", :image => "http://ia.media-imdb.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_SX214_.jpg")
# m3 = Movie.create(:title => "Les Miserables", :runtime => "2hrs and 22mins", :rating => "PG-13")
# m4 = Movie.create(:title => "Lincoln", :runtime => "2hrs and 13mins", :rating => "PG-13")
m5 = Movie.create(:title => "The Hobbit: An Expected Journey", :runtime => "2hrs and 51mins", :rating => "PG", :image => "http://ia.media-imdb.com/images/M/MV5BMTkzMTUwMDAyMl5BMl5BanBnXkFtZTcwMDIwMTQ1OA@@._V1_SY317_CR1,0,214,317_.jpg")

t1 = Theater.create(:name => "The Melrose", :location => "Broadway")
t2 = Theater.create(:name => "The Rodeo Theater", :location => "Amsterdam")
t3 = Theater.create(:name => "Sunset Strip Theater", :location => "Columbus")
t4 = Theater.create(:name => "The Mulholland", :location => "Lexington")

m1.theaters << t1
m2.theaters << t2 << t3
m5.theaters << t4

Movie.all.each do |movie|
  15.times do
    movie.tickets << Ticket.create
  end
end





