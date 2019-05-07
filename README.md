# README

Install ruby 2.6.1

Install rails 5.2.2.1

Install postrgress

Download master branch from https://github.com/EstebanAO/lab-web

Open the terminal and go to the folder of the project 

In config file create a file named application.rb with the following information:

POSTGRES_USER: postgres
WEB-ITESM_DATABASE_PASSWORD: some_password
POSTGRES_HOST: db
REDIS_URL: redis://@redis/0

In terminal:

Run: rails db:create

Run: rails db:migrate

Run: rails server

Create a new user according to the users manual

In another terminal run: rails console

In rails console run: u = User.first

In rails console run: u.admin = true

In rails console run: u.save

In rails console run: quit
