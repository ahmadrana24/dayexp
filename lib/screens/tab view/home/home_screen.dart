import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:dayexp/res/app_colors.dart';
import 'package:dayexp/res/app_constants.dart';
import 'package:dayexp/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      controller: _textEditingController,
                      inputFormatters: <TextInputFormatter>[
                        CurrencyTextInputFormatter(
                          locale:
                              NumberFormat.simpleCurrency(locale: Localizations.localeOf(context).toString()).locale,
                          symbol:
                              '${NumberFormat.simpleCurrency(locale: Localizations.localeOf(context).toString()).currencySymbol} ',
                        ),
                      ],
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '0.0',
                        hintStyle: AppConstants.priceTextStyle.copyWith(
                          fontSize: 30,
                        ),
                      ),
                      textAlign: TextAlign.center,
                      style: AppConstants.priceTextStyle.copyWith(
                        fontSize: 30,
                      ),
                      cursorColor: AppColors.primaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const ButtonWIdget(
                    title: 'Add',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          );
        },
        backgroundColor: AppColors.primaryColor,
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            SizedBox(
              height: Get.size.height * 0.1,
            ),
            Container(
              alignment: Alignment.topCenter,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      baseline: TextBaseline.alphabetic,
                      alignment: PlaceholderAlignment.aboveBaseline,
                      child: Text(
                        NumberFormat.simpleCurrency(locale: Localizations.localeOf(context).toString()).currencySymbol,
                        style: AppConstants.priceTextStyle.copyWith(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    TextSpan(text: '29', style: AppConstants.priceTextStyle),
                    WidgetSpan(
                      baseline: TextBaseline.alphabetic,
                      alignment: PlaceholderAlignment.aboveBaseline,
                      child: Text(
                        '99',
                        style: AppConstants.priceTextStyle.copyWith(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              // height: 30,
              color: AppColors.primaryColor,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    color: AppColors.lightGrey,
                    child: ListTile(
                      title: Text(
                        '5\$',
                        style: AppConstants.appBarStyle,
                      ),
                      dense: true,
                      minLeadingWidth: 5,
                      subtitle: const Text(
                        'Chips',
                      ),
                      leading: const Text(
                        '😀',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      trailing: Text(
                        DateFormat('d/MMM/y').format(
                          DateTime.now(),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
