import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:provider/provider.dart';

import '../models/page_model.dart';
import '../styles.dart';

class SettingsPage extends StatelessWidget {
  Padding _button(
    BuildContext context, {
    @required void Function() onPressed,
    @required String label,
    @required IconData iconData,
  }) =>
      Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: FlatButton.icon(
            onPressed: onPressed,
            label: Text(
              label,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16.0,
                color: palette['black'],
              ),
            ),
            icon: Icon(
              iconData,
              size: 34.0,
              color: palette['black'],
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(left: 49.0),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Consumer<PageModel>(
                builder: (context, pageModel, _) {
                  return FlatButton.icon(
                    label: Text(
                      'What Exactly is RWSSP?',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16.0,
                        color: palette['black'],
                      ),
                    ),
                    icon: Icon(
                      OMIcons.info,
                      size: 34.0,
                      color: palette['black'],
                    ),
                    color: Colors.transparent,
                    onPressed: () => pageModel.setCurrentPage(AppPage.Info),
                  );
                },
              ),
            ),

            // TODO(smolck): Add functionality for each of these buttons.
            _button(context, onPressed: () {}, iconData: OMIcons.book, label: 'Versions'),
            _button(context, onPressed: () {}, iconData: OMIcons.edit, label: 'Customize Memorization'),
            _button(context, onPressed: () {}, iconData: OMIcons.history, label: 'History'),
            _button(context, onPressed: () {}, iconData: OMIcons.brightnessMedium, label: 'Theme'),
          ],
        ),
      ),
    );
  }
}
