import 'package:app_screen/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:app_screen/widgets/custom_inputform_fild.dart';
  import "package:app_screen/screens/inputs_screen.dart";

class InputsScreen extends StatelessWidget {
   
  
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey();
    final Map <String, String> formValues = {
      

      "firts_name": "Fernando",
      "last_name" : "Medina",
      "email"     : "Fernando@gmail.com",
      "password"  : "12345",
      "role"      : "Admin",
    };

    return Scaffold( 
      appBar:  AppBar(
        title: const Text("Form"),
      ),
      body:  SingleChildScrollView( //Widget sirve para hacer Scroll
         child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                
                children:   [
                  //para poder escribir texto
               CustomINputFormField(labelText: "Nombre", hintText: "Nombre del usuario", prefixIcon: const Icon(Icons.group_outlined, ), formProperty: 'firts_name', formValues: formValues,),
                
                 SizedBox(height: 30,), //espacio entre formulario
                  CustomINputFormField(labelText: "Apellido", hintText: "Apellido del usuario",prefixIcon: const Icon(Icons.group_add_outlined), formProperty: 'last_name', formValues: formValues,),
                 
                  SizedBox(height: 30,), //espacio entre formulario
                 CustomINputFormField(labelText: "Email", hintText: "Email del usuario",prefixIcon: const Icon(Icons.email_outlined),keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
            
                 SizedBox(height: 30,), //espacio entre formulario
                CustomINputFormField(labelText: "Contraseña", hintText: "Constraseña del usuario",prefixIcon: const Icon(Icons.password_outlined, ), obscureText: true, formProperty: 'password', formValues: formValues,  ),
              
              
                DropdownButtonFormField( //para que salga una lista elegible
                value: "Admin",
                  items:const [
                   DropdownMenuItem( value: "Admin" ,child: Text("Admin")),
                   DropdownMenuItem( value: "Super User" ,child: Text("Super User")),
                   DropdownMenuItem( value: "Developer" ,child: Text("Developer")),
                   DropdownMenuItem( value: "Jr. Developer" ,child: Text(" Jr Developer")
                   ),
                  ], 
                  onChanged: (value) {
                    print(value){
                      formValues["role"] = value ?? "Admin";
                      
                    }
                    },
                ),
            
                ElevatedButton(    
                           
                  child: const SizedBox( 
                  width:double.infinity, 
                  child: Center(  
                    
                    child: Text("Guardar",)
                    
                    )
                    ),
                    
                  onPressed: ()
                  
                  {
                    FocusScope.of(context).requestFocus(FocusNode()); //quitar teclado al precionar guardar
                    if (!myFormKey.currentState!.validate()){
                      print("formulario no  valido");
                      return;
                    }
                     print(formValues); //en este lugar se puede mandar al servidor las personas registradas
                  }
              
                )
                 
              ],
              ),
            )
         ) 
      ),
    );
  }
}

class CustomINputFormField extends StatelessWidget {

   final String? hintText;
     final String? labelText;
     final String? halperText;
     final Widget? prefixIcon;
     final TextInputType? keyboardType;
     final IconData? icondata;
     final bool obscureText;
     final Color? suffiColor; //no la estoy usando

    final String formProperty;
    final Map<String, String> formValues  ;


  const CustomINputFormField({
    Key? key, this.hintText, 
    this.labelText,
    this.halperText, 
    this.prefixIcon,
    this.keyboardType,
    this.icondata, 
    this.obscureText = false,
     this.suffiColor, 
     required this.formProperty, 
     required this.formValues,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(   //agrega validaciones automaticas

     autofocus:  true, //automaticamente aparece el teclado 

     textCapitalization: TextCapitalization.words, //activa mayuscas y al poner nombres 

     keyboardType: keyboardType,  //agrega el teclado de email  


      obscureText: obscureText, //agrega los asteriscos para que no se vea la constraseña

     initialValue: "", //usar una demostracion ya sea nombre, numeros etc
     onChanged: (value){
      formValues[formProperty] = value;
     },
       validator: (value){ //para hacer validaciones 
           
           if (value == null) return "requerido";
           return value.length <4?  "minimo de cuatro letras": null; //si no escribe mas de 5 letras sale el completar formulario 
       },
       autovalidateMode: AutovalidateMode.onUserInteraction, //para que salga un mensaje si no ha completado el formulario
         
       decoration:  InputDecoration( //decorar formulario,

              //   suffixIcon: Icon(Icons.person_add,color: Colors.teal, size: 30,), //icono al lado o texto
                
                  hintText: hintText, //letras que indican que escribir

                  labelText: labelText, //Importante VEEEER

                  labelStyle: const TextStyle(color: Colors.teal), //color del texto

                  helperText: halperText, //pequeño texto que indica que escribir 

                  counterText: "3 caracteres", //mostrar informacion

                prefixIcon: prefixIcon, // icono a la izquierda
          

                      focusedBorder:const OutlineInputBorder(  //cambiar color de las lineas del formauario
                     borderSide:BorderSide(color: Colors.teal, )
                      ) ,

                 iconColor: suffiColor,
                 
                border: const OutlineInputBorder(//hacer un borde decorativo al formulario IMPORTANTE!!!!
                   
                 borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                 
                 
                 
                 )
              
                )
            
       ) 
    );
  }
}