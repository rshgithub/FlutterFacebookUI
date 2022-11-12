import 'package:flutter/material.dart';
import 'package:ft_facebook_ui/Models/friend_suggestion_model.dart';

class FriendsSuggestions extends StatelessWidget {
  FriendSuggestionModel friendSuggestion;
  FriendsSuggestions( this.friendSuggestion,);

  @override
  Widget build(BuildContext context) {
    return friendCell(friendSuggestion.friendName!,friendSuggestion.friendHint!,friendSuggestion.friendImage!);
  }

  Widget friendCell(String friendName, String friendHint, String friendImage) {
    return Container(
      height: 410,
      width: 300,
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
                child: SizedBox(
                  width: 400,
                  height: 300,
                  child: Image.network(
                    friendImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              friendName,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold),
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
            padding: const EdgeInsets.only(left: 50, bottom: 10, right: 50, top: 5),
            child: Row(
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
          ),
        ],
      ),
    );
  }
}
