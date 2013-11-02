# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Users
User.delete_all
User.create(
  name: "tlsk",
  password: "tulming:*"
)
User.create(
  name: "lmsk",
  password: "tulming"
)

# Categories
Category.delete_all
Category.create(
	name: "Game",
)
Category.create(
	name: "Excercise",
)
Category.create(
	name: "Activity",
)

# Activities
Activity.delete_all
Activity.create(
	title: 'Building a tower from Marshmallow and Spagetti',
  	abstract: 'build a high tower, 5 iterations, retro, demo', 
  	detail: 'how to play...',
  	category_id: 1,
  	note: "about 1 hour, material: marshmallow, spagetti"
)
Activity.create(
	title: 'Building a tower from Straws',
  	abstract: 'build a high tower, 5 iterations, retro, demo', 
  	detail: 'how to play...',
  	category_id: 1,
  	note: "about 1 hour, material: straws, plastic cap, tap"
)
Activity.create(
  title: 'test1',
    abstract: 'have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun have fun ', 
    detail: 'how to play...',
    category_id: 1,
    note: "paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper paper "
)
Activity.create(
  title: 'test2',
    abstract: 'build a high tower, 5 iterations, retro, demo', 
    detail: 'how to play...',
    category_id: 3,
)
Activity.create(
  title: 'test3',
    abstract: 'testing, abstract', 
    detail: 'how to play...',
    category_id: 2,
    note: "n/a"
)
