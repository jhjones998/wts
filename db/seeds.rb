# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name:'wts_admin', password:'wts_password', admin:true)

SFTU = User.create(name:'Science and Financial Times', password:'SFT399', admin:false)

BrazilU = User.create(name:'Brazil', password:'BZ841', admin:false)
ChinaU = User.create(name:'China', password:'RED235', admin:false)
FranceU = User.create(name:'France', password:'FR610', admin:false)
GermanyU = User.create(name:'Germany', password:'SS945', admin:false)
IndiaU = User.create(name:'India', password:'GH111', admin:false)
JapanU = User.create(name:'Japan', password:'JP292', admin:false)
RussiaU = User.create(name:'Russia', password:'KGB247', admin:false)
UKU = User.create(name:'UK', password:'MI5007', admin:false)
USAU = User.create(name:'USA', password:'USA235', admin:false)


Brazil = Country.create(name:'Brazil', user:USAU)
China = Country.create(name:'China', user:USAU)
France = Country.create(name:'France', user:USAU)
Germany = Country.create(name:'Germany', user:USAU)
India = Country.create(name:'India', user:USAU)
Japan = Country.create(name:'Japan', user:USAU)
Russia = Country.create(name:'Russia', user:USAU)
UK = Country.create(name:'UK', user:USAU)
USA = Country.create(name:'USA', user:USAU)

Access.create(user:BrazilU, country:Brazil, artifacts:true)
Access.create(user:ChinaU, country:China, artifacts:true)
Access.create(user:FranceU, country:France, artifacts:true)
Access.create(user:GermanyU, country:Germany, artifacts:true)
Access.create(user:IndiaU, country:India, artifacts:true)
Access.create(user:JapanU, country:Japan, artifacts:true)
Access.create(user:RussiaU, country:Russia, artifacts:true)
Access.create(user:UKU, country:UK, artifacts:true)
Access.create(user:USAU, country:USA, artifacts:true)

Artifact.create(country:Brazil, l1:0, l2:0, l3:0, l4:0, l5:0, l6:0)
Artifact.create(country:China, l1:0, l2:0, l3:0, l4:0, l5:0, l6:0)
Artifact.create(country:France, l1:0, l2:0, l3:0, l4:0, l5:0, l6:0)
Artifact.create(country:Germany, l1:0, l2:0, l3:0, l4:0, l5:0, l6:0)
Artifact.create(country:India, l1:0, l2:0, l3:0, l4:0, l5:0, l6:0)
Artifact.create(country:Japan, l1:0, l2:0, l3:0, l4:0, l5:0, l6:0)
Artifact.create(country:Russia, l1:0, l2:0, l3:0, l4:0, l5:0, l6:0)
Artifact.create(country:UK, l1:0, l2:0, l3:0, l4:0, l5:0, l6:0)
Artifact.create(country:USA, l1:0, l2:0, l3:0, l4:0, l5:0, l6:0)

MasterTech.create(wts_id:'A1', level:1, name:'Short Range Corrosive Bullets', desc:'Better Attack Card 1', unresearched_desc:'Serum to better penetrate alien armor', initially_visible:true)
MasterTech.create(wts_id:'A2', level:2, name:'Corrosive Splatter Bullets', desc:'Better Attack Card 2', unresearched_desc:'Testing corrosive extraterrestrial serum for larger area of effect', initially_visible:false)
MasterTech.create(wts_id:'A3', level:3, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'A4', level:4, name:'', desc:'', unresearched_desc:'', initially_visible:false)

MasterTech.create(wts_id:'B2', level:2, name:'Shredder Missiles', desc:'One-shot Missile Card 1', unresearched_desc:'Long range extraterrestial craft targetting and serum delivery system', initially_visible:false)
MasterTech.create(wts_id:'B3', level:3, name:'Virulent Xenogeneic Virus', desc:'One Shot Bio Weapon Card', unresearched_desc:'', initially_visible:false) #Political Control
MasterTech.create(wts_id:'B4', level:4, name:'', desc:'', unresearched_desc:'Larger spread explosive head for maximum penetration', initially_visible:false)

MasterTech.create(wts_id:'C2', level:2, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'C3', level:3, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'C4', level:4, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'C5', level:5, name:'', desc:'', unresearched_desc:'', initially_visible:false)

MasterTech.create(wts_id:'D2', level:2, name:'Heavy Smoke Screen', desc:'Better Acquisition Card', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'D3', level:3, name:'Smoke Screen With Stun Serum', desc:'Acquisition +1 Permanently', unresearched_desc:'Enhanced distraction/extraction techniques', initially_visible:false)
MasterTech.create(wts_id:'D4', level:4, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'D5', level:5, name:'', desc:'', unresearched_desc:'', initially_visible:false)

MasterTech.create(wts_id:'E1', level:1, name:'', desc:'', unresearched_desc:'', initially_visible:true)
MasterTech.create(wts_id:'E2', level:2, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'E3', level:3, name:'Infinity Fuel', desc:'No Zone Hopping Penalty for Interceptors', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'E4', level:4, name:'', desc:'', unresearched_desc:'Increasing human engineer productivity to maximum levels', initially_visible:false)
MasterTech.create(wts_id:'E5', level:5, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'E6', level:6, name:'', desc:'', unresearched_desc:'', initially_visible:false)

MasterTech.create(wts_id:'F1', level:1, name:'', desc:'', unresearched_desc:'', initially_visible:true)
MasterTech.create(wts_id:'F2', level:2, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'F3', level:3, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'F4', level:4, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'F5', level:5, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'F6', level:6, name:'', desc:'', unresearched_desc:'', initially_visible:false)

MasterTech.create(wts_id:'G1', level:1, name:'', desc:'', unresearched_desc:'', initially_visible:true)
MasterTech.create(wts_id:'G2', level:2, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'G3', level:3, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'G4', level:4, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'G5', level:5, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'G6', level:6, name:'', desc:'', unresearched_desc:'', initially_visible:false)

MasterTech.create(wts_id:'H4', level:4, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'H6', level:6, name:'', desc:'', unresearched_desc:'', initially_visible:false)

MasterTech.create(wts_id:'I1', level:1, name:'', desc:'', unresearched_desc:'', initially_visible:true)
MasterTech.create(wts_id:'I2', level:2, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'I3', level:3, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'I4', level:4, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'I5', level:5, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'I6', level:6, name:'', desc:'', unresearched_desc:'', initially_visible:false)

MasterTech.create(wts_id:'J1', level:1, name:'', desc:'', unresearched_desc:'', initially_visible:true)
MasterTech.create(wts_id:'J2', level:2, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'J3', level:3, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'J4', level:4, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'J5', level:5, name:'', desc:'', unresearched_desc:'', initially_visible:false)

MasterTech.create(wts_id:'K2', level:2, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'K3', level:3, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'K4', level:4, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'K5', level:5, name:'', desc:'', unresearched_desc:'', initially_visible:false)

MasterTech.create(wts_id:'L1', level:1, name:'', desc:'', unresearched_desc:'', initially_visible:true)
MasterTech.create(wts_id:'L2', level:2, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'L3', level:3, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'L4', level:4, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'L5', level:5, name:'', desc:'', unresearched_desc:'', initially_visible:false)

MasterTech.create(wts_id:'M1', level:1, name:'', desc:'', unresearched_desc:'', initially_visible:true)
MasterTech.create(wts_id:'M2', level:2, name:'', desc:'', unresearched_desc:'', initially_visible:false)
MasterTech.create(wts_id:'M3', level:3, name:'', desc:'', unresearched_desc:'', initially_visible:false)




#MasterTech.create(wts_id:'', level:, name:'', desc:'', unresearched_desc:'', initially_visible:false)


