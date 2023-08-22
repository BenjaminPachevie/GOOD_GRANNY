# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "Marie", email: "marie@lol.fr", password: "azerty")
User.create(name: "Clara", email: "clara@lol.fr", password: "azerty")
User.create(name: "Laura", email: "laura@lol.fr", password: "azerty")
User.create(name: "Benjamin", email: "benjamin@lol.fr", password: "azerty")

puts 'Creating Josette'
josette = Granny.create(name: "Josette", presentation: "Une grand-mère aux doigts verts qui transforme son arrière-cour
en paradis fleuri. Le jardin de Josette est un sanctuaire où elle cultive des fleurs vibrantes, des herbes aromatiques
et des plantes exotiques du monde entier. ",
                        pictures: "", location: ["75020", "75011"], price: 45, user: User.all.sample)

count = 0

['../../assets/images/josette1.jpeg', '../../assets/images/josette2.jpeg'].each do |photo|
  josette.photos.attach(
    io: File.open(photo), filename: "josette_#{count += 1}.png", content_type: 'image/png'
  )
end
puts 'Josette Created'

puts 'Creating Monique'
monique = Granny.create(name: "Monique", presentation: "Monique, une botaniste à la retraite, trouve la paix dans son jardin. Son
amour du jardinage a commencé dans son enfance, et elle s'occupe maintenant d'une collection variée de plantes indigènes,
chacune ayant une histoire à raconter.", pictures: "", location: ["75008", "75013", "75014"], price: 35)

monique.photos.attach(
  io: File.open('../../assets/images/monique1.png'), filename: "monique1.png", content_type: 'image/png'
)
puts 'Monique created'

jacqueline = Granny.create(name: "Jacqueline", presentation: "La passion de Jacqueline pour le jardinage a transformé son jardin de
banlieue en un havre pour les pollinisateurs et les oiseaux. Elle consacre son temps à faire pousser des légumes
biologiques et à cultiver un écosystème harmonieux.", pictures: "", location: ["75008", "75016"], price: 35)

jacqueline.photos.attach(
  io: File.open('../../assets/images/jacqueline1.png'), filename: "jacqueline1.png", content_type: 'image/png'
)

claudine = Granny.create(name: "Claudine", presentation: "Passionnée de jardinage depuis des décennies, la cour arrière de Claudine
est une allée de souvenirs vivants remplis de plantes qu'elle a ramenées de ses voyages. Son jardin inspire ses
petits-enfants.", pictures: "", location: ["75004", "75005", "75012"], price: 39)

count = 0

['../../assets/images/claudine1.jpeg', '../../assets/images/claudine2.jpeg'].each do |photo|
  claudine.photos.attach(
    io: File.open(photo), filename: "claudine#{count += 1}.png", content_type: 'image/png'
  )
end

renee = Granny.create(name: "Renée", presentation: "Le jardin sur le toit de Renée en milieu urbain met en évidence son
engagement en faveur de la durabilité. Ses techniques de jardinage innovantes ont transformé un petit espace en un oasis
verdoyant prospère.", pictures: "", location: ["75007", "75014", "75015"], price: 36)

count = 0

['../../assets/images/renee1.jpeg', '../../assets/images/renee2.jpeg'].each do |photo|
  renee.photos.attach(
    io: File.open(photo), filename: "renee#{count += 1}.png", content_type: 'image/png'
  )
end

roberte = Granny.create(name: "Roberte", presentation: "Roberte, une matriarche culinaire, transmet ses recettes chéries à travers
des rassemblements culinaires hebdomadaires. Sa cuisine est un lieu de tradition, où l'arôme de la cuisine réconfortante
enveloppe tout le monde.", pictures: "", location: ["75005", "75006"], price: 42)

count = 0

['../../assets/images/roberte1.jpeg', '../../assets/images/roberte2.jpeg'].each do |photo|
  roberte.photos.attach(
    io: File.open(photo), filename: "roberte#{count += 1}.png", content_type: 'image/png'
  )
end

francoise = Granny.create(name: "Françoise", presentation: "La cuisine de Françoise est un melting-pot culturel, où elle
marie les saveurs de son héritage mexicain avec son esprit aventureux. Ses plats éclectiques témoignent de son amour
pour la cuisine.", pictures: "", location: ["75011", "75020"], price: 39)

francoise.photos.attach(io: File.open('../../assets/images/francoise1.png'), filename: "francoise1.png", content_type: 'image/png')

jeannine = Granny.create(name: "Jeannine", presentation: "La cuisine de Jeannine est un laboratoire de saveurs, où elle
expérimente avec des techniques classiques et modernes. Son expertise réside dans sa capacité à transformer des
ingrédients simples en délices gastronomiques", pictures: "", location: ["75012", "75013"], price: 42)

count = 0

['../../assets/images/jeannine1.jpeg', '../../assets/images/jeannine2.jpeg'].each do |photo|
  jeannine.photos.attach(
    io: File.open(photo), filename: "jeannine#{count += 1}.png", content_type: 'image/png'
  )
end

mauricette = Granny.create(name: "Mauricette", presentation: "La cuisine de Mauricette est un espace d'innovation, où elle combine
parfaitement sa passion pour la cuisine avec son intérêt pour la nutrition. Ses plats sont aussi nourrissants que
délicieux.", pictures: "", location: ["75008", "75017", "75018"], price: 38)

mauricette.photos.attach(io: File.open('../../assets/images/mauricette1.png'), filename: "mauricette1.png", content_type: 'image/png')

yvette = Granny.create(name: "Yvette", presentation: "La cuisine de Yvette est un lieu où les générations se rassemblent pour
apprendre et tisser des liens. Ses recettes traditionnelles sont un lien avec ses racines, et ses petits-enfants
attendent avec impatience ses leçons de cuisine.", pictures: "", location: ["75002", "75009", "75010"], price: 35)

count = 0

['../../assets/images/yvette1.jpeg', '../../assets/images/yvette2.jpeg'].each do |photo|
  yvette.photos.attach(
    io: File.open(photo), filename: "yvette#{count += 1}.png", content_type: 'image/png'
  )
end

colette = Granny.create(name: "Colette", presentation: "Les doigts agiles de Colette racontent des histoires à travers des points.
Sa salle de couture est un trésor de courtepointes faites à la main, de vêtements et d'accessoires, chacun confectionné
avec amour.", pictures: "", location: ["75004", "75011"], price: 41)

count = 0

['../../assets/images/colette1.jpeg', '../../assets/images/colette2.jpeg'].each do |photo|
  colette.photos.attach(
    io: File.open(photo), filename: "colette#{count += 1}.png", content_type: 'image/png'
  )
end

therese = Granny.create(name: "Thérèse", presentation: "La machine à coudre de Thérèse est son compagnon constant, l'aidant à
transformer des tissus vintage en vêtements modernes. Elle redonne vie aux anciens textiles, créant de l'art portable.",
                        pictures: "", location: ["75014", "75015"], price: 33)

therese.photos.attach(io: File.open('../../assets/images/therese1.png'), filename: "therese1.png", content_type: 'image/png')

paulette = Granny.create(name: "Paulette", presentation: "Les compétences en couture de Paulette vont de la broderie délicate à
l'ameublement robuste. Son atelier de couture est devenu un havre de confort et de créativité.",
                         pictures: "", location: ["75001", "75006", "75007"], price: 45)

count = 0

['../../assets/images/paulette1.jpeg', '../../assets/images/paulette2.jpeg'].each do |photo|
  paulette.photos.attach(
    io: File.open(photo), filename: "paulette#{count += 1}.png", content_type: 'image/png'
  )
end

simone = Granny.create(name: "Simone", presentation: "La salle de couture de Simone est un pôle de créativité, où elle conçoit et
coud des costumes complexes pour des productions théâtrales locales. Sa passion pour la couture s'étend aux costumes
ludiques de ses petits-enfants.", pictures: "", location: ["75015", "75016"], price: 41)

count = 0

['../../assets/images/simone1.jpeg', '../../assets/images/simone2.jpeg'].each do |photo|
  simone.photos.attach(
    io: File.open(photo), filename: "simone#{count += 1}.png", content_type: 'image/png'
  )
end

ginette = Granny.create(name: "Ginette", presentation: "Les mains de Ginette ont cousu d'innombrables souvenirs dans le tissu. Ses
projets de couture, allant des courtepointes héritées aux robes à la mode, reflètent son engagement à préserver
l'histoire familiale.", pictures: "", location: ["75011", "75012", "75020"], price: 32)

count = 0

['../../assets/images/ginette1.jpeg', '../../assets/images/ginette2.jpeg'].each do |photo|
  ginette.photos.attach(
    io: File.open(photo), filename: "ginette#{count += 1}.png", content_type: 'image/png'
  )
end

bernadette = Granny.create(name: "Bernadette", presentation: "Bernadette est une bibliothécaire à la retraite passionnée par la
narration. Elle passe ses journées à lire à ses petits-enfants, partageant son amour pour la littérature et stimulant
leur imagination.", pictures: "", location: ["75006", "75007", "75014", "75015"], price: 36)

bernadette.photos.attach(io: File.open('../../assets/images/bernadette1.png'), filename: "bernadette1.png", content_type: 'image/png')

madeleine = Granny.create(name: "Madeleine", presentation: "Madeleine est une ancienne infirmière qui a consacré sa vie à prendre
soin des autres. Sa personnalité bienveillante s'étend à son rôle de grand-mère, toujours prête avec une étreinte
chaleureuse et une soupe au poulet maison.", pictures: "", location: ["75005", "75012", "75013"], price: 31)

madeleine.photos.attach(io: File.open('../../assets/images/madeleine1.png'), filename: "madeleine1.png", content_type: 'image/png')

lucienne = Granny.create(name: "Lucienne", presentation: "Lucienne est une artiste dans l'âme, ayant fait carrière comme peintre.
Elle passe désormais ses journées à encadrer ses petits-enfants dans le monde de l’art, leur apprenant à voir la beauté
au quotidien.", pictures: "", location: ["75001", "75002", "75009"], price: 40)

count = 0

['../../assets/images/lucienne1.jpeg', '../../assets/images/lucienne2.jpeg'].each do |photo|
  lucienne.photos.attach(
    io: File.open(photo), filename: "lucienne#{count += 1}.png", content_type: 'image/png'
  )
end

micheline = Granny.create(name: "Micheline", presentation: "Micheline est une enseignante à la retraite qui inculque à
ses petits-enfants le goût d'apprendre. Sa nature patiente et encourageante fait d'elle la personne de référence pour
obtenir de l'aide aux devoirs et des conseils de vie.", pictures: "", location: ["75008", "75016", "75017"], price: 39)

count = 0

['../../assets/images/micheline1.jpeg', '../../assets/images/micheline2.jpeg'].each do |photo|
  micheline.photos.attach(
    io: File.open(photo), filename: "micheline#{count += 1}.png", content_type: 'image/png'
  )
end

raymonde = Granny.create(name: "Raymonde", presentation: "Raymonde eu une carrière réussie en tant que comptable dévoué.
Son souci du détail et ses compétences analytiques ont fait d'elle un atout inestimable pour son entreprise. Elle profite
désormais de sa retraite, équilibrant son amour des chiffres et sa passion pour le jardinage.",
                         pictures: "", location: ["75018", "75019"], price: 35)

raymonde.photos.attach(io: File.open('../../assets/images/raymonde1.png'), filename: "raymonde1.png", content_type: 'image/png')

huguette = Granny.create(name: "Huguette", presentation: "Huguette est une femme d'affaires résiliante qui a transformé
son petit business en une boulangerie locale florissante. Son esprit d’entreprise et son engagement envers la qualité
ont fait de ses pâtisseries les préférées de la communauté. Aujourd'hui à la retraite, elle passe son temps à
expérimenter de nouvelles recettes et à mentorer de futurs entrepreneurs.",
                         pictures: "", location: ["75003", "75011", "75020"], price: 42)

huguette.photos.attach(io: File.open('../../assets/images/huguette1.png'), filename: "huguette1.png", content_type: 'image/png')
