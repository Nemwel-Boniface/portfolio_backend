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

blogs = Blog.create([
  {
    id: 1,
    img: "img",
    dateWritten: '11 April 2022',
    abbreviation: '',
    abbreviated_name: 'General',
    article_title: 'Self -Taught VS Boot-camp route',
    article_description: 'If you&apos;ve always wanted to venture into the tech industry I am sure you have at least once debated amongst yourself on which path will guarantee you the desired results.',
    article_link: 'https://nemwelb.medium.com/self-taught-vs-boot-camp-route-e44c98ed06e1',
  },
  {
    id: 2,
    img: "img",
    dateWritten: '21 June 2022',
    abbreviation: 'Data structures and Algorithms',
    abbreviated_name: 'DSA',
    article_title: 'Introduction to Data structures and algorithms',
    article_description: 'Data structures and algorithms. Sounds like an enigma, right? Luckily for you, my reader, today, I aim to debunk what these two mean by giving you a beginner-friendly overview of each and end it all with a simple example.',
    article_link: 'https://dev.to/nemwelboniface/data-structures-and-algorithms-277f',
  },
  {
    id: 3,
    img: "img",
    dateWritten: '22 August 2022',
    abbreviation: 'Application Programming interface',
    abbreviated_name: 'API',
    article_title: 'How to Create an API using Ruby on Rails 7 and PostgreSQL database',
    article_description: 'If you are new to programming like me I am sure that each time you come across this term you think of it as a very complex enigma to decipher.',
    article_link: 'https://dev.to/nemwelboniface/api-with-rails-7-ngh',
  },
])

testimonials = Testimonial.create([
  {
    id: 1,
    testimonial_name: "Asha Vijayan",
    testimonial_occupation: "Software developer",
    testimonial_image: "img",
    testimonial_desc: "I had the pleasure of working with Nemwel on some projects,",
    testimonial_link: "To be added",
  },
  {
    id: 2,
    testimonial_name: "Tufahel Ahmed",
    testimonial_occupation: "Full-Stack web developer",
    testimonial_image: "img",
    testimonial_desc: "I had the pleasure of working with Nemwel on some projects,",
    testimonial_link: "To be added",
  },
  {
    id: 3,
    testimonial_name: "Soufiane Boursen",
    testimonial_occupation: "Software Engineer",
    testimonial_image: "img",
    testimonial_desc: "I had the pleasure of working with Nemwel on some projects,",
    testimonial_link: "To be added",
  },
])