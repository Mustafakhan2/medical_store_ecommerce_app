import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(
        Icons.star,
        color: Colors.amber,
      ),
      title: Text(
        "Erric Hoffman",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas.",
      ),
      trailing: Text(
        "05- oct 2020",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
//     const SizedBox(height: 30);

//     // Go to Cart Button
//     SizedBox(
//         width: double.infinity,
//         height: 50,
//         child: ElevatedButton(
//           onPressed: () {
//             // Add to cart action
//           },
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.blue,
//             shape: const StadiumBorder(),
//           ),
//           child: const Text(
//             "GO TO CART",
//             style: TextStyle(fontSize: 18),
//           ),
//         ));
//   }
// }
