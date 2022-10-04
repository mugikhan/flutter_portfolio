import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/data/datasources/remote/api/api_service.dart';
import 'package:flutter_portfolio/data/enums/dialog_type.dart';
import 'package:flutter_portfolio/data/models/email/email.dart';
import 'package:flutter_portfolio/data/models/lambda_response/lambda_response.dart';
import 'package:flutter_portfolio/presentation/design/color_pallete.dart';
import 'package:flutter_portfolio/presentation/design/ui_helpers.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_animations/anicoto/animation_mixin.dart';
import 'package:stacked_services/stacked_services.dart';

void setupDialogUi() {
  final dialogService = locator<DialogService>();

  final builders = {
    DialogType.basic: (context, sheetRequest, completer) =>
        _BasicDialog(request: sheetRequest, completer: completer),
    DialogType.loading: (context, sheetRequest,
            Function(DialogResponse<LoadingDialogResponse>) completer) =>
        _LoadingDialog(request: sheetRequest, completer: completer),
    DialogType.icon: (context, sheetRequest, completer) =>
        _IconDialog(request: sheetRequest, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}

class _BasicDialog extends StatelessWidget {
  final DialogRequest request;
  final Function(DialogResponse) completer;
  const _BasicDialog({Key? key, required this.request, required this.completer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              request.title ?? '',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              request.description ?? '',
              style: const TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => completer(DialogResponse()),
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: request.showIconInMainButton ?? false
                    ? const Icon(Icons.check_circle)
                    : Text(request.mainButtonTitle ?? ''),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _IconDialog extends StatelessWidget {
  final DialogRequest request;
  final Function(DialogResponse) completer;
  const _IconDialog({Key? key, required this.request, required this.completer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              request.title ?? '',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            UIHelper.horizontalSpaceSmall(),
            Icon(
              request.data?.iconData ?? Icons.clear,
              size: 24,
              color: ColorPalette.error,
            )
          ],
        ),
      ),
    );
  }
}

class IconDialogRequest {
  const IconDialogRequest({
    required this.iconData,
  });

  final IconData iconData;
}

class _LoadingDialog extends StatefulWidget {
  final DialogRequest request;
  final Function(DialogResponse<LoadingDialogResponse>) completer;
  const _LoadingDialog(
      {Key? key, required this.request, required this.completer})
      : super(key: key);

  @override
  State<_LoadingDialog> createState() => _LoadingDialogState();
}

class _LoadingDialogState extends State<_LoadingDialog> with AnimationMixin {
  final _apiServide = locator<ApiService>();
  SendEmailLambdaResponse? sendEmailLambdaResponse;

  @override
  void initState() {
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed &&
          sendEmailLambdaResponse != null) {
        widget.completer(DialogResponse(
          data: LoadingDialogResponse(
            complete: true,
            sendEmailLambdaResponse: sendEmailLambdaResponse!,
          ),
        ));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Lottie.asset(
          'assets/lottie/send-email.json',
          fit: BoxFit.contain,
          height: 200,
          width: 200,
          controller: controller,
          onLoaded: (composition) {
            controller
              ..duration = composition.duration
              ..forward();
            _apiServide.sendEmail(widget.request.data.email).then((value) {
              setState(() {
                sendEmailLambdaResponse =
                    SendEmailLambdaResponse.fromJson(value);
              });
            });
          },
        ),
      ),
    );
  }
}

class LoadingDialogResponse {
  const LoadingDialogResponse({
    this.complete = false,
    required this.sendEmailLambdaResponse,
  });

  final bool complete;
  final SendEmailLambdaResponse sendEmailLambdaResponse;
}

class LoadingDialogRequest {
  const LoadingDialogRequest({
    required this.email,
  });

  final Email email;
}
