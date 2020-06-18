class Empresas {
  List<Empresa> items=new List();
  Empresas();
  Empresas.fromJsonList(List<dynamic> jsonList) {
      if(jsonList== null) return;

      for (var item in jsonList){
        final empresa=new Empresa.fromJsonMap(item);
        items.add(empresa);

      }
  }

}


class Empresa {
  String numSec;
  String nit;
  String nombre;
  String ubicacion;
  String nsecExpedicion;
  String nombreRepresentanteLegal;
  String ci;
  String telefono;
  String nroComplementario;
  StringBuffer imagen;
  Empresa({this.numSec, 
                 this.nit, 
                 this.nombre, 
                 this.ubicacion,
                 this.nsecExpedicion,
                 this.nombreRepresentanteLegal,
                 this.ci,
                 this.telefono,
                 this.nroComplementario,
                 this.imagen,
  });

  Empresa.fromJsonMap(Map<String, dynamic> json) {

      numSec= json['num_sec'];
      nit   = json['nit'];
      nombre=json['nombre'];
      ubicacion=json['ubicacion'];
      nsecExpedicion=json['nsec_expedicion'];
      nombreRepresentanteLegal=json['nombre_representante_legal'];
      ci=json['ci'];
      telefono=json['telefono'];
      nroComplementario=json['nro_complementario'];
      imagen=json['imagen'];


    
  }

getPosterImg()  {
     // return 'http://localhost:3000/getobtenerEmpresa';
    return 'https://image.freepik.com/vector-gratis/venta-viernes-negro-diseno-plano-descuentos-todos-productos-plantilla-banner_1284-30136.jpg';
  }
  getBackgroundImg()  {
      //return 'http://localhost:3000/getobtenerEmpresa';
    return 'https://image.freepik.com/vector-gratis/venta-viernes-negro-diseno-plano-descuentos-todos-productos-plantilla-banner_1284-30136.jpg';
  }

}
