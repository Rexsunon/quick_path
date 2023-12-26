part of 'extensions.dart';

extension ContextExtensions on BuildContext {
  /// Hide keyboard
  get hideKeyboard => FocusScope.of(this).unfocus();

  /// Get mediaQuery size
  /// Same for [MediaQuery.sizeOf(context)]
  Size get mediaQuerySize => MediaQuery.sizeOf(this);

  /// Get device screen height
  /// Same for [MediaQuery.sizeOf(context).height]
  double get height => mediaQuerySize.height;

  /// Get device screen width
  /// Same for [MediaQuery.sizeOf(context).width]
  double get width => mediaQuerySize.width;

  ///
  /// accepts a double [scale] and returns scaled sized based on the screen
  /// width
  ///
  double widthScale({double scale = 1}) => scale * width;

  ///
  /// accepts a double [scale] and returns scaled sized based on the screen
  /// height
  ///
  double heightScale({double scale = 1}) => scale * height;


  /// Get theme data
  /// Similar to [Theme.of(context)]
  ThemeData get theme => Theme.of(this);

  ButtonThemeData get buttonThem => theme.buttonTheme;

  /// Check if device dark theme is enabled
  bool get isDarkMode => (theme.brightness == Brightness.dark);

  /// Get icon color
  /// Similar to [Theme.of(context).iconTheme.color]
  Color? get iconColor => theme.iconTheme.color;

  /// Get text theme
  TextTheme get textTheme => theme.textTheme;

  /// Get mediaQuery data
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Get device padding
  EdgeInsets get padding => mediaQuery.padding;

  /// Get view padding
  EdgeInsets get viewPadding => mediaQuery.viewPadding;

  /// Get viewInsets
  EdgeInsets get viewInsets => mediaQuery.viewInsets;

  AppLocalizations? get l10n => AppLocalizations.of(this);

  Locale get currentLocale => Localizations.localeOf(this);

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
