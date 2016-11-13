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

A1 = MasterTech.create(wts_id:'A1', level:1, name:'Short Range Corrosive Bullets', desc:'Better Attack Card 1', unresearched_desc:'Serum to better penetrate alien armor', initially_visible:true)
A2 = MasterTech.create(wts_id:'A2', level:2, name:'Corrosive Splatter Bullets', desc:'Better Attack Card 2', unresearched_desc:'Testing corrosive extraterrestrial serum for larger area of effect', initially_visible:false)
A3 = MasterTech.create(wts_id:'A3', level:3, name:'Long Range EX Splatter Cannon', desc:'Damage +1 Permanently', unresearched_desc:'Developing extra sticky projectile cannon with greater reach', initially_visible:false)
A4 = MasterTech.create(wts_id:'A4', level:4, name:'Interceptor Weapons Function in Space', desc:'“Didn´t I promise you fireworks?”', unresearched_desc:'Advancing weapon propulsion tech for usage in space', initially_visible:false)

A2 = MasterTech.create(wts_id:'B2', level:2, name:'Shredder Missiles', desc:'One-shot Missile Card 1', unresearched_desc:'Long range extraterrestial craft targetting and serum delivery system', initially_visible:false)
A3 = MasterTech.create(wts_id:'B3', level:3, name:'Virulent Xenogeneic Virus', desc:'One Shot Bio Weapon Card', unresearched_desc:'Alter corrosive serum to affect extraterrestrial organic tissue with a long range delivery system', initially_visible:false) #Political Control
A4 = MasterTech.create(wts_id:'B4', level:4, name:'Large Spread Shredder Missiles', desc:'One Shot Missile Card', unresearched_desc:'Larger spread explosive head for maximum penetration', initially_visible:false) #POLITICAL_CONTROL

A2 = MasterTech.create(wts_id:'C2', level:2, name:'Point Defense Laser Machine Gun Upgrade', desc:'Better Defensive Card', unresearched_desc:'Improving identification and shielding of fast moving projectiles', initially_visible:false)
A3 = MasterTech.create(wts_id:'C3', level:3, name:'Point Defense Faster Tracking', desc:'Better Defensive Card', unresearched_desc:'Instantaneous identification and shielding of fast moving projectiles', initially_visible:false)
A4 = MasterTech.create(wts_id:'C4', level:4, name:'Point Defense Lasers', desc:'Defense +1 Permanently', unresearched_desc:'Alien impact resistant shielding', initially_visible:false)
A5 = MasterTech.create(wts_id:'C5', level:5, name:'A Christmas Sweater', desc:'Interceptor/Nukes Can Withstand Cold Vacuum/Reentry', unresearched_desc:'“Something to keep the nukes/interceptors warm at night”', initially_visible:false)

D2 = MasterTech.create(wts_id:'D2', level:2, name:'Heavy Smoke Screen', desc:'Better Acquisition Card', unresearched_desc:'Close range distraction upgrades', initially_visible:false)
D3 = MasterTech.create(wts_id:'D3', level:3, name:'Smoke Screen With Stun Serum', desc:'Acquisition +1 Permanently', unresearched_desc:'Enhanced distraction/extraction techniques', initially_visible:false)
D4 = MasterTech.create(wts_id:'D4', level:4, name:'Ultra High Frequency Alien Sound Cannon', desc:'Better Acquisition Card', unresearched_desc:'Extra-sophisticated distraction/extraction weaponry', initially_visible:false)
D5 = MasterTech.create(wts_id:'D5', level:5, name:'Paralyzing Optical Blast', desc:'Re-Roll Acquisition Die, Keep Second Roll', unresearched_desc:'“It’s all about the artifacts baby”', initially_visible:false)

E1=MasterTech.create(wts_id:'E1', level:1, name:'Hybrid Fuel', desc:'Zone Hopping Penalty Reduced (-1) for Interceptors', unresearched_desc:'Extrapolating alternative fuel source for interceptors', initially_visible:true)
E2=MasterTech.create(wts_id:'E2', level:2, name:'New Caffeine™', desc:'1/Turn Can Repair 1 Interceptor on Turn it was Damaged', unresearched_desc:'Increasing productivity of human engineers', initially_visible:false) #POLITICAL CONTROL
E3=MasterTech.create(wts_id:'E3', level:3, name:'Infinity Fuel', desc:'No Zone Hopping Penalty for Interceptors', unresearched_desc:'Cracking the code to alien fuel cells', initially_visible:false)
E4=MasterTech.create(wts_id:'E4', level:4, name:'Cybernetic Implants', desc:'Can Repair 2 Interceptors and +1 Credits to Repair (minimum 1)', unresearched_desc:'Increasing human engineer productivity to maximum levels', initially_visible:false) #POLITICAL CONTROL
E5=MasterTech.create(wts_id:'E5', level:5, name:'Large Capacity Hybrid Fuel Storage', desc:'Nukes Have Fuel (not Armor) to Reach the Moon', unresearched_desc:'“The Hail Mary”', initially_visible:false) #POLITICAL CONTROL
E6=MasterTech.create(wts_id:'E6', level:6, name:'Infinity Fuel Tank Booster', desc:'Interceptors Have Fuel (not Armor) to Reach Mars', unresearched_desc:'“Fill ‘Er Up” (pats ship on back)', initially_visible:false)

F1=MasterTech.create(wts_id:'F1', level:1, name:'Mass Energy Production Center', desc:'1/Turn One Credit Received is Reserves', unresearched_desc:'Superior energy production method', initially_visible:true)#POLITICAL CONTROL
F2=MasterTech.create(wts_id:'F2', level:2, name:'Free Public Utilities', desc:'1/Turn +1 PR', unresearched_desc:'Increasing standard of living for all citizens', initially_visible:false)
F3=MasterTech.create(wts_id:'F3', level:3, name:'Energy Export System', desc:'Ally with any NPC Country for 1 Credit', unresearched_desc:'Tubing system connecting mass energy centers to neighbors', initially_visible:false) #POLITICAL CONTROL
F4=MasterTech.create(wts_id:'F4', level:4, name:'High Efficiency Solar Panels', desc:'1/Turn +1 Reserve and +3 Allies if First to Research', unresearched_desc:'Higher efficiency solar energy production/storage', initially_visible:false)
F5=MasterTech.create(wts_id:'F5', level:5, name:'Self-Sustaining Photon Energy', desc:'1/Turn +1 Reserve and +1 PR', unresearched_desc:'Converting Mass Energy into human food source', initially_visible:false)
F6=MasterTech.create(wts_id:'F6', level:6, name:'Ozone Replicators', desc:'Income Level +1, +2 Reserves/Turn, Lowering of Global Terror (if first)', unresearched_desc:'Discovering method for human food/energy absorption through skin', initially_visible:false)

G1=MasterTech.create(wts_id:'G1', level:1, name:'Visual Temporal Gateway', desc:'See tech descriptions before they are researched', unresearched_desc:'localized temporal viewpoint', initially_visible:true)
G2=MasterTech.create(wts_id:'G2', level:2, name:'Durable Nanobots', desc:'1/Turn +1 Research Credit', unresearched_desc:'Increasing nanobot efficiency and reliability', initially_visible:false) #POLITICAL CONTROL
G3=MasterTech.create(wts_id:'G3', level:3, name:'Virtual Reality Gaming Environment', desc:'1/Turn Secret Bid and 3 Free Bid Tokens', unresearched_desc:'Completely immersive virtual environments', initially_visible:false)#POLITICAL CONTROL
G4=MasterTech.create(wts_id:'G4', level:4, name:'Net Coated w/Xenogeneic Paralytic Venom', desc:'One Shot Alien Capture Card', unresearched_desc:'“The Invisible Trap”', initially_visible:false)
G5=MasterTech.create(wts_id:'G5', level:5, name:'High Speed Component Imaging and Targeting', desc:'Card Draw and Keep +1', unresearched_desc:'Sub microscopic acquisition agents', initially_visible:false)
G6=MasterTech.create(wts_id:'G6', level:6, name:'Quantum Computing', desc:'1/Turn Research Credits Counts Towards 2 Technologies', unresearched_desc:'Non binary computing', initially_visible:false)

H4=MasterTech.create(wts_id:'H4', level:4, name:'Efficient Element Breakdown System', desc:'1/Turn +2 Research Credits', unresearched_desc:'“The best tiny little helpers money can buy”', initially_visible:false) #POLITICAL CONTROL
H6=MasterTech.create(wts_id:'H6', level:6, name:'Extreme Long Range Imaging/Targeting', desc:'Can Detect Alien Bases on Mars', unresearched_desc:'“Nowhere left to hide”', initially_visible:false)

I1=MasterTech.create(wts_id:'I1', level:1, name:'Extraction Preservation', desc:'15% Chance that your artifact is not consumed after a successful research', unresearched_desc:'Excess artifact repurposing', initially_visible:true)#POLITICAL CONTROL
I2=MasterTech.create(wts_id:'I2', level:2, name:'Temporary Miniaturization', desc:'1/Turn +1 Free Plane Result', unresearched_desc:'Compression of artifact scanning tools', initially_visible:false)
I3=MasterTech.create(wts_id:'I3', level:3, name:'Non-Authentic Xenocraft Imaging', desc:'Detect Drones on Map', unresearched_desc:'Decoding artifact materials to better identify saucers from false counterparts', initially_visible:false)
I4=MasterTech.create(wts_id:'I4', level:4, name:'Alien Command Interceptor', desc:'1/Turn Before Battle Roll d6, 4-6 See Opponents Card then Place Card', unresearched_desc:'Debugging alien military command frequencies', initially_visible:false)
I5=MasterTech.create(wts_id:'I5', level:5, name:'Long Range Imaging/Targeting', desc:'Can Detect Alien Bases on the Moon', unresearched_desc:'“What’s that, up in the sky?”', initially_visible:false)
I6=MasterTech.create(wts_id:'I6', level:6, name:'Command MAXX', desc:'1/Turn Before Battle See Opponents Card then Place Card', unresearched_desc:'Upgrading Command Interceptor software', initially_visible:false)

J1=MasterTech.create(wts_id:'J1', level:1, name:'Alien Utility Belt', desc:'Operative Rolls +1', unresearched_desc:'Gadgetry to assist the work of operatives in the field', initially_visible:true)
J2=MasterTech.create(wts_id:'J2', level:2, name:'Op Bug', desc:'Spy on Operatives (50% Chance)', unresearched_desc:'Technology to track and monitor foreign operatives', initially_visible:false) #POLITICAL CONTROL
J3=MasterTech.create(wts_id:'J3', level:3, name:'Op Bug Scrambler', desc:'Detect Operatives Comm Bugs and Origin, Stop or Leak False Info', unresearched_desc:'“Spy vs Spy”', initially_visible:false) #POLITICAL CONTROL
J4=MasterTech.create(wts_id:'J4', level:4, name:'Op Bug 9000', desc:'Spy on Operatives (100% Chance)', unresearched_desc:'Perfection of foreign operative tracking hardware', initially_visible:false)
J5=MasterTech.create(wts_id:'J5', level:5, name:'Alien Tracking Drone', desc:'Spy on Alien Operatives (50% Chance)', unresearched_desc:'“Spy vs Alien spy”', initially_visible:false)  #POLITICAL CONTROL

K2=MasterTech.create(wts_id:'K2', level:2, name:'Handheld Xenomorphic Scanners', desc:'1/Turn 50% Chance for Free Black Market Card', unresearched_desc:'Terrestrial artifact locator', initially_visible:false)
K3=MasterTech.create(wts_id:'K3', level:3, name:'Information Scrambler', desc:'Target Bugged Nation -2 to Science Credits, Bug is Destroyed', unresearched_desc:'“Changing all the zeros to ones”', initially_visible:false)
K4=MasterTech.create(wts_id:'K4', level:4, name:'Public Information Scrambler', desc:'Target Bugged Nation -2 to PR, Bug is Destroyed', unresearched_desc:'“The power of doubt and confusion”', initially_visible:false)
K5=MasterTech.create(wts_id:'K5', level:5, name:'High Yield Scanners', desc:'1/Turn Free Black Market Card; Black Market Artifacts Cost 2', unresearched_desc:'“Bringing darkness to light”', initially_visible:false)#POLITICAL CONTROL

L1=MasterTech.create(wts_id:'L1', level:1, name:'Trojan Box', desc:'Spy on Another Country’s Tech Tree', unresearched_desc:'Miniaturization of stealth communication devices', initially_visible:true)
L2=MasterTech.create(wts_id:'L2', level:2, name:'Trojan Box Detection', desc:'Detect Tech Tree Bug and Origin, Stop Bug for 1 Credit', unresearched_desc:'Identifying presence of alien grade espionage equipment', initially_visible:false)
L3=MasterTech.create(wts_id:'L3', level:3, name:'Data Stream Injection', desc:'Delay Scientist Team: Scientist Rolls 1 Die at a Time During Artifact Hunt', unresearched_desc:'“Clipping the wings” of artifact hunting teams', initially_visible:false)
L4=MasterTech.create(wts_id:'L4', level:4, name:'Precision Cyber Attack', desc:'Steal 1 Tech from Bugged Nation, Bug Destroyed', unresearched_desc:'“Wolf in sheep’s clothing”', initially_visible:false)
L5=MasterTech.create(wts_id:'L5', level:5, name:'Artifact Detection Scrambler', desc:'Delay Scientist Team: Cannot do Anything Except Remove Delays', unresearched_desc:'“Who knew science could be this fun”', initially_visible:false)

M1=MasterTech.create(wts_id:'M1', level:1, name:'Space Communication Bug', desc:'Spy on Another Country’s Communications with Extraterrestrials', unresearched_desc:'“On the other end of the phone”', initially_visible:true)
M2=MasterTech.create(wts_id:'M2', level:2, name:'Xeno Bug Detection', desc:'Detect Alien Comms Bug, Stop Bug or Leak False Info', unresearched_desc:'Xenomorphic espionage detection system', initially_visible:false)
M3=MasterTech.create(wts_id:'M3', level:3, name:'Long Range Data Stream Injection', desc:'Send Comm of Nation being Comm Bugged', unresearched_desc:'“Ventriloquism (in space)”', initially_visible:false)


#MasterTech.create(wts_id:'', level:, name:'', desc:'', unresearched_desc:'', initially_visible:false)

A1.children << [A1, B1, C1, D1]
E1.children << E2
F1.children << F2
G1.children << G2
I1.children << I2
J1.children << J2
L1.children << [L2, K1]
M1.children << M2

A2.children << A3
B2.children << B3
C2.children << C3
D2.children << D3
E2.children << E3
F2.children << F3
G2.children << G3
I2.children << I3
J2.children << J3
K2.children << K3
L2.children << L3
M2.children << M3

A3.children << A4
B3.children << B4
C3.children << C4
D3.children << D4
E3.children << E4
F3.children << F4
G3.children << [G4, H4]
I3.children << I4
J3.children << J4
K3.children << K4
L3.children << L4

C4.children << C5
D4.children << D5
E4.children << E5
F4.children << F5
G4.children << G5
I4.children << I5
J4.children << J5
K4.children << K5
L4.children << L5

E5.children << E6
F5.children << F6
G5.children << G6
I5.children << [H6, I6]

MasterTech.all.each do |t|
  Country.all.each do |c|
    TechInstance.create(country:c, master_tech:t, visible:t.initially_visible, researching:false, researched:false, partial_credit:0)
  end
end



