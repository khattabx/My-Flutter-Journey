import 'package:flutter/material.dart';
import 'package:real_estate_app/constans.dart';
import 'package:real_estate_app/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.supervisor_account,
                        text: '67+',
                        label: 'Clients',
                      ),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.location_on,
                        text: '139+',
                        label: 'Projects',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: kDefaultPadding * 3),
                Row(
                  children: [
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.public,
                        text: '30+',
                        label: 'Countries',
                      ),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.stars,
                        text: '13K+',
                        label: 'Stars',
                      ),
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconInfo(
                  context: context,
                  icon: Icons.supervisor_account,
                  text: '67+',
                  label: 'Clients',
                ),
                buildIconInfo(
                  context: context,
                  icon: Icons.location_on,
                  text: '139+',
                  label: 'Projects',
                ),
                buildIconInfo(
                  context: context,
                  icon: Icons.public,
                  text: '30+',
                  label: 'Countries',
                ),
                buildIconInfo(
                  context: context,
                  icon: Icons.stars,
                  text: '13K+',
                  label: 'Stars',
                ),
              ],
            ),
    );
  }

  Column buildIconInfo({
    required BuildContext context,
    required IconData icon,
    required String text,
    required String label,
  }) {
    return Column(
      children: [
        Icon(icon, size: 50),
        const SizedBox(height: 10),
        Text(
          text,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: kPrimaryColor,
                fontSize: 30,
              ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
