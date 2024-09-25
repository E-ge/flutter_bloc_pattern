import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_pattern/ui/cubit/main_page_cubit.dart';
import 'package:flutter_bloc_pattern/ui/views/main_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var tfnumber1 = TextEditingController();
  var tfnumber2= TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Block Patern",style: TextStyle(fontSize: 34,color: Colors.white),),centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left:16 ,right:16 , bottom: 26),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<MainPageCubit,int>(//Listining bloc
                  builder: (context,result){
                return Text(result.toString(),style: TextStyle(fontSize: 22),);
              }),
              TextField(controller: tfnumber1,decoration: InputDecoration(hintText: "Number One"),),
              TextField(controller: tfnumber2,decoration: InputDecoration(hintText: "Number Two"),),
                 Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                     context.read<MainPageCubit>().plus(tfnumber1.text, tfnumber2.text);
                    }, child: Text("Plus Result")),
                    ElevatedButton(onPressed: (){
                      context.read<MainPageCubit>().x(tfnumber1.text, tfnumber2.text);
                    }, child: Text("Multiplication Result")),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
