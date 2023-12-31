import '../../droidcon_exporter.dart';

///* this provides the default theme for the app
final droidconThemeProvider = Provider<ThemeData>((ref) {
  return DroidconTheme.light;
});

class DroidconTheme {
  static ThemeData get light {
    // text theme
    final TextTheme textTheme = ThemeData.light().textTheme;

    // TODO put app font here, default is Lato
    const textStyleFunction = GoogleFonts.lato;

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorSchemeSeed: primaryColor,

      //* -- Visual Density
      visualDensity: VisualDensity.adaptivePlatformDensity,

      //* -- Appbar
      appBarTheme: AppBarTheme(
        centerTitle: true,
        // backgroundColor: droidconColor,
        // TODO put app font here, default is Lato
        titleTextStyle: GoogleFonts.lato(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: white,
        ),
      ),

      //* -- tooltip
      tooltipTheme: const TooltipThemeData(
        textStyle: TextStyle(color: primaryColor),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: borderRadius4,
        ),
      ),

      //* -- text button
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(padding16),
        ),
      ),

      //* Text Theme
      textTheme: TextTheme(
        displayLarge: textStyleFunction(textStyle: textTheme.displayLarge),
        displayMedium: textStyleFunction(textStyle: textTheme.displayMedium),
        displaySmall: textStyleFunction(textStyle: textTheme.displaySmall),
        headlineLarge: textStyleFunction(textStyle: textTheme.headlineLarge),
        headlineMedium: textStyleFunction(textStyle: textTheme.headlineMedium),
        headlineSmall: textStyleFunction(textStyle: textTheme.headlineSmall),
        titleLarge: textStyleFunction(textStyle: textTheme.titleLarge),
        titleMedium: textStyleFunction(textStyle: textTheme.titleMedium),
        titleSmall: textStyleFunction(textStyle: textTheme.titleSmall),
        bodyLarge: textStyleFunction(textStyle: textTheme.bodyLarge),
        bodyMedium: textStyleFunction(textStyle: textTheme.bodyMedium),
        bodySmall: textStyleFunction(textStyle: textTheme.bodySmall),
        labelLarge: textStyleFunction(textStyle: textTheme.labelLarge),
        labelMedium: textStyleFunction(textStyle: textTheme.labelMedium),
        labelSmall: textStyleFunction(textStyle: textTheme.labelSmall),
      ),
    );
  }
}
