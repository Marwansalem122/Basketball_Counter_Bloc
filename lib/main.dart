

import 'package:backetball_counter/cubit/counter_cubit.dart';
import 'package:backetball_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (BuildContext context)=>CounterCubit(counterAIncrementState()),
      child: MaterialApp(
      debugShowCheckedModeBanner:false,
      home: pointsCounter()
      ),
    ));
}

class pointsCounter extends StatelessWidget {
   pointsCounter({Key? key}) : super(key: key);

  int a=0;

  int b=0;

  @override
  Widget build(BuildContext context) {
    final w=MediaQuery.of(context).size.width;
    final h=MediaQuery.of(context).size.height;
    return BlocConsumer<CounterCubit,CounterState>(
      builder: (context,state){
        return  Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Points Counter'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                     Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: w*0.1,
                      ),
                    ),
                     SizedBox(height: h*0.1,),
                     Text(
                      '${BlocProvider.of<CounterCubit>(context).a}',
                      style: TextStyle(
                        fontSize: w*0.3,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(8),
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).teamIncrement("A", 1);
                        // setState(() {
                        //   a++;
                        // });

                      },
                      child: const Text(
                        'Add 1 Point ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                         BlocProvider.of<CounterCubit>(context).teamIncrement("A", 2);
                        // setState(() {
                        //   a+=2;
                        // });

                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                         BlocProvider.of<CounterCubit>(context).teamIncrement("A", 3);
                        // setState(() {
                        //   a+=3;
                        // });

                      },
                      child: const Text(
                        'Add 3 Point ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 420,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                     Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: w*0.1,
                      ),
                    ),
                    SizedBox(height: h*0.1,),
                     Text(
                      '${BlocProvider.of<CounterCubit>(context).b}',
                     
                      style: TextStyle(
                        fontSize:  w*0.3,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(8),
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                         BlocProvider.of<CounterCubit>(context).teamIncrement("B", 1);
                        // setState(() {
                        //   b++;
                        // });


                      },
                      child: const Text(
                        'Add 1 Point ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {BlocProvider.of<CounterCubit>(context).teamIncrement("B", 2);
                        // setState(() {
                        //   b+=2;
                        // });

                      },
                      child: const Text(
                        'Add 2 Point ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).teamIncrement("B", 3);
                        // setState(() {
                        //   b+=3;
                        // });

                      },
                      child: const Text(
                        'Add 3 Point ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(8),
                backgroundColor: Colors.orange,
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {
               BlocProvider.of<CounterCubit>(context).teamIncrement('A', -BlocProvider.of<CounterCubit>(context).a);
    BlocProvider.of<CounterCubit>(context).teamIncrement('B', -BlocProvider.of<CounterCubit>(context).b);
                // setState(() {
                //   a=0;
                //   b=0;
                // });
              },
              child: const Text(
                'Reset',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
    
    );
      },
      listener: (context,state){
        if(state is counterAIncrementState){
        //  a=BlocProvider.of<CounterCubit>(context).a;
        }else{
        //  b=BlocProvider.of<CounterCubit>(context).b;
        }
      }
      );
  }
}
