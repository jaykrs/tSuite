const db = require("../models");
const User = db.user;
const Op = db.Sequelize.Op;

// Create and Save a new Tutorial
exports.create = (req, res) => {
  // Validate request
  if (!req.body.email && !req.body.password && !req.body.f_name) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
    return;
  }

  // Create a user
  const user = {
    email: req.body.email,
    encrypted_password: req.body.password,
    f_name : req.body.first_name,
    l_name : req.body.last_name,
    phone_no : req.body.phone_no ? req.body.phone_no : ""
  };
  // Save Tutorial in the database
  User.create(user)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the User."
      });
    });
};


// Find a single User with an id
exports.findOne = (req, res) => {
    const id = req.params.id;
  
    User.findByPk(id)
      .then(data => {
        res.send(data);
      })
      .catch(err => {
        res.status(500).send({
          message: "Error retrieving User with id=" + id
        });
      });
  };

// Find a single User with an id
exports.login = (req, res) => {
    const id = req.params.id;
    const email = req.body.email;
   const  encrypted_password =  req.body.password;
  
   User.findOne({ where: { email: email } })
   .then(function (userObj) {
    if (!userObj) {
        res.status(500).send({
            message: 'Incorrect username - ' + email
          });
          return;
    }
    if (!(userObj.encrypted_password === encrypted_password)) {
        res.status(500).send({
            message: 'Incorrect password for email - ' + email
          });
          return;
    }
    userObj.auth_token = randomString(36);
    userObj.update(
        {auth_token: userObj.auth_token},
        {where: userObj.id}
      ).then(function(rowsUpdated) {
      });
      userObj.encrypted_password = "";
      userObj.password_salt = "";
    res.send(userObj);
})
      .catch(err => {
        res.status(500).send({
          message: "Incorrect UserName or Password - " + email
        });
      });
  };

  function randomString(length) {
    var chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    var result = '';
    for (var i = length; i > 0; --i) result += chars[Math.floor(Math.random() * chars.length)];
    return result;
}