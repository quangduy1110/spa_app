import 'package:app_spa/common/theme/app_size.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditProfileDropdownGender extends StatelessWidget {
  const EditProfileDropdownGender({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> genderItems = [
      'Male',
      'Female',
    ];
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0.5, 3), // changes position of shadow
          ),
        ],
      ),
      child: DropdownButtonFormField2(
        decoration: const InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.zero,
          border: InputBorder.none,
        ),
        hint: Text(
          'Gender',
          textScaleFactor:kSizeTextH4,
          style: TextStyle(
            fontFamily: 'Nunito',
            color: Colors.black.withOpacity(0.6),
            fontWeight: FontWeight.w100,
          ),
        ),
        icon: SvgPicture.asset(
          'assets/icons/icon-angle-small-down.svg',
          color: Colors.black54,
        ),
        buttonHeight: 50,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        items: genderItems
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    textScaleFactor:kSizeTextH4,
                    style: const TextStyle(
                      fontFamily: 'Nunito',
                      color: Colors.black,
                    ),
                  ),
                ))
            .toList(),
        validator: (value) {
          if (value == null) {
            return 'Please select gender.';
          }
        },
        onChanged: (value) {
          //Do something when changing the item if you want.
        },
        onSaved: (value) {},
      ),
    );
  }
}
