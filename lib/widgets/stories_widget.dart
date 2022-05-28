import 'package:facebook/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoriesContainer extends StatelessWidget {
  String url;
  StoriesContainer(
      {this.url =
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFacn0pb12vsSRTPKRUDnxFrP8sj7st13r8A&usqp=CAU'});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.3,
          color: Colors.green,
          child: Image(
            fit: BoxFit.cover,
            image: NetworkImage(url),
          )),
    );
  }
}

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: CircleAvatar(
                        foregroundImage: NetworkImage(
                            'https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?k=20&m=517188688&s=612x612&w=0&h=i38qBm2P-6V4vZVEaMy_TaTEaoCMkYhvLCysE7yJQ5Q=')),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 8.0,
                          right: 8,
                          top: 8,
                          bottom: 3,
                        ),
                        child: Text(
                          'Manchester United Fans',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: const [
                            Text(
                              '7h',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              CupertinoIcons.gear,
                              color: Colors.black,
                              size: 12,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 5,
              ),
              child: Text(
                'Cristiano Ronaldo!',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://e0.365dm.com/21/09/2048x1152/skysports-ronaldo-united-manchester-united_5497116.jpg')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                          radius: 8.5,
                          backgroundColor: fbcolor,
                          child: const Icon(
                            CupertinoIcons.hand_thumbsup_fill,
                            color: Colors.white,
                            size: 10,
                          )),
                      const Icon(
                        CupertinoIcons.heart_circle_fill,
                        color: Colors.red,
                        size: 20,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        '48K',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      '3.2K comments',
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '1.3K shares',
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                )
              ],
            ),
            ThinSectionDivider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Like')
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Comment')
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.screen_share_outlined,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Share')
                    ],
                  ),
                ],
              ),
            ),
            ThinSectionDivider(),
          ],
        ),
        const Positioned(
          top: 0,
          right: 10,
          child: Text(
            '...',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class FriendCard extends StatelessWidget {
  final String url;
  final String name;
  final String blueButtonText;
  final String greyButtonText;
  FriendCard(
      {this.blueButtonText = '',
      this.greyButtonText = '',
      this.name = '',
      this.url =
          'https://qph.cf2.quoracdn.net/main-thumb-1278318002-200-ydzfegagslcexelzgsnplcklfkienzfr.jpeg'});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 40,
            foregroundImage: NetworkImage(url),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        '4 h',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(fbcolor)),
                      child: Text(
                        blueButtonText,
                        style: TextStyle(fontSize: 16),
                      ),
                      onPressed: () {},
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey[300])),
                      child: Text(
                        greyButtonText,
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      onPressed: () {},
                    )),
                    SizedBox(
                      width: 10,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NotificationsCard extends StatelessWidget {
  final String url;
  final String name;
  final String activity;
  NotificationsCard(
      {this.name = '',
      this.activity = '',
      this.url =
          'https://qph.cf2.quoracdn.net/main-thumb-1278318002-200-ydzfegagslcexelzgsnplcklfkienzfr.jpeg'});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      color: Colors.blue[50],
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 30,
            foregroundImage: NetworkImage(url),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: RichText(
                          maxLines: 2,
                          softWrap: true,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(children: [
                            TextSpan(
                              text: name,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: activity,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        '...',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Yesterday at 4:50 pm',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
