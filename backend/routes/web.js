import express from "express";
import UserController from "../controller/UserController.js";
const router = express.Router();
router.get('/user', UserController.getAllDoc)
router.get('/login', UserController.Login)
export default router