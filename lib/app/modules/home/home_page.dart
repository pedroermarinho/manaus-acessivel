import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:manausacessivel/app/components/google_map_custom/google_map_custom_widget.dart';
import 'package:manausacessivel/app/models/marker.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    controller.context = context;
    return Scaffold(
      backgroundColor: Color(0xffefeeec),
      appBar: AppBar(
        title: Text("Manaus Acessível"),
        backgroundColor: Colors.black,
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: controller.selectMenuItem,
            itemBuilder: (context) {
              return controller.itensMenu.map((String item) {
                return PopupMenuItem<String>(value: item, child: Text(item));
              }).toList();
            },
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            GoogleMapCustomWidget(),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
//                  height: ,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white),
                  child: Observer(
                    builder: (_) {
//
                      return Column(
                        children: <Widget>[
                          TextField(
//                           readOnly: true,
                            onSubmitted: controller.novaLocalizacao,
                            onChanged: controller.isValidAddress,
                            keyboardType: TextInputType.url,
                            decoration: InputDecoration(
                              icon: Container(
                                margin: EdgeInsets.only(left: 20, bottom: 15),
                                width: 10,
                                height: 10,
                                child: Icon(
                                  Icons.location_on,
                                  color: Color(0xffe6c131),
                                ),
                              ),
                              hintText: "Meu local",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                left: 15,
                              ),
                            ),
                          ),
                          controller.listWidgetOptionsAddress.length > 0
                              ? Column(
                                  children: controller.listWidgetOptionsAddress
                                      .toList(),
                                )
                              : Container(),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),

//
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xffe6c131),
        child: Icon(Icons.add_location),
        onPressed: controller.createNewMarker,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.add),color: Colors.white,onPressed: null,),
            IconButton(icon: Icon(Icons.add),color: Colors.white,onPressed: null,),
            SizedBox(
              width: 50,
            ),
            IconButton(icon: Icon(Icons.add),color: Colors.white,onPressed: null,),
            IconButton(icon: Icon(Icons.location_searching),color: Colors.white,onPressed: controller.recuperarLocaizacaoAtual,),
          ],
        ),
      ),
    );
  }
}