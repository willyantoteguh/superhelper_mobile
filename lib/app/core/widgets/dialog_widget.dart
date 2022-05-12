import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kehadiranmu/app/core/utils/pallete.dart';

import 'button_dialog_widget.dart';

showDialogConfirm(BuildContext context, bool isFail, String title,
    String btnYes, String btnNo, Function onYesClicked, Function onNoClicked) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0.0,
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        title,
                        style: boldText.copyWith(
                            color: Colors.black,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            primaryButtonColorWrap(btnNo, gradient1, Colors.white, onNoClicked, height: 50),
                            primaryButtonColorWrap(btnYes, Colors.white, Colors.black, onYesClicked, height: 50)
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}