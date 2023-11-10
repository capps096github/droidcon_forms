import '../../../droidcon_exporter.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    this.textColor = black,
    this.subTextColor = primaryColor,
    this.tileColor = white,
    required this.tooltip,
    required this.icon,
    required this.label,
    required this.subtitle,
  });

// colors
  final Color textColor, subTextColor, tileColor;

// tooltip
  final String tooltip;

  // icon
  final IconData? icon;

  // label
  final String label;

  // subtitle/
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Tooltip(
        message: tooltip,
        textStyle: TextStyle(color: tileColor),
        decoration: BoxDecoration(
          color: textColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Material(
          elevation: 0,
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(8),
          color: tileColor,
          child: ListTile(
            tileColor: tileColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: subTextColor.withOpacity(.8)),
              borderRadius: BorderRadius.circular(8),
            ),
            dense: true,
            leading: Icon(icon, color: textColor),
            title: Text(
              label,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.lato(
                fontSize: 16,
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: (subtitle.isNotEmpty)
                ? Text(
                    subtitle,
                    maxLines: 4,
                    style: GoogleFonts.lato(
                      fontSize: fontSize14,
                      color: subTextColor,
                    ),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
