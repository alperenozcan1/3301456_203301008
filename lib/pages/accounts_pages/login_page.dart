import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:futkolik_proje/pages/accounts_pages/signup_page.dart';




class LoginPage extends StatefulWidget {
   LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email="";
  String _password="";
  final _formKey=GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Giris İslemleri",style: TextStyle(fontSize: 24)),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  hintText: "Email giriniz",
                  prefixIcon: Icon(Icons.email)

                ),
                onSaved: (deger) {
                  _email=deger!;
                },
                validator: (value) {
                  if(!EmailValidator.validate(value!)){
                    return "Geçerli bir email giriniz";
                  }else{
                    return null;
                  }
                  
                },
                
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Şifre",
                  hintText: "Şifrenizi giriniz",
                  prefixIcon: Icon(Icons.lock)
                ),
                
                onSaved: (deger) {
                  _password=deger!;
                },
              ),
              ElevatedButton(onPressed: (){
                bool _validate=_formKey.currentState!.validate();
                if(_validate){
                  _formKey.currentState!.save();
                  _formKey.currentState!.reset();
                };
              }, 
              child: Text("Giris Yap")),
              ElevatedButton(onPressed: ()async{
              //  String result=await  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
               Map<String, dynamic> result=await Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
               print("$result");
              }, child: Text("Üye ol")),
              
            ],
          ),
        ),
      ),
    );
  }
}