# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')

p1 = Pubcrawl.create(name: "sara's birthday")
p2 = Pubcrawl.create(name: "Chelsea's bachelorette party")

b1 = Bar.create(name: "River Gods", address: "3 river street")
b2 = Bar.create(name: "Phoenix Landing", address: "3 Mass Ave.", description: "90s dance music")

r1 = Review.create(bar: b1, username: "jennga", body: "great hummus")
r2 = Review.create(bar: b1, username: "chelsea", body: "boo no IPAs")
r3 = Review.create(bar: b2, username: "chelsea", body: "they play my favorite spice girls music")

Signup.create(bar: b1, pubcrawl: p1)
Signup.create(bar: b1, pubcrawl: p2)
Signup.create(bar: b2, pubcrawl: p2)
