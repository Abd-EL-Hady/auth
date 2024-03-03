import 'package:flutter/material.dart';

class View_page extends StatelessWidget {
  const View_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: ListView.separated(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return const ListTile(
                        title: Text(
                          'Abdo',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'An Engineer',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvo1kh6fYtONbSUyBq-72Y2vBPAyeE9RsKbQ&usqp=CAU'),
                          radius: 40,
                        ),
                        trailing: Text('8:10'),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: SizedBox(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      return const ListTile(
                        title: Text(
                          'Abdo',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'An Engineer ',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvo1kh6fYtONbSUyBq-72Y2vBPAyeE9RsKbQ&usqp=CAU'),
                          radius: 40,
                        ),
                        trailing: Text('8:10'),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
