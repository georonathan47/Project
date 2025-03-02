import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:urban_home/constant/constant.dart';

class CancelledBooking extends StatefulWidget {
  @override
  _CancelledBookingState createState() => _CancelledBookingState();
}

class _CancelledBookingState extends State<CancelledBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: whiteColor,
        title: Text(
          'Booking ID 1905',
          style: appBarTextStyle,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      bottomNavigationBar: Material(
        elevation: 1.0,
        child: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: double.infinity,
            height: 50.0,
            color: primaryColor,
            alignment: Alignment.center,
            child: Text(
              'Okay!',
              style: white18BoldTextStyle,
            ),
          ),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          providerDetailCard(),
          bookingStatus(),
          height20Space,
        ],
      ),
    );
  }

  providerDetailCard() {
    return Padding(
      padding: EdgeInsets.all(fixPadding * 2.0),
      child: Container(
        padding: EdgeInsets.all(fixPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              spreadRadius: 1.0,
              color: blackColor.withOpacity(0.25),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/provider/provider_7.jpg',
                width: 84.0,
                height: 84.0,
                fit: BoxFit.cover,
              ),
            ),
            widthSpace,
            Container(
              height: 84.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Linda Manu',
                    style: black16BoldTextStyle,
                  ),
                  Text(
                    'Cleaner',
                    style: grey14MediumTextStyle,
                  ),
                  Text(
                    '\¢16/hr',
                    style: primaryColor16MediumTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bookingStatus() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Booking Status',
            style: black16BoldTextStyle,
          ),
          heightSpace,
          bookingStatusItem(
              true, 'Booking request sent', 'Requested on 15 March, 07:00 PM'),
          primaryColorDottedLine(),
          bookingStatusItem(true, 'Booking cancelled',
              'Booking cancelled on 15 March, 09:00 PM'),
        ],
      ),
    );
  }

  bookingStatusItem(check, title, subtitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 21.0,
          height: 21.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.5),
            border: Border.all(
                width: 1.0, color: (check) ? primaryColor : greyColor),
            color: (check) ? primaryColor : scaffoldBgColor,
          ),
          child: Icon(
            Icons.check,
            size: 16.0,
            color: (check) ? whiteColor : Colors.transparent,
          ),
        ),
        widthSpace,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: black14MediumTextStyle,
            ),
            Text(
              subtitle,
              style: grey12MediumTextStyle,
            ),
          ],
        ),
      ],
    );
  }

  primaryColorDottedLine() {
    return Padding(
      padding: EdgeInsets.only(left: 9.5),
      child: DottedLine(
        direction: Axis.vertical,
        lineLength: 40.0,
        lineThickness: 2.0,
        dashLength: 2.0,
        dashColor: primaryColor,
        dashRadius: 10.0,
        dashGapLength: 4.0,
        dashGapColor: Colors.transparent,
        dashGapRadius: 0.0,
      ),
    );
  }

  greyColorDottedLine() {
    return Padding(
      padding: EdgeInsets.only(left: 9.5),
      child: DottedLine(
        direction: Axis.vertical,
        lineLength: 40.0,
        lineThickness: 2.0,
        dashLength: 2.0,
        dashColor: greyColor,
        dashRadius: 10.0,
        dashGapLength: 4.0,
        dashGapColor: Colors.transparent,
        dashGapRadius: 0.0,
      ),
    );
  }
}
