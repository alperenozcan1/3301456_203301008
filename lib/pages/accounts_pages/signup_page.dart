import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

TextEditingController textEditingController = TextEditingController();
TextEditingController textEditingController2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Üye Olun",style: TextStyle(fontSize: 24),),),
      body: Padding(padding:EdgeInsets.all(16),
      child: Form(child: Column(
        children: [
          TextFormField(
            autofocus: true,
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Email giriniz",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email)
            ),
            controller: textEditingController,

           
            validator: (value) {
                  if(!EmailValidator.validate(value!)){
                    return "Geçerli bir email giriniz";
                  }else{
                    return null;
                  };
                },
          ),
          SizedBox(height: 10,),
          TextFormField(
            autofocus: false,
            decoration: InputDecoration(
              labelText: "Şifre",
              hintText: "Şifre oluşturunuz",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock)
            ), controller: textEditingController2,
           
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 10,),
          TextFormField(
            autofocus: true,
            decoration: InputDecoration(
              labelText: "Telefon",
              hintText: "Telefon Numarası giriniz",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.phone)              
            ),
           
            keyboardType: TextInputType.phone,
          ),
          ElevatedButton(onPressed: (){Map<String, dynamic> result = {
  'key1': textEditingController,
  'key2': textEditingController2,
};
                Navigator.pop(context, result);}, child: Text("Onayla"))

        ]
          
        
      )), ),
    );
  }
}
