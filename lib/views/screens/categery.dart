import 'package:flutter/material.dart';

import '../widgets/customAppBar.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
            Stack(
              children: [
                Image.network(
                    width : MediaQuery.of(context).size.width,
                    height: 200,
                    'https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?auto=compress&cs=tinysrgb&w=400',
                    fit: BoxFit.cover,
                ),
                Container(
                  width : MediaQuery.of(context).size.width,
                  height: 200,
                  color: Colors.black38,
                ),
                Positioned(
                  left: 160,
                  top: 60,
                  child: Column(
                    children: const [
                      Text("Category", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w400),),
                      Text("Mountain", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w600),)
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),

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
