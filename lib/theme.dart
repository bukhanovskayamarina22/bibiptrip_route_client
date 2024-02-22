import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme = TextTheme(
  headlineLarge: GoogleFonts.openSans(
    fontWeight: FontWeight.w500,
    fontSize: 22,
    fontStyle: FontStyle.italic,
  ), 

  headlineSmall: GoogleFonts.openSans(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    fontStyle: FontStyle.italic,
  ), 
  

  bodyMedium: GoogleFonts.openSans(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    fontStyle: FontStyle.italic,
  ), 
  

  labelLarge: GoogleFonts.openSans(
    fontWeight: FontWeight.w400,
    fontSize: 14,
  ), 

  labelMedium: GoogleFonts.openSans(
    fontWeight: FontWeight.w400,
    fontSize: 12,
  )
);

const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF22BB9C),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFAAE6D9),
    onPrimaryContainer: Color(0xFF09332A),
    secondary: Color(0xFF545453),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFE6E6E5),
    onSecondaryContainer: Color(0xFF333332),
    tertiary: Color(0xFFC3D7E5),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFDBE1E6),
    onTertiaryContainer: Color(0xFF2B3033),
    error: Color(0xFFFE938C),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFE6C7C5),
    onErrorContainer: Color(0xFF331E1C),
    background: Color(0xFFfbfcfc),
    onBackground: Color(0xFF313333),
    surface: Color(0xFFfbfcfc),
    onSurface: Color(0xFF313333),
    surfaceVariant: Color(0xFFdae6e3),
    onSurfaceVariant: Color(0xFF556663),
    outline: Color(0xFF809994),
);

// const darkColorScheme = ColorScheme(
//     brightness: Brightness.dark,
//     primary: Color(0xFF91E6D4),
//     onPrimary: Color(0xFF0E4C3F),
//     primaryContainer: Color(0xFF126655),
//     onPrimaryContainer: Color(0xFFAAE6D9),
//     secondary: Color(0xFFE6E6E4),
//     onSecondary: Color(0xFF4C4C4C),
//     secondaryContainer: Color(0xFF666665),
//     onSecondaryContainer: Color(0xFFE6E6E5),
//     tertiary: Color(0xFFD6DFE6),
//     onTertiary: Color(0xFF41484C),
//     tertiaryContainer: Color(0xFF576066),
//     onTertiaryContainer: Color(0xFFDBE1E6),
//     error: Color(0xFFE6BAB7),
//     onError: Color(0xFF4C2C2A),
//     errorContainer: Color(0xFF663B38),
//     onErrorContainer: Color(0xFFE6C7C5),
//     background: Color(0xFF313333),
//     onBackground: Color(0xFFe3e6e5),
//     surface: Color(0xFF313333),
//     onSurface: Color(0xFFe3e6e5),
//     surfaceVariant: Color(0xFF556663),
//     onSurfaceVariant: Color(0xFFd5e6e2),
//     outline: Color(0xFFa0b3af),
// );


