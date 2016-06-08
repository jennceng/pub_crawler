# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')

p1 = Pubcrawl.create(name: "St.Patty's Day")
p2 = Pubcrawl.create(name: "post-system-check 12:30pm???")

b1 = Bar.create(name: "The Middle East", address: "1 mass ave", description: "nice music venue")
b2 = Bar.create(name: "The Field", address: "1 prospect", description: "has a pool table")

r1 = Review.create(bar: b2, username: "Paddy", body: "Smells Terrible")
r2 = Review.create(bar: b2, username: "Jenn", body: "play great soccer games")

Signup.create(pubcrawl: p1, bar: b2)
Signup.create(pubcrawl: p1, bar: b1)
