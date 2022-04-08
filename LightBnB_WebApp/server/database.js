const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: '123',
  host: 'localhost',
  database: 'lightbnb'
});

pool.query(`SELECT title FROM properties LIMIT 10;`).then();

/// Users

/**
 * Get a single user from the database given their email.
 * @param {String} email The email of the user.
 * @return {Promise<{}>} A promise to the user.
 */
const getUserWithEmail = (email) => {
  
  const queryString = `SELECT * FROM users WHERE users.email = $1`;
  const queryParams = [email];

  return pool
    .query(queryString, queryParams)
    .then((result) => {
      const resultObject = result.rows[0];
      return resultObject;
    })
    .catch((err) => {
      console.log(err.message);
      return null;
    });

};
exports.getUserWithEmail = getUserWithEmail;

/**
 * Get a single user from the database given their id.
 * @param {string} id The id of the user.
 * @return {Promise<{}>} A promise to the user.
 */
const getUserWithId = (id) => {

  const queryString = `SELECT * FROM users WHERE users.id = $1`;
  const queryParams = [id];

  return pool
    .query(queryString, queryParams)
    .then((result) => {
      const resultObject = result.rows[0];
      return resultObject;
    })
    .catch((err) => {
      console.log(err.message);
      return null;
    });

};
exports.getUserWithId = getUserWithId;


/**
 * Add a new user to the database.
 * @param {{name: string, password: string, email: string}} user
 * @return {Promise<{}>} A promise to the user.
 */
const addUser =  (user) => {
  
  const queryString = `INSERT INTO users (name, email, password) VALUES ($1, $2, $3) RETURNING *;`;
  const queryParams = [user.name, user.email, user.password];

  return pool
    .query(queryString, queryParams)
    .then((result) => {

      const resultObject = result.rows[0];
      return resultObject;
    })
    .catch((err) => {
      console.log(err.message);
      return null;
    });

};
exports.addUser = addUser;

/// Reservations

/**
 * Get all reservations for a single user.
 * @param {string} guest_id The id of the user.
 * @return {Promise<[{}]>} A promise to the reservations.
 */
const getAllReservations = (guest_id, limit = 10) => {

  const queryString = `
    SELECT properties.*, reservations.*, avg(property_reviews.rating) AS average_rating
    FROM reservations
    LEFT JOIN properties ON properties.id = reservations.property_id
    LEFT JOIN property_reviews ON properties.id = property_reviews.property_id
    WHERE reservations.guest_id = $1 AND end_date < now()
    GROUP BY properties.id, reservations.id
    ORDER BY reservations.start_date
    LIMIT $2;
  `;

  const queryParams = [guest_id, limit];

  return pool
    .query(queryString, queryParams)
    .then((result) => {

      const resultObject = result.rows;
      return resultObject;
    })
    .catch((err) => {
      console.log(err.message);
      return null, 2;
    });

};
exports.getAllReservations = getAllReservations;

/// Properties

/**
 * Get all properties.
 * @param {{}} options An object containing query options.
 * @param {*} limit The number of results to return.
 * @return {Promise<[{}]>}  A promise to the properties.
 */
const getAllProperties = (options, limit = 10) => {

  const queryParams = [];

  let queryString = `
    SELECT properties.*, avg(property_reviews.rating) as average_rating
    FROM properties
    JOIN property_reviews ON properties.id = property_id `;

  // if an owner_id is passed in, only return properties belonging to that owner.
  if (options.owner_id) {
    queryParams.push(parseInt(options.owner_id));

    if (queryParams.length > 0) {
      queryString += `AND `;

    } else if (queryParams.length === 0) {
      queryString += `WHERE `;
    }

    queryString += `properties.owner_id = $${queryParams.length} `;
  }

 
  if (options.minimum_price_per_night) {
    queryParams.push(parseInt(options.minimum_price_per_night * 100));

    if (queryParams.length > 0) {
      queryString += `AND `;

    } else if (queryParams.length === 0) {
      queryString += `WHERE `;
    }
    
    queryString += `cost_per_night >= $${queryParams.length} `;
  }

  if (options.maximum_price_per_night) {
    queryParams.push(parseInt(options.maximum_price_per_night * 100));

    if (queryParams.length > 0) {
      queryString += `AND `;

    } else if (queryParams.length === 0) {
      queryString += `WHERE `;
    }
    
    queryString += `cost_per_night <= $${queryParams.length} `;
  }

  if (options.city) {
    queryParams.push(`%${options.city}%`);
    queryString += `WHERE city LIKE $${queryParams.length} `;
  }

  queryParams.push(limit);
  queryString += `
    GROUP BY properties.id
    ORDER BY cost_per_night
    LIMIT $${queryParams.length};
  `;

  return pool.query(queryString, queryParams).then((res) => {
    console.log(res.rows);
    return res.rows;
  });
 
};
exports.getAllProperties = getAllProperties;


/**
 * Add a property to the database
 * @param {{}} property An object containing all of the property details.
 * @return {Promise<{}>} A promise to the property.
 */
const addProperty = (property) => {

  const queryString = `
  INSERT INTO properties 
  (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, street, city, province, post_code, country, parking_spaces, number_of_bathrooms, number_of_bedrooms, active)
  VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15) RETURNING *;
  `;

  const queryParams = [property.owner_id, property.title, property.description, property.thumbnail_photo_url, property.cover_photo_url, property.cost_per_night, property.street, property.city, property.province, property.post_code, property.country, property.parking_spaces, property.number_of_bathrooms, property.number_of_bedrooms, true];

  return pool
    .query(queryString, queryParams)
    .then((result) => {

      const resultObject = result.rows[0];
      return resultObject;
    })
    .catch((err) => {
      console.log(err.message);
    });

};
exports.addProperty = addProperty;
