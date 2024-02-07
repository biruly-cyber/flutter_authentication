import 'package:authentication/models/login_request_model.dart';
import 'package:authentication/services/user_api_service.dart';
import 'package:authentication/services/shared_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Blurock Innovation"),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: (){
                SharedService.logout(context);
    },
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              )
          )
        ],
      ),
      drawer: const Drawer(
        child: DrawerHeader(child: Text(""),),
      ),
      backgroundColor: Colors.grey[200],
      body: userProfile(),
    );
  }


  //handle for get user details
  userProfile() {
    return FutureBuilder(future: UserAPIService.getProfile(),
        builder: (BuildContext context, AsyncSnapshot<String> model){
          if(model.hasData){
            return Center(child: Text(model.data!));
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }


}
