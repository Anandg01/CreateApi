
const User = require('../model/userDatabase')
const { v4: uuidv4 } = require('uuid');
const jwt = require('jsonwebtoken');


//generat jwt token for authorizen in  API 

function generateToken(user_id) {
  return jwt.sign({ user_id }, "yh67hg", { expiresIn: '1h' });
}

//details API will fetch details of a specific user given the user_id as a query parameter.


exports.getDetails = async (req, res) => {
  const { user_id } = req.params;
  try {
    const user = await User.findOne({ where: { user_id } });
    res.json(user);
  } catch (error) {
    res.status(500).json({ error: 'Internal Server Error' });
  }
}

//update API updates the details of a specific user given the new details in the request body. 

exports.updateDetails = async (req, res) => {
  console.log(req.header('authorize'))

  const { user_id } = req.params;
  const newDetails = req.body;
  const nowDate = Date();
  try {
    const updateUser = await User.update({ ...newDetails, last_logged_in: nowDate }, { where: { user_id } });
    console.log(updateUser)
    res.json({ message: 'User details updated successfully', data: updateUser });
  } catch (error) {
    res.status(500).json({ error: 'Internal Server Error' });
  }
};


///image gets the image of an user given the user_id as a query parameter

exports.getImage = async (req, res) => {
  const { user_id } = req.params;
  try {
    const user = await User.findOne({ attributes: ['user_image'], where: { user_id } });
    res.json(user);
  } catch (error) {
    res.status(500).json({ error: 'Internal Server Error' });
  }
};

///delete deletes an user from the database given the user_id

exports.deleteUser = async (req, res) => {
  const { user_id } = req.params;
  try {
    await User.destroy({ where: { user_id } });
    res.json({ message: 'User deleted successfully' });
  } catch (error) {
    res.status(500).json({ error: 'Internal Server Error' });
  }
};


//insert inserts a new user to the database
exports.insertNewUser = async (req, res) => {
  const nowDate = Date();
  const randomUUid = uuidv4();

  const userDetails = { user_id: randomUUid, ...req.body, last_logged_in: nowDate };
  console.log(userDetails)
  try {
    await User.create(userDetails);
    res.json({ message: 'User inserted successfully', data: userDetails });
  } catch (error) {
    res.status(500).json({ error: 'Internal Server Error' });
  }
};



