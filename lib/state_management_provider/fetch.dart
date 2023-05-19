import 'package:clora/state_management_provider/fetch_user.dart';
import 'package:clora/state_management_provider/user_insert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class fetch extends StatefulWidget {
  const fetch({super.key});

  @override
  State<fetch> createState() => _fetchState();
}

class _fetchState extends State<fetch> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    context.read<FetchUser>().fetchData();

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Consumer<FetchUser>(builder: ((context, value, child) {
                return value.map.length == 0
                    ? CircularProgressIndicator()
                    : ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: value.map.length,
                        itemBuilder: ((context, index) {
                          return Card(
                            child: Column(
                              children: [
                                Text('${value.map[index]['title']}'),
                                ElevatedButton(
                                    onPressed: (() {
                                       context.read<FetchUser>().fetchData();
                                      print('${value.map[index]['title']}');
                                    }),
                                    child: Text('click'))
                              ],
                            ),
                          );
                        }));
              })),
            ),
            TextField(
              controller: _titleController,
            ),
            TextField(
              controller: _descriptionController,
            ),
            Consumer<FetchUser>(builder: ((context, value, child) {
              return ElevatedButton(
                  onPressed: (() {
                    context.read<FetchUser>().postData();
                 
                      value.title = _titleController.text;
                       value.description = _descriptionController.text;
                   
                  }),
                  child: Text('send to database'));
            }))
          ],
        ),
      ),
    );
  }
}
