import 'package:app_ventas/src/models/Empresa/lista_Empresa_Model.dart';
import 'package:flutter/material.dart';


class MovieHorizontal extends StatelessWidget {

  final List<Empresa> empresas;
  final Function siguientePagina;

  MovieHorizontal({ @required this.empresas, @required this.siguientePagina });

  final _pageController = new PageController(
    initialPage: 1,
    viewportFraction: 0.3
  );


  @override
  Widget build(BuildContext context) {
    
    final _screenSize = MediaQuery.of(context).size;

    _pageController.addListener( () {

      if ( _pageController.position.pixels >= _pageController.position.maxScrollExtent - 200 ){
        siguientePagina();
      }

    });


    return Container(
      height: _screenSize.height * 0.2,
      child: PageView.builder(
        pageSnapping: false,
        controller: _pageController,
        // children: _tarjetas(context),
        itemCount: empresas.length,
        itemBuilder: ( context, i ) => _tarjeta(context, empresas[i] ),
      ),
    );


  }

  Widget _tarjeta(BuildContext context, Empresa empresa) {
    
   // pelicula.uniqueId = '${ pelicula.id }-poster';

    final tarjeta = Container(
        margin: EdgeInsets.only(right: 15.0),
        child: Column(
          children: <Widget>[
            Hero(
              tag: empresa.numSec,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                // child: FadeInImage(
                //   image: NetworkImage( empresa.getPosterImg() ),
                //   placeholder: AssetImage('assets/img/no-image.jpg'),
                //   fit: BoxFit.cover,
                //   height: 160.0,
                // ),
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              empresa.nombre,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      );

    return GestureDetector(
      child: tarjeta,
      onTap: (){

        Navigator.pushNamed(context, 'detalle', arguments: empresa );

      },
    );

  }


  // List<Widget> _tarjetas(BuildContext context) {

  //   return empresas.map( (empresa) {

  //     return Container(
  //       margin: EdgeInsets.only(right: 15.0),
  //       child: Column(
  //         children: <Widget>[
  //           ClipRRect(
  //             borderRadius: BorderRadius.circular(20.0),
  //             // child: FadeInImage(
  //             //   image: NetworkImage( empresa.getPosterImg() ),
  //             //   placeholder: AssetImage('assets/img/no-image.jpg'),
  //             //   fit: BoxFit.cover,
  //             //   height: 160.0,
  //             // ),
  //           ),
  //           SizedBox(height: 5.0),
  //           Text(
  //             empresa.nombre,
  //             overflow: TextOverflow.ellipsis,
  //             style: Theme.of(context).textTheme.caption,
  //           )
  //         ],
  //       ),
  //     );


  //   }).toList();

  // }

}
