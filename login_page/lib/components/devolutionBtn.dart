import 'package:flutter/material.dart';

class DevolutionButton extends StatelessWidget {
  const DevolutionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(
                      Color(0xff5680D3)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  minimumSize:
                      MaterialStateProperty.all(const Size(double.infinity, 70))),
              onPressed: () {
                Navigator.popAndPushNamed(context, '/myaccount');
              },
              child: const Text(
                'CONFIRMAR DEVOLUÇÃO',
                style: TextStyle(
                  fontSize: 20,
                   color: Colors.white,
                   fontWeight: FontWeight.bold
                   ),
              ),              
            ),
     );
  }
}