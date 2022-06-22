// ignore_for_file: import_of_legacy_library_into_null_safe, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_catalog/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}"
                .text
                .bold
                .xl4
                .color(context.canvasColor)
                .make(),
            AddToCart(catalog: catalog).wh(140, 50)
          ],
        ).p16(),
      ),
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ).h32(context),
              Expanded(
                  child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      const Spacer(),
                      catalog.name.text.xl3
                          .color(context.canvasColor)
                          .bold
                          .make(),
                      catalog.desc.text
                          // .text(context.captionStyle)
                          .color(context.canvasColor)
                          .xl
                          .make(),
                      10.heightBox,
                      "Sed dolor accusam invidunt sit eirmod amet et. Consetetur dolores no sed takimata duo amet et, erat tempor no sed et consetetur amet ea, dolor est consetetur no dolores lorem tempor. Sadipscing dolores sadipscing diam amet et diam tempor. Et diam stet diam eirmod labore et voluptua amet ipsum, sed."
                          .text
                          // .textStyle(context.captionStyle)
                          .color(context.canvasColor)
                          .make()
                          .p16()
                    ],
                  ).py32(),
                ),
              ))
            ],
          )),
    );
  }
}
