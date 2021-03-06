# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

g = Game.create(
  name: "Watch the Skies Test",
  round: 0,
  next_round: (Time.now() + 30*60),
  data: {
    rioters: 0,
    terror: 0,
    paused: false
    }.to_json
)

g.save()

#An example message for the database. Probably doesn't need to exist in the final version.
m = Message.create(
	sender: "UK",
	recipient: "France",
	content: "This is an example message",
	round_number: 0,
	game_id: g.id
)

m.save();