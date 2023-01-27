import 'package:flutter/material.dart';
import 'package:wallpaper_app/controller/apiOper.dart';
import 'package:wallpaper_app/views/widgets/catBlock.dart';

import '../widgets/customAppBar.dart';
import '../widgets/searchBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState(){
    super.initState();
    ApiOperation.getTrendingWallpapers();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const CustomAppBar(),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
       body: SingleChildScrollView(
         child: Column(
           children: [

             // TODO Search Bar
             Container(
                 padding: const EdgeInsets.symmetric(horizontal: 10),
                 child: const SearchBar()),

             Container(
               margin: const EdgeInsets.symmetric(vertical: 20),
               child: SizedBox(
                 width: MediaQuery.of(context).size.width,
                 height: 50,
                 child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     itemCount: 30,
                     itemBuilder: (context, index){
                      return const CatBlock();
                 }),
               ),
             ),

             // TODO  Category
             Container(
               margin: EdgeInsets.symmetric(horizontal: 10),
               height: MediaQuery.of(context).size.height,
               child: GridView.builder(
                 physics: const BouncingScrollPhysics(),
                 itemCount: 10,
                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     mainAxisSpacing: 10,
                     crossAxisSpacing: 10,
                     mainAxisExtent: 400
                   ),
                   itemBuilder: (context, int index){
                        return Container(
                          height: 500,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://images.pexels.com/photos/1642228/pexels-photo-1642228.jpeg?auto=compress&cs=tinysrgb&w=400',
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                   }),
             )
           ],
         ),
       ),
    );
  }
}
