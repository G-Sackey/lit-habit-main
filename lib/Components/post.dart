import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lithabit/Components/like_button.dart';

class Post extends StatefulWidget {
  final String message;
  final String user;
  final String postId;
  final List<String> likes;

  const Post({super.key, required this.message, required this.user, required this.postId, required this.likes});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {

  final currentUser = FirebaseAuth.instance.currentUser!;
  bool isLiked = false;

  @override
  void initState() {
    super.initState();
    isLiked = widget.likes.contains(currentUser.email);
  }


  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });

    DocumentReference postRef = 
        FirebaseFirestore.instance.collection('User Posts').doc(widget.postId);

    if(isLiked){
      //If post is now liked , add the user's email to the 'Likes' field
      postRef.update({
        'Likes': FieldValue.arrayUnion([currentUser.email])
      });

    } else {
      //If the post is now inliked, remove the user's email from the 'Likes' field
      postRef.update({
        'Likes': FieldValue.arrayRemove([currentUser.email])
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
      margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Column(
            children: [
              //like button
              LikeButton(onTap: toggleLike, 
              isLiked: isLiked),

              const SizedBox(height: 5,),

              //like count
              Text(widget.likes.length.toString(),
              style: const TextStyle(color: Colors.grey, fontSize: 12),
              )
            ],
          ),

          const SizedBox(width: 20,),
         SizedBox(
          height: 100,
          width: 160,
           child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.user,
                 style: TextStyle(fontSize: 12, color: Colors.grey[500],),),
                 const SizedBox(height: 10,),
                Text(widget.message, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              ],
            ),
         )
          ]
      )
      );
  }
  
}