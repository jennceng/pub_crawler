# Welcome to PubCrawler!

## Part 1
  * For Part 1 we are going to focus on building our schema!

  Create the migrations to build a schema, and models to represent the following data and object relationships:

    ####
    #### Pubcrawls

    * A pubcrawl must have a name
    * A pubcrawl can have many bars signed up

    #### Bars

    * Must have a name
    * Must have an address
    * Can optionally have a description
    * Can have many reviews
    * Can can sign up to many pubcrawls

    #### Reviews

    * Must have a username
    * Must have a body
    * Belongs to a single bar

## Part 2
  * For Part 2 we will run our specs one at a time and get our code to pass!  Our erb templates and our routes have been pre-built... but how do we query for our necessary data???
  * utilize pry in testing environment and in development (via `pry -r ./app.rb`) to poke around and look at our methods, associations, validation

## Part 3
  * Seed your development database with a Seeds file!  open up your app and poke around and make sure it works as you expect

## Important notes
  * This TDD is for practice to see errors when things aren't set up correctly on the model level for ActiveRecord, as we get more comfortable you should also feel comfortable doing this as a part of making the tables and models and testing it with pry and seed data
  * Although you have been introduced to the power of ActiveRecord, you should still have familiarity with SQL queries.  
    * After this clinic write a seed file in SQL and pipe it in with `$psql database_name < seeds.sql`, go in with `pry -r ./app.rb` and make sure the data persisted and with the expected relationships
    * Make a good ol' SQL query to find all the bars that belong to the first pubcrawl, and test it via `$psql database_name < query.sql`
