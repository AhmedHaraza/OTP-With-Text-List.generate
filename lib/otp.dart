import 'package:flutter/material.dart';

class Otp extends StatelessWidget {
  Otp({Key? key}) : super(key: key);
  List<TextEditingController> otpController =
      List.generate(4, (index) => TextEditingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('OTP')),
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    4,
                    (index) => SizedBox(
                      width: 70,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1 && value.length <= 3) {
                            FocusScope.of(context).nextFocus();
                          } else if (value.isEmpty && index > 0) {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        controller: otpController[index],
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                            hintText: "*",
                            enabledBorder: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder()),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
