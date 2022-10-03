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
      children: [
        SizedBox.expand(
          child: Lottie.network(
            'https://assets3.lottiefiles.com/private_files/lf30_7z3j6ycb.json',
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                "Get in touch",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            UIHelper.verticalSpaceMedium(),
            Row(
              children: [
                Flexible(
                  child: CustomTextfield(
                    textEditingController: nameController,
                    focusNode: nameFocusNode,
                    hintText: "Name",
                    title: "Your name",
                    validationMessage: viewModel.nameValidationMessage,
                  ),
                ),
                UIHelper.horizontalSpaceMedium(),
                Flexible(
                  child: CustomTextfield(
                    textEditingController: emailController,
                    focusNode: emailFocusNode,
                    hintText: "Email",
                    title: "Your email",
                    validationMessage: viewModel.emailValidationMessage,
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
                    hintText: "Let me know a little about your project...",
                    maxLines: 8,
                    title: "Message",
                    validationMessage: viewModel.messageValidationMessage,
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
                  await viewModel.onSendTap();
                }
              },
              title: "Send",
              width: 150,
            ),
          ],
        ),
      ],
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
      alignment: Alignment.topLeft,
      children: [
        Lottie.network(
          'https://assets3.lottiefiles.com/private_files/lf30_7z3j6ycb.json',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    "Get in touch",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                UIHelper.verticalSpaceSmall(),
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
                        hintText: "Let me know a little about your project...",
                        maxLines: 8,
                        title: "Message",
                        validationMessage: viewModel.messageValidationMessage,
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
                      await viewModel.onSendTap();
                    }
                  },
                  title: "Send",
                  width: 150,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
