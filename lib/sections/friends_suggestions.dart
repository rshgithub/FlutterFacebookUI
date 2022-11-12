import 'package:flutter/material.dart';

class FriendsSuggestions extends StatelessWidget {
  String friendName,  friendHint,  friendImage;
  FriendsSuggestions(this.friendName,this.friendHint,this.friendImage,);

  @override
  Widget build(BuildContext context) {
    return friendCell(friendName,friendHint,friendImage);
  }

  Widget friendCell(String friendName, String friendHint, String friendImage) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xFFC1BFBF).withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 0,
              offset: Offset(
                0,
                1,
              ),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    friendImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                friendName,
                style: const TextStyle(
                    fontSize: 17, fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
              child: Text(
                friendHint,
                style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xFF959595),
                    fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton.icon(
                        // <-- ElevatedButton
                        onPressed: () {},
                        icon: const Icon(
                          Icons.group_add,
                          color: Colors.white,
                          size: 18.0,
                        ),
                        label: const Text('add friend'),
                      ),

                      TextButton(
                        onPressed: () {},
                        child: const Text('remove'),
                        style: TextButton.styleFrom(
                            textStyle: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.blue,
                          fontWeight: FontWeight.normal,
                        )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
