import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/callswidgets.dart';
import 'package:whatsapp/widgets/chatswidget.dart';
import 'package:whatsapp/widgets/statuswidgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 12),
              child: Text(
                "whatsapp",
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.only(top: 12, right: 15),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                onSelected: (selected) {
                  if (selected == 6) {
                    Navigator.pushNamed(context, "SettingsPage");
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const SettingsPage()),
                    // );
                  }
                },
                padding: const EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text(
                      "New Group",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text(
                      "New broadcast",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 1,
                    child: Text(
                      "Linked devices",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 1,
                    child: Text(
                      "Starred messages",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 1,
                    child: Text(
                      "payments",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 6,
                    child: Text(
                      "settings",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        body: Column(children: [
          Container(
            width: double.infinity,
            color: const Color(0xFF075E55),
            child: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 4,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              tabs: [
                const SizedBox(
                  width: 25,
                  child: Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1 / 3,
                  child: Tab(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("chats"),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              "10",
                              style: TextStyle(
                                color: Color(0xFF075E55),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1 / 3,
                  child: const Tab(child: Text("Status")),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1 / 3,
                  child: const Tab(child: Text("Calls")),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: TabBarView(
              children: [
                Container(color: Colors.red),
                const ChatsWidget(),
                const StatusWidget(),
                const CallsWidgets(),
              ],
            ),
          )
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF075E55),
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}
