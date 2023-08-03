import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final double preferredHeight;

  const CustomAppBarWidget({Key? key, this.preferredHeight = kToolbarHeight})
      : super(key: key);

  @override
  _CustomAppBarWidgetState createState() => _CustomAppBarWidgetState();

  @override
  Size get preferredSize => Size.fromHeight(preferredHeight);
}

class _CustomAppBarWidgetState extends State<CustomAppBarWidget> {
  bool showButtons = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppBar(
            scrolledUnderElevation: 0,
            shape: Border(
              bottom: BorderSide(
                color: Colors.grey[300]!,
                width: 1,
              ),
            ),
            title: Row(
              children: [
                Image.asset(
                  'assets/images/google_logo.png',
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 5),
                  child: Text(
                    'News',
                    style: TextStyle(
                      fontFamily: 'GoogleSans',
                      color: Colors.grey[800],
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: IconButton(
                  onPressed: () {
                    _showButtonDialog(context);
                  },
                  icon: Icon(
                    Icons.apps,
                    color: Colors.grey[800],
                    size: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showButtonDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Column(
          children: [
            Container(
              height: 500,
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                      color: const Color.fromARGB(233, 238, 246, 255),
                      width: 11.0,
                      strokeAlign: BorderSide.strokeAlignOutside),
                ),
                backgroundColor: Color.fromARGB(248, 250, 253, 255),
                surfaceTintColor: Color.fromARGB(248, 250, 253, 255),
                content: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          _buildIconButtonWithText(
                            icon: 'assets/images/profile_appbar.png',
                            text: 'Profile',
                            onPressed: () {},
                          ),
                          _buildIconButtonWithText(
                            icon: 'assets/images/google_appbar.png',
                            text: 'Search',
                            onPressed: () {},
                          ),
                          _buildIconButtonWithText(
                            icon: 'assets/images/buisness_appbar.png',
                            text: 'Buisness',
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          _buildIconButtonWithText(
                            icon: 'assets/images/maps.png',
                            text: 'Maps',
                            onPressed: () {},
                          ),
                          _buildIconButtonWithText(
                            icon: 'assets/images/youtube_appbar.png',
                            text: 'YouTube',
                            onPressed: () {},
                          ),
                          _buildIconButtonWithText(
                            icon: 'assets/images/googleplay_appbar.png',
                            text: 'Play',
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          _buildIconButtonWithText(
                            icon: 'assets/images/googlenews_appbar.png',
                            text: 'News',
                            onPressed: () {},
                          ),
                          _buildIconButtonWithText(
                            icon: 'assets/images/googlegmail_appbar.png',
                            text: 'Gmail',
                            onPressed: () {},
                          ),
                          _buildIconButtonWithText(
                            icon: 'assets/images/googlemeet_appbar.png',
                            text: 'Meet',
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          _buildIconButtonWithText(
                            icon: 'assets/images/googlechat_appbar.png',
                            text: 'Chat',
                            onPressed: () {},
                          ),
                          _buildIconButtonWithText(
                            icon: 'assets/images/contacts_appbar.png',
                            text: 'Contacts',
                            onPressed: () {},
                          ),
                          _buildIconButtonWithText(
                            icon: 'assets/images/googledrive_appbar.png',
                            text: 'Drive',
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          _buildIconButtonWithText(
                            icon: 'assets/images/googlecalendar_appbar.png',
                            text: 'Calendar',
                            onPressed: () {},
                          ),
                          _buildIconButtonWithText(
                            icon: 'assets/images/googletranslate_appbar.png',
                            text: 'Translate',
                            onPressed: () {},
                          ),
                          _buildIconButtonWithText(
                            icon: 'assets/images/googlephotos_appbar.png',
                            text: 'Photos',
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          _buildIconButtonWithText(
                            icon: 'assets/images/googleads_appbar.png',
                            text: 'Adsense',
                            onPressed: () {},
                          ),
                          _buildIconButtonWithText(
                            icon: 'assets/images/googlechrome_appbar.png',
                            text: 'Chrome',
                            onPressed: () {},
                          ),
                          _buildIconButtonWithText(
                            icon: 'assets/images/googleshopping_appbar.png',
                            text: 'Shopping',
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Divider(thickness: 5),
                      Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          _buildIconButtonWithText(
                            icon: 'assets/images/finance_appbar.png',
                            text: 'Finance',
                            onPressed: () {},
                          ),
                          _buildIconButtonWithText(
                            icon: 'assets/images/googledocs_appbar.png',
                            text: 'Docs',
                            onPressed: () {},
                          ),
                          _buildIconButtonWithText(
                            icon: 'assets/images/googlesheets_appbar.png',
                            text: 'Sheets',
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          _buildIconButtonWithText(
                            icon: 'assets/images/googleblogger_appbar.png',
                            text: 'Blogger',
                            onPressed: () {},
                          ),
                          _buildIconButtonWithText(
                            icon: 'assets/images/googleforms_appbar.png',
                            text: 'Forms',
                            onPressed: () {},
                          ),
                          _buildIconButtonWithText(
                            icon: 'assets/images/keep_appbar.png',
                            text: 'Keep',
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Center(
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(188, 238, 235, 235))),
                          onPressed: () {},
                          child: Text(
                            'More from Google',
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
    );
  }

  Widget _buildIconButtonWithText({
    required String icon,
    required String text,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Image.asset(
              icon,
              scale: 12,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
