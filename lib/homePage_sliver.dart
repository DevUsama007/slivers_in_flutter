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
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Recent Transactions",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return _transactionwidget(transaction: index + 1);
            },
            childCount: 20, // Number of transactions
          )),

          SliverFillRemaining(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Icon(
                      Icons.lightbulb,
                      size: 35,
                      color: Colors.deepPurple,
                    ),
                    Text(
                      'Explore New Features',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Stay Tuned For Exciting Updates and Improvements',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.3)),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // style: ButtonStyle(

                        //     backgroundColor:
                        //         WidgetStatePropertyAll(Colors.deepPurple)),
                        onPressed: () {},
                        child: Text(
                          'Learn More',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ))
                  ],
                ),
              ),
            ),
          )
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

Widget _transactionwidget({required int transaction}) {
  return Card(
    child: ListTile(
      leading: transaction % 2 == 0
          ? CircleAvatar(
              child: Icon(
                Icons.arrow_upward,
                color: Colors.green,
              ),
            )
          : CircleAvatar(
              child: Icon(Icons.arrow_downward, color: Colors.red),
            ),
      title: Text("Transaction ${transaction.toString()}"),
      subtitle: Text("Transaction detail ${transaction.toString()}"),
      trailing: Text("\$100.00",
          style: TextStyle(
              color: transaction % 2 == 0 ? Colors.green : Colors.red)),
    ),
  );
}
