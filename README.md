# Welcome to PubCrawler!

## Part 1
  * For Part 1 we are going to focus on building our schema!

  Create the migrations to build a schema, and models to represent the following data and object relationships:

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
  * utilize pry in testing environment and in development (via `pry -r ./app.rb`) to poke around and look at our methods, associations, validations

## Part 3
  * Seed your development database with a Seeds file!  open up your app and poke around and make sure it works as you expect
