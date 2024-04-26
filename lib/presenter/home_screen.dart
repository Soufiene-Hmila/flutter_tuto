import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_tuto/model/user_response.dart';
import 'package:flutter_tuto/presenter/bloc/bloc.dart';
import 'package:flutter_tuto/presenter/item_user_widget.dart';
import 'package:flutter_tuto/view_model/repository.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final Bloc bloc = Bloc();

  @override
  void initState() {
    bloc.fetchDate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List User",
          style: TextStyle(
              color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: StreamBuilder(
        stream: bloc.streamer,
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data?.users?.length,
                itemBuilder: (context, index){
              return ItemUserWidget(userData: snapshot.data?.users?.elementAt(index),);
            });
          } else if(snapshot.hasError){
            return const Text('Failed GET Data From Server');
          } else {
            return const Center(child: CircularProgressIndicator(strokeWidth: 2,));
          }
        }
      ),
    );
  }


}
