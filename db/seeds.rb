# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

portfolios = Portfolio.create([
  {
    id: 1,
    img: "img",
    title: 'Bazuu Foods',
    techStack: 'HTML5, CSS3, JavaScript',
    description: 'Bazuu foods is a restaurant website that aims to showcase different foods served by the hotel.',
    live_link: 'https://nemwel-boniface.github.io/bazuu/',
    howBuiltAbbr: 'solo',
    howBuiltDesc: 'This is a project that was done as a solo',
  },
  {
    id: 2,
    img: "img",
    title: 'My Pesa',
    techStack: 'Rails, Bootstrap, PostgreSQL',
    description: 'My pesa is a Ruby on Rails application that aims to make the process of tracking my expenses easier. It will hopefully help you too! You will be able to create your account and have all your expenses there.',
    live_link: 'https://my-pesa.herokuapp.com/',
    github_link: 'https://github.com/Nemwel-Boniface/nemwel_budget_app',
    howBuiltAbbr: 'solo',
    howBuiltDesc: 'This is a project that was done as a solo',
  },
  {
    id: 3,
    img: "img",
    title: 'Relworx Money',
    techStack: 'HTML5, CSS3, JavaScript',
    description: 'Nemwel Relworx Money is a Single Page application that aims to showcase how transactions can be handled in the client side.',
    live_link: 'https://nemwel-relworx.netlify.app/',
    github_link: 'https://github.com/Nemwel-Boniface/Relworx_Money',
    howBuiltAbbr: 'solo',
    howBuiltDesc: 'This is a project that was done as a solo',
  }
])