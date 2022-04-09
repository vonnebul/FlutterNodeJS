import express from "express";
import connectDB from "./db/connectdb.js";
import web from "./routes/web.js"
// préparons les const utiles plus tard:
const app = express();
const port = process.env.PORT || '8000'
const url_bdd = process.env.DATABASE_URL || "mongodb://localhost:27017";
// maintenant la connection à la bdd:
connectDB(url_bdd)

// utilisation du JSON:
app.use(express.json())

//lancer les routes:
app.use("/api", web)

// lançons le serveur:
app.listen(port,()=>{
    console.log(`http://localhost:${port}`);
})