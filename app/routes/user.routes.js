module.exports = app => {
    const user = require("../controllers/user.controller.js");
  
    var router = require("express").Router();
  
    // Create a new Tutorial
    router.post("/", user.create);
  
    // Retrieve a single Tutorial with id
    router.get("/:id", user.findOne);  

    router.post("/login", user.login);
  
    app.use('/api/user', router);
    
  };
  