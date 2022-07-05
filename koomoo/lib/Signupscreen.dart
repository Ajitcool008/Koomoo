// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({Key? key}) : super(key: key);

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final List<String> items = [
    'male',
    'female',
  ];
  String? selectedValue;
  bool isObscure = false;
  DateTime selectedDate = DateTime.now();
  String formattedDate = "";
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1880, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      print(picked); //pickedDate output format => 2021-03-10 00:00:00.000
      formattedDate = DateFormat('dd/MM/yyyy').format(picked);
      print(
          formattedDate); //formatted date output using intl package =>  2021-03-16
      setState(() {});
    } else {
      print("Date is not selected");
      //setState(() => selectedDate = picked ?? "");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Join Us",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 26,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "  Signup Now",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/gudda2.png",
                    scale: 2.3,
                  ),
                ],
              ),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 73,
                    backgroundColor: Color(0xffEDEDED),
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 69,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: Image.asset(
                            'assets/profile.png',
                            fit: BoxFit.contain,
                          ).image,
                          radius: 64,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child: CircleAvatar(
                      backgroundImage: Image.asset(
                        "assets/pencil.png",
                        fit: BoxFit.contain,
                      ).image,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                "Email id",
                style: TextStyle(
                    color: Color(0xff898B9A),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 13.0, top: 9, bottom: 9, left: 16.0),
                child: Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.03,
                      top: MediaQuery.of(context).size.height * 0.01),
                  decoration: BoxDecoration(
                      //  border: Border.all(color: const Color(0xffDDDDDD)),
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffF5F5F8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your email',
                          hintStyle: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Mobile No",
                style: TextStyle(
                    color: Color(0xff898B9A),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 13.0, top: 9, bottom: 9, left: 16.0),
                child: Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.03,
                      top: MediaQuery.of(context).size.height * 0.01),
                  decoration: BoxDecoration(
                      //  border: Border.all(color: const Color(0xffDDDDDD)),
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffF5F5F8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your mobile no',
                          hintStyle: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Name",
                style: TextStyle(
                    color: Color(0xff898B9A),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 13.0, top: 9, bottom: 9, left: 16.0),
                child: Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.03,
                      top: MediaQuery.of(context).size.height * 0.01),
                  decoration: BoxDecoration(
                      //  border: Border.all(color: const Color(0xffDDDDDD)),
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffF5F5F8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your name',
                          hintStyle: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Date of Birth",
                style: TextStyle(
                    color: Color(0xff898B9A),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.03,
                    top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                  //  border: Border.all(color: const Color(0xffDDDDDD)),
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffF5F5F8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      TextFormField(
                        readOnly: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: formattedDate,
                          hintStyle: const TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              _selectDate(context);
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.calendar_month),
                            ),
                          )),
                    ]),
                  ],
                ),
              ),
              Text(
                "Gender",
                style: TextStyle(
                    color: Color(0xff898B9A),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(
              //       right: 13.0, top: 9, bottom: 9, left: 16.0),
              //   child: Container(
              //     padding: EdgeInsets.only(
              //         left: MediaQuery.of(context).size.width * 0.03,
              //         top: MediaQuery.of(context).size.height * 0.01),
              //     decoration: BoxDecoration(
              //         //  border: Border.all(color: const Color(0xffDDDDDD)),
              //         borderRadius: BorderRadius.circular(8),
              //         color: Color(0xffF5F5F8)),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         TextFormField(
              //           decoration: InputDecoration(
              //             border: InputBorder.none,
              //             //hintText: 'Enter your name',
              //             hintStyle: const TextStyle(
              //               fontFamily: 'Montserrat',
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: DropdownButton2(
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffF5F5F8),
                    //border: Border.all(color: Colors.grey)
                    //color: Colors.black26,
                  ),
                  hint: Text(
                    'Select Item',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  items: items
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as String;
                    });
                  },
                  buttonHeight: MediaQuery.of(context).size.height * 0.07,
                  buttonWidth: MediaQuery.of(context).size.width * 0.9,
                  itemHeight: 40,
                ),
              ),
              Text(
                "Password",
                style: TextStyle(
                    // ignore: prefer_const_constructors
                    color: Color(0xff898B9A),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 13.0, top: 9, bottom: 9, left: 16.0),
                child: Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.03,
                      top: MediaQuery.of(context).size.height * 0.01),
                  decoration: BoxDecoration(
                    //  border: Border.all(color: const Color(0xffDDDDDD)),
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffF5F5F8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // const Text('Password'),
                      TextFormField(
                        obscureText: isObscure,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(isObscure
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                isObscure = !isObscure;
                              });
                            },
                          ),
                          border: InputBorder.none,
                          hintText: 'Enter your password',
                          hintStyle: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                " confirm Password",
                style: TextStyle(
                    // ignore: prefer_const_constructors
                    color: Color(0xff898B9A),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 13.0, top: 9, bottom: 9, left: 16.0),
                child: Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.03,
                      top: MediaQuery.of(context).size.height * 0.01),
                  decoration: BoxDecoration(
                    //  border: Border.all(color: const Color(0xffDDDDDD)),
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffF5F5F8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // const Text('Password'),
                      TextFormField(
                        obscureText: isObscure,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(isObscure
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                isObscure = !isObscure;
                              });
                            },
                          ),
                          border: InputBorder.none,
                          hintText: 'Enter your password',
                          hintStyle: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 13.0, left: 16.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  // height: MediaQuery.of(context).size.height * 0.04,

                  decoration: BoxDecoration(
                      color: const Color(0xffF47D31),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                      child: Text(
                    'sign In',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  )),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You have an account?",
                    style: TextStyle(
                        color: Color(0xff525C67),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Signupscreen())),
                    child: Text(
                      " Sign in",
                      style: TextStyle(
                          color: Color(0xffF47D31),
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Image.asset("assets/bottom.png")
            ],
          ),
        ),
      ),
    );
  }
}
