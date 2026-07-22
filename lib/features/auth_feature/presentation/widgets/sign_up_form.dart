import 'package:doc_doc/core/custom_widgets/custom_btn.dart';
import 'package:doc_doc/core/custom_widgets/custom_dailog.dart';
import 'package:doc_doc/core/custom_widgets/custom_text_form_filed.dart';
import 'package:doc_doc/features/auth_feature/data/models/sign_up_request_body.dart';
import 'package:doc_doc/features/auth_feature/presentation/view_model/sign_up_cubit.dart';
import 'package:doc_doc/features/auth_feature/presentation/view_model/sign_up_state.dart';
import 'package:doc_doc/features/auth_feature/presentation/widgets/gender_selection_widgets.dart';
import 'package:doc_doc/features/auth_feature/presentation/widgets/password_validation_row.dart';
import 'package:doc_doc/core/helper/app_regex.dart';
import 'package:doc_doc/core/helper/extention.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  initState() {
    super.initState();
    setupValidation();
  }

  int selectedGender = 0;
  bool obscureText = true;
  bool confirmObscureText = true;
  bool hasMinLength = false;
  bool hasUpperCase = false;
  bool hasLowerCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
    phoneController.dispose();
  }

  void setupValidation() {
    passwordController.addListener(() {
      setState(() {
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacter = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 15,
        children: [
          CustomTextFormFiled(
            hintText: "Name",
            controller: nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              if (value.length < 3) {
                return 'Name must be at least 3 characters long';
              }
              return null;
            },
          ),
          CustomTextFormFiled(
            hintText: "Email",
            controller: emailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "Please enter your email";
              }
              return null;
            },
          ),
          CustomTextFormFiled(
            hintText: "phone number",
            controller: phoneController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter your phone number';
              }
              return null;
            },
          ),
          CustomTextFormFiled(
            obscureText: obscureText,
            suffixIcon: IconButton(
              icon: obscureText
                  ? Icon(Icons.visibility_off_outlined, color: AppColor.grey)
                  : Icon(Icons.visibility),
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
            ),
            hintText: "Password",
            controller: passwordController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          CustomTextFormFiled(
            obscureText: confirmObscureText,
            suffixIcon: IconButton(
              icon: Icon(
                confirmObscureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility,
                color: AppColor.grey,
              ),
              onPressed: () {
                setState(() {
                  confirmObscureText = !confirmObscureText;
                });
              },
            ),
            hintText: "Confirm Password",
            controller: passwordConfirmationController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please confirm your password';
              }
              if (value != passwordController.text) {
                return "Password doesn't match";
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          PasswordValidationRow(
            text: "Password must be at least 8 characters long",
            isValid: hasMinLength,
          ),
          PasswordValidationRow(
            text: "Password must contain an uppercase letter",
            isValid: hasUpperCase,
          ),
          PasswordValidationRow(
            text: "Password must contain a lowercase letter",
            isValid: hasLowerCase,
          ),
          PasswordValidationRow(
            text: "Password must contain a number",
            isValid: hasNumber,
          ),
          PasswordValidationRow(
            text: "Password must contain a special character",
            isValid: hasSpecialCharacter,
          ),
          SizedBox(height: 20),
          GenderSelectionWidget(
            selectedGender: selectedGender,
            onChanged: (v) {
              setState(() {
                selectedGender = v;
              });
            },
          ),
          BlocConsumer<SignUpCubit, SignUpState>(
            listener: (context, state) => {
              if (state is SignUpFailure)
                {showErrorDialog(context, state.message.getAllErrorMessage())}
              else if (state is SignUpSuccess)
                {
                  showSuccessSnakBar(context, "Sign Up Successful"),
                  context.pop(),
                },
            },
            builder: (context, state) {
              return state is SignUpLoading
                  ? CircularProgressIndicator()
                  : CustomBtn(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          BlocProvider.of<SignUpCubit>(context).signUp(
                            SignUpRequestBody(
                              name: nameController.text,
                              email: emailController.text,
                              password: passwordController.text,
                              phone: phoneController.text,
                              gender: selectedGender,
                              passwordConfirmation:
                                  passwordConfirmationController.text,
                            ),
                          );
                        }
                      },
                      text: "Create Account",
                    );
            },
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
