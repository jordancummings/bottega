User.create!(
  email: "jordan.dale.cummings@gmail.com",
  name: "Jordan Cummings",
  password: "girl5fir5t",
  password_confirmation: "girl5fir5t",
  roles: "site_admin"
  )

puts "1 Admin user created"

User.create!(
  email: "test@gmail.com",
  name: "Guest User",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  )

puts "1 regular user created"

Topic.create!(title: "Ruby")
Topic.create!(title: "Ruby on Rails")
Topic.create!(title: "Javascript")
Topic.create!(title: "Angular")

puts "Topics created"

Blog.create!(
    title: "Angular Framework",
    body: "I recently started learning Typescript, and after learning the basics, I dove right into Angular. I began building a web application using the Angular framework. More updates on this project will follow as I progress and complete the work.",
    topic_id: Topic.last.id
  )

puts "Blog posts created"

Skill.create!(title: "Ruby, Ruby on Rails", percent_utilized: 70)
Skill.create!(title: "HTML/CSS", percent_utilized: 50)
Skill.create!(title: "TDD/BDD", percent_utilized: 40)
Skill.create!(title: "Javascript", percent_utilized: 30)
Skill.create!(title: "Typescript/Angular", percent_utilized: 20)

puts "5 skills created"

Portfolio.create!(
  title: "Portfolio Web Application",
  subtitle: "Ruby on Rails",
  body: "I used the Ruby on Rails framework, along with dozens of Ruby gems, HTML, custom CSS and SCSS stylings, and javascript to create this portfolio website. Yes, the one you're looking at now. Yes, I realize this creates some potentially confusing recursion.",
  main_image: "website.png",
  thumb_image: "website.png",
  )

Portfolio.create!(
  title: "Cummings View Tool",
  subtitle: "Ruby Gem",
  body: "A custom ruby gem I built. It helps generate and display copyright footers for web applications. I used ruby to build this gem. Can be found on my github, here: https://github.com/jordancummings/cummings_view_tool",
  main_image: "ruby_icon.png",
  thumb_image: "ruby_icon.png",
  )

Portfolio.create!(
  title: "Overtime App",
  subtitle: "Ruby on Rails",
  body: "Built with Ruby, Ruby on Rails, Bootstrap, Javascript, and dozens of Ruby gems. This web application helps track employee overtime and includes pagination, mailer systems, automatic updates, confirmations. Can be found on my github, here: https://github.com/jordancummings/overtime-app (actual weblink to follow, once the app is pushed live).",
  main_image: "github.png",
  thumb_image: "github.png",
  )

Portfolio.last.technologies.create!(name: "Ruby")
Portfolio.last.technologies.create!(name: "Ruby on Rails")
Portfolio.last.technologies.create!(name: "Javascript")
Portfolio.last.technologies.create!(name: "Angular")

puts "Technologies created"