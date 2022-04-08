const properties = require('./json/properties.json');
const users = require('./json/users.json');

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
  
  const addQuery = `SELECT * FROM users WHERE users.email = $1`;
  const dataValues = [email];

  return pool
    .query(addQuery, dataValues)
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

  const addQuery = `SELECT * FROM users WHERE users.id = $1`;
  const dataValues = [id];

  return pool
    .query(addQuery, dataValues)
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
  
  const addQuery = `INSERT INTO users (name, email, password) VALUES ($1, $2, $3) RETURNING *;`;
  const dataValues = [user.name, user.email, user.password];

  return pool
    .query(addQuery, dataValues)
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
const getAllReservations = function(guest_id, limit = 10) {
  return getAllProperties(null, 2);
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

  const addQuery = `SELECT * FROM properties LIMIT $1`;
  const dataValues = [limit];

  return pool
    .query(addQuery, dataValues)
    .then((result) => {
      
      const resultObject = result.rows[0];
      return resultObject;
    })
    .catch((err) => {
      console.log(err.message);
    });
};
exports.getAllProperties = getAllProperties;


/**
 * Add a property to the database
 * @param {{}} property An object containing all of the property details.
 * @return {Promise<{}>} A promise to the property.
 */
const addProperty = function(property) {
  const propertyId = Object.keys(properties).length + 1;
  property.id = propertyId;
  properties[propertyId] = property;
  return Promise.resolve(property);
};
exports.addProperty = addProperty;
