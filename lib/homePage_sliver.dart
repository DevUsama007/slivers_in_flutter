import 'package:flutter/material.dart';

class HomepageSliver extends StatefulWidget {
  const HomepageSliver({super.key});

  @override
  State<HomepageSliver> createState() => _HomepageSliverState();
}

class _HomepageSliverState extends State<HomepageSliver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: CustomScrollView(
        slivers: [
          // SliverAppBar(
          //   // pinned: true, //pined the app bar at the top
          //   floating: true,
          //   centerTitle: true,
          //   expandedHeight: 200.0,
          //   backgroundColor: Colors.black,
          //   // toolbarHeight: 100, //set the height of the app bar
          //   flexibleSpace: FlexibleSpaceBar(
          //     title: const Text(
          //       'Sliver App Bar',
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontWeight: FontWeight.bold,
          //         fontSize: 20,
          //       ),
          //     ),
          //     background: Image.network(
          //       'https://github.com/DevUsama007/QuickNotes-Notes-Taking-App-/blob/main/assets/images/Yellow%20Modern%20Viral%20Video%20Tutorial%20YouTube%20Thumbnail.png?raw=true',
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          SliverAppBar(
            // pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(0.6)),
                        ),
                        Text(
                          'Usama Basharat',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.notifications,
                      size: 25,
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverAppBar(
            // floating: true,
            // centerTitle: true,
            // toolbarHeight: 100,
            expandedHeight: 200.0,
            // pinned: true,
            backgroundColor: Colors.purple,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$ 2,340.00",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  Text(
                    'Current Balance',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              title: Text(
                'Wallet',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              titlePadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              centerTitle: false,
            ),
          ),
          SliverAppBar(
            toolbarHeight: 160,
            pinned: true,
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text('Quick Actions',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _quickActionButton(
                              title: 'Send',
                              icon: Icons.send,
                              onPressed: () {}),
                          _quickActionButton(
                              title: 'Receipt',
                              icon: Icons.receipt,
                              onPressed: () {}),
                          _quickActionButton(
                              title: 'Tap up',
                              icon: Icons.add,
                              onPressed: () {}),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              "Recent Transactions",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),

          SliverFillRemaining()
        ],
      ),
    );
  }
}

Widget _quickActionButton({
  required String title,
  required IconData icon,
  required VoidCallback onPressed,
}) {
  return Column(
    children: [
      CircleAvatar(
        child: Icon(icon, size: 20, color: Colors.deepPurple),
      ),
      SizedBox(height: 4),
      Text(title,
          style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 12,
              fontWeight: FontWeight.bold))
    ],
  );
}
