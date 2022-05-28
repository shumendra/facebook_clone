import 'package:facebook/constants.dart';
import 'package:facebook/widgets/stories_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: 18,
                  child: Icon(
                    CupertinoIcons.search,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: 18,
                  child: Icon(
                    Icons.message,
                    color: Colors.black,
                  )),
            ),
          ],
          title: Text(
            'facebook',
            style: TextStyle(
              color: fbcolor,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(tabs: [
            tabMethod(icon: Icons.home_outlined),
            tabMethod(icon: Icons.people_outline),
            tabMethod(icon: Icons.tv),
            tabMethod(icon: Icons.account_circle_outlined),
            tabMethod(icon: Icons.notifications_outlined, istrue: true),
            tabMethod(icon: Icons.menu),
          ]),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            foregroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFacn0pb12vsSRTPKRUDnxFrP8sj7st13r8A&usqp=CAU'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 0.5),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 0.5),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                hintText: 'Write something here...',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.image,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SectionDivider(),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: StoriesContainer(
                              url: imagesUrl[index],
                            ),
                          );
                        },
                      ),
                    ),
                    SectionDivider(),
                    Feed(),
                    SectionDivider(),
                    Feed(),
                    SectionDivider(),
                    Feed(),
                    SectionDivider(),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Friends',
                              style: HeadingStyle,
                            ),
                            Icon(
                              CupertinoIcons.search_circle_fill,
                              size: 40,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Chip(
                              label: Text(
                                'Suggestions',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                              label: Text(
                                'Your Friends',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThinSectionDivider(),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              foregroundImage: NetworkImage(
                                  'https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_3.jpg'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                              'Mansi Pallav accepted your friend request',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )),
                          ],
                        ),
                      ),
                      ThinSectionDivider(),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Row(
                              children: [
                                Text(
                                  'Friend Requests',
                                  style: SubHeadingStyle,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  '1',
                                  style: SubHeadingStyle.copyWith(
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: Text(
                              'See All',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FriendCard(
                        name: 'Neena Nair',
                        blueButtonText: 'Confirm',
                        greyButtonText: 'Delete',
                      ),
                      FriendCard(
                        name: 'Rohan Parihar',
                        url:
                            'https://miro.medium.com/max/1400/0*0fClPmIScV5pTLoE.jpg',
                        blueButtonText: 'Confirm',
                        greyButtonText: 'Delete',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          'People you may know',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FriendCard(
                        name: 'Neena Nair',
                        blueButtonText: 'Confirm',
                        greyButtonText: 'Delete',
                      ),
                      FriendCard(
                        name: 'Rohan Parihar',
                        url:
                            'https://miro.medium.com/max/1400/0*0fClPmIScV5pTLoE.jpg',
                        blueButtonText: 'Confirm',
                        greyButtonText: 'Delete',
                      ),
                      FriendCard(
                        name: 'Neena Nair',
                        blueButtonText: 'Confirm',
                        greyButtonText: 'Delete',
                      ),
                      FriendCard(
                        name: 'Rohan Parihar',
                        url:
                            'https://miro.medium.com/max/1400/0*0fClPmIScV5pTLoE.jpg',
                        blueButtonText: 'Confirm',
                        greyButtonText: 'Delete',
                      ),
                    ]),
              ),
            ),
            Center(
              child: Text('Videos'),
            ),
            Center(
              child: Text('Pages'),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Notifications',
                          style: HeadingStyle,
                        ),
                        CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            radius: 18,
                            child: Icon(
                              CupertinoIcons.search,
                              color: Colors.black,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      'New',
                      style: SubHeadingStyle,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  NotificationsCard(
                    name: 'Seema Chauhan ',
                    activity: 'added a new photo',
                  ),
                  NotificationsCard(
                    name: 'Neeraj Sharma ',
                    url:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQEZrATmgHOi5ls0YCCQBTkocia_atSw0X-Q&usqp=CAU',
                    activity: 'liked your post',
                  ),
                  NotificationsCard(
                    name: 'Deepak Singh ',
                    url:
                        'https://media.istockphoto.com/photos/millennial-male-team-leader-organize-virtual-workshop-with-employees-picture-id1300972574?b=1&k=20&m=1300972574&s=170667a&w=0&h=2nBGC7tr0kWIU8zRQ3dMg-C5JLo9H2sNUuDjQ5mlYfo=',
                    activity: 'commented on your post',
                  ),
                  NotificationsCard(
                    name: 'Seema Chauhan ',
                    activity: 'added a new photo',
                  ),
                  NotificationsCard(
                    name: 'Neeraj Sharma ',
                    url:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQEZrATmgHOi5ls0YCCQBTkocia_atSw0X-Q&usqp=CAU',
                    activity: 'liked your post',
                  ),
                  NotificationsCard(
                    name: 'Deepak Singh ',
                    url:
                        'https://media.istockphoto.com/photos/millennial-male-team-leader-organize-virtual-workshop-with-employees-picture-id1300972574?b=1&k=20&m=1300972574&s=170667a&w=0&h=2nBGC7tr0kWIU8zRQ3dMg-C5JLo9H2sNUuDjQ5mlYfo=',
                    activity: 'commented on your post',
                  ),
                  NotificationsCard(
                    name: 'Seema Chauhan ',
                    activity: 'added a new photo',
                  ),
                  NotificationsCard(
                    name: 'Neeraj Sharma ',
                    url:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQEZrATmgHOi5ls0YCCQBTkocia_atSw0X-Q&usqp=CAU',
                    activity: 'liked your post',
                  ),
                  NotificationsCard(
                    name: 'Deepak Singh ',
                    url:
                        'https://media.istockphoto.com/photos/millennial-male-team-leader-organize-virtual-workshop-with-employees-picture-id1300972574?b=1&k=20&m=1300972574&s=170667a&w=0&h=2nBGC7tr0kWIU8zRQ3dMg-C5JLo9H2sNUuDjQ5mlYfo=',
                    activity: 'commented on your post',
                  ),
                ],
              ),
            ),
            Center(
              child: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }

  Tab tabMethod({IconData? icon, bool istrue = false}) {
    return Tab(
      child: Stack(
        children: [
          Icon(
            icon,
            color: fbcolor,
            size: 27,
          ),
          Visibility(
              visible: istrue,
              child: Positioned(
                  top: 2,
                  right: 2,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.red,
                    child: Text(
                      '6',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  )))
        ],
      ),
    );
  }
}
