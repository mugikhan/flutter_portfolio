import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/presentation/common/validators/form_validators.dart';
import 'package:flutter_portfolio/presentation/design/color_pallete.dart';
import 'package:flutter_portfolio/presentation/design/ui_helpers.dart';
import 'package:flutter_portfolio/presentation/pages/contact/contact_viewmodel.dart';
import 'package:flutter_portfolio/presentation/widgets/buttons/outline_button.dart';
import 'package:flutter_portfolio/presentation/widgets/buttons/primary_button.dart';
import 'package:flutter_portfolio/presentation/widgets/scaffold/scaffold.dart';
import 'package:flutter_portfolio/presentation/widgets/textfield/custom_textfield.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'contact_view.form.dart';

@FormView(
  fields: [
    FormTextField(
      name: 'name',
      validator: FormValidators.nameValidator,
    ),
    FormTextField(
      name: 'email',
      validator: FormValidators.emailValidator,
    ),
    FormDropdownField(
      name: 'service',
      items: [
        StaticDropdownItem(
          title: 'Crossplatform mobile app',
          value: 'mobile',
        ),
        StaticDropdownItem(
          title: 'Responsive website',
          value: 'website',
        ),
      ],
    ),
    FormTextField(
      name: 'message',
      validator: FormValidators.messageValidator,
    ),
  ],
)
class ContactView extends StatelessWidget with $ContactView {
  ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ContactViewModel>.reactive(
      onModelReady: (viewModel) {
        viewModel.setService('mobile');
        listenToFormUpdated(viewModel);
      },
      onDispose: (_) => disposeForm(),
      builder: (context, viewModel, child) => PrimaryScaffold(
        padding: const EdgeInsets.all(0),
        body: ScreenTypeLayout.builder(
          mobile: (BuildContext context) => ContactViewMobile(
            nameController: nameController,
            nameFocusNode: nameFocusNode,
            emailController: emailController,
            emailFocusNode: emailFocusNode,
            messageController: messageController,
            messageFocusNode: messageFocusNode,
            validateFormFields: validateFormFields,
          ),
          desktop: (BuildContext context) => ContactViewDesktop(
            nameController: nameController,
            nameFocusNode: nameFocusNode,
            emailController: emailController,
            emailFocusNode: emailFocusNode,
            messageController: messageController,
            messageFocusNode: messageFocusNode,
            validateFormFields: validateFormFields,
          ),
        ),
      ),
      viewModelBuilder: () => ContactViewModel(),
    );
  }
}

class ContactViewDesktop extends ViewModelWidget<ContactViewModel> {
  const ContactViewDesktop({
    super.key,
    required this.nameController,
    required this.nameFocusNode,
    required this.emailController,
    required this.emailFocusNode,
    required this.messageController,
    required this.messageFocusNode,
    required this.validateFormFields,
  });

  final TextEditingController nameController;
  final FocusNode nameFocusNode;
  final TextEditingController emailController;
  final FocusNode emailFocusNode;
  final TextEditingController messageController;
  final FocusNode messageFocusNode;
  final Function(ContactViewModel) validateFormFields;

  @override
  Widget build(BuildContext context, ContactViewModel viewModel) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        Positioned(
          right: 0,
          left: 0,
          bottom: MediaQuery.of(context).size.height / 2,
          top: 0,
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: ColorPalette.tertiary.withOpacity(0.7),
                ),
              ),
              Positioned(
                top: 50,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Get In Touch",
                      style:
                          Theme.of(context).textTheme.displayMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorPalette.onPrimary,
                              ),
                    ),
                    Text(
                      "I will try to get back to you as soon as possible :)",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: ColorPalette.onPrimary,
                          ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: (MediaQuery.of(context).size.height / 2) / 2,
          right: 100,
          left: 100,
          bottom: 100,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Flexible(child: ContactInfo()),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: CustomTextfield(
                                textEditingController: nameController,
                                focusNode: nameFocusNode,
                                hintText: "Name",
                                title: "Your name",
                                validationMessage:
                                    viewModel.nameValidationMessage,
                              ),
                            ),
                            UIHelper.horizontalSpaceMedium(),
                            Flexible(
                              child: CustomTextfield(
                                textEditingController: emailController,
                                focusNode: emailFocusNode,
                                hintText: "Email",
                                title: "Your email",
                                validationMessage:
                                    viewModel.emailValidationMessage,
                              ),
                            ),
                          ],
                        ),
                        UIHelper.verticalSpaceSmall(),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: ColorPalette.tertiaryGrey,
                              ),
                            ),
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: ColorPalette.tertiaryGrey,
                              ),
                            ),
                            filled: true,
                            labelText: 'What are you interested in?',
                            labelStyle: Theme.of(context).textTheme.bodyLarge,
                            focusColor: Colors.white,
                            fillColor: ColorPalette.surface,
                          ),
                          dropdownColor: Colors.white,
                          elevation: 1,
                          icon: const Icon(
                            CupertinoIcons.chevron_down,
                            size: 18,
                          ),
                          style: Theme.of(context).textTheme.bodyMedium,
                          value: viewModel.serviceValue,
                          onChanged: (value) {
                            viewModel.setService(value!);
                          },
                          items: ServiceValueToTitleMap.keys
                              .map(
                                (value) => DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(ServiceValueToTitleMap[value]!),
                                ),
                              )
                              .toList(),
                        ),
                        UIHelper.verticalSpaceSmall(),
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextArea(
                                textEditingController: messageController,
                                focusNode: messageFocusNode,
                                hintText:
                                    "Let me know a little about your project...",
                                maxLines: 8,
                                title: "Message",
                                validationMessage:
                                    viewModel.messageValidationMessage,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 25,
                              child: Opacity(
                                opacity: 0,
                                child: Checkbox(
                                  value: viewModel.isHoneypotChecked,
                                  onChanged: (value) {
                                    viewModel.onChangehoneypotCheck(value);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        GradientPrimaryButton(
                          isLoading: viewModel.isBusy,
                          onPressed: () async {
                            if (validateFormFields(viewModel)) {
                              if (await viewModel.onSendTap()) {
                                nameController.clear();
                                emailController.clear();
                                messageController.clear();
                              }
                            }
                          },
                          title: "Send Message",
                          width: 150,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ContactInfo extends ViewModelWidget<ContactViewModel> {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context, ContactViewModel viewModel) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      margin: const EdgeInsets.only(right: 80),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFB73FE0),
            Color(0xFFDB20DB),
            Color(0xFFB73FE0),
            Color(0xFF8867E8),
            Color(0xFF6E78E6),
            Color(0xFF27BAF7),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        // color: ColorPalette.tertiary.withOpacity(0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 2,
            child: Text(
              "Contact Information",
              maxLines: 2,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: ColorPalette.onPrimary,
                  ),
            ),
          ),
          UIHelper.verticalSpaceLarge(),
          Flexible(
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: ColorPalette.onPrimary,
                    ),
                children: const [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.call,
                        color: ColorPalette.surface,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: "+27765740827",
                  ),
                ],
              ),
            ),
          ),
          UIHelper.verticalSpaceLarge(),
          Flexible(
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: ColorPalette.onPrimary,
                    ),
                children: const [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.email,
                        color: ColorPalette.surface,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: "mugikhan@gmail.com",
                  ),
                ],
              ),
            ),
          ),
          UIHelper.verticalSpaceLarge(),
          Flexible(
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: ColorPalette.onPrimary,
                    ),
                children: const [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.location_pin,
                        color: ColorPalette.surface,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: "Johannesburg, ZA",
                  ),
                ],
              ),
            ),
          ),
          UIHelper.verticalSpaceLarge(),
        ],
      ),
    );
  }
}

class ContactViewMobile extends ViewModelWidget<ContactViewModel> {
  const ContactViewMobile({
    super.key,
    required this.nameController,
    required this.nameFocusNode,
    required this.emailController,
    required this.emailFocusNode,
    required this.messageController,
    required this.messageFocusNode,
    required this.validateFormFields,
  });

  final TextEditingController nameController;
  final FocusNode nameFocusNode;
  final TextEditingController emailController;
  final FocusNode emailFocusNode;
  final TextEditingController messageController;
  final FocusNode messageFocusNode;
  final Function(ContactViewModel) validateFormFields;

  @override
  Widget build(BuildContext context, ContactViewModel viewModel) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        Positioned(
          right: 0,
          left: 0,
          bottom: MediaQuery.of(context).size.height / 2,
          top: 0,
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: ColorPalette.tertiary.withOpacity(0.7),
                ),
              ),
              Positioned(
                top: 50,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Text(
                        "Get In Touch",
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: ColorPalette.onPrimary,
                                ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "I will try to get back to you as soon as possible :)",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: ColorPalette.onPrimary,
                            ),
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 200,
          right: 4,
          left: 4,
          bottom: 20,
          child: SingleChildScrollView(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextfield(
                      textEditingController: nameController,
                      focusNode: nameFocusNode,
                      hintText: "Name",
                      title: "Your name",
                      validationMessage: viewModel.nameValidationMessage,
                    ),
                    UIHelper.verticalSpaceSmall(),
                    CustomTextfield(
                      textEditingController: emailController,
                      focusNode: emailFocusNode,
                      hintText: "Email",
                      title: "Your email",
                      validationMessage: viewModel.emailValidationMessage,
                    ),
                    UIHelper.verticalSpaceSmall(),
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorPalette.tertiaryGrey,
                          ),
                        ),
                        border: const OutlineInputBorder(),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorPalette.tertiaryGrey,
                          ),
                        ),
                        filled: true,
                        labelText: 'What are you interested in?',
                        labelStyle: Theme.of(context).textTheme.bodyLarge,
                        focusColor: Colors.white,
                        fillColor: ColorPalette.surface,
                      ),
                      dropdownColor: Colors.white,
                      elevation: 1,
                      icon: const Icon(
                        CupertinoIcons.chevron_down,
                        size: 18,
                      ),
                      style: Theme.of(context).textTheme.bodySmall,
                      value: viewModel.serviceValue,
                      onChanged: (value) {
                        viewModel.setService(value!);
                      },
                      items: ServiceValueToTitleMap.keys
                          .map(
                            (value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(ServiceValueToTitleMap[value]!),
                            ),
                          )
                          .toList(),
                    ),
                    UIHelper.verticalSpaceMedium(),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextArea(
                            textEditingController: messageController,
                            focusNode: messageFocusNode,
                            hintText:
                                "Let me know a little about your project...",
                            maxLines: 8,
                            title: "Message",
                            validationMessage:
                                viewModel.messageValidationMessage,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 25,
                          child: Opacity(
                            opacity: 0,
                            child: Checkbox(
                              value: viewModel.isHoneypotChecked,
                              onChanged: (value) {
                                viewModel.onChangehoneypotCheck(value);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    GradientPrimaryButton(
                      onPressed: () async {
                        if (validateFormFields(viewModel)) {
                          if (await viewModel.onSendTap()) {
                            nameController.clear();
                            emailController.clear();
                            messageController.clear();
                          }
                        }
                      },
                      title: "Send",
                      width: 150,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
