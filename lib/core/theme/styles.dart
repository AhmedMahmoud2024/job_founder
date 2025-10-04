import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_founder/core/theme/colors.dart';

class Styles{
  static TextStyle popiansBold24 = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor
  );

  static TextStyle medium16 = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor
  );

  static TextStyle popiansSemiBold14 = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w600,

  );
  
  static TextStyle popiansMedium14Gray = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.grey[700]
  );

  static TextStyle popiansBold22 = GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor
  );

}