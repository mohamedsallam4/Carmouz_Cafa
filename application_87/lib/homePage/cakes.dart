import 'package:flutter/material.dart';

class Cakes extends StatefulWidget {
  const Cakes({super.key});// constructor

  @override
  State<StatefulWidget> createState() => _CakeState();
}

class _CakeState extends State<Cakes> {
  int item = 0;//counter

  final cakes = [//list of data 
    "images/cake1.jpg",
    "images/cake2.jpg",
    "images/cake3.jpg",
    "images/cake4.jpg",
    "images/cake1.jpg",
    "images/cake2.jpg",
    "images/cake3.jpg",
    "images/cake3.jpg",
    "images/cake4.jpg",
    "images/cake1.jpg",
    "images/cake1.jpg",
    "images/cake2.jpg",
    "images/cake4.jpg",
    "images/cake3.jpg",
    "images/cake4.jpg",
    "images/cake2.jpg",
    "images/cake1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(// screen 
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
        child: ListView(
          children: [
            const SizedBox(height: 12),
            Text(
              'Popular Cakes',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.brown[800],
              ),
            ),
            const SizedBox(height: 13),
            GridView.builder(
              // . builder "loop "
              shrinkWrap: true,
              //الحواف ال كارد ؟؟؟
              physics: const NeverScrollableScrollPhysics(),
              //  is scrolling or not
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 8,//المسافه الافقيه بين العواميد 
                mainAxisSpacing: 8,// المسافه الرأسيه بين العواميد
                crossAxisCount: 2,// عدد العواميد 
              ),
              itemCount: cakes.length,
              //هنا بقول ليه كررلي الايتم بطول او بعدد الايتم ال انا هباصيهالك في الليست 
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  // زي الكونتينر بس ميزته ان فيه on tap ؟؟؟؟

                  onTap: () {
                    Navigator.push(
                    // التحكم وتحويل الصفح 
                    //هنا بقوله لما اضغط عليه تعرضلي  الديتيلز 
                      context,
                      MaterialPageRoute(


                        builder: (context) => ProductDetails(
                          //هتوديني فين بقا للفنكشن ال اسمها برودكت ديتيلز 

                          image: cakes[index],
                          //هنا بقوله لكل ايميج هتعرضها من الانديكس للكيك "الليست"
                          title: "Cake ${index + 1}"
                          // دا علشان العداد الارقام بس يخليها تزيد واحد 1-2-3-.....,
                          // 
                        ),
                      ),
                    );
                  },
                  child: 
                  //محتاج تفهم الجزء دا كامل في حتة الكونتينر ؟؟؟؟
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(cakes[index]),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Cake ${index + 1}",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.teal[800],
                        ),
                      ),
                    ),
                  ),

                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
 // الصفح ال بروحلها لما اضغط
  final String image;
 // بتاخد مني حاجتين الصوره والوصف
  final String title;

  const ProductDetails({
    
    //  معنى ال key هنا اي ؟؟؟؟
    Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        
        backgroundColor: Colors.brown[800],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.asset(image, fit: BoxFit.cover),
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.brown[800],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'This is a detailed description of the selected cake. Enjoy your dessert!',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
