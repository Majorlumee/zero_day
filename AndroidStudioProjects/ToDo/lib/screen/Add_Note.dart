import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/state_manager/state_manager.dart';
import 'package:todo/model/to_do_services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

class AddNote extends StatelessWidget {
  TextEditingController heading = TextEditingController();
  TextEditingController body = TextEditingController();
   AddNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: ()async{
              if(heading.text != ''|| body.text != ''){
                await Hive.box('To_Do').add(Task1(title: heading.text, body: body.text));
                // Provider.of<StateManager>(context,listen: false).inProgressCreateTask(Task(title: heading.text, body: body.text));
                heading.clear();
                body.clear();
              }
              Provider.of<StateManager>(context,listen: false).firstPage();
            },
            child: const Icon(Icons.arrow_back, color: Colors.black,)),
        actions: const [Icon(Icons.account_tree_outlined, color: Colors.black,), SizedBox(width: 15,)],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TextField(
            controller: heading,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              hintText: 'HEADING',
            ),
          ),
          const SizedBox(height: 30,),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Add Notes',
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20)


            ),
            controller: body,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: ()async{
                  Provider.of<StateManager>(context, listen: false).firstPage();
                  await Hive.box('To_Do').add(Task(title:heading.text, body: body.text));
                  heading.clear();
                  body.clear();

                  // Provider.of<StateManager>(context,listen: false).createTask(Task(title: heading.text, body: body.text));

                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF282361),
                ), child: const Text('Done'),)
              ],
            ),
          ),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}
