import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:todo/state_manager/state_manager.dart';
import 'package:todo/model/to_do_services.dart';


class FrontPage extends StatefulWidget {
  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  // final DateTime dateToday =DateTime.now();
  TextEditingController heading = TextEditingController();

  TextEditingController body = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Task>getList(){
      return Hive.box('To_DO').values.toList().cast<Task>();
    }
    List<Task1>getList1(){
      return Hive.box('To_DO').values.toList().cast<Task1>();
    }
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      body: Consumer<StateManager>(
        builder: (context,stateManager,child){
          return ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('Good Morning\nMajor',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.w600
                          ),),
                        const Spacer(),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: const Icon(Icons.person,color: Colors.black,
                            size: 50,),
                        )

                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        const Icon(Icons.calendar_month,color: Colors.black,
                          size: 30,),
                        const SizedBox(width: 10,),
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child:  const Center(
                            child: Text('22 nov',
                              style: TextStyle(
                                  color: Colors.black
                              ),),
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.task_alt_outlined,color: Colors.black,),
                        const SizedBox(width: 10,),
                        Text('${stateManager.priorites.length + stateManager.inProgress.length} tasks to do today',style: const TextStyle(
                            color: Colors.black
                        ),)

                      ],
                    ),
                    const SizedBox(height: 10,),

                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                height: 900,
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 35,),
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                          boxShadow:[
                            BoxShadow(
                                color: const Color(0xFFFFECBF).withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(-10, -7)
                            ),
                          ],
                          color: const Color(0xFFFFECBF),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: stateManager.priorites.isEmpty ?
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          children: [
                            const SizedBox(height: 25,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text('You have no tasks today',
                                  style: TextStyle(
                                      color: Color(0xFF2A2361),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400
                                  ),),
                                const Spacer(),
                                Column(
                                  children: const [
                                    SizedBox(height: 10,),
                                    Icon(Icons.pie_chart,
                                        color: Color(0XFFFF6C6C))
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(Icons.doorbell_outlined,
                                  color: Color(0xFF838382),),
                                SizedBox(width: 5,),
                                Text('2:45 pm',
                                  style: TextStyle(
                                      color: Color(0xFF838382)
                                  ),)
                              ],
                            )
                          ],
                        ),
                      ):
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          children: [
                            const SizedBox(height: 25,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                 Text(stateManager.priorites[0].body,
                                  style: const TextStyle(
                                      color: Color(0xFF2A2361),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400
                                  ),),
                                const Spacer(),
                                Column(
                                  children: const [
                                    SizedBox(height: 10,),
                                    Icon(Icons.pie_chart,
                                        color: Color(0XFFFF6C6C))
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(Icons.doorbell_outlined,
                                  color: Color(0xFF838382),),
                                SizedBox(width: 5,),
                                Text('2:12',
                                  style: TextStyle(
                                      color: Color(0xFF838382)
                                  ),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Priority',
                              style: TextStyle(
                                  color: Color(0xFF2A2361),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                              ),),
                            const SizedBox(height: 5,),
                            Visibility(
                              visible: true,
                              child: Container(
                                height: 5,
                                width: 50,
                                decoration:  BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:   BorderRadius.circular(10)

                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(width: 25,),
                         Text('${stateManager.priorites.length} tasks',
                          style: const TextStyle(
                              color: Color(0xFFB1B1B1),
                              fontWeight: FontWeight.w400
                          ),)

                      ],
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: 220,
                      child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 10, mainAxisExtent: 200), itemBuilder: (context, index){
                        return GestureDetector(
                          onTap: (){

                            stateManager.updateTask(Task(title: stateManager.priorites[index].title, body: stateManager.priorites[index].body), index);
                            stateManager.secondPage();

                          },
                          onLongPress: (){
                            setState(() {
                              Hive.box('To_Do').delete(index);
                            });

                          },
                          child: Container(
                            width: 110,
                            decoration: BoxDecoration(
                                color: const Color(0xFF282361),
                                borderRadius: BorderRadius.circular(40)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  const SizedBox(height: 20,),
                                  Text(getList()[index].title,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  const SizedBox(height: 10,),
                                  Text(getList()[index].body,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500
                                    ),),

                                ],
                              ),
                            ),
                          ),
                        );
                      }, itemCount: getList().length,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('In Progress',
                              style: TextStyle(
                                  color: Color(0xFF2A2361),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                              ),),
                            const SizedBox(height: 5,),
                            Visibility(
                              visible: true,
                              child: Container(
                                height: 5,
                                width: 50,
                                decoration:  BoxDecoration(
                                    color: const Color(0xFF6876FA),
                                    borderRadius:   BorderRadius.circular(10)

                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: 220,
                      child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 10, mainAxisExtent: 200), itemBuilder: (context, index){
                        return GestureDetector(
                          onLongPress: (){
                            stateManager.inProgressDeleteTask(index);
                          },
                          child: Container(
                            width: 110,
                            decoration: BoxDecoration(
                                color: const Color(0xFF282361),
                                borderRadius: BorderRadius.circular(40)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  const SizedBox(height: 20,),
                                  Text(getList()[index].title,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  const SizedBox(height: 10,),
                                  Text(getList()[index].body,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300
                                    ),),

                                ],
                              ),
                            ),
                          ),
                        );
                      }, itemCount: getList().length,),
                    ),



                  ],
                ),
              )
            ],
          );
        }
      ),
    );
  }
}


