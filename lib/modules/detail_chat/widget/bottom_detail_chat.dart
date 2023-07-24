import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomDetailChat extends StatelessWidget {
  const BottomDetailChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.1,
      padding: const EdgeInsets.only(left: 20, right: 10),
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: Color.fromARGB(255, 190, 189, 189))
      ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: Get.height * 0.07,
                  padding: EdgeInsets.only(
                      left: Get.width / 18, right: Get.width / 30),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 235, 235),
                      borderRadius: BorderRadius.circular(30)),
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      const Expanded(
                        child: SizedBox(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Write comment here ...",
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.camera)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: const CircleAvatar(
                    backgroundColor: Colors.blue, child: Icon(Icons.send)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
