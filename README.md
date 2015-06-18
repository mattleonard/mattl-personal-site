Mattl.co
--------------------------------------------

Here is the repo for my personal portfilio site [Mattl.co](http://mattl.co/)

Feel free to copy this app and use it for your self.

## Setup

####Clone the app

`git clone https://github.com/mattleonard/mattl-personal-site.git`

####Change into the directory

`cd mattl-personal-site/`

####Bundle those gems

`bundle install`

####Setup the database (I have it setup for postgres)

You may have to edit some details in the `config/database.yml` file

`rake db:create db:migrate`

####Create an admin to login to the backend

```
rails console

User.create(email: "admin@admin.com", password: "such_secure")

```

## Push to Heroku

#### Create heroku app
`heroku create`

#### Push to heroku
`git push heroku master`

Should be good to go! Let me know if you have any issues
