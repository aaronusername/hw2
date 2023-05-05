# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Movie.destroy_all
Studio.destroy_all
Actor.destroy_all
Role.destroy_all


# Generate models and tables, according to the domain model.
# TODO!

# Please refer to db/migrate and app/models that I created. 

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!


wb = Studio.new
wb["studio_name"] = "Warner Bros."
wb.save

cb = Actor.new
cb["actor_name"] = "Christian Bale"
cb.save

mc = Actor.new
mc["actor_name"] = "Michael Caine"
mc.save

ln = Actor.new
ln["actor_name"] = "Liam Neeson"
ln.save

kh = Actor.new
kh["actor_name"] = "Katie Holmes"
kh.save

go = Actor.new
go["actor_name"] = "Gary Oldman"
go.save

hl = Actor.new
hl["actor_name"] = "Heath Ledger"
hl.save

ae = Actor.new
ae["actor_name"] = "Aaron Eckhart"
ae.save

mg = Actor.new
mg["actor_name"] = "Maggie Gyllenhaal"
mg.save

th = Actor.new
th["actor_name"] = "Tom Hardy"
th.save

jg = Actor.new
jg["actor_name"] = "Joseph Gordon-Levitt"
jg.save

ah = Actor.new
ah["actor_name"] = "Anne Hathaway"
ah.save

batman_1 = Movie.new
batman_1["movie_title"] = "Batman Begins"
batman_1["movie_year"] = "2005"
batman_1["movie_rating"] = "PG-13"
batman_1["studio_id"] = wb["id"]
batman_1.save

batman_2 = Movie.new
batman_2["movie_title"] = "The Dark Knight"
batman_2["move_year"] = "2008"
batman_2["movie_rating"] = "PG-13"
batman_2["studio_id"] = wb["id"]
batman_2.save

batman_3 = Movie.new
batman_3["movie_title"] = "The Dark Knight Rises"
batman_3["movie_year"] = "2012"
batman_3["movie_rating"] = "PG-13"
batman_3["studio_id"] = wb["id"]
batman_3.save

new_role = Role.new
new_role["character"] = "Bruce Wayne"
new_role["movie_id"] = batman_1["id"]
new_role["actor_id"] = cb["id"]
new_role.save

new_role = Role.new
new_role["character"] = "Alfred"
new_role["movie_id"] = batman_1"id"]
new_role["actor_id"] = mc["id"]
new_role.save

new_role = Role.new
new_role["character"] = "Ra's Al Ghul"
new_role["movie_id"] = batman_1["id"]
new_role["actor_id"] = ln["id"]
new_role.save

new_role = Role.new
new_role["character"] = "Rachel Dawes"
new_role["movie_id"] = batman_1["id"]
new_role["actor_id"] = kh["id"]
new_role.save

new_role = Role.new
new_role["character"] = "Commissioner Gordon"
new_role["movie_id"] = batman_1["id"]
new_role["actor_id"] = go["id"]
new_role.save

new_role = Role.new
new_role["character"] = "Bruce Wayne"
new_role["movie_id"] = batman_2["id"]
new_role["actor_id"] = cb["id"]
new_role.save

new_role = Role.new
new_role["character"] = "Joker"
new_role["movie_id"] = batman_2["id"]
new_role["actor_id"] = hl["id"]
new_role.save

new_role = Role.new
new_role["character"] = "Harvey Dent"
new_role["movie_id"] = batman_2["id"]
new_role["actor_id"] = ae["id"]
new_role.save

new_role = Role.new
new_role["character"] = "Alfred"
new_role["movie_id"] = batman_2["id"]
new_role["actor_id"] = mc["id"]
new_role.save

new_role = Role.new
new_role["character"] = "Rachel Dawes"
new_role["movie_id"] = batman_2["id"]
new_role["actor_id"] = mg["id"]
new_role.save

new_role = Role.new
new_role["character"] = "Bruce Wayne"
new_role["movie_id"] = batman_3["id"]
new_role["actor_id"] = cb["id"]
new_role.save

new_role = Role.new
new_role["character"] = "Commissioner Gordon"
new_role["movie_id"] = batman_3["id"]
new_role["actor_id"] = go["id"]
new_role.save

new_role = Role.new
new_role["character"] = "Bane"
new_role["movie_id"] = batman_3["id"]
new_role["actor_id"] = th["id"]
new_role.save

new_role = Role.new
new_role["character"] = "John Blake"
new_role["movie_id"] = batman_3["id"]
new_role["actor_id"] = jg["id"]
new_role.save

new_role = Role.new
new_role["character"] = "Selina Kyle"
new_role["movie_id"] = batman_3["id"]
new_role["actor_id"] = ah["id"]
new_role.save


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!



# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
