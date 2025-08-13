// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Welcome to Eshilf`
  String get onboarding_title_1 {
    return Intl.message(
      'Welcome to Eshilf',
      name: 'onboarding_title_1',
      desc: '',
      args: [],
    );
  }

  /// `Eshilf helps you connect with service providers quickly and efficiently.`
  String get onboarding_description_1 {
    return Intl.message(
      'Eshilf helps you connect with service providers quickly and efficiently.',
      name: 'onboarding_description_1',
      desc: '',
      args: [],
    );
  }

  /// `Find Services`
  String get onboarding_title_2 {
    return Intl.message(
      'Find Services',
      name: 'onboarding_title_2',
      desc: '',
      args: [],
    );
  }

  /// `Search and find the best service providers near you.`
  String get onboarding_description_2 {
    return Intl.message(
      'Search and find the best service providers near you.',
      name: 'onboarding_description_2',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get onboarding_title_3 {
    return Intl.message(
      'Get Started',
      name: 'onboarding_title_3',
      desc: '',
      args: [],
    );
  }

  /// `Sign up and start using Eshilf today!`
  String get onboarding_description_3 {
    return Intl.message(
      'Sign up and start using Eshilf today!',
      name: 'onboarding_description_3',
      desc: '',
      args: [],
    );
  }

  /// `Join the E-Shilf Community`
  String get get_started_title {
    return Intl.message(
      'Join the E-Shilf Community',
      name: 'get_started_title',
      desc: '',
      args: [],
    );
  }

  /// `Be part of a trusted platform for transporting goods, spare parts, and vehicle support. Get fast, reliable, and secure services.`
  String get get_started_description {
    return Intl.message(
      'Be part of a trusted platform for transporting goods, spare parts, and vehicle support. Get fast, reliable, and secure services.',
      name: 'get_started_description',
      desc: '',
      args: [],
    );
  }

  /// `Login to your E-Shilf account`
  String get login_title {
    return Intl.message(
      'Login to your E-Shilf account',
      name: 'login_title',
      desc: '',
      args: [],
    );
  }

  /// `Log in to your E-Shilf account to manage transport requests and technical support. Enter your details to continue.`
  String get login_description {
    return Intl.message(
      'Log in to your E-Shilf account to manage transport requests and technical support. Enter your details to continue.',
      name: 'login_description',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get email_hint {
    return Intl.message(
      'Enter your email',
      name: 'email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get email_title {
    return Intl.message(
      'Email Address',
      name: 'email_title',
      desc: '',
      args: [],
    );
  }

  /// `What is your email address?`
  String get email_description {
    return Intl.message(
      'What is your email address?',
      name: 'email_description',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get email_error_empty {
    return Intl.message(
      'Please enter your email',
      name: 'email_error_empty',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email address`
  String get email_error_invalid {
    return Intl.message(
      'Invalid email address',
      name: 'email_error_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Email is required`
  String get email_error_required {
    return Intl.message(
      'Email is required',
      name: 'email_error_required',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password_hint {
    return Intl.message('Password', name: 'password_hint', desc: '', args: []);
  }

  /// `Enter your password`
  String get password_title {
    return Intl.message(
      'Enter your password',
      name: 'password_title',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get password_error_empty {
    return Intl.message(
      'Please enter your password',
      name: 'password_error_empty',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters`
  String get password_error_short {
    return Intl.message(
      'Password must be at least 8 characters',
      name: 'password_error_short',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password? Enter your phone number, and we will send you a code to reset it.`
  String get forgot_password_description {
    return Intl.message(
      'Forgot your password? Enter your phone number, and we will send you a code to reset it.',
      name: 'forgot_password_description',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone_number {
    return Intl.message(
      'Phone Number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Phone Number`
  String get phone_number_title {
    return Intl.message(
      'Confirm Phone Number',
      name: 'phone_number_title',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number to ensure security.`
  String get phone_number_description {
    return Intl.message(
      'Please enter your phone number to ensure security.',
      name: 'phone_number_description',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone_number_hint {
    return Intl.message(
      'Phone Number',
      name: 'phone_number_hint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get phone_number_error_empty {
    return Intl.message(
      'Please enter your phone number',
      name: 'phone_number_error_empty',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get phone_number_error {
    return Intl.message(
      'Please enter your phone number',
      name: 'phone_number_error',
      desc: '',
      args: [],
    );
  }

  /// `Request Verification Code`
  String get request_verification_code {
    return Intl.message(
      'Request Verification Code',
      name: 'request_verification_code',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_button {
    return Intl.message('Login', name: 'login_button', desc: '', args: []);
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Welcome back!`
  String get welcome_back {
    return Intl.message(
      'Welcome back!',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get no_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'no_account',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get create_account {
    return Intl.message(
      'Create Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get already_have_account {
    return Intl.message(
      'Already have an account?',
      name: 'already_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code`
  String get otp_title {
    return Intl.message(
      'Verification Code',
      name: 'otp_title',
      desc: '',
      args: [],
    );
  }

  /// `For security, we have sent a one-time verification code to your phone. Please enter it below.`
  String get otp_description {
    return Intl.message(
      'For security, we have sent a one-time verification code to your phone. Please enter it below.',
      name: 'otp_description',
      desc: '',
      args: [],
    );
  }

  /// `Verify and Continue`
  String get verify_and_continue {
    return Intl.message(
      'Verify and Continue',
      name: 'verify_and_continue',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the verification code`
  String get otp_error_empty {
    return Intl.message(
      'Please enter the verification code',
      name: 'otp_error_empty',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive the code?`
  String get otp_not_received {
    return Intl.message(
      'Didn\'t receive the code?',
      name: 'otp_not_received',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get otp_resend {
    return Intl.message('Resend Code', name: 'otp_resend', desc: '', args: []);
  }

  /// `The code has been resent`
  String get otp_resend_success {
    return Intl.message(
      'The code has been resent',
      name: 'otp_resend_success',
      desc: '',
      args: [],
    );
  }

  /// `Create a New Password`
  String get create_password_title {
    return Intl.message(
      'Create a New Password',
      name: 'create_password_title',
      desc: '',
      args: [],
    );
  }

  /// `Secure your account by choosing a strong and memorable new password.`
  String get create_password_description {
    return Intl.message(
      'Secure your account by choosing a strong and memorable new password.',
      name: 'create_password_description',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new password`
  String get new_password_hint {
    return Intl.message(
      'Enter your new password',
      name: 'new_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get new_password {
    return Intl.message(
      'New Password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your new password`
  String get confirm_password_hint {
    return Intl.message(
      'Confirm your new password',
      name: 'confirm_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Must contain at least one uppercase letter`
  String get password_requirement_uppercase {
    return Intl.message(
      'Must contain at least one uppercase letter',
      name: 'password_requirement_uppercase',
      desc: '',
      args: [],
    );
  }

  /// `Must contain at least one number`
  String get password_requirement_number {
    return Intl.message(
      'Must contain at least one number',
      name: 'password_requirement_number',
      desc: '',
      args: [],
    );
  }

  /// `Must be at least 8 characters long`
  String get password_requirement_length {
    return Intl.message(
      'Must be at least 8 characters long',
      name: 'password_requirement_length',
      desc: '',
      args: [],
    );
  }

  /// `Passwords must match`
  String get password_requirement_match {
    return Intl.message(
      'Passwords must match',
      name: 'password_requirement_match',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get reset_password {
    return Intl.message(
      'Reset Password',
      name: 'reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in all fields`
  String get fill_all_fields_error {
    return Intl.message(
      'Please fill in all fields',
      name: 'fill_all_fields_error',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwords_do_not_match_error {
    return Intl.message(
      'Passwords do not match',
      name: 'passwords_do_not_match_error',
      desc: '',
      args: [],
    );
  }

  /// `Password is not strong enough`
  String get password_not_strong_error {
    return Intl.message(
      'Password is not strong enough',
      name: 'password_not_strong_error',
      desc: '',
      args: [],
    );
  }

  /// `Password Updated Successfully`
  String get password_success_title {
    return Intl.message(
      'Password Updated Successfully',
      name: 'password_success_title',
      desc: '',
      args: [],
    );
  }

  /// `Your password has been updated successfully. You can now continue using E-Shilf securely.`
  String get password_success_description {
    return Intl.message(
      'Your password has been updated successfully. You can now continue using E-Shilf securely.',
      name: 'password_success_description',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get Continue {
    return Intl.message('Continue', name: 'Continue', desc: '', args: []);
  }

  /// `What is your full name?`
  String get full_name_title {
    return Intl.message(
      'What is your full name?',
      name: 'full_name_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter your full name to make it easier to identify you.`
  String get full_name_description {
    return Intl.message(
      'Enter your full name to make it easier to identify you.',
      name: 'full_name_description',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get full_name_hint {
    return Intl.message(
      'Full Name',
      name: 'full_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your full name`
  String get full_name_error {
    return Intl.message(
      'Please enter your full name',
      name: 'full_name_error',
      desc: '',
      args: [],
    );
  }

  /// `Document Verification`
  String get document_verification_title {
    return Intl.message(
      'Document Verification',
      name: 'document_verification_title',
      desc: '',
      args: [],
    );
  }

  /// `The user submits identification documents based on the nature of their platform usage.`
  String get document_verification_description {
    return Intl.message(
      'The user submits identification documents based on the nature of their platform usage.',
      name: 'document_verification_description',
      desc: '',
      args: [],
    );
  }

  /// `Upload File`
  String get upload_file {
    return Intl.message('Upload File', name: 'upload_file', desc: '', args: []);
  }

  /// `My Files`
  String get my_files {
    return Intl.message('My Files', name: 'my_files', desc: '', args: []);
  }

  /// `No files uploaded`
  String get no_files_uploaded {
    return Intl.message(
      'No files uploaded',
      name: 'no_files_uploaded',
      desc: '',
      args: [],
    );
  }

  /// `Upload Files`
  String get upload_files {
    return Intl.message(
      'Upload Files',
      name: 'upload_files',
      desc: '',
      args: [],
    );
  }

  /// `Please upload files`
  String get upload_files_error {
    return Intl.message(
      'Please upload files',
      name: 'upload_files_error',
      desc: '',
      args: [],
    );
  }

  /// `has been removed`
  String get file_removed {
    return Intl.message(
      'has been removed',
      name: 'file_removed',
      desc: '',
      args: [],
    );
  }

  /// `Size`
  String get file_size {
    return Intl.message('Size', name: 'file_size', desc: '', args: []);
  }

  /// `Congratulations`
  String get congratulations {
    return Intl.message(
      'Congratulations',
      name: 'congratulations',
      desc: '',
      args: [],
    );
  }

  /// `Account created successfully`
  String get account_created_successfully {
    return Intl.message(
      'Account created successfully',
      name: 'account_created_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Allow Location Access`
  String get allow_location_access_title {
    return Intl.message(
      'Allow Location Access',
      name: 'allow_location_access_title',
      desc: '',
      args: [],
    );
  }

  /// `Grant E-shilf access to your location for accurate pickup and delivery.`
  String get allow_location_access_description {
    return Intl.message(
      'Grant E-shilf access to your location for accurate pickup and delivery.',
      name: 'allow_location_access_description',
      desc: '',
      args: [],
    );
  }

  /// `Allow`
  String get allow {
    return Intl.message('Allow', name: 'allow', desc: '', args: []);
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Invalid phone number`
  String get invalid_phone_number {
    return Intl.message(
      'Invalid phone number',
      name: 'invalid_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter phone number`
  String get enter_phone_number {
    return Intl.message(
      'Enter phone number',
      name: 'enter_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `My Account`
  String get my_account {
    return Intl.message('My Account', name: 'my_account', desc: '', args: []);
  }

  /// `My Orders`
  String get my_orders {
    return Intl.message('My Orders', name: 'my_orders', desc: '', args: []);
  }

  /// `Wallet`
  String get wallet {
    return Intl.message('Wallet', name: 'wallet', desc: '', args: []);
  }

  /// `Account`
  String get account {
    return Intl.message('Account', name: 'account', desc: '', args: []);
  }

  /// `Edit Account`
  String get edit_account {
    return Intl.message(
      'Edit Account',
      name: 'edit_account',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Dark Mode`
  String get dark_mode {
    return Intl.message('Dark Mode', name: 'dark_mode', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Edit`
  String get edit {
    return Intl.message('Edit', name: 'edit', desc: '', args: []);
  }

  /// `All notifications marked as read`
  String get mark_all_as_read {
    return Intl.message(
      'All notifications marked as read',
      name: 'mark_all_as_read',
      desc: '',
      args: [],
    );
  }

  /// `Mark as read`
  String get mark_as_read {
    return Intl.message(
      'Mark as read',
      name: 'mark_as_read',
      desc: '',
      args: [],
    );
  }

  /// `New Order`
  String get new_order {
    return Intl.message('New Order', name: 'new_order', desc: '', args: []);
  }

  /// `You have a new order from the client Ahmed.`
  String get new_order_description {
    return Intl.message(
      'You have a new order from the client Ahmed.',
      name: 'new_order_description',
      desc: '',
      args: [],
    );
  }

  /// `5 minutes ago`
  String get five_minutes_ago {
    return Intl.message(
      '5 minutes ago',
      name: 'five_minutes_ago',
      desc: '',
      args: [],
    );
  }

  /// `Order Updated`
  String get order_updated {
    return Intl.message(
      'Order Updated',
      name: 'order_updated',
      desc: '',
      args: [],
    );
  }

  /// `The status of your order has been updated.`
  String get order_updated_description {
    return Intl.message(
      'The status of your order has been updated.',
      name: 'order_updated_description',
      desc: '',
      args: [],
    );
  }

  /// `1 hour ago`
  String get one_hour_ago {
    return Intl.message('1 hour ago', name: 'one_hour_ago', desc: '', args: []);
  }

  /// `New Message`
  String get new_message {
    return Intl.message('New Message', name: 'new_message', desc: '', args: []);
  }

  /// `You have a new message from technical support.`
  String get new_message_description {
    return Intl.message(
      'You have a new message from technical support.',
      name: 'new_message_description',
      desc: '',
      args: [],
    );
  }

  /// `1 day ago`
  String get one_day_ago {
    return Intl.message('1 day ago', name: 'one_day_ago', desc: '', args: []);
  }

  /// `Requests`
  String get requests {
    return Intl.message('Requests', name: 'requests', desc: '', args: []);
  }

  /// `Open`
  String get open_requests {
    return Intl.message('Open', name: 'open_requests', desc: '', args: []);
  }

  /// `Closed`
  String get closed_requests {
    return Intl.message('Closed', name: 'closed_requests', desc: '', args: []);
  }

  /// `Canceled`
  String get canceled_requests {
    return Intl.message(
      'Canceled',
      name: 'canceled_requests',
      desc: '',
      args: [],
    );
  }

  /// `No open requests`
  String get no_open_requests {
    return Intl.message(
      'No open requests',
      name: 'no_open_requests',
      desc: '',
      args: [],
    );
  }

  /// `No closed requests`
  String get no_closed_requests {
    return Intl.message(
      'No closed requests',
      name: 'no_closed_requests',
      desc: '',
      args: [],
    );
  }

  /// `No canceled requests`
  String get no_canceled_requests {
    return Intl.message(
      'No canceled requests',
      name: 'no_canceled_requests',
      desc: '',
      args: [],
    );
  }

  /// `My Wallet`
  String get my_wallet {
    return Intl.message('My Wallet', name: 'my_wallet', desc: '', args: []);
  }

  /// `Your Balance`
  String get your_balance {
    return Intl.message(
      'Your Balance',
      name: 'your_balance',
      desc: '',
      args: [],
    );
  }

  /// `Add Money`
  String get add_money {
    return Intl.message('Add Money', name: 'add_money', desc: '', args: []);
  }

  /// `Transaction History`
  String get transaction_history {
    return Intl.message(
      'Transaction History',
      name: 'transaction_history',
      desc: '',
      args: [],
    );
  }

  /// `Balance Added`
  String get balance_added {
    return Intl.message(
      'Balance Added',
      name: 'balance_added',
      desc: '',
      args: [],
    );
  }

  /// `Balance Deducted`
  String get balance_deducted {
    return Intl.message(
      'Balance Deducted',
      name: 'balance_deducted',
      desc: '',
      args: [],
    );
  }

  /// `August`
  String get august {
    return Intl.message('August', name: 'august', desc: '', args: []);
  }

  /// `at`
  String get at {
    return Intl.message('at', name: 'at', desc: '', args: []);
  }

  /// `PM`
  String get pm {
    return Intl.message('PM', name: 'pm', desc: '', args: []);
  }

  /// `Welcome`
  String get welcome {
    return Intl.message('Welcome', name: 'welcome', desc: '', args: []);
  }

  /// `Current Balance`
  String get current_balance {
    return Intl.message(
      'Current Balance',
      name: 'current_balance',
      desc: '',
      args: [],
    );
  }

  /// `SAR`
  String get currency {
    return Intl.message('SAR', name: 'currency', desc: '', args: []);
  }

  /// `Multi-service provider`
  String get multi_service_provider {
    return Intl.message(
      'Multi-service provider',
      name: 'multi_service_provider',
      desc: '',
      args: [],
    );
  }

  /// `Transport`
  String get transport {
    return Intl.message('Transport', name: 'transport', desc: '', args: []);
  }

  /// `Maintenance`
  String get maintenance {
    return Intl.message('Maintenance', name: 'maintenance', desc: '', args: []);
  }

  /// `Spare Parts`
  String get spare_parts {
    return Intl.message('Spare Parts', name: 'spare_parts', desc: '', args: []);
  }

  /// `Custom Clearance`
  String get custom_clearance {
    return Intl.message(
      'Custom Clearance',
      name: 'custom_clearance',
      desc: '',
      args: [],
    );
  }

  /// `Vehicles`
  String get vehicles {
    return Intl.message('Vehicles', name: 'vehicles', desc: '', args: []);
  }

  /// `Drivers`
  String get drivers {
    return Intl.message('Drivers', name: 'drivers', desc: '', args: []);
  }

  /// `Offers and Requests`
  String get offers_and_requests {
    return Intl.message(
      'Offers and Requests',
      name: 'offers_and_requests',
      desc: '',
      args: [],
    );
  }

  /// `Shipment Management`
  String get shipment_management {
    return Intl.message(
      'Shipment Management',
      name: 'shipment_management',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Save Changes`
  String get save_changes {
    return Intl.message(
      'Save Changes',
      name: 'save_changes',
      desc: '',
      args: [],
    );
  }

  /// `Notification Settings`
  String get notification_settings {
    return Intl.message(
      'Notification Settings',
      name: 'notification_settings',
      desc: '',
      args: [],
    );
  }

  /// `Push Notifications`
  String get push_notifications {
    return Intl.message(
      'Push Notifications',
      name: 'push_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Enable or disable push notifications for order updates, promotions, and app alerts.`
  String get push_notifications_description {
    return Intl.message(
      'Enable or disable push notifications for order updates, promotions, and app alerts.',
      name: 'push_notifications_description',
      desc: '',
      args: [],
    );
  }

  /// `Email Notifications`
  String get email_notifications {
    return Intl.message(
      'Email Notifications',
      name: 'email_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Choose to receive important updates and offers via email.`
  String get email_notifications_description {
    return Intl.message(
      'Choose to receive important updates and offers via email.',
      name: 'email_notifications_description',
      desc: '',
      args: [],
    );
  }

  /// `SMS Notifications`
  String get sms_notifications {
    return Intl.message(
      'SMS Notifications',
      name: 'sms_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Opt to receive notifications and offers via SMS messages.`
  String get sms_notifications_description {
    return Intl.message(
      'Opt to receive notifications and offers via SMS messages.',
      name: 'sms_notifications_description',
      desc: '',
      args: [],
    );
  }

  /// `Payment done!`
  String get payment_done {
    return Intl.message(
      'Payment done!',
      name: 'payment_done',
      desc: '',
      args: [],
    );
  }

  /// `Bill payment has been done successfully`
  String get bill_payment_success {
    return Intl.message(
      'Bill payment has been done successfully',
      name: 'bill_payment_success',
      desc: '',
      args: [],
    );
  }

  /// `Payment details`
  String get payment_details {
    return Intl.message(
      'Payment details',
      name: 'payment_details',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message('Date', name: 'date', desc: '', args: []);
  }

  /// `Amount`
  String get amount {
    return Intl.message('Amount', name: 'amount', desc: '', args: []);
  }

  /// `Transaction no.`
  String get transaction_no {
    return Intl.message(
      'Transaction no.',
      name: 'transaction_no',
      desc: '',
      args: [],
    );
  }

  /// `Report a problem`
  String get report_problem {
    return Intl.message(
      'Report a problem',
      name: 'report_problem',
      desc: '',
      args: [],
    );
  }

  /// `Back to Wallet`
  String get back_to_wallet {
    return Intl.message(
      'Back to Wallet',
      name: 'back_to_wallet',
      desc: '',
      args: [],
    );
  }

  /// `Transaction ID copied to clipboard!`
  String get transaction_id_copied {
    return Intl.message(
      'Transaction ID copied to clipboard!',
      name: 'transaction_id_copied',
      desc: '',
      args: [],
    );
  }

  /// `Select Payment Method`
  String get select_payment_method {
    return Intl.message(
      'Select Payment Method',
      name: 'select_payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Make Payment`
  String get make_payment {
    return Intl.message(
      'Make Payment',
      name: 'make_payment',
      desc: '',
      args: [],
    );
  }

  /// `My Card`
  String get my_card {
    return Intl.message('My Card', name: 'my_card', desc: '', args: []);
  }

  /// `Add New Card`
  String get add_new_card {
    return Intl.message(
      'Add New Card',
      name: 'add_new_card',
      desc: '',
      args: [],
    );
  }

  /// `Get Your New Card`
  String get get_your_new_card {
    return Intl.message(
      'Get Your New Card',
      name: 'get_your_new_card',
      desc: '',
      args: [],
    );
  }

  /// `Generate a new card instantly to start enjoying seamless transactions and exclusive benefits.`
  String get generate_card_description {
    return Intl.message(
      'Generate a new card instantly to start enjoying seamless transactions and exclusive benefits.',
      name: 'generate_card_description',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Add Card`
  String get add_card {
    return Intl.message('Add Card', name: 'add_card', desc: '', args: []);
  }

  /// `Enter your card number`
  String get card_number_hint {
    return Intl.message(
      'Enter your card number',
      name: 'card_number_hint',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get card_number_label {
    return Intl.message(
      'Card Number',
      name: 'card_number_label',
      desc: '',
      args: [],
    );
  }

  /// `MM/YY`
  String get expiry_date_hint {
    return Intl.message('MM/YY', name: 'expiry_date_hint', desc: '', args: []);
  }

  /// `Expiry Date`
  String get expiry_date_label {
    return Intl.message(
      'Expiry Date',
      name: 'expiry_date_label',
      desc: '',
      args: [],
    );
  }

  /// `Enter CVV`
  String get cvv_hint {
    return Intl.message('Enter CVV', name: 'cvv_hint', desc: '', args: []);
  }

  /// `CVV`
  String get cvv_label {
    return Intl.message('CVV', name: 'cvv_label', desc: '', args: []);
  }

  /// `Enter cardholder name`
  String get card_holder_hint {
    return Intl.message(
      'Enter cardholder name',
      name: 'card_holder_hint',
      desc: '',
      args: [],
    );
  }

  /// `Cardholder Name`
  String get card_holder_label {
    return Intl.message(
      'Cardholder Name',
      name: 'card_holder_label',
      desc: '',
      args: [],
    );
  }

  /// `Card number is required`
  String get card_number_error {
    return Intl.message(
      'Card number is required',
      name: 'card_number_error',
      desc: '',
      args: [],
    );
  }

  /// `Expiry date is required`
  String get expiry_date_error {
    return Intl.message(
      'Expiry date is required',
      name: 'expiry_date_error',
      desc: '',
      args: [],
    );
  }

  /// `CVV is required`
  String get cvv_error {
    return Intl.message(
      'CVV is required',
      name: 'cvv_error',
      desc: '',
      args: [],
    );
  }

  /// `Cardholder name is required`
  String get card_holder_error {
    return Intl.message(
      'Cardholder name is required',
      name: 'card_holder_error',
      desc: '',
      args: [],
    );
  }

  /// `CVV cannot be empty`
  String get cvv_error_empty {
    return Intl.message(
      'CVV cannot be empty',
      name: 'cvv_error_empty',
      desc: '',
      args: [],
    );
  }

  /// `Invalid CVV`
  String get cvv_error_invalid {
    return Intl.message(
      'Invalid CVV',
      name: 'cvv_error_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Cardholder name cannot be empty`
  String get card_holder_error_empty {
    return Intl.message(
      'Cardholder name cannot be empty',
      name: 'card_holder_error_empty',
      desc: '',
      args: [],
    );
  }

  /// `Card number cannot be empty`
  String get card_number_error_empty {
    return Intl.message(
      'Card number cannot be empty',
      name: 'card_number_error_empty',
      desc: '',
      args: [],
    );
  }

  /// `Invalid card number`
  String get card_number_error_invalid {
    return Intl.message(
      'Invalid card number',
      name: 'card_number_error_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Expiry date cannot be empty`
  String get expiry_date_error_empty {
    return Intl.message(
      'Expiry date cannot be empty',
      name: 'expiry_date_error_empty',
      desc: '',
      args: [],
    );
  }

  /// `Invalid expiry date`
  String get expiry_date_error_invalid {
    return Intl.message(
      'Invalid expiry date',
      name: 'expiry_date_error_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Default`
  String get Default {
    return Intl.message('Default', name: 'Default', desc: '', args: []);
  }

  /// `Card Added Successfully`
  String get card_added_successfully {
    return Intl.message(
      'Card Added Successfully',
      name: 'card_added_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Your card has been successfully added to your EazyPay account, enabling seamless transactions and enhanced convenience.`
  String get card_added_description {
    return Intl.message(
      'Your card has been successfully added to your EazyPay account, enabling seamless transactions and enhanced convenience.',
      name: 'card_added_description',
      desc: '',
      args: [],
    );
  }

  /// `Back to Cards`
  String get back_to_cards {
    return Intl.message(
      'Back to Cards',
      name: 'back_to_cards',
      desc: '',
      args: [],
    );
  }

  /// `This card is already Exist`
  String get card_already_exist {
    return Intl.message(
      'This card is already Exist',
      name: 'card_already_exist',
      desc: '',
      args: [],
    );
  }

  /// `Set as Default`
  String get set_as_default {
    return Intl.message(
      'Set as Default',
      name: 'set_as_default',
      desc: '',
      args: [],
    );
  }

  /// `Scheduled payments will be \n automatically deducted from this card.`
  String get schedule_payment_description {
    return Intl.message(
      'Scheduled payments will be \n automatically deducted from this card.',
      name: 'schedule_payment_description',
      desc: '',
      args: [],
    );
  }

  /// `Sending code ....`
  String get send_code_loading {
    return Intl.message(
      'Sending code ....',
      name: 'send_code_loading',
      desc: '',
      args: [],
    );
  }

  /// `loading ....`
  String get send_loading {
    return Intl.message(
      'loading ....',
      name: 'send_loading',
      desc: '',
      args: [],
    );
  }

  /// `Transfer request`
  String get Transfer_request {
    return Intl.message(
      'Transfer request',
      name: 'Transfer_request',
      desc: '',
      args: [],
    );
  }

  /// `123adc`
  String get card_number {
    return Intl.message('123adc', name: 'card_number', desc: '', args: []);
  }

  /// `Active`
  String get status_active {
    return Intl.message('Active', name: 'status_active', desc: '', args: []);
  }

  /// `Compeleted`
  String get status_compelet {
    return Intl.message(
      'Compeleted',
      name: 'status_compelet',
      desc: '',
      args: [],
    );
  }

  /// `Canceled`
  String get status_canceled {
    return Intl.message(
      'Canceled',
      name: 'status_canceled',
      desc: '',
      args: [],
    );
  }

  /// `1Km`
  String get distance {
    return Intl.message('1Km', name: 'distance', desc: '', args: []);
  }

  /// `12min`
  String get time {
    return Intl.message('12min', name: 'time', desc: '', args: []);
  }

  /// `50\$`
  String get price {
    return Intl.message('50\\\$', name: 'price', desc: '', args: []);
  }

  /// `Pickup Location`
  String get from_title {
    return Intl.message(
      'Pickup Location',
      name: 'from_title',
      desc: '',
      args: [],
    );
  }

  /// `6391 Elgin St, Delaware 10299`
  String get from_address {
    return Intl.message(
      '6391 Elgin St, Delaware 10299',
      name: 'from_address',
      desc: '',
      args: [],
    );
  }

  /// `Drop-off`
  String get to_title {
    return Intl.message('Drop-off', name: 'to_title', desc: '', args: []);
  }

  /// `2464 Royal Ln, New Jersey 45463`
  String get to_address {
    return Intl.message(
      '2464 Royal Ln, New Jersey 45463',
      name: 'to_address',
      desc: '',
      args: [],
    );
  }

  /// `Enter Amount`
  String get enter_amount {
    return Intl.message(
      'Enter Amount',
      name: 'enter_amount',
      desc: '',
      args: [],
    );
  }

  /// `Top up amount`
  String get top_up_amount {
    return Intl.message(
      'Top up amount',
      name: 'top_up_amount',
      desc: '',
      args: [],
    );
  }

  /// `Minimum amount should be \$15`
  String get min_amount {
    return Intl.message(
      'Minimum amount should be \\\$15',
      name: 'min_amount',
      desc: '',
      args: [],
    );
  }

  /// `Amount Added Successfully`
  String get amount_added_success {
    return Intl.message(
      'Amount Added Successfully',
      name: 'amount_added_success',
      desc: '',
      args: [],
    );
  }

  /// `Your top up amount has been added to your wallet.`
  String get amount_added_desc {
    return Intl.message(
      'Your top up amount has been added to your wallet.',
      name: 'amount_added_desc',
      desc: '',
      args: [],
    );
  }

  /// `Request Details`
  String get request_details {
    return Intl.message(
      'Request Details',
      name: 'request_details',
      desc: '',
      args: [],
    );
  }

  /// `Driver Details`
  String get driver_details {
    return Intl.message(
      'Driver Details',
      name: 'driver_details',
      desc: '',
      args: [],
    );
  }

  /// `Add New Request`
  String get add_new_request {
    return Intl.message(
      'Add New Request',
      name: 'add_new_request',
      desc: '',
      args: [],
    );
  }

  /// `Client Type`
  String get client_type {
    return Intl.message('Client Type', name: 'client_type', desc: '', args: []);
  }

  /// `Please select client type`
  String get select_client_type {
    return Intl.message(
      'Please select client type',
      name: 'select_client_type',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Category`
  String get vehicle_category {
    return Intl.message(
      'Vehicle Category',
      name: 'vehicle_category',
      desc: '',
      args: [],
    );
  }

  /// `Please select vehicle category`
  String get select_vehicle_category {
    return Intl.message(
      'Please select vehicle category',
      name: 'select_vehicle_category',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Type`
  String get vehicle_type {
    return Intl.message(
      'Vehicle Type',
      name: 'vehicle_type',
      desc: '',
      args: [],
    );
  }

  /// `Please select vehicle type`
  String get select_vehicle_type {
    return Intl.message(
      'Please select vehicle type',
      name: 'select_vehicle_type',
      desc: '',
      args: [],
    );
  }

  /// `Load Weight`
  String get load_weight {
    return Intl.message('Load Weight', name: 'load_weight', desc: '', args: []);
  }

  /// `Enter load weight`
  String get enter_load_weight {
    return Intl.message(
      'Enter load weight',
      name: 'enter_load_weight',
      desc: '',
      args: [],
    );
  }

  /// `Please enter load weight`
  String get please_enter_load_weight {
    return Intl.message(
      'Please enter load weight',
      name: 'please_enter_load_weight',
      desc: '',
      args: [],
    );
  }

  /// `Load Description`
  String get load_description {
    return Intl.message(
      'Load Description',
      name: 'load_description',
      desc: '',
      args: [],
    );
  }

  /// `Enter load description`
  String get enter_load_description {
    return Intl.message(
      'Enter load description',
      name: 'enter_load_description',
      desc: '',
      args: [],
    );
  }

  /// `Please enter load description`
  String get please_enter_load_description {
    return Intl.message(
      'Please enter load description',
      name: 'please_enter_load_description',
      desc: '',
      args: [],
    );
  }

  /// `Load Value`
  String get load_value {
    return Intl.message('Load Value', name: 'load_value', desc: '', args: []);
  }

  /// `Enter load value`
  String get enter_load_value {
    return Intl.message(
      'Enter load value',
      name: 'enter_load_value',
      desc: '',
      args: [],
    );
  }

  /// `Please enter load value`
  String get please_enter_load_value {
    return Intl.message(
      'Please enter load value',
      name: 'please_enter_load_value',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Location`
  String get shipping_location {
    return Intl.message(
      'Shipping Location',
      name: 'shipping_location',
      desc: '',
      args: [],
    );
  }

  /// `Enter shipping location`
  String get enter_shipping_location {
    return Intl.message(
      'Enter shipping location',
      name: 'enter_shipping_location',
      desc: '',
      args: [],
    );
  }

  /// `Unloading Location`
  String get unloading_location {
    return Intl.message(
      'Unloading Location',
      name: 'unloading_location',
      desc: '',
      args: [],
    );
  }

  /// `Enter unloading location`
  String get enter_unloading_location {
    return Intl.message(
      'Enter unloading location',
      name: 'enter_unloading_location',
      desc: '',
      args: [],
    );
  }

  /// `Pickup Date`
  String get pickup_date {
    return Intl.message('Pickup Date', name: 'pickup_date', desc: '', args: []);
  }

  /// `Enter pickup date`
  String get enter_pickup_date {
    return Intl.message(
      'Enter pickup date',
      name: 'enter_pickup_date',
      desc: '',
      args: [],
    );
  }

  /// `Please enter pickup date`
  String get please_enter_pickup_date {
    return Intl.message(
      'Please enter pickup date',
      name: 'please_enter_pickup_date',
      desc: '',
      args: [],
    );
  }

  /// `Pricing Method`
  String get pricing_method {
    return Intl.message(
      'Pricing Method',
      name: 'pricing_method',
      desc: '',
      args: [],
    );
  }

  /// `Please select pricing method`
  String get select_pricing_method {
    return Intl.message(
      'Please select pricing method',
      name: 'select_pricing_method',
      desc: '',
      args: [],
    );
  }

  /// `Request sent successfully`
  String get request_sent_success {
    return Intl.message(
      'Request sent successfully',
      name: 'request_sent_success',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message('Back', name: 'back', desc: '', args: []);
  }

  /// `Domain List`
  String get domain_list {
    return Intl.message('Domain List', name: 'domain_list', desc: '', args: []);
  }

  /// `Please select a domain`
  String get select_domain {
    return Intl.message(
      'Please select a domain',
      name: 'select_domain',
      desc: '',
      args: [],
    );
  }

  /// `No service provider available`
  String get no_service_provider {
    return Intl.message(
      'No service provider available',
      name: 'no_service_provider',
      desc: '',
      args: [],
    );
  }

  /// `Choose`
  String get choose {
    return Intl.message('Choose', name: 'choose', desc: '', args: []);
  }

  /// `Vehicle Details`
  String get vehicle_details {
    return Intl.message(
      'Vehicle Details',
      name: 'vehicle_details',
      desc: '',
      args: [],
    );
  }

  /// `Load Details`
  String get load_details {
    return Intl.message(
      'Load Details',
      name: 'load_details',
      desc: '',
      args: [],
    );
  }

  /// `Location & Time`
  String get location_and_time {
    return Intl.message(
      'Location & Time',
      name: 'location_and_time',
      desc: '',
      args: [],
    );
  }

  /// `Search Domain`
  String get search_domain {
    return Intl.message(
      'Search Domain',
      name: 'search_domain',
      desc: '',
      args: [],
    );
  }

  /// `Pricing`
  String get pricing {
    return Intl.message('Pricing', name: 'pricing', desc: '', args: []);
  }

  /// `Sender`
  String get sender {
    return Intl.message('Sender', name: 'sender', desc: '', args: []);
  }

  /// `Receiver`
  String get receiver {
    return Intl.message('Receiver', name: 'receiver', desc: '', args: []);
  }

  /// `Heavy Transport`
  String get heavy_transport {
    return Intl.message(
      'Heavy Transport',
      name: 'heavy_transport',
      desc: '',
      args: [],
    );
  }

  /// `Light Transport`
  String get light_transport {
    return Intl.message(
      'Light Transport',
      name: 'light_transport',
      desc: '',
      args: [],
    );
  }

  /// `Type One`
  String get type_one {
    return Intl.message('Type One', name: 'type_one', desc: '', args: []);
  }

  /// `Type Two`
  String get type_two {
    return Intl.message('Type Two', name: 'type_two', desc: '', args: []);
  }

  /// `Type Three`
  String get type_three {
    return Intl.message('Type Three', name: 'type_three', desc: '', args: []);
  }

  /// `Type Four`
  String get type_four {
    return Intl.message('Type Four', name: 'type_four', desc: '', args: []);
  }

  /// `Public Auction`
  String get public_auction {
    return Intl.message(
      'Public Auction',
      name: 'public_auction',
      desc: '',
      args: [],
    );
  }

  /// `Private Auction`
  String get private_auction {
    return Intl.message(
      'Private Auction',
      name: 'private_auction',
      desc: '',
      args: [],
    );
  }

  /// `Fixed Price`
  String get fixed_price {
    return Intl.message('Fixed Price', name: 'fixed_price', desc: '', args: []);
  }

  /// `Logging in...`
  String get loadingLogin {
    return Intl.message(
      'Logging in...',
      name: 'loadingLogin',
      desc: '',
      args: [],
    );
  }

  /// `Login successful`
  String get loginSuccess {
    return Intl.message(
      'Login successful',
      name: 'loginSuccess',
      desc: '',
      args: [],
    );
  }

  /// `km`
  String get km {
    return Intl.message('km', name: 'km', desc: '', args: []);
  }

  /// `Pending`
  String get pending {
    return Intl.message('Pending', name: 'pending', desc: '', args: []);
  }

  /// `confirm order`
  String get pleaseConfirmTheOrder {
    return Intl.message(
      'confirm order',
      name: 'pleaseConfirmTheOrder',
      desc: '',
      args: [],
    );
  }

  /// `Received`
  String get receivedDone {
    return Intl.message('Received', name: 'receivedDone', desc: '', args: []);
  }

  /// `Delivering`
  String get delivering {
    return Intl.message('Delivering', name: 'delivering', desc: '', args: []);
  }

  /// `Delivered`
  String get delivered {
    return Intl.message('Delivered', name: 'delivered', desc: '', args: []);
  }

  /// `Receive`
  String get received {
    return Intl.message('Receive', name: 'received', desc: '', args: []);
  }

  /// `Choose Offer`
  String get chooseOffer {
    return Intl.message(
      'Choose Offer',
      name: 'chooseOffer',
      desc: '',
      args: [],
    );
  }

  /// `Request Offers`
  String get requestOffers {
    return Intl.message(
      'Request Offers',
      name: 'requestOffers',
      desc: '',
      args: [],
    );
  }

  /// `Service Fees`
  String get serviceFees {
    return Intl.message(
      'Service Fees',
      name: 'serviceFees',
      desc: '',
      args: [],
    );
  }

  /// `Tax`
  String get Tax {
    return Intl.message('Tax', name: 'Tax', desc: '', args: []);
  }

  /// `Total`
  String get Total {
    return Intl.message('Total', name: 'Total', desc: '', args: []);
  }

  /// `Retry Again`
  String get retryAgain {
    return Intl.message('Retry Again', name: 'retryAgain', desc: '', args: []);
  }

  /// `Transaction amount has been successfully frozen until the transport service is completed.`
  String get transactionFrozen {
    return Intl.message(
      'Transaction amount has been successfully frozen until the transport service is completed.',
      name: 'transactionFrozen',
      desc: '',
      args: [],
    );
  }

  /// `Sort and filter offers`
  String get SortAndfilterOffers {
    return Intl.message(
      'Sort and filter offers',
      name: 'SortAndfilterOffers',
      desc: '',
      args: [],
    );
  }

  /// `Sort by Rating`
  String get SortByRating {
    return Intl.message(
      'Sort by Rating',
      name: 'SortByRating',
      desc: '',
      args: [],
    );
  }

  /// `Sort by Price`
  String get SortByPrice {
    return Intl.message(
      'Sort by Price',
      name: 'SortByPrice',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get Apply {
    return Intl.message('Apply', name: 'Apply', desc: '', args: []);
  }

  /// `Sort by Rating Low to High`
  String get SortByRatingLowToHigh {
    return Intl.message(
      'Sort by Rating Low to High',
      name: 'SortByRatingLowToHigh',
      desc: '',
      args: [],
    );
  }

  /// `Sort by Rating High to Low`
  String get SortByRatingHighToLow {
    return Intl.message(
      'Sort by Rating High to Low',
      name: 'SortByRatingHighToLow',
      desc: '',
      args: [],
    );
  }

  /// `Sort by Price High to Low`
  String get SortByPriceHighToLow {
    return Intl.message(
      'Sort by Price High to Low',
      name: 'SortByPriceHighToLow',
      desc: '',
      args: [],
    );
  }

  /// `Sort by Price Low to High`
  String get SortByPriceLowToHigh {
    return Intl.message(
      'Sort by Price Low to High',
      name: 'SortByPriceLowToHigh',
      desc: '',
      args: [],
    );
  }

  /// `Loading and Unloading Locations`
  String get LoadingAndUnloadingLocations {
    return Intl.message(
      'Loading and Unloading Locations',
      name: 'LoadingAndUnloadingLocations',
      desc: '',
      args: [],
    );
  }

  /// `Transportation Requirements`
  String get TransportationRequirements {
    return Intl.message(
      'Transportation Requirements',
      name: 'TransportationRequirements',
      desc: '',
      args: [],
    );
  }

  /// `Number of Items`
  String get NumberOfItems {
    return Intl.message(
      'Number of Items',
      name: 'NumberOfItems',
      desc: '',
      args: [],
    );
  }

  /// `Element Details`
  String get ElementDetails {
    return Intl.message(
      'Element Details',
      name: 'ElementDetails',
      desc: '',
      args: [],
    );
  }

  /// `Enter number of items`
  String get EnterNumberOfItems {
    return Intl.message(
      'Enter number of items',
      name: 'EnterNumberOfItems',
      desc: '',
      args: [],
    );
  }

  /// `Please enter number of items`
  String get PleaseEnterNumberOfItems {
    return Intl.message(
      'Please enter number of items',
      name: 'PleaseEnterNumberOfItems',
      desc: '',
      args: [],
    );
  }

  /// `Number of Items`
  String get number_of_items {
    return Intl.message(
      'Number of Items',
      name: 'number_of_items',
      desc: '',
      args: [],
    );
  }

  /// `Item`
  String get item {
    return Intl.message('Item', name: 'item', desc: '', args: []);
  }

  /// `Please select an item`
  String get please_select_item {
    return Intl.message(
      'Please select an item',
      name: 'please_select_item',
      desc: '',
      args: [],
    );
  }

  /// `Item List`
  String get item_list {
    return Intl.message('Item List', name: 'item_list', desc: '', args: []);
  }

  /// `Please enter number of items in shipment`
  String get please_enter_number_of_items_in_shipment {
    return Intl.message(
      'Please enter number of items in shipment',
      name: 'please_enter_number_of_items_in_shipment',
      desc: '',
      args: [],
    );
  }

  /// `Enter item description`
  String get enter_item_description {
    return Intl.message(
      'Enter item description',
      name: 'enter_item_description',
      desc: '',
      args: [],
    );
  }

  /// `Item Description`
  String get item_description {
    return Intl.message(
      'Item Description',
      name: 'item_description',
      desc: '',
      args: [],
    );
  }

  /// `Please enter item description`
  String get please_enter_item_description {
    return Intl.message(
      'Please enter item description',
      name: 'please_enter_item_description',
      desc: '',
      args: [],
    );
  }

  /// `Enter number of items`
  String get enter_number_of_items {
    return Intl.message(
      'Enter number of items',
      name: 'enter_number_of_items',
      desc: '',
      args: [],
    );
  }

  /// `Please enter number of items`
  String get please_enter_number_of_items {
    return Intl.message(
      'Please enter number of items',
      name: 'please_enter_number_of_items',
      desc: '',
      args: [],
    );
  }

  /// `Enter item weight (kg)`
  String get enter_item_weight {
    return Intl.message(
      'Enter item weight (kg)',
      name: 'enter_item_weight',
      desc: '',
      args: [],
    );
  }

  /// `Item Weight`
  String get item_weight {
    return Intl.message('Item Weight', name: 'item_weight', desc: '', args: []);
  }

  /// `Please enter item weight`
  String get please_enter_item_weight {
    return Intl.message(
      'Please enter item weight',
      name: 'please_enter_item_weight',
      desc: '',
      args: [],
    );
  }

  /// `Enter item value`
  String get enter_item_value {
    return Intl.message(
      'Enter item value',
      name: 'enter_item_value',
      desc: '',
      args: [],
    );
  }

  /// `Item Value`
  String get item_value {
    return Intl.message('Item Value', name: 'item_value', desc: '', args: []);
  }

  /// `Please enter item value`
  String get please_enter_item_value {
    return Intl.message(
      'Please enter item value',
      name: 'please_enter_item_value',
      desc: '',
      args: [],
    );
  }

  /// `Please enter storage and care requirements for each item in your shipment`
  String get enter_storage_and_care_requirements {
    return Intl.message(
      'Please enter storage and care requirements for each item in your shipment',
      name: 'enter_storage_and_care_requirements',
      desc: '',
      args: [],
    );
  }

  /// `Enter storage conditions`
  String get enter_storage_conditions {
    return Intl.message(
      'Enter storage conditions',
      name: 'enter_storage_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Storage Conditions`
  String get storage_conditions {
    return Intl.message(
      'Storage Conditions',
      name: 'storage_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Please enter storage conditions`
  String get please_enter_storage_conditions {
    return Intl.message(
      'Please enter storage conditions',
      name: 'please_enter_storage_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Enter care requirements`
  String get enter_care_requirements {
    return Intl.message(
      'Enter care requirements',
      name: 'enter_care_requirements',
      desc: '',
      args: [],
    );
  }

  /// `Care Requirements`
  String get care_requirements {
    return Intl.message(
      'Care Requirements',
      name: 'care_requirements',
      desc: '',
      args: [],
    );
  }

  /// `Please enter care requirements`
  String get please_enter_care_requirements {
    return Intl.message(
      'Please enter care requirements',
      name: 'please_enter_care_requirements',
      desc: '',
      args: [],
    );
  }

  /// `No requests found`
  String get empty_requests {
    return Intl.message(
      'No requests found',
      name: 'empty_requests',
      desc: '',
      args: [],
    );
  }

  /// `Please upload 3 images to confirm receipt`
  String get upload_images_title {
    return Intl.message(
      'Please upload 3 images to confirm receipt',
      name: 'upload_images_title',
      desc: '',
      args: [],
    );
  }

  /// `Upload Image`
  String get upload_image {
    return Intl.message(
      'Upload Image',
      name: 'upload_image',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Management`
  String get vehicle_management {
    return Intl.message(
      'Vehicle Management',
      name: 'vehicle_management',
      desc: '',
      args: [],
    );
  }

  /// `Add Vehicle`
  String get add_vehicle {
    return Intl.message('Add Vehicle', name: 'add_vehicle', desc: '', args: []);
  }

  /// `Edit Vehicle`
  String get edit_vehicle {
    return Intl.message(
      'Edit Vehicle',
      name: 'edit_vehicle',
      desc: '',
      args: [],
    );
  }

  /// `Link/Unlink Vehicle Driver`
  String get link_unlink_vehicle_driver {
    return Intl.message(
      'Link/Unlink Vehicle Driver',
      name: 'link_unlink_vehicle_driver',
      desc: '',
      args: [],
    );
  }

  /// `Reports`
  String get reports {
    return Intl.message('Reports', name: 'reports', desc: '', args: []);
  }

  /// `Choose vehicle relationship type`
  String get choose_vehicle_relationship_type {
    return Intl.message(
      'Choose vehicle relationship type',
      name: 'choose_vehicle_relationship_type',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Relationship Type`
  String get vehicle_relationship_type {
    return Intl.message(
      'Vehicle Relationship Type',
      name: 'vehicle_relationship_type',
      desc: '',
      args: [],
    );
  }

  /// `Please select vehicle relationship type`
  String get please_select_vehicle_relationship {
    return Intl.message(
      'Please select vehicle relationship type',
      name: 'please_select_vehicle_relationship',
      desc: '',
      args: [],
    );
  }

  /// `Choose vehicle usage type`
  String get choose_vehicle_usage_type {
    return Intl.message(
      'Choose vehicle usage type',
      name: 'choose_vehicle_usage_type',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Usage Type`
  String get vehicle_usage_type {
    return Intl.message(
      'Vehicle Usage Type',
      name: 'vehicle_usage_type',
      desc: '',
      args: [],
    );
  }

  /// `Please select vehicle usage type`
  String get please_select_vehicle_usage {
    return Intl.message(
      'Please select vehicle usage type',
      name: 'please_select_vehicle_usage',
      desc: '',
      args: [],
    );
  }

  /// `Enter vehicle value`
  String get enter_vehicle_value {
    return Intl.message(
      'Enter vehicle value',
      name: 'enter_vehicle_value',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Value`
  String get vehicle_value {
    return Intl.message(
      'Vehicle Value',
      name: 'vehicle_value',
      desc: '',
      args: [],
    );
  }

  /// `Please enter vehicle value`
  String get please_enter_vehicle_value {
    return Intl.message(
      'Please enter vehicle value',
      name: 'please_enter_vehicle_value',
      desc: '',
      args: [],
    );
  }

  /// `Choose a driver to connect to the vehicle`
  String get choose_driver_to_connect {
    return Intl.message(
      'Choose a driver to connect to the vehicle',
      name: 'choose_driver_to_connect',
      desc: '',
      args: [],
    );
  }

  /// `Connect Vehicle`
  String get connect_vehicle {
    return Intl.message(
      'Connect Vehicle',
      name: 'connect_vehicle',
      desc: '',
      args: [],
    );
  }

  /// `Please select a driver to connect to the vehicle`
  String get please_select_driver_to_connect {
    return Intl.message(
      'Please select a driver to connect to the vehicle',
      name: 'please_select_driver_to_connect',
      desc: '',
      args: [],
    );
  }

  /// `Enter plate number`
  String get enter_plate_number {
    return Intl.message(
      'Enter plate number',
      name: 'enter_plate_number',
      desc: '',
      args: [],
    );
  }

  /// `Plate Number`
  String get plate_number {
    return Intl.message(
      'Plate Number',
      name: 'plate_number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter plate number`
  String get please_enter_plate_number {
    return Intl.message(
      'Please enter plate number',
      name: 'please_enter_plate_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter vehicle license number`
  String get enter_vehicle_license_number {
    return Intl.message(
      'Enter vehicle license number',
      name: 'enter_vehicle_license_number',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle License Number`
  String get vehicle_license_number {
    return Intl.message(
      'Vehicle License Number',
      name: 'vehicle_license_number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter vehicle license number`
  String get please_enter_vehicle_license_number {
    return Intl.message(
      'Please enter vehicle license number',
      name: 'please_enter_vehicle_license_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter license expiry date`
  String get enter_license_expiry_date {
    return Intl.message(
      'Enter license expiry date',
      name: 'enter_license_expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `License Expiry Date`
  String get license_expiry_date {
    return Intl.message(
      'License Expiry Date',
      name: 'license_expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `Please enter license expiry date`
  String get please_enter_license_expiry_date {
    return Intl.message(
      'Please enter license expiry date',
      name: 'please_enter_license_expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `Enter insurance document number`
  String get enter_insurance_document_number {
    return Intl.message(
      'Enter insurance document number',
      name: 'enter_insurance_document_number',
      desc: '',
      args: [],
    );
  }

  /// `Insurance Document Number`
  String get insurance_document_number {
    return Intl.message(
      'Insurance Document Number',
      name: 'insurance_document_number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter insurance document number`
  String get please_enter_insurance_document_number {
    return Intl.message(
      'Please enter insurance document number',
      name: 'please_enter_insurance_document_number',
      desc: '',
      args: [],
    );
  }

  /// `Insurance Policy Expiry Date`
  String get insurance_policy_expiry_date {
    return Intl.message(
      'Insurance Policy Expiry Date',
      name: 'insurance_policy_expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `Please enter insurance policy expiry date`
  String get please_enter_insurance_expiry_date {
    return Intl.message(
      'Please enter insurance policy expiry date',
      name: 'please_enter_insurance_expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `You must attach the required images.`
  String get must_attach_required_images {
    return Intl.message(
      'You must attach the required images.',
      name: 'must_attach_required_images',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle License Image`
  String get vehicle_license_image {
    return Intl.message(
      'Vehicle License Image',
      name: 'vehicle_license_image',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Insurance Document Image`
  String get vehicle_insurance_document_image {
    return Intl.message(
      'Vehicle Insurance Document Image',
      name: 'vehicle_insurance_document_image',
      desc: '',
      args: [],
    );
  }

  /// `Attach authorization image in case of non-ownership`
  String get authorization_image_non_ownership {
    return Intl.message(
      'Attach authorization image in case of non-ownership',
      name: 'authorization_image_non_ownership',
      desc: '',
      args: [],
    );
  }

  /// `Add New Vehicle`
  String get add_new_vehicle {
    return Intl.message(
      'Add New Vehicle',
      name: 'add_new_vehicle',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Documents`
  String get vehicle_documents {
    return Intl.message(
      'Vehicle Documents',
      name: 'vehicle_documents',
      desc: '',
      args: [],
    );
  }

  /// `Pickup Truck (Basin)`
  String get pickup_truck_basin {
    return Intl.message(
      'Pickup Truck (Basin)',
      name: 'pickup_truck_basin',
      desc: '',
      args: [],
    );
  }

  /// `Pickup Truck (Box)`
  String get pickup_truck_box {
    return Intl.message(
      'Pickup Truck (Box)',
      name: 'pickup_truck_box',
      desc: '',
      args: [],
    );
  }

  /// `Pickup Truck (Net)`
  String get pickup_truck_net {
    return Intl.message(
      'Pickup Truck (Net)',
      name: 'pickup_truck_net',
      desc: '',
      args: [],
    );
  }

  /// `Owner`
  String get owner {
    return Intl.message('Owner', name: 'owner', desc: '', args: []);
  }

  /// `Authorized`
  String get authorized {
    return Intl.message('Authorized', name: 'authorized', desc: '', args: []);
  }

  /// `Actual User`
  String get actual_user {
    return Intl.message('Actual User', name: 'actual_user', desc: '', args: []);
  }

  /// `Ownership`
  String get ownership {
    return Intl.message('Ownership', name: 'ownership', desc: '', args: []);
  }

  /// `Rental`
  String get rental {
    return Intl.message('Rental', name: 'rental', desc: '', args: []);
  }

  /// `First Driver`
  String get first_driver {
    return Intl.message(
      'First Driver',
      name: 'first_driver',
      desc: '',
      args: [],
    );
  }

  /// `Second Driver`
  String get second_driver {
    return Intl.message(
      'Second Driver',
      name: 'second_driver',
      desc: '',
      args: [],
    );
  }

  /// `Third Driver`
  String get third_driver {
    return Intl.message(
      'Third Driver',
      name: 'third_driver',
      desc: '',
      args: [],
    );
  }

  /// `Adding vehicle...`
  String get adding_vehicle_loading {
    return Intl.message(
      'Adding vehicle...',
      name: 'adding_vehicle_loading',
      desc: '',
      args: [],
    );
  }

  /// `Your request has been submitted successfully`
  String get request_submitted_successfully {
    return Intl.message(
      'Your request has been submitted successfully',
      name: 'request_submitted_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle addition request has been received successfully. Data and documents are now being reviewed and you will receive a notification upon completion of the review process`
  String get vehicle_request_received_description {
    return Intl.message(
      'Vehicle addition request has been received successfully. Data and documents are now being reviewed and you will receive a notification upon completion of the review process',
      name: 'vehicle_request_received_description',
      desc: '',
      args: [],
    );
  }

  /// `Enter new document expiry date`
  String get enter_new_document_expiry_date {
    return Intl.message(
      'Enter new document expiry date',
      name: 'enter_new_document_expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `New Document Expiry Date`
  String get new_document_expiry_date {
    return Intl.message(
      'New Document Expiry Date',
      name: 'new_document_expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `New Document Image`
  String get new_document_image {
    return Intl.message(
      'New Document Image',
      name: 'new_document_image',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message('Update', name: 'update', desc: '', args: []);
  }

  /// `Enter new license expiry date`
  String get enter_new_license_expiry_date {
    return Intl.message(
      'Enter new license expiry date',
      name: 'enter_new_license_expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `New License Expiry Date:`
  String get new_license_expiry_date {
    return Intl.message(
      'New License Expiry Date:',
      name: 'new_license_expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `New License Image`
  String get new_license_image {
    return Intl.message(
      'New License Image',
      name: 'new_license_image',
      desc: '',
      args: [],
    );
  }

  /// `Plate Number:`
  String get plate_number_label {
    return Intl.message(
      'Plate Number:',
      name: 'plate_number_label',
      desc: '',
      args: [],
    );
  }

  /// `Working`
  String get working {
    return Intl.message('Working', name: 'working', desc: '', args: []);
  }

  /// `Disabled`
  String get disabled {
    return Intl.message('Disabled', name: 'disabled', desc: '', args: []);
  }

  /// `Vehicle License`
  String get vehicle_license {
    return Intl.message(
      'Vehicle License',
      name: 'vehicle_license',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Insurance Policy`
  String get vehicle_insurance_policy {
    return Intl.message(
      'Vehicle Insurance Policy',
      name: 'vehicle_insurance_policy',
      desc: '',
      args: [],
    );
  }

  /// `Authorization`
  String get authorization {
    return Intl.message(
      'Authorization',
      name: 'authorization',
      desc: '',
      args: [],
    );
  }

  /// `Select Vehicle`
  String get select_vehicle {
    return Intl.message(
      'Select Vehicle',
      name: 'select_vehicle',
      desc: '',
      args: [],
    );
  }

  /// `Change Vehicle Status`
  String get change_vehicle_status {
    return Intl.message(
      'Change Vehicle Status',
      name: 'change_vehicle_status',
      desc: '',
      args: [],
    );
  }

  /// `Renew Vehicle License`
  String get renew_vehicle_license {
    return Intl.message(
      'Renew Vehicle License',
      name: 'renew_vehicle_license',
      desc: '',
      args: [],
    );
  }

  /// `Renew Vehicle Insurance Policy`
  String get renew_vehicle_insurance_policy {
    return Intl.message(
      'Renew Vehicle Insurance Policy',
      name: 'renew_vehicle_insurance_policy',
      desc: '',
      args: [],
    );
  }

  /// `Connect Vehicle to Driver`
  String get connect_vehicle_to_driver {
    return Intl.message(
      'Connect Vehicle to Driver',
      name: 'connect_vehicle_to_driver',
      desc: '',
      args: [],
    );
  }

  /// `Change Vehicle Ownership`
  String get change_vehicle_ownership {
    return Intl.message(
      'Change Vehicle Ownership',
      name: 'change_vehicle_ownership',
      desc: '',
      args: [],
    );
  }

  /// `Renew Vehicle Documents`
  String get renew_vehicle_documents {
    return Intl.message(
      'Renew Vehicle Documents',
      name: 'renew_vehicle_documents',
      desc: '',
      args: [],
    );
  }

  /// `Connect / Disconnect Vehicle to Driver`
  String get connect_disconnect_vehicle_driver {
    return Intl.message(
      'Connect / Disconnect Vehicle to Driver',
      name: 'connect_disconnect_vehicle_driver',
      desc: '',
      args: [],
    );
  }

  /// `Operating Status`
  String get operating_status {
    return Intl.message(
      'Operating Status',
      name: 'operating_status',
      desc: '',
      args: [],
    );
  }

  /// `Please select operating status`
  String get please_select_operating_status {
    return Intl.message(
      'Please select operating status',
      name: 'please_select_operating_status',
      desc: '',
      args: [],
    );
  }

  /// `Choose Driver`
  String get choose_driver {
    return Intl.message(
      'Choose Driver',
      name: 'choose_driver',
      desc: '',
      args: [],
    );
  }

  /// `Please select a driver`
  String get please_select_driver {
    return Intl.message(
      'Please select a driver',
      name: 'please_select_driver',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Vehicle Connection`
  String get confirm_vehicle_connection {
    return Intl.message(
      'Confirm Vehicle Connection',
      name: 'confirm_vehicle_connection',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to`
  String get confirm_vehicle_connection_message {
    return Intl.message(
      'Are you sure you want to',
      name: 'confirm_vehicle_connection_message',
      desc: '',
      args: [],
    );
  }

  /// `to driver`
  String get to_driver {
    return Intl.message('to driver', name: 'to_driver', desc: '', args: []);
  }

  /// `Connected to Driver`
  String get connected_to_driver {
    return Intl.message(
      'Connected to Driver',
      name: 'connected_to_driver',
      desc: '',
      args: [],
    );
  }

  /// `Not Connected to Driver`
  String get not_connected_to_driver {
    return Intl.message(
      'Not Connected to Driver',
      name: 'not_connected_to_driver',
      desc: '',
      args: [],
    );
  }

  /// `Changing data...`
  String get changing_data_loading {
    return Intl.message(
      'Changing data...',
      name: 'changing_data_loading',
      desc: '',
      args: [],
    );
  }

  /// `Linking vehicle to driver...`
  String get linking_vehicle_to_driver_loading {
    return Intl.message(
      'Linking vehicle to driver...',
      name: 'linking_vehicle_to_driver_loading',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle linked to driver successfully`
  String get vehicle_linked_successfully {
    return Intl.message(
      'Vehicle linked to driver successfully',
      name: 'vehicle_linked_successfully',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
