import 'package:flutter/material.dart';

// import 'package:app_ventas/src/models/Empresa/lista_Empresa_Model.dart';
// import 'package:app_ventas/src/resources/empresa/empresa_api_provider.dart';
class EmpresaDetalle extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

   // final Pelicula pelicula = ModalRoute.of(context).settings.arguments;


    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
         // _crearAppbar( pelicula ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox( height: 10.0 ),
                // _posterTitulo( context, pelicula ),
                // _descripcion( pelicula ),
                // _descripcion( pelicula ),
                // _descripcion( pelicula ),
                // _descripcion( pelicula ),
                // _crearCasting( pelicula )
              ]
            ),
          )
        ],
      )
    );
  }

// //error
//   Widget _crearAppbar( Pelicula pelicula ){

//     return SliverAppBar(  
//       elevation: 2.0,
//       backgroundColor: Colors.indigoAccent,
//       expandedHeight: 200.0,
//       floating: false,
//       pinned: true,
//       flexibleSpace: FlexibleSpaceBar(
//         centerTitle: true,
//         title: Text(
//           pelicula.title,
//           style: TextStyle(color: Colors.white, fontSize: 16.0),
//         ),
//         background: FadeInImage(
//           image: NetworkImage( pelicula.getBackgroundImg() ),
//           placeholder: AssetImage('assets/img/loading.gif'),
//           fadeInDuration: Duration(microseconds: 150),
//           fit: BoxFit.cover,
//         ),
//       ),
//     );

//   }

  


}