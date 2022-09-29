import 'package:flutter/material.dart';
import 'package:flutter_portfolio/presentation/common/validators/form_validators.dart';
import 'package:flutter_portfolio/presentation/design/ui_helpers.dart';
import 'package:flutter_portfolio/presentation/pages/contact/contact_viewmodel.dart';
import 'package:flutter_portfolio/presentation/widgets/buttons/outline_button.dart';
import 'package:flutter_portfolio/presentation/widgets/scaffold/scaffold.dart';
import 'package:flutter_portfolio/presentation/widgets/textfield/custom_textfield.dart';
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
        listenToFormUpdated(viewModel);
        viewModel.setService('mobile');
      },
      onDispose: (_) => disposeForm(),
      builder: (context, viewModel, child) => PrimaryScaffold(
        body: ScreenTypeLayout.builder(
          mobile: (BuildContext context) => Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    "Get in touch 👋",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                UIHelper.verticalSpaceMedium(),
                Flexible(
                  child: CustomTextfield(
                    textEditingController: nameController,
                    focusNode: nameFocusNode,
                    hintText: "Name",
                    title: "Your name",
                    validationMessage: viewModel.nameValidationMessage,
                  ),
                ),
                UIHelper.verticalSpaceMedium(),
                Flexible(
                  child: CustomTextfield(
                    textEditingController: emailController,
                    focusNode: emailFocusNode,
                    hintText: "Email",
                    title: "Your email",
                    validationMessage: viewModel.emailValidationMessage,
                  ),
                ),
                UIHelper.verticalSpaceMedium(),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          'What are you interested in?',
                          style: Theme.of(context).textTheme.bodyLarge,
                          maxLines: 3,
                        ),
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Flexible(
                        child: DropdownButton<String>(
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
                      ),
                    ],
                  ),
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
                UIHelper.verticalSpaceLarge(),
                GradientOutlineButton(
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
          desktop: (BuildContext context) => Padding(
            padding: const EdgeInsets.only(
              top: 25,
              left: 250,
              right: 250,
              bottom: 25,
            ),
            child: Column(
              children: [
                Flexible(
                  child: Text(
                    "Get in touch 👋",
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
                UIHelper.verticalSpaceLarge(),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        'What are you interested in?',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    UIHelper.horizontalSpaceMedium(),
                    Flexible(
                      child: DropdownButton<String>(
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
                    ),
                  ],
                ),
                UIHelper.verticalSpaceLarge(),
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
                UIHelper.verticalSpaceLarge(),
                GradientOutlineButton(
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
      ),
      viewModelBuilder: () => ContactViewModel(),
    );
  }
}
