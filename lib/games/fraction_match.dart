import 'package:flutter/material.dart';

class FractionGameHome extends StatefulWidget {
  const FractionGameHome({super.key});

  @override
  State<FractionGameHome> createState() => _FractionGameHomeState();
}

class _FractionGameHomeState extends State<FractionGameHome> {
  String? selectedPizza;
    String? selectedFraction;

   

    void onPizzaTap(String pizzaId){
      setState(() {
        selectedPizza = pizzaId;
      });
      checkMatch();
    }

    void onFractionTap(String fractionId) {
    setState(() {
      selectedFraction = fractionId;
    });
    checkMatch();
  }

   void checkMatch(){
    if(selectedPizza != null && selectedFraction != null){
      if (selectedPizza == selectedFraction){

      } else{
        Future.delayed(Duration(seconds: 1), (){
          setState(() {
            selectedPizza = null;
            selectedFraction = null;
          });
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(child: 
        Container(
        // padding: EdgeInsets.symmetric(vertical: screenHeight*0.009),
        height: screenHeight,
        width: screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Container(
                margin: EdgeInsets.only(left: 20.0),
                width: 20.0,
                child: InkWell(
                  onTap: ()=>{Navigator.pop(context)},
                  child: Center(child: Text("X", style: TextStyle(fontWeight: FontWeight.w700),)),
                ),
              ),
           
            Center(child: Text("Match the correct option", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),)),
        
            Container(
              height: screenHeight*0.78,
              padding: EdgeInsets.all(50.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => onPizzaTap("1/8"),
                          child: Container(
                            width: 100,
                            height: 100,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              border: selectedPizza == "1/8" ? Border.all(width: 2.0, color: Colors.green) : Border.all(width: 2.0, color: const Color.fromARGB(114, 158, 158, 158)),
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                color: selectedPizza == "1/8" ? const Color.fromARGB(255, 227, 255, 242) : null
                            ),
                            child: const Image(image: AssetImage('assets/images/pizza-1%8.png')),
                          ),
                        ),
                
                        GestureDetector(
                          onTap: () => onFractionTap("1/2"),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: selectedFraction == "1/2" ? Border.all(width: 2.0, color: Colors.green) : Border.all(width: 2.0, color: const Color.fromARGB(114, 158, 158, 158)),
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                color: selectedFraction == "1/2" ? const Color.fromARGB(255, 227, 255, 242) : null
                              
                            ),
                            child: Center(child: Text("1/2")),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 50.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => onPizzaTap("2/8"),
                          child: Container(
                            width: 100,
                            height: 100,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              border: selectedPizza == "2/8" ? Border.all(width: 2.0, color: Colors.green) : Border.all(width: 2.0, color: const Color.fromARGB(114, 158, 158, 158)),
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                color: selectedPizza == "2/8" ? const Color.fromARGB(255, 227, 255, 242) : null
                            ),
                            child: const Image(image: AssetImage('assets/images/pizza-2&8.jpg'))
                          ),
                        ),
                
                        GestureDetector(
                          onTap: () => {onFractionTap("1/8")},
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: selectedFraction == "1/8" ? Border.all(width: 2.0, color: Colors.green) : Border.all(width: 2.0, color: const Color.fromARGB(114, 158, 158, 158)),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: selectedFraction == "1/8" ? const Color.fromARGB(255, 227, 255, 242) : null
                            ),
                            child: Center(child: Text("1/8")),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => onPizzaTap("1/2"),
                          child: Container(
                            width: 100,
                            height: 100,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              border: selectedPizza == "1/2" ? Border.all(width: 2.0, color: Colors.green) : Border.all(width: 2.0, color: const Color.fromARGB(114, 158, 158, 158)),
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                color: selectedPizza == "1/2" ? const Color.fromARGB(255, 227, 255, 242) : null
                            ),
                            child: const Image(image: AssetImage('assets/images/pizza-1%2.png'))
                          ),
                        ),
                
                        GestureDetector(
                          onTap: () => onFractionTap("2/8"),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: selectedFraction == "2/8" ? Border.all(width: 2.0, color: Colors.green) : Border.all(width: 2.0, color: const Color.fromARGB(114, 158, 158, 158)),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: selectedFraction == "2/8" ? const Color.fromARGB(255, 227, 255, 242) : null
                              
                            ),
                            child: Center(child: Text("2/8")),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            InkWell(
              onTap: ()=>{}, 
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10.0),
                color: Colors.green,
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                child: Center(child: Text("Continue", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),)),
              ),
              
              )
          ],
        ),
      ),),
    );
  }
}