import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserLogin extends GetxController{

  String email = "";
  String password = "";

  updateUserLogin({@required email, @required password}){
    this.email = email;
    this.password = password;
    update();
  }

}