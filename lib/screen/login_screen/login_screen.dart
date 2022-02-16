import 'package:app_gclase/screen/data_dom_screen.dart';
import 'package:app_gclase/widgets/auth_background.dart';
import 'package:app_gclase/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child:SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 250),
              CardContainer(
                child: Column(
                  children: [
                    const SizedBox(height:10),
                    Text('Iniciar Sesión',style: Theme.of(context).textTheme.headline5,),
                    const SizedBox(height: 30,),
                    _LoginForm(),
                  ],
                ),
              ),
              const SizedBox(height: 50,),
              CardContainer(child: Row(
                children: [
                  Image.asset('assets/user.png'),
                  const SizedBox(width: 5,),
                  const Expanded(
                    child: Text("Comunicate con tu establecimiento si no cuentas con un usuario asignado",
                    textAlign: TextAlign.start,
                    )
                  )
                ],
              )),
              const SizedBox(height: 50,),
            ],
          ),
        )
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
        children:[
          TextFormField(
            autocorrect: false,
            keyboardType:TextInputType.text,
            decoration: InputDecoration(
              hintText: "Ingrese su usuario asignado",
              labelText: 'Usuario',
              prefixIcon: Icon(Icons.person,color: Colors.lightBlue.shade600,),
            ),
            validator: (value){
              String text=value??'';
              if(text.isEmpty){
                return 'Usuario incorrecto';
              }else{
                return null;
              }
            },
          ),
          const SizedBox(height: 30),
          TextFormField(
            autocorrect: false,
            obscureText: true,
            keyboardType:TextInputType.text,
            decoration: InputDecoration(
              hintText: "Ingrese su contraseña",
              labelText: 'Constraseña',
              prefixIcon: Icon(Icons.lock_open,color: Colors.lightBlue.shade600,),
            ),
            validator: (value){
              
              if(value != null && value.length>=6) return null;
              return "Contraseña incorrecta";
            },
          ),
          const SizedBox(height: 30),
          MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Colors.grey,
            elevation: 0,
            color: Colors.lightBlue.shade700,
            child:Container(
              padding: EdgeInsets.symmetric(horizontal:80,vertical: 15),
              child: Text('Ingresar',style:TextStyle(color: Colors.white))
            ),
            onPressed: (){
              Navigator.pushReplacement(context, 
              PageRouteBuilder(
                /*transitionDuration:const Duration(seconds: 1),
                transitionsBuilder: (BuildContext context,Animation<double> animation,Animation<double> secanimation,Widget child){
                  animation=CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                  return ScaleTransition(alignment: Alignment.center ,scale: animation,child: child,);
                },*/
                pageBuilder: (BuildContext context,Animation<double> animation,Animation<double> secanimation){
                      return DataDom();
                }
              ));

            }
          )
        ],
      ))
    );
  }
}