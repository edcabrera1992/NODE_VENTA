// import 'package:app_ventas/src/models/Empresa/lista_Empresa_Model.dart';
// import 'package:app_ventas/src/resources/empresa/empresa_api_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:app_ventas/src/models/Empresa/lista_Empresa_Model.dart';

class CardSwiper extends StatelessWidget {

  final List<Empresa> empresas;
  CardSwiper({ @required this.empresas });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 200.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index){
          return Image.network("https://image.freepik.com/vector-gratis/venta-viernes-negro-diseno-plano-descuentos-todos-productos-plantilla-banner_1284-30136.jpg",
            
              fit: BoxFit.fill);
              //  placeholder: AssetImage('assets/img/no-image.jpg');
        },
        itemCount: empresas.length,
        pagination: new SwiperPagination(),
      ),

    );

  }
}
