import 'package:app_ventas/src/resources/empresa/empresa_api_provider.dart';
import 'package:flutter/material.dart';
import 'package:app_ventas/src/widgets/card_swiper_widget.dart';

class HomePage extends StatelessWidget {
final empresasProvider=new EmpresasProvider();
 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Feria Barrio Lindo'),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon( Icons.search ),
            onPressed: () {
              showSearch(
                context: context, 
                delegate: (null),
                );
            },
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
             _swiperTarjetas(),
          ],
        ),
      )
       
    );
  }

   Widget _swiperTarjetas() {

    return FutureBuilder(
      future: empresasProvider.getEmpresa(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        
        if ( snapshot.hasData ) {
          return CardSwiper( empresas: snapshot.data );
        } else {
          return Container(
            height: 400.0,
            child: Center(
              child: CircularProgressIndicator()
            )
          );
        }
        
      },
    );
  }
}