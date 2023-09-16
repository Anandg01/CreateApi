const jwt = require('jsonwebtoken');
const User = require('../../model/userDatabase');

const authenticate = (req, res, next) => {
    try {
        const token = req.header('authorize');
        // for authencate set header "authorize" or generated jwt web token 
        if (token == "authorized") {
            next();
            return;
        }
        const decodeToken = (jwt.verify(token, "yh67hg"))

        User.findOne({ where: { decodeToken } }).then(user => {
            req.userId = user.user_id;
            next()
        }).catch(err => { throw new Error(err) })
    }
    catch (err) {
        console.log(err)
        return res.status(401).json({ success: false ,message:"if you have not a token set header key= authorize and value ='authorized' "})
    }
}


module.exports = authenticate;