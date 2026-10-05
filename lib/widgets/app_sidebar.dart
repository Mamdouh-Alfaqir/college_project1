import 'package:flutter/material.dart';
import '../theme.dart';
 
class AppSidebar extends StatelessWidget {
  final VoidCallback onNewChat;
  final ValueChanged<String> onTopicTap;
  final bool isDarkMode;
  final ValueChanged<bool> onThemeChanged;
 
  const AppSidebar({
    super.key,
    required this.onNewChat,
    required this.onTopicTap,
    required this.isDarkMode,
    required this.onThemeChanged,
  });
 
  @override
  Widget build(BuildContext context) {
    final sidebarColor = isDarkMode
        ? AppColors.darkSurface
        : AppColors.sidebar;
 
    final sidebarHoverColor = isDarkMode
        ? AppColors.darkSurface2
        : AppColors.sidebarHover;
 
    final primaryText = isDarkMode
        ? AppColors.darkTextPrimary
        : AppColors.textSidebar;
 
    final secondaryText = isDarkMode
        ? AppColors.darkTextSecondary
        : AppColors.textSidebarMuted;
 
    final borderColor = isDarkMode
        ? AppColors.darkBorder
        : AppColors.border;
 
    return Drawer(
      backgroundColor: sidebarColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _brandHeader(
                primaryText,
                secondaryText,
              ),
 
              const SizedBox(height: 20),
 
              _newChatButton(
                primaryText,
                sidebarHoverColor,
                borderColor,
              ),
 
              const SizedBox(height: 18),
 
              // Theme switch
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: sidebarHoverColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      isDarkMode
                          ? Icons.dark_mode_outlined
                          : Icons.light_mode_outlined,
                      size: 18,
                      color: primaryText,
                    ),
 
                    const SizedBox(width: 9),
 
                    Expanded(
                      child: Text(
                        isDarkMode ? 'Dark mode' : 'Light mode',
                        style: TextStyle(
                          color: primaryText,
                          fontSize: 13.5,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
 
                    Switch(
                      value: isDarkMode,
                      onChanged: onThemeChanged,
                      activeColor: AppColors.darkTextPrimary,
                      activeTrackColor: AppColors.darkModeToggleFill,
                      inactiveThumbColor: AppColors.textPrimary,
                      inactiveTrackColor: AppColors.sidebarHover,
                    ),
                  ],
                ),
              ),
 
              const SizedBox(height: 18),
 
              _SidebarLabel(
                'Topics',
                secondaryText,
              ),
 
              _topicItem(
                context,
                Icons.check_circle_outline,
                'Attendance & excuses',
                'What is the excused absence policy?',
                primaryText,
                secondaryText,
              ),
 
              _topicItem(
                context,
                Icons.calendar_today_outlined,
                'Academic calendar',
                'When is the add/drop deadline for Fall 2026?',
                primaryText,
                secondaryText,
              ),
 
              _topicItem(
                context,
                Icons.school_outlined,
                'Graduation requirements',
                'How many credit hours do I need to graduate?',
                primaryText,
                secondaryText,
              ),
 
              _topicItem(
                context,
                Icons.trending_up,
                'GPA & standing',
                'What GPA do I need to stay in good academic standing?',
                primaryText,
                secondaryText,
              ),
 
              const Spacer(),
 
              _demoCard(
                primaryText,
                secondaryText,
                sidebarHoverColor,
                borderColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
 
  Widget _brandHeader(
    Color primaryText,
    Color secondaryText,
  ) {
    return Row(
      children: [
        Container(
          width: 34,
          height: 34,
          decoration: BoxDecoration(
            color: isDarkMode
                ? AppColors.darkSurface2
                : AppColors.border,
            borderRadius: BorderRadius.circular(9),
          ),
          alignment: Alignment.center,
          child: Text(
            'MU',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: primaryText,
            ),
          ),
        ),
 
        const SizedBox(width: 10),
 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Murshid-UT',
              style: TextStyle(
                color: primaryText,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            Text(
              'Student Assistant',
              style: TextStyle(
                color: secondaryText,
                fontSize: 11.5,
              ),
            ),
          ],
        ),
      ],
    );
  }
 
  Widget _newChatButton(
    Color primaryText,
    Color backgroundColor,
    Color borderColor,
  ) {
    return OutlinedButton.icon(
      onPressed: () {
        onNewChat();
      },
      icon: Icon(
        Icons.add,
        size: 16,
        color: primaryText,
      ),
      label: Text(
        'New chat',
        style: TextStyle(
          color: primaryText,
          fontSize: 13.5,
        ),
      ),
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        side: BorderSide(
          color: borderColor,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
      ),
    );
  }
 
  Widget _topicItem(
    BuildContext context,
    IconData icon,
    String label,
    String prompt,
    Color primaryText,
    Color secondaryText,
  ) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          onTopicTap(prompt);
          Navigator.of(context).maybePop();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 9,
            horizontal: 9,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                size: 16,
                color: secondaryText,
              ),
 
              const SizedBox(width: 9),
 
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(
                    color: primaryText,
                    fontSize: 13.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
 
  Widget _demoCard(
    Color primaryText,
    Color secondaryText,
    Color backgroundColor,
    Color borderColor,
  ) {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: Text(
        'Demo mode. This assistant answers from a fictional sample '
        'policy set for a made-up university, not real regulations.',
        style: TextStyle(
          color: primaryText,
          fontSize: 12,
          height: 1.5,
        ),
      ),
    );
  }
}
 
class _SidebarLabel extends StatelessWidget {
  final String text;
  final Color color;
 
  const _SidebarLabel(
    this.text,
    this.color,
  );
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(9, 4, 9, 8),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 11,
        ),
      ),
    );
  }
}