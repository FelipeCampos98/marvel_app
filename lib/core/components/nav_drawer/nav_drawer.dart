// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({super.key});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          SizedBox(
            width: 200,
            child: Image.asset('assets/logo_marvel.png'),
          ),
          Expanded(
            child: Container(),
          ),
          ListTile(
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
              color: Colors.red,
            ),
            title: Text(
              'Favoritos',
              style: TextStyle(
                color: Colors.red,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
              color: Colors.red,
            ),
            title: Text(
              'Lançamentos',
              style: TextStyle(
                color: Colors.red,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
              color: Colors.red,
            ),
            title: Text(
              'Terror',
              style: TextStyle(
                color: Colors.red,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
              color: Colors.red,
            ),
            title: Text(
              'Comédia',
              style: TextStyle(
                color: Colors.red,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
              color: Colors.red,
            ),
            title: Text(
              'Ação',
              style: TextStyle(
                color: Colors.red,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
