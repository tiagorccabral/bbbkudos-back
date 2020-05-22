# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "\nGerando participantes \n"

user = User.create(name: "Babu Santana", email: "babu@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/babu.jpg'), filename: 'babu.jpg')

user = User.create(name: "Bianca Andrade", email: "bianca@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/bianca.jpg'), filename: 'bianca.jpg')

user = User.create(name: "Gabi Martins", email: "gabi@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/gabi.jpg'), filename: 'gabi.jpg')

user = User.create(name: "Pyong Lee", email: "pyong@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/pyong.jpg'), filename: 'pyong.jpg')

user = User.create(name: "Lucas Chumbo", email: "lucas@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/lucas.jpg'), filename: 'lucas.jpg')

user = User.create(name: "Manu Gavassi", email: "manu@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/manu.jpg'), filename: 'manu.jpg')

user = User.create(name: "Mari Gonzalez", email: "mari@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/mari.jpg'), filename: 'mari.jpg')

user = User.create(name: "Petrix Barbosa", email: "petrix@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/petrix.jpg'), filename: 'petrix.jpg')

user = User.create(name: "Rafa Kalimann", email: "rafa@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/rafa.jpg'), filename: 'rafa.jpg')

user = User.create(name: "Felipe Prior", email: "felipe@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/felipe.jpg'), filename: 'felipe.jpg')

user = User.create(name: "Flayslane", email: "flayslane@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/flayslane.jpg'), filename: 'flayslane.jpg')

user = User.create(name: "Gyzelly Bicalho", email: "gyzelly@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/gizelly.jpg'), filename: 'gizelly.jpg')

user = User.create(name: "Guilherme Napolitano", email: "guilherme@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/guilherme.jpg'), filename: 'guilherme.jpg')

user = User.create(name: "Hadson Nery", email: "hadson@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/hadson.jpg'), filename: 'hadson.jpg')

user = User.create(name: "Lucas Gallina", email: "lucasg@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/lucasg.jpg'), filename: 'lucasg.jpg')

user = User.create(name: "Marcela Mc Gowan", email: "marcela@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/marcela.jpg'), filename: 'marcela.jpg')

user = User.create(name: "Thelma Assis", email: "thelma@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/thelma.jpg'), filename: 'thelma.jpg')

user = User.create(name: "Victor Hugo", email: "victor@email.com", password: "password123")
user.profile_image.attach(io: File.open('public/images/participants/victor.jpg'), filename: 'victor.jpg')

puts "Prontinho! Email: <primeiro_nome>@email.com e senha: <primeiro_nome>"