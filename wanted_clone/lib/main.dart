import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: WantedCloneHome(),
    ),
  );
}

class WantedCloneHome extends StatefulWidget {
  const WantedCloneHome({super.key});

  @override
  State<WantedCloneHome> createState() => _WantedCloneHomeState();
}

class _WantedCloneHomeState extends State<WantedCloneHome> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildWantedAppBar(),
      body: WantedBody(),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: (Colors.grey),
            ),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: (int index) {
            setState(() {
              this.index = index;
            });
          },
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: const IconThemeData(color: Colors.blue),
          selectedLabelStyle: const TextStyle(color: Colors.blue),
          unselectedLabelStyle: const TextStyle(color: Colors.grey),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.work_outlined),
                ),
                label: '홈'),
            BottomNavigationBarItem(
              icon: Icon(Icons.diamond),
              label: '커리어',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: '소셜',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'MY 원티드',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: '전체',
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildWantedAppBar() {
    return AppBar(
      title: const Text(
        '채용',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 32,
          ),
          padding: EdgeInsets.zero,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none,
            size: 32,
          ),
          padding: EdgeInsets.zero,
        ),
        InkWell(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadiusDirectional.circular(32),
            child: Container(
              color: Colors.blue,
              width: 32,
              height: 32,
            ),
          ),
        ),
        const SizedBox(width: 16.0),
      ],
    );
  }
}

class WantedBody extends StatelessWidget {
  const WantedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          IconsArea(),
          RecentPosition(),
          CarouselPosition(),
          RecommendPosition(),
        ],
      ),
    );
  }
}

class IconsArea extends StatelessWidget {
  const IconsArea({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class RecentPosition extends StatelessWidget {
  const RecentPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('최근 본 포지션'),
            const Text('전체 보기'),
          ],
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                width: 300.0,
                height: 30.0,
                margin: const EdgeInsets.symmetric(horizontal:12, vertical: 8),
                color: Colors.red,
              );
            },
          ),
        )
      ],
    );
  }
}

class CarouselPosition extends StatelessWidget {
  const CarouselPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class RecommendPosition extends StatelessWidget {
  const RecommendPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
