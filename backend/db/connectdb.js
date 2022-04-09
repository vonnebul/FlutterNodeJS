import mongoose from "mongoose";
const connectDB = async (url_bdd) => {
    try{
        // ajoutez les options de connection supplémentaire 
        const DB_OPTIONS={
            dbName: 'user',
        }
        await mongoose.connect(url_bdd, DB_OPTIONS);
        // message pour bien confirmé que nous sommes connecté:
        console.log('vous êtes connecté');
    }
    // si une erreur ce produit nous demandons l'affichage de l'erreur
    catch(err){
        console.log(err);
    }
}
export default connectDB;