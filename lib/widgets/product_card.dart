import 'package:examen_cm/models/product.dart';
import 'package:examen_cm/theme/my_theme.dart';
import 'package:flutter/material.dart';


class ProductCard extends StatelessWidget {
  final Listado product;
  const ProductCard({Key? key, required this.product}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: const EdgeInsets.only(top: 30, bottom: 50),
        width: double.infinity,
        height: 400,
        decoration: productsDecoration(),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            _BackGroundImage(url: product.productImage,),
            _ProductDetails(product: product),
            Positioned(
              top: 0, 
              right: 0,
              child: _PriceTag(product: product),
            ),
            if (product.productState == 'Bloqueado')
              Positioned(top: 0, left: 0, child: _State(product: product))
          ],
        ),
        
      ),
    );
  }
  BoxDecoration productsDecoration () => BoxDecoration(
    color: const Color.fromARGB(255, 244, 247, 248),
    borderRadius: BorderRadius.circular(30),
    boxShadow: const [
      BoxShadow(
        color: MyTheme.primario,
        offset: Offset(0, 5),
        blurRadius: 10,
      )
    ]
  ); 
}
class _PriceTag extends StatelessWidget {
  final Listado product;

  const _PriceTag({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 70,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: MyTheme.primario,
          borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomLeft: Radius.circular(30))),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text('\$' + product.productPrice.toString(),
                style: const TextStyle(fontSize: 20, color: Colors.white))),
      ),
    );
  }
}

class _State extends StatelessWidget {
  final Listado product;

  const _State({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 70,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), bottomRight: Radius.circular(25))),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(product.productState,
                style: const TextStyle(fontSize: 20, color: Colors.white))),
      ),
    );
  }
}

class _ProductDetails extends StatelessWidget {
  final Listado product;

  const _ProductDetails({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:0,left: 0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        height: 70,
        decoration: const BoxDecoration(
          color: MyTheme.primario,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
          
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.productName,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Text(
              'ID Producto: ', ///AGREGAR ID PRODUCTO
              style: TextStyle(fontSize: 15, color: Colors.white),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class _BackGroundImage extends StatelessWidget {
  final String? url;

  const _BackGroundImage({Key? key, this.url}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: double.infinity,
        height: 400,
        child: url == null
            ? const Image(
                image: AssetImage('assets/no-image.png'),
                fit: BoxFit.cover,
              )
            : FadeInImage(
                placeholder: const AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(url!),
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}

