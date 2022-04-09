import userModel from "../models/User.js";

class UserController{
    static getAllDoc = async(req, res)=>{
        try{
            const result = await userModel.find();
            res.send(result);
        }
        catch(err){
            console.log(err);
        }
    }
    static Login = async(req, res)=>{
        try{
            res.send(200);
        }
        catch(err){
            console.log(err);
        }
    }
}

export default UserController