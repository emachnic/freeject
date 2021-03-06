# Freeject [![Build Status](http://travis-ci.org/emachnic/freeject.png)](http://travis-ci.org/emachnic/freeject)


***

## Freeject Background

I started working as an independent developer after being laid off from my first real job.
At that point (January 2010), the job was pretty horrible and I doubted I'd be able
to find another job quickly so I began freelancing using [Ruby on Rails](http://rubyonrails.org).
I tried many different project management solutions and have not found one that really
fit my workflow well. This is my project management solution. It is opinionated
and works for me so if it doesn't fit you then I won't be upset.

## Goals for Freeject

Starting off, this is basically just going to be a Rails app that people can clone and
use/modify as they deem fit. Eventually, I'd like to add in mobile apps that are open-sourced
as well because the market is seriously lacking in a good, free project management solution
with good cross-platform mobile apps.

Freeject is also starting using a relational database for the backend. I may eventually
add the ability to specify other options such as Mongoid or something else.

## Getting Started

Check your Ruby version `ruby -v` and make sure you are on version 1.9.2. You also
need to make sure you have Bundler installed `(sudo) gem install bundler`.

Start by cloning the application and running migrations

    git clone git://github.com/emachnic/freeject.git
    
    bundle install
    
    rake db:create
    
    rake db:migrate
    
Run the server `rails server` and navigate to [http://localhost:3000](http://localhost:3000).
You should see a 'Welcome' page with instructions for getting started with Freeject.
Start playing around and see how everything works.

***

## Freeject Structure

Starting off you have Dashboard, Projects, Contacts.

### Dashboard

This is where you start when you login. You'll see the most immediate Tasks, Projects by due
date, and Contact activity/reminders.

### Projects

Manage your projects in this section. You can create and manage projects, add user stories
to existing projects, and add tasks to user stories.

### Contacts

Freeject implements a basic Contact Management solution. Most CRMs (Customer Relationship Management)
software is way too bloated for personal use and focuses on teams interacting
with them as opposed to individuals. I just wanted a way to keep track of
interactions with contacts and set reminders for them without getting in the
way of my personal productivity.

***

## Contributing

I'm doing this in my free time so if you like the project and want to help then
it is much appreciated. I'm in need of design work right now because I am not
and don't pretend to be a designer.

You can also contribute by pointing me in the right direction on issues I may
have. I will try and keep a list of help issues on here.

Lastly, if you want to help improve my code then clone the repository and send
me a pull request. Please make sure to test things beforehand so the build
doesn't break.

## Licensing

The software is provided under the [MIT License](http://www.opensource.org/licenses/mit-license.php).
Enjoy!