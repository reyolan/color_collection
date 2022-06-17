# Color Collection

This is a simple CRUD app for knowing the basics of Ruby on Rails and its MVC architectural pattern. An app for collecting different colors that may serve as a bookmark for colors or to remember color codes that may be useful in the future for one's future designs.

## Getting started

To get started with the app, clone the repo and access the created directory:

```
$ git clone git@github.com:reyolan/color_collection.git
$ cd color_collection
```

Make sure you're using a compatible version of Node.js:

```
$ node -v
v16.15.0
```

Install the needed gems and node modules:

```
$ bundle install
$ yarn
```

Next, create and setup the database (database migrations/schema):

```
$ bin/rails db:setup
```

Run the app by starting the Rails dev server and Vite.js dev server:

```
$ bin/rails server
$ bin/vite dev
```

You can then visit the site with this URL: http://localhost:3000
