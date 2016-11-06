# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
MasterTech.create(wts_id:'A1', level:1, name:'Short Range Corrosive Bullets', desc:'Better Attack Card 1', unresearched_desc:'Serum to better penetrate alien armor', initally_visible:true)
MasterTech.create(wts_id:'A2', level:2, name:'Corrosive Splatter Bullets', desc:'Better Attack Card 2', unresearched_desc:'Increase serum effect', initally_visible:true)
MasterTech.create(wts_id:'B2', level:2, name:'Shredder Missiles', desc:'One-shot Missile Card 1', unresearched_desc:'Long range extraterrestial craft targetting and serum delivery system', initally_visible:true)
User.create(name:'wts_admin', password:'wts_password', admin:true)