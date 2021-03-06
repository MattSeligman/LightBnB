# LightBnB
LightBnB is an app that revolutionizes the travel industry. It allows home owners to rent out their homes to people on vacation, creating an alternative to hotels and B&amp;Bs.

It's time to start working on the LightBnB app. Before we start doing anything technical, we're going to design the database. This is a multi billion dollar idea, so we want to get the database right, the first time.

ERD Requirements
----------------
Create an Entity Relationship Design for our LightBnB app with the following specifications:

*   The app will have `users`, `properties`, `reservations`, and `property reviews`.
    
*   A `user` will have a `name`, `email address`, and `password`.

*   A `property` will have a `title`, `description`, `cost_per_night`, `parking\_spaces`, `number_of_bathrooms`, and `number_of_bedrooms`.
    
*   A `property` will need to have images associated with it, so for now we will store a url for a small `thumbnail photo` and a large `cover photo`.
    
*   A `property` will need address data associated with it including `country`, `street`, `city`, `province`, `post_code`
    
*   A `property` can either be `active` or not `active` depending on weather the owner is currently renting it out or not.
    
*   A `property` will have an owner which will be one of the registered users.
    
*   A `reservation` will have a `start date` and an `end date`
    
*   A `reservation` will be made by a guest, which will be a registered user, and will be associated with a single `property`
    
*   A `property review` will have a `message` and a `rating` from 1 to 5
    
*   A `property review` can be made by a guest and will be associated with a single `reservation`
    
*   A `user` can own many `properties`
    
*   A `property` belongs to one `owner`
    
*   A `user` can make many `reservation`
    
*   A `reservation` belongs to one `guest`
    
*   A `property` can be reviewed by many `guests`
    
Entity Relationship Design
---------------------------
![ERD](https://github.com/MattSeligman/LightBnB/blob/main/docs/LightBnB-ERD.jpg?raw=true)

WebApp File Structure
---------------------
*   `public` contains all of the HTML, CSS, and client side JavaScript.
*   `sass` contains all of the sass files.
*   `server` contains all of the server side code.
    *   `server.js` is the entry point to the application. This connects the routes to the database.
    *   `apiRoutes.js` and `userRoutes.js` are responsible for any HTTP requests to `/users/something` or `/api/something`.
    *   `json` is a directory that contains a bunch of dummy data in `.json` files.
    *   `database.js` is responsible for all queries to the database. It doesn't currently connect to any database, all it does is return data from `.json` files.