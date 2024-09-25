import 'package:flutter/material.dart';

class ChatsWidget extends StatelessWidget {
  const ChatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            for (int i = 1; i < 12; i++)
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "ChatPage");
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            fit: BoxFit.cover,
                            "images/profile$i.jpg",
                            height: 85,
                            width: 85,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "programmer",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "hi programmer ,how are you",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            const Text(
                              "12:15",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFF0FCE5E)),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              alignment: Alignment.center,
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                color: const Color(0xFF0FCE5E),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                "2",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
          ],
        ),
      ),
    );
  }
}
