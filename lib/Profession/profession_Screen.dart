import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../widgets/CustomNextButton.dart';
import 'MyProfession.dart';
import 'professionProvider/chooseProfession.dart';

class Profession_Screen extends StatefulWidget {
  @override
  _ProfessionState createState() => _ProfessionState();
}

class _ProfessionState extends State<Profession_Screen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ChooseProfessionProvider();
      },
      child:
          Consumer<ChooseProfessionProvider>(builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              toolbarHeight: 100,
              elevation: 0,
              title: Center(
                  child: Text(
                'Choose Profession',
                style: GoogleFonts.manrope(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.70,
                    child: GridView.builder(
                      padding: EdgeInsets.symmetric(
                          vertical: 60.h, horizontal: 20.w),
                      itemCount: professions.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                model.getValue(index);
                              },
                              child: Container(
                                child: Container(
                                  padding: EdgeInsets.all(30.0),
                                  decoration: model.value == index
                                      ? BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xFF0941CE),
                                              width: 1),
                                          // ignore: prefer_const_literals_to_create_immutables
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0xFF0941CE),
                                              blurRadius: 5,
                                              offset: Offset(0,
                                                  0), // changes position of shadow
                                            ),
                                          ],
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        )
                                      : BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.3),
                                              blurRadius: 5,
                                              offset: Offset(0,
                                                  0), // changes position of shadow
                                            ),
                                          ],
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        professions[index].imageUrl.toString(),
                                        // fit: BoxFit.cover,
                                        height: 50.r,
                                        width: 70.r,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Center(
                                          child: Text(
                                            professions[index].title.toString(),
                                            style: GoogleFonts.manrope(
                                                color: Colors.black,
                                                fontSize: 14),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.9,
                        crossAxisSpacing: 40,
                        mainAxisSpacing: 5,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 150,
                      height: 60.h,
                      // padding: EdgeInsets.only(bottom: 10.h, top: 10.h),
                      child: InkWell(
                          highlightColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onTap: () {},
                          child: CustomNextButton()),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
