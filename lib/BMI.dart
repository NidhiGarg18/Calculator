import'package:flutter/material.dart';
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}
var weightText=TextEditingController();
var heightText=TextEditingController();
var inchText=TextEditingController();
var output="";
class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI calulations'),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("BMI Calculator",style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.w800),),
              SizedBox(height: 20,),
              Container(
                width: 350,
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        style: TextStyle(color: Colors.white),
                        //obscureText: true,
                        controller: weightText,
                        decoration: InputDecoration(
                          //labelText: "Weight",
                          //labelStyle: TextStyle(),
                          hintText: 'Enter your Weight',
                              hintStyle: TextStyle(color: Colors.white),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 2,
                                ),

                        ),
                          // suffixText: 'Weight',
                          // suffixStyle: TextStyle(color: Colors.white),
                          //prefixText: 'Weight',
                         // prefixStyle: TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            )
                          )
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: heightText,
                        keyboardType: TextInputType.phone,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Enter your Height (in feet)',
                          hintStyle: TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2,
                            )

                          ),
                            //prefixText: 'Height',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            )
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: inchText,
                        keyboardType: TextInputType.phone,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Enter your height (in inches)',
                          hintStyle: TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 2,
                              )

                          ),
                          //prefixText: 'Height',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2,
                              )
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: (){
                      setState(() {


                        var weight=int.parse(weightText.text.toString());
                        var height=int.parse(heightText.text.toString());
                        var inch=int.parse(inchText.text.toString());

                        var tinch=(height*12)+inch;
                        var tcm=tinch*2.54;
                        var tm=tcm/100;
                            var val=weight/(tm*tm);


                        output="BMI is: $val";
                       });
                        // if(weight!="" && height!="" && inch!="")
                        //   {
                        //     // var weight=int.parse(weightText.text.toString());
                        //     // var height=int.parse(heightText.text.toString());
                        //     // var inch=int.parse(inchText.text.toString());
                        //
                        //     var tinch=(height*12)+inch;
                        //     var tcm=tinch*2.54;
                        //     var tm=tcm/100;
                        //
                        //     var val=weight/(tm*tm);
                        //     setState(() {
                        //       output="the output is: $weight and $height is $val";
                        //
                        //     });
                        //
                        //
                        //   }
                        // else{
                        //   setState(() {
                        //     output="please fill all the fields";
                        //
                        //   });
                        //
                        //
                        // }


                        //var sum=pass+pass1;
                        //output="the sum is $pass and $pass1 is $sum";


                    },
                        child: Text('Output',style: TextStyle(color: Colors.black,fontSize: 25),),
                    ),
                    //Text(output,style: TextStyle(fontSize: 25,color: Colors.white),),

                    SizedBox(
                      height: 10,
                    ),

                    // ElevatedButton(onPressed: (){}, child: Text('OUTPUT')),
                    Text('$output',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),

                  ],
                ),

              ),
            ],
          ),


        ) ,
      ),
    );
  }
}
