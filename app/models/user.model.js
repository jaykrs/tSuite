module.exports = (sequelize, Sequelize) => {
    const User = sequelize.define("user", {
        email: {
        type: Sequelize.STRING
      },
      encrypted_password: {
        type: Sequelize.STRING
      },
      password_salt: {
        type: Sequelize.STRING
      },
      sign_in_count: {
        type: Sequelize.INTEGER
      },
      failed_attempts: {
        type: Sequelize.INTEGER
      },
      phone_no: {
        type: Sequelize.STRING
      },
      f_name: {
        type: Sequelize.STRING
      },
      l_name: {
        type: Sequelize.STRING
      },
      auth_token: {
        type: Sequelize.STRING
      },
      active_ind: {
        type: Sequelize.BOOLEAN
      },
      deleted_ind: {
        type: Sequelize.BOOLEAN
      }
    });
  
    return User;
  };
  