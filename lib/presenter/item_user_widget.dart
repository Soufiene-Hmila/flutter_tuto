import 'package:flutter/material.dart';
import 'package:flutter_tuto/model/user_data.dart';

class ItemUserWidget extends StatefulWidget {
  final UserData? userData;
  const ItemUserWidget({super.key, this.userData});

  @override
  State<ItemUserWidget> createState() => _ItemUserWidgetState();
}

class _ItemUserWidgetState extends State<ItemUserWidget> {

  UserData? userData;

  @override
  void initState() {
    super.initState();
    userData = widget.userData;
  }

  @override
  void didUpdateWidget(covariant ItemUserWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(widget.userData != oldWidget.userData){
      userData = widget.userData;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 12
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('${userData?.image}'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${userData?.firstName} ${userData?.lastName}',
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text('${userData?.email}', style: const TextStyle(fontSize: 12),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider()
        ],
      ),
    );
  }


}
