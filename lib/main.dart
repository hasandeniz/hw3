import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProductDetail(),
    );
  }
}

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Details", style: TextStyle(fontFamily: "Pacifico", fontSize: 22)),
          backgroundColor: Colors.red,
          centerTitle: true),
      body: Column(
        children: [
          const Text(
            "Domates",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
             child: Image.asset("assets/tomato.png"),
            ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            color: Colors.grey[200],
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: const [
                Text( 'Fiyat : 31₺/kg\n',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: MediaQuery.of(context).size.height * 0.27,
            child: const Text(
              "Domates (Solanum lycopersicum), patlıcangiller (Solanaceae) ailesinden, anavatanı Güney ve Orta Amerika olan, meyvesi yenebilen otsu bitki türü. Domatesin eş anlamlısı kızanak sözcüğüdür.",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
            ),
          )
        ],
      ),
    );
  }
}