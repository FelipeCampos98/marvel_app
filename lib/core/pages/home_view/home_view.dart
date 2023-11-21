import 'package:flutter/material.dart';
import 'package:marvel/core/components/nav_drawer/nav_drawer.dart';
import 'package:marvel/core/components/timeline/timeline.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        return;
      },
      child: Scaffold(
        key: _scaffoldState,
        drawer: const NavDrawer(),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              _scaffoldState.currentState!.openDrawer();
            },
          ),
          centerTitle: true,
          title: SizedBox(
            width: 125,
            child: Image.asset('assets/logo_marvel_white.png'),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black.withOpacity(0.9), Colors.transparent],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(),
                    ),
                    Row(
                      children: [
                        Text(
                          'Marvel\nCinematic\nUniverse'.toUpperCase(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 33,
                            color: Colors.white,
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Timeline(),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
