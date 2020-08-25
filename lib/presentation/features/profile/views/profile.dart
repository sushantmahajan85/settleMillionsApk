import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openflutterecommerce/config/routes.dart';
import 'package:openflutterecommerce/config/theme.dart';
import 'package:openflutterecommerce/presentation/features/wrapper.dart';
import 'package:openflutterecommerce/presentation/widgets/independent/menu_line.dart';

import '../profile.dart';

class ProfileView extends StatefulWidget {
  final Function changeView;

  const ProfileView({Key key, this.changeView}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ProfileBloc>(context);
    return ListView(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.only(top: 40.0, left: 10.0),
              // child: Container(
              //     child: Text(
              //   'My profile',
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34.0),
              // )
              // ),
            // ),
            SizedBox(
              height: 8.0,
            ),
            ListTile(
              leading: Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/profile/user-profile.jpeg'))),
              ),
              title: Text(
                //TODO: take from profile info
                'Matilda Brown',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),

              subtitle: Text(
                //TODO: take from profile info
                'matildabrown@mail.com',
                style: TextStyle(
                    color: AppColors.lightGray,
                    fontSize: 13,
                     fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 13.0,
            ),
            OpenFlutterMenuLine(
              title: 'My Page',
             
              subtitle: '99 deals posted',
              // TODO : If a user has not posted a deal show the message: Add your first deal
              onTap: (() => {
                widget.changeView(
                  changeType: ViewChangeType.Exact, index: 2)
              })),
           Divider(
              color: AppColors.lightGray,
              thickness: 0.3,
              height: 10,
            ),
           
            OpenFlutterMenuLine(
              title: 'Your Wallet',
              //TODO: make short card info
              subtitle: 'Track your earnings',
              onTap: (() => {
                  widget.changeView(
                    changeType: ViewChangeType.Exact, index: 3)
                })),
            Divider(
              color: AppColors.lightGray,
              thickness: 0.3,
              height: 10,
            ),
            OpenFlutterMenuLine(
              title: 'Switch Account',
              //TODO: make dynamic later
              subtitle: 'More accounts, more earnings',
              onTap: (() => {
                widget.changeView(
                    changeType: ViewChangeType.Exact, index: 4)
              })),
            Divider(
              color: AppColors.lightGray,
              thickness: 0.3,
              height: 10,
            ),

            OpenFlutterMenuLine(
                title: 'Settings',
                subtitle: 'Passwords, notifications',
                onTap: (() => {
                  widget.changeView(
                      changeType: ViewChangeType.Exact, index: 6)
                  //Navigator.of(context).pushNamed(OpenFlutterEcommerceRoutes.settings)
                })),
            Divider(
              color: AppColors.lightGray,
              thickness: 0.3,
              height: 10,
            ),
            
            OpenFlutterMenuLine(
              title: 'Help and Guides',
              //TODO: make dynamic later
              subtitle: 'Learn to post deals and more',
              onTap: (() => {
                widget.changeView(
                    changeType: ViewChangeType.Exact, index: 5)
              })),
            Divider(
              color: AppColors.lightGray,
              thickness: 0.3,
              height: 10,
            ),
            
            OpenFlutterMenuLine(
                title: 'SignIn',
                subtitle: 'Connect your web account',
                onTap: (() => {
                  Navigator.of(context).pushNamed(OpenFlutterEcommerceRoutes.signin)
                })),
            Divider(
              color: AppColors.lightGray,
              thickness: 0.3,
              height: 10,
            ),
            OpenFlutterMenuLine(
                title: 'SignUp',
                subtitle: 'Create a new account',
                onTap: (() => {
                  Navigator.of(context).pushNamed(OpenFlutterEcommerceRoutes.signup)
                })),
                 OpenFlutterMenuLine(
              title: 'My orders',
              //TODO: make short card info
              subtitle: 'Already Have 12 orders',
              onTap: (() => {
                bloc..add(ProfileMyOrdersEvent()),
                widget.changeView(
                  changeType: ViewChangeType.Exact, index: 1)
              })),
            Divider(
              color: AppColors.lightGray,
              thickness: 0.3,
              height: 10,
            ),
            
          ],
        )
      ],
    );
  }
}
