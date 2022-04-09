import mongoose from "mongoose";

//création de la table user:
const userSchema = new mongoose.Schema({
    username:{type:String, required:true, trim:true},
    email:{type:String, required:true, trim:true},
    password:{type:String, required:true, trim:true},
})
//créons un model qui nous servira d'exemple:
const userModel = mongoose.model("user", userSchema);

export default userModel