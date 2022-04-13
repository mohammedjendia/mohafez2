import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teatcher_project/students_screen.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('محمد جندية'),
      ),
      drawer: Drawer(

        child: Column(
          children: [


       UserAccountsDrawerHeader(

         decoration:  BoxDecoration(
          color: Colors.green,

         ),
        currentAccountPicture: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Image(image:AssetImage('assets/images/Mask.png') ,),
            ],
          ),
        ) ,

         accountName: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
               'mnfn2000@gmail.com',style:  TextStyle(
                 color: Theme.of(context).colorScheme.onPrimary),

             ),

           ],
         ),
        accountEmail: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.phone , color: Colors.white,),
            Text(
            '0598611510 '
              ,style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary),
            ),

          ],
        ),

            // const UserAccountsDrawerHeader(
            //   currentAccountPicture: CircleAvatar(
            //     backgroundImage : AssetImage('assets/images/Mask.png'),
            //     //AssetImage("assets/images/Mask.png"),
            //   ),
            //   accountName: Text('mnfn2000@gmail.com '),
            //   accountEmail: Text('0598611510'),
            // // ),

       ),
            ListTile (
              title: Text('الطلاب') ,
              leading: Icon(Icons.person),

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Students_Screen()));
              },
            ),
            ListTile(
              title: Text('إستعراض درجات الطلاب') ,
              leading: Icon(Icons.grade),
              onTap: (){},
            ),
            ListTile(
              title: Text('طباعة تقرير عن الطالب') ,
              leading: Icon(Icons.print),
              onTap: (){},
            ),
            ListTile(
              title: Text('الأنشطة والدورات') ,
              leading: Icon(Icons.local_activity),
              onTap: (){},
            ),
          ],
        ),
      ),
        body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [

          ],
        ),
        ),
    );

  }
}
