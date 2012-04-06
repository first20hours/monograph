heroku-jekyll-blog
==================

This repo contains a template for an SEO-friendly two-column blog-style website using the jekyll static website generator. The template is ready for customization and deployment on Heroku's Bamboo stack.

Setup Instructions
------------------

Clone the repo:

    $ git clone git@github.com:eurekaoverdrive/heroku-jekyll-blog.git
    
Install all required Gems

    $ bundle install

Edit <code>_config.yml</code>, content pages, layouts, includes, and <code>application.rb</code> settings as desired.

    
Deploy to Heroku
----------------

Add all files to a new Git repo:

    $ git init .
    
    $ git add -A
    
    $ git commit -m "Initial commit"

Create a new Heroku application:

    $ heroku create yourappname
  
Push the master Git branch to Heroku:

    $ git push heroku master
  
Open your new Codex:

    $ heroku open

Rake Utilities
--------------

The included Rakefile includes several commands that make life easier:

**Create a draft post:**

    $ rake draft["Post Title"]
    
When you're ready to publish, move the file into the "_posts" folder.

**Preview the website locally on your computer:**

    $ rake draft["Post Title"]
    
This command runs <code>jekyll --server --auto</code>, which allows you to preview the site at http://localhost:5000.

**Compile and commit the latest changes:**

    $ rake generate
    
This command runs <code>jekyll</code>, <code>git add -A</code>, and <code>git commit -m "Committing latest jekyll build"</code>.
    
**Push the compiled site to Heroku:**

    $ rake deploy
    
This command runs <code>git push heroku master</code>, which will publish the site.
    
Enjoy!