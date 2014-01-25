# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sag = Organization.create(name: "Screen Actors Guild")
wga = Organization.create(name: "Writers Guild of America")
teamsters = Organization.create(name: "Teamsters")

sag.available_roles << Role.create(name: "Actor")
sag.available_roles << Role.create(name: "Understudy")
sag.available_roles << Role.create(name: "Stunt Person")

wga.available_roles << Role.create(name: "Writer")
wga.available_roles << Role.create(name: "Editor")
wga.available_roles << Role.create(name: "Production Assistant")

teamsters = Organization.create(name: "Key Grip")
teamsters = Organization.create(name: "Stage Hand")
teamsters = Organization.create(name: "Camera Person")

Person.create name: "Patrick Stewart", organization: sag
Person.create name: "Will Wheaton", organization: sag
Person.create name: "Joss Whedon", organization: wga
Person.create name: "Matt Groening", organization: wga
Person.create name: "Michael E. Matteson", organization: teamsters
Person.create name: "Jimmy Hoffa", organization: teamsters