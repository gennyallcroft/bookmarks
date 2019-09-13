# bookmarks
<<<<<<< HEAD
# airport-js
# thermostat-js
=======

As a user<br>
So I can see a list of my favourite websites<br>
I want it to show me a list of all the bookmarks<br>

As a user<br>
So that I can add new bookmarks to those I already I have<br>
I'd like the app to add bookmarks to the database


#how to set up the database

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql


#Setting up a test database

For each environment, we will have our own database.

The production database will contain 'real' data. For instance: Facebook's production environment contains real-life users, posts, comments, likes, and so on.
The test database will contain no data. This way, we can set up whatever data we need right before we run our tests.
The development database will initially contain no data. If we run our application locally, we can add data to it.
To set up a test database, let's run psql and create a database, and use the SQL query saved in db/migrations/01_create_bookmarks_table.sql to create a bookmarks table.

$> psql
admin=# CREATE DATABASE "bookmark_manager_test";
admin=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
>>>>>>> 92c5fdb87d359bf2cbb6b159a872fcfe30d49ca1
# notes
# notes
# notes-2
