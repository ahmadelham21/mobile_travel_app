import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_travel_app/screens/svgs/gambarhijau.dart';
import 'package:mobile_travel_app/screens/svgs/titikpertama.dart';

class Splashscreen2 extends StatelessWidget {
  const Splashscreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 64,
                  ),
                  Center(
                    child: Text(
                      'Save and \n Easy',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 48),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: Text(
                      "Let's start here!",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.string(
                    hijausvg, // Gantilah dengan path gambar SVG Anda
                  )
                ],
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: SvgPicture.string(
                        titikpertamasvg,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 300,
                  ),
                  Center(
                    child: Card(
                      color: Color(0xFF24B24C),
                      elevation: 2, // Elevasi kartu
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            50.0), // Border radius untuk kartu
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () {},
                        child: SizedBox(
                          width: 72,
                          height: 72,
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class CardboardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            color: Colors.purple.shade200,
            elevation: 2, // Elevasi kartu
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(10.0), // Border radius untuk kartu
            ),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 160,
                width: 160,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            weight: 500,
                            size: 25,
                            color: Colors.purple.shade200,
                          )),
                        ),
                        Spacer(),
                        Container(
                          child: Text(
                            "Clinic Visit",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          child: Text(
                            "Make an appointment",
                            style: GoogleFonts.montserrat(
                                fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ),
          Card(
            elevation: 2, // Elevasi kartu
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(10.0), // Border radius untuk kartu
            ),
            child: InkWell(
              onTap: () {},
              child: SizedBox(
                height: 160,
                width: 160,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade200),
                          child: Center(
                              child: Icon(
                            Icons.home,
                            weight: 500,
                            size: 25,
                            color: Colors.purple.shade200,
                          )),
                        ),
                        Spacer(),
                        Container(
                          child: Text(
                            "Home Visit",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          child: Text(
                            "Call the docter home",
                            style: GoogleFonts.montserrat(
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
