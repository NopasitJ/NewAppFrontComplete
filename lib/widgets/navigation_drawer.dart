import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:softapp/pages/admindisplay.dart';
import 'package:softapp/pages/followingtag.dart';
import 'package:softapp/pages/foryou.dart';
import 'package:softapp/pages/home.dart';
import 'package:softapp/pages/post_page.dart';
import 'package:softapp/pages/postapprove.dart';
import 'package:softapp/pages/postreport.dart';
import 'package:softapp/pages/userdisplay.dart';
import 'package:softapp/pages/userprofilepage.dart';
import 'package:softapp/pages/userreport.dart';
import 'package:softapp/pages/userverified.dart';
import 'package:textfield_search/textfield_search.dart';

class NavigateDrawer extends StatelessWidget {
  const NavigateDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildHeader(context),
          buildMenuItems(context),
        ],
      )),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 222, 105, 21)),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(color: Color.fromARGB(255, 222, 105, 21)),
        child: Wrap(
          runSpacing: 16,
          children: [
            SizedBox(
              height: 800,
              child: drawerItem(context),
            ),
          ],
        ),
      );

  Widget drawerItem(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        ListTile(
          leading: Icon(
            Icons.arrow_right,
            size: 30,
          ),
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return userdisplay();
            }));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.arrow_right,
            size: 30,
          ),
          title: const Text(
            'For you',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ForYouScreen();
            }));
          },
        ),
        ExpansionTile(
          title: Text(
            "Tags",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          leading: Icon(
            Icons.arrow_right,
            size: 30,
          ), //add icon
          childrenPadding: EdgeInsets.only(left: 15), //children padding
          children: [
            ListTile(
              leading: Icon(
                Icons.arrow_right,
                size: 30,
              ),
              title: Text(
                "Tags search",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () {
                //action on press
                Navigator.pop(context);
                _showAddTag(context);
              },
            ),

            ListTile(
              leading: Icon(
                Icons.arrow_right,
                size: 30,
              ),
              title: Text(
                "Following tags",
                style: TextStyle(color: Colors.white, fontSize: 20),
                maxLines: 1,
              ),
              onTap: () {
                //action on press
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FollowingTagScreen();
                }));
              },
            ),

            //more child menu
          ],
        ),
        ListTile(
          leading: Icon(
            Icons.arrow_right,
            size: 30,
          ),
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return UserProfilePage();
            }));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.arrow_right,
            size: 30,
          ),
          title: const Text(
            'Req. Verified',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          onTap: () {
            _reqVerify(context);
            Navigator.pop(context);
          },
        ),
        ListTile(
          trailing: Icon(
            Icons.logout,
            size: 30,
            color: Colors.white,
          ),
          title: Text(
            "Logout",
            style: TextStyle(color: Colors.white, fontSize: 20),
            maxLines: 1,
          ),
          onTap: () {
            //action on press
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }), (route) => false);
            
          },
        ),
      ],
    );
  }
}

class AdminNavigateDrawer extends StatelessWidget {
  const AdminNavigateDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildHeader(context),
          buildMenuItems(context),
        ],
      )),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 222, 105, 21)),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(color: Color.fromARGB(255, 222, 105, 21)),
        child: Wrap(
          runSpacing: 16,
          children: [
            SizedBox(
              height: 800,
              child: drawerItem(context),
            ),
          ],
        ),
      );

  Widget drawerItem(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        ListTile(
          leading: Icon(
            Icons.arrow_right,
            size: 30,
          ),
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return admindisplay();
            }));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.arrow_right,
            size: 30,
          ),
          title: const Text(
            'For you',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ForYouScreen();
            }));
          },
        ),
        ExpansionTile(
          title: Text(
            "Tags",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          leading: Icon(
            Icons.arrow_right,
            size: 30,
          ), //add icon
          childrenPadding: EdgeInsets.only(left: 15), //children padding
          children: [
            ListTile(
              leading: Icon(
                Icons.arrow_right,
                size: 30,
              ),
              title: Text(
                "Tags search",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () {
                Navigator.pop(context);
                _showAddTag(context);
              },
            ),

            ListTile(
              leading: Icon(
                Icons.arrow_right,
                size: 30,
              ),
              title: Text(
                "Following tags",
                style: TextStyle(color: Colors.white, fontSize: 20),
                maxLines: 1,
              ),
              onTap: () {
                //action on press
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FollowingTagScreen();
                }));
              },
            ),

            //more child menu
          ],
        ),
        ListTile(
          leading: Icon(
            Icons.arrow_right,
            size: 30,
          ),
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return UserProfilePage();
            }));
          },
        ),
        ExpansionTile(
          title: Text(
            "Admin Panel",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          leading: Icon(
            Icons.arrow_right,
            size: 30,
          ), //add icon
          childrenPadding: EdgeInsets.only(left: 15), //children padding
          children: [
            ListTile(
              leading: Icon(
                Icons.arrow_right,
                size: 30,
              ),
              title: Text(
                "Post Approve",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () {
                //action on press
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AdminPostApproveScreen();
                }));
              },
            ),

            ListTile(
              leading: Icon(
                Icons.arrow_right,
                size: 30,
              ),
              title: Text(
                "Post Report",
                style: TextStyle(color: Colors.white, fontSize: 20),
                maxLines: 1,
              ),
              onTap: () {
                //action on press
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AdminPostReportScreen();
                }));
              },
            ),

            ListTile(
              leading: Icon(
                Icons.arrow_right,
                size: 30,
              ),
              title: Text(
                "User Verified",
                style: TextStyle(color: Colors.white, fontSize: 20),
                maxLines: 1,
              ),
              onTap: () {
                //action on press
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return UserVerifiedScreen();
                }));
              },
            ),
            //more child menu
            ListTile(
              leading: Icon(
                Icons.arrow_right,
                size: 30,
              ),
              title: Text(
                "User Report",
                style: TextStyle(color: Colors.white, fontSize: 20),
                maxLines: 1,
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return UserReportScreen();
                }));
              },
            ),
          ],
        ),
        ListTile(
          trailing: Icon(
            Icons.logout,
            size: 30,
            color: Colors.white,
          ),
          title: Text(
            "Logout",
            style: TextStyle(color: Colors.white, fontSize: 20),
            maxLines: 1,
          ),
          onTap: () {
            //action on press
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }), (route) => false);
            
          },
        ),
      ],
    );
  }
}

List<String> _reallist = ['test1', 'test2', 'gag', 'meme'];
String searchtag = '';

Future<List> fetchdata() async {
  return _reallist;
}

Future<String?> _showAddTag(BuildContext context) {
  TextEditingController myController = TextEditingController();

  return showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Tags Search'),
          content: Container(
            height: MediaQuery.of(context).size.width * 1,
            width: MediaQuery.of(context).size.width * 1,
            child: Form(
                child: ListView(
              children: <Widget>[
                TextFieldSearch(
                    label: 'Simple Future List',
                    controller: myController,
                    minStringLength: 1,
                    future: () {
                      return fetchdata();
                    }),
              ],
            )),
          ),
          actions: <Widget>[
            TextButton(
                onPressed: (() => Navigator.pop(context, 'Cancel')),
                child: const Text('Cancel')),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(myController.text);
                searchtag = myController.text;
                /*Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return UserReportScreen();
                  }));*/
                myController.clear();
              },
              child: const Text('OK'),
            ),
          ],
        );
      });
}

Future<String?> _reqVerify(BuildContext context) {
  return showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Verify Request Success'),
        );
      });
}


/*class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              if (query.isEmpty) {
                close(context, null);
              } else {
                query = '';
              }
            },
            icon: FaIcon(FontAwesomeIcons.xmark))
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () => close(context, null),
      icon: FaIcon(FontAwesomeIcons.arrowLeft));

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = _reallist.where((item) {
      final result = item.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];

          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;

              showResults(context);
            },
          );
        });
    throw UnimplementedError();
  }
}*/
