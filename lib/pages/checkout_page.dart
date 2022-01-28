import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/checkout_card.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

   header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Checkout Details',
      ),
    );
  } 

  Widget conten() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      children: [
        //NOTE: LIST ITEMS
        Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'List Item',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              CheckoutCard(),
              CheckoutCard(),
            ],
          ),
        ),
        //NOTE: ADDRESS DETAIL
        Container(
          margin: EdgeInsets.only(
            top:defaultMargin,
          ),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Address Details',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12,
                ),
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/icon_your_address.png',
                        width: 40,
                      ),
                      Image.asset(
                        'assets/line_image.png',
                        height: 30,
                      ),
                      Image.asset(
                        'assets/icon_store_location.png',
                        width: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 12,
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Store Location',
                        style: secondaryTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Adidas Core',
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: defaultMargin,
                        ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Address',
                            style: secondaryTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Marsemoon',
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium,
                        ),
                      ),
                     ],
                    )
                   ],
                  )
                ],
              )
            ],
          ),
        ),

        //NOTE: PAYMENT
        Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
          ),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Summary',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 12,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Quantity',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '2 Items',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Price',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '\$575.96',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
               ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Free',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
               ),
              Divider(
                thickness: 1,
                color: Color(0xff2E3141),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: priceTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '\$575.92',
                    style: priceTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: defaultMargin,
         ),
        Divider(
          thickness: 1,
          color: Color(0xff2E3141),
        ),
        Container(
          height: 50,
          width: double.infinity,
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: TextButton(onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context, '/checkout-success', (route) => false);
          },
          style: TextButton.styleFrom(
             backgroundColor: primaryColor,
             padding: EdgeInsets.symmetric(
               horizontal: defaultMargin,
             ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )
          ), 
          child: Text(
            'Checkout Now',
            style: primaryTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
         ),
        )
      ],
    );
  }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: conten(),
    );
  }
}