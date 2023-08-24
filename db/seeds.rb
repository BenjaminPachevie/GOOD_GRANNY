# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Granny.destroy_all
Category.destroy_all

puts 'Creating users'
User.create(name: "Marie", email: "marie@lol.fr", password: "azerty")
User.create(name: "Clara", email: "clara@lol.fr", password: "azerty")
User.create(name: "Laura", email: "laura@lol.fr", password: "azerty")
User.create(name: "Benjamin", email: "benjamin@lol.fr", password: "azerty")
puts 'Done!'

puts 'Creating grannies'
josette = Granny.create(name: "Josette", presentation: "Une grand-mère aux doigts verts qui transforme son arrière-cour en paradis fleuri. Le jardin de Josette est
un sanctuaire où elle cultive des fleurs vibrantes, des herbes aromatiques et des plantes exotiques du monde entier. ",
location: "6 Place Saint-Augustin, 75008 PARIS", price: 45, user: User.all.sample)

count = 0

['josette1.png', 'josette2.png'].each do |photo|
  josette.photos.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', photo)),
    filename: "josette#{count += 1}.png", content_type: 'image/png'
  )
end

monique = Granny.create(name: "Monique", presentation: "Monique, une botaniste à la retraite, trouve la paix dans son jardin. Son amour du jardinage a commencé
dans son enfance, et elle s'occupe maintenant d'une collection variée de plantes indigènes, chacune ayant une histoire à raconter.",
location: "96 Avenue Parmentier, 75011 PARIS", price: 35, user: User.all.sample)

monique.photos.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'monique1.png')),
  filename: "monique1.png", content_type: 'image/png')

jacqueline = Granny.create(name: "Jacqueline", presentation: "La passion de Jacqueline pour le jardinage a transformé son jardin de banlieue en un havre
pour les pollinisateurs et les oiseaux. Elle consacre son temps à faire pousser des légumes biologiques et à cultiver un écosystème harmonieux.",
location: "72 Rue de Rennes, 75006 PARIS", price: 35, user: User.all.sample)

jacqueline.photos.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'jaqueline1.png')),
  filename: "jacqueline1.png", content_type: 'image/png')

claudine = Granny.create(name: "Claudine", presentation: "Passionnée de jardinage depuis des décennies, la cour arrière de Claudine est une allée de souvenirs vivants
remplis de plantes qu'elle a ramenées de ses voyages. Son jardin inspire ses petits-enfants.",
location: "109 Rue Didot, 75014 PARIS", price: 39, user: User.all.sample)

count = 0

['../../assets/images/claudine1.png', '../../assets/images/claudine2.png'].each do |photo|
  claudine.photos.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', photo)),
    filename: "claudine#{count += 1}.png", content_type: 'image/png'
  )
end

renee = Granny.create(name: "Renée", presentation: "Le jardin sur le toit de Renée en milieu urbain met en évidence son engagement en faveur de la durabilité.
Ses techniques de jardinage innovantes ont transformé un petit espace en un oasis verdoyant prospère.",
location: "65 Rue Saint-Louis en l'Ile, 75004 PARIS", price: 36, user: User.all.sample)

count = 0

['../../assets/images/renee1.png', '../../assets/images/renee2.png'].each do |photo|
  renee.photos.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', photo)),
    filename: "renee#{count += 1}.png", content_type: 'image/png'
  )
end

roberte = Granny.create(name: "Roberte", presentation: "Roberte, une matriarche culinaire, transmet ses recettes chéries à travers
des rassemblements culinaires hebdomadaires.
Sa cuisine est un lieu de tradition, où l'arôme de la cuisine réconfortante enveloppe tout le monde.",
location: "86 Rue Lemercier, 75017 PARIS", price: 42, user: User.all.sample)

count = 0

['../../assets/images/roberte1.png', '../../assets/images/roberte2.png'].each do |photo|
  roberte.photos.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', photo)),
    filename: "roberte#{count += 1}.png", content_type: 'image/png'
  )
end

francoise = Granny.create(name: "Françoise", presentation: "La cuisine de Françoise est un melting-pot culturel, où elle
marie les saveurs de son héritage mexicain avec son esprit aventureux. Ses plats éclectiques témoignent de son amour
pour la cuisine.",
location: "56 Rue de la Montagne Sainte-Genevieve, 75005 PARIS", price: 39, user: User.all.sample)

francoise.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'francoise1.png')),
filename: "francoise1.png", content_type: 'image/png')

jeannine = Granny.create(name: "Jeannine", presentation: "La cuisine de Jeannine est un laboratoire de saveurs, où elle
expérimente avec des techniques classiques et modernes. Son expertise réside dans sa capacité à transformer des
ingrédients simples en délices gastronomiques",
location: "12 Rue de Trevise, 75009 PARIS", price: 42, user: User.all.sample)

count = 0

['../../assets/images/jeannine1.png', '../../assets/images/jeannine2.png'].each do |photo|
  jeannine.photos.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', photo)),
    filename: "jeannine#{count += 1}.png", content_type: 'image/png'
  )
end

mauricette = Granny.create(name: "Mauricette", presentation: "La cuisine de Mauricette est un espace d'innovation, où elle combine
parfaitement sa passion pour la cuisine avec son intérêt pour la nutrition. Ses plats sont aussi nourrissants que
délicieux.",
location: "3 Rue Mayran, 75009 PARIS", price: 38, user: User.all.sample)

mauricette.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'mauricette1.png')),
filename: "mauricette1.png", content_type: 'image/png')

yvette = Granny.create(name: "Yvette", presentation: "La cuisine de Yvette est un lieu où les générations se rassemblent pour
apprendre et tisser des liens. Ses recettes traditionnelles sont un lien avec ses racines, et ses petits-enfants
attendent avec impatience ses leçons de cuisine.",
location: "49 Avenue Jean Moulin, 75014 PARIS", price: 35, user: User.all.sample)

count = 0

['../../assets/images/yvette1.png', '../../assets/images/yvette2.png'].each do |photo|
  yvette.photos.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', photo)), filename: "yvette#{count += 1}.png", content_type: 'image/png'
  )
end

colette = Granny.create(name: "Colette", presentation: "Les doigts agiles de Colette racontent des histoires à travers des points.
Sa salle de couture est un trésor de courtepointes faites à la main, de vêtements et d'accessoires, chacun confectionné
avec amour.",
location: "9 Rue Bayen, 75017 PARIS", price: 41, user: User.all.sample)

count = 0

['../../assets/images/colette1.png', '../../assets/images/colette2.png'].each do |photo|
  colette.photos.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', photo)), filename: "colette#{count += 1}.png", content_type: 'image/png'
  )
end

therese = Granny.create(name: "Thérèse", presentation: "La machine à coudre de Thérèse est son compagnon constant, l'aidant à
transformer des tissus vintage en vêtements modernes. Elle redonne vie aux anciens textiles, créant de l'art portable.",
location: "30 Rue Beaurepaire, 75010 PARIS", price: 33, user: User.all.sample)

therese.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'therese1.png')), filename: "therese1.png", content_type: 'image/png')

paulette = Granny.create(name: "Paulette", presentation: "Les compétences en couture de Paulette vont de la broderie délicate à
l'ameublement robuste. Son atelier de couture est devenu un havre de confort et de créativité.",
location: "59 Avenue de Villiers, 75017 PARIS", price: 45, user: User.all.sample)

count = 0

['../../assets/images/paulette1.png', '../../assets/images/paulette2.png'].each do |photo|
  paulette.photos.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', photo)), filename: "paulette#{count += 1}.png", content_type: 'image/png'
  )
end

simone = Granny.create(name: "Simone", presentation: "La salle de couture de Simone est un pôle de créativité, où elle conçoit et
coud des costumes complexes pour des productions théâtrales locales. Sa passion pour la couture s'étend aux costumes
ludiques de ses petits-enfants.",
location: "157 Boulevard du Montparnasse, 75016 PARIS", price: 41, user: User.all.sample)

count = 0

['../../assets/images/simone1.png', '../../assets/images/simone2.png'].each do |photo|
  simone.photos.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', photo)), filename: "simone#{count += 1}.png", content_type: 'image/png'
  )
end

ginette = Granny.create(name: "Ginette", presentation: "Les mains de Ginette ont cousu d'innombrables souvenirs dans le tissu. Ses
projets de couture, allant des courtepointes héritées aux robes à la mode, reflètent son engagement à préserver
l'histoire familiale.",
location: "9 rue La Boétie, PARIS, 75006", price: 32, user: User.all.sample)

count = 0

['../../assets/images/ginette1.png', '../../assets/images/ginette2.png'].each do |photo|
  ginette.photos.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', photo)), filename: "ginette#{count += 1}.png", content_type: 'image/png'
  )
end

bernadette = Granny.create(name: "Bernadette", presentation: "Bernadette est une bibliothécaire à la retraite passionnée par la
narration. Elle passe ses journées à lire à ses petits-enfants, partageant son amour pour la littérature et stimulant
leur imagination.",
location: "66 Avenue de la Motte-Picquet, 75015 PARIS", price: 36, user: User.all.sample)

bernadette.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'bernadette1.png')), filename: "bernadette1.png", content_type: 'image/png')

madeleine = Granny.create(name: "Madeleine", presentation: "Madeleine est une ancienne infirmière qui a consacré sa vie à prendre
soin des autres. Sa personnalité bienveillante s'étend à son rôle de grand-mère, toujours prête avec une étreinte
chaleureuse et une soupe au poulet maison.", location: "43 Avenue du Docteur Arnold Netter, 75012 PARIS", price: 31, user: User.all.sample)

madeleine.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'madeleine1.png')), filename: "madeleine1.png", content_type: 'image/png')

lucienne = Granny.create(name: "Lucienne", presentation: "Lucienne est une artiste dans l'âme, ayant fait carrière comme peintre.
Elle passe désormais ses journées à encadrer ses petits-enfants dans le monde de l’art, leur apprenant à voir la beauté
au quotidien.",
location: "65 Rue Lecourbe, 75015 PARIS", price: 40, user: User.all.sample)

count = 0

['../../assets/images/lucienne1.png', '../../assets/images/lucienne2.png'].each do |photo|
  lucienne.photos.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', photo)), filename: "lucienne#{count += 1}.png", content_type: 'image/png'
  )
end

micheline = Granny.create(name: "Micheline", presentation: "Micheline est une enseignante à la retraite qui inculque à
ses petits-enfants le goût d'apprendre. Sa nature patiente et encourageante fait d'elle la personne de référence pour
obtenir de l'aide aux devoirs et des conseils de vie.",
location: "25 Avenue du Bel air, 75012 PARIS", price: 39, user: User.all.sample)

count = 0

['../../assets/images/micheline1.png', '../../assets/images/micheline2.png'].each do |photo|
  micheline.photos.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', photo)), filename: "micheline#{count += 1}.png", content_type: 'image/png'
  )
end

raymonde = Granny.create(name: "Raymonde", presentation: "Raymonde eu une carrière réussie en tant que comptable dévoué.
Son souci du détail et ses compétences analytiques ont fait d'elle un atout inestimable pour son entreprise. Elle profite
désormais de sa retraite, équilibrant son amour des chiffres et sa passion pour le jardinage.",
location: "36 Boulevard Saint-Marcel, 75005 PARIS", price: 35, user: User.all.sample)

raymonde.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'raymonde1.png')), filename: "raymonde1.png", content_type: 'image/png')

huguette = Granny.create(name: "Huguette", presentation: "Huguette est une femme qui a transformé
son business en une boulangerie locale florissante. Son engagement envers la qualité
ont fait de ses pâtisseries les préférées de la communauté. Aujourd'hui, elle passe son temps à
expérimenter de nouvelles recettes et à mentorer de futurs entrepreneurs.",
location: "18 Place Vendome, 75001 PARIS", price: 42, user: User.all.sample)

huguette.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'huguette1.png')), filename: "huguette1.png", content_type: 'image/png')

puts 'Grannies created'

puts 'Creating categories'
Category.create(name: 'Jardinage', specialty: "Herbes aromatiques et plantes exotiques", granny: josette)
Category.create(name: 'Jardinage', specialty: "Plantes indigènes", granny: monique)
Category.create(name: 'Jardinage', specialty: "Légumes biologiques", granny: jacqueline)
Category.create(name: 'Jardinage', specialty: "Variété de plantes", granny: claudine)
Category.create(name: 'Conseils de vie', specialty: "Voyages dans le monde", granny: claudine)
Category.create(name: 'Jardinage', specialty: "Techniques de jardinage innovantes", granny: renee)
Category.create(name: 'Cuisine', specialty: "Rassemblements culinaires", granny: roberte)
Category.create(name: 'Cuisine', specialty: "Cuisine mexicaine revisité", granny: francoise)
Category.create(name: 'Cuisine', specialty: "Transformer des ingrédients simples en délices gastronomiques", granny: jeannine)
Category.create(name: 'Cuisine', specialty: "Cuisine et nutrition", granny: mauricette)
Category.create(name: 'Cuisine', specialty: "Recettes traditionnelles", granny: yvette)
Category.create(name: 'Couture', specialty: "Courtepointes faites à la main", granny: colette)
Category.create(name: 'Couture', specialty: "Transformer des tissus vintage en vêtements modernes", granny: therese)
Category.create(name: 'Couture', specialty: "Broderie délicate", granny: paulette)
Category.create(name: 'Couture', specialty: "Costumes pour des productions théâtrales", granny: simone)
Category.create(name: 'Couture', specialty: "Courtepointes héritées et robes à la mode", granny: ginette)
Category.create(name: 'Conseils de vie', specialty: "Littérature et narration", granny: bernadette)
Category.create(name: 'Conseils de vie', specialty: "Art moderne", granny: lucienne)
Category.create(name: 'Conseils de vie', specialty: "Aide aux devoirs et des conseils de vie", granny: micheline)
Category.create(name: 'Conseils de vie', specialty: "Comptabilité", granny: raymonde)
Category.create(name: 'Jardinage', specialty: "Plantes vertes", granny: raymonde)
Category.create(name: 'Conseils de vie', specialty: "Comptabilité", granny: raymonde)
Category.create(name: 'Conseils de vie', specialty: "Comptabilité", granny: raymonde)
Category.create(name: 'Cuisine', specialty: "Pâtisseries", granny: huguette)
Category.create(name: 'Conseils de vie', specialty: "Entreprenauriat", granny: huguette)
puts 'Categories done!'
