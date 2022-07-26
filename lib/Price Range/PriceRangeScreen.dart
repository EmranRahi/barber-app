import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../widgets/CustomNextButton.dart';
import 'PriceRangProvider.dart';

class PriceRangeScreen extends StatelessWidget {
  PriceRangeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dropdownItems;
    return ChangeNotifierProvider(
      create: (context) => PriceRangeScreenProvider(),
      child: Consumer<PriceRangeScreenProvider>(
        builder: (context, model, child) {
          return SafeArea(
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: ScreenUtil().setHeight(30.h),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Price Range",
                            style: GoogleFonts.manrope(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(30.h)),
                    Text(
                      "Prices Range(Under 18)",
                      style: GoogleFonts.manrope(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(10.h)),
                    Container(
                      height: 50.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: DropdownButton(
                          underline: SizedBox(),
                          isExpanded: true,
                          // Initial Value
                          value: model.selectedPriceUnder18,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: model.under18PriceList.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            model.setSelectedItem(value);
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(30.h)),
                    Text("Prices Range(Adult)",
                        style: GoogleFonts.manrope(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                    SizedBox(height: ScreenUtil().setHeight(10.h)),
                    Container(
                      height: 50.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: DropdownButton(
                          underline: SizedBox(),
                          isExpanded: true,
                          // Initial Value
                          value: model.selectedPriceAdult,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: model.adultPriceList.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            model.setSelectedAdultPrice(value);
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(30.h)),
                    Text("please select the copun",
                        style: GoogleFonts.manrope(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                    SizedBox(height: ScreenUtil().setHeight(10.h)),
                    Container(
                      height: 50.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: DropdownButton(
                          underline: SizedBox(),
                          isExpanded: true,
                          // Initial Value
                          value: model.selectCopun,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: model.copunPriceList.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            model.setSelectcopun(value);
                          },
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 7,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        child: InkWell(
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onTap: () {},
                            child: CustomNextButton()),
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
