import 'package:coffo/core/core.dart';
import 'package:coffo/features/profile/edit_profile/edit_profile_screen.dart';
import 'package:coffo/features/profile/help_support/help_support_screen.dart';
import 'package:coffo/features/profile/rate_us_feedback/rate_us_feedback_screen.dart';
import 'package:coffo/features/profile/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: AppSvg(
              Assets.assetsSvgLogout,
              height: 20,
            ),
            tooltip: 'Logout',
          ),
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(
                    Assets.assetsAvatar,
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Wahidun Ameri',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 10),
                Text(
                  'wahidun.ameri@domain.com',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(height: 20),
                ListTile(
                  trailing: AppSvg(
                    Assets.assetsSvgEdit,
                    height: 20,
                  ),
                  title: Text('Edit Profile'),
                  onTap: () {
                    pushNewScreenWithRouteSettings(
                      context,
                      settings: RouteSettings(name: EditProfileScreen.routeName),
                      screen: EditProfileScreen(),
                      withNavBar: true,
                      pageTransitionAnimation: PageTransitionAnimation.cupertino,
                    );
                  },
                ),
                ListTile(
                  trailing: AppSvg(
                    Assets.assetsSvgSettings,
                    height: 20,
                  ),
                  title: Text('Settings'),
                  onTap: () {
                    pushNewScreenWithRouteSettings(
                      context,
                      settings: RouteSettings(name: SettingsScreen.routeName),
                      screen: SettingsScreen(),
                      withNavBar: true,
                      pageTransitionAnimation: PageTransitionAnimation.cupertino,
                    );
                  },
                ),
                ListTile(
                  trailing: AppSvg(
                    Assets.assetsSvgChat,
                    height: 20,
                  ),
                  title: Text('Help & Support'),
                  onTap: () {
                    pushNewScreenWithRouteSettings(
                      context,
                      settings: RouteSettings(name: HelpSupportScreen.routeName),
                      screen: HelpSupportScreen(),
                      withNavBar: true,
                      pageTransitionAnimation: PageTransitionAnimation.cupertino,
                    );
                  },
                ),
                ListTile(
                  trailing: AppSvg(
                    Assets.assetsSvgLike,
                    height: 20,
                  ),
                  title: Text('Rate Us Feedback'),
                  onTap: () {
                    pushNewScreenWithRouteSettings(
                      context,
                      settings: RouteSettings(name: RateUsFeedbackScreen.routeName),
                      screen: RateUsFeedbackScreen(),
                      withNavBar: true,
                      pageTransitionAnimation: PageTransitionAnimation.cupertino,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
