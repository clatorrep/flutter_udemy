import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sldiers and Check'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: Theme.of(context).primaryColor,
              value: _sliderValue,
              onChanged: _sliderEnable
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null,
            ),
            /* Checkbox(
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() {});
              },
              activeColor: Theme.of(context).primaryColor,
            ), */
            CheckboxListTile(
              activeColor: Theme.of(context).primaryColor,
              title: const Text('Habilitar Slider'),
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                _sliderEnable = value ?? true;
              }),
            ),
            /* Switch(
              activeColor: Theme.of(context).primaryColor,
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                _sliderEnable = value;
              }),
            ), */
            SwitchListTile.adaptive(
              title: const Text('Habulitar Slider'),
              activeColor: Theme.of(context).primaryColor,
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                _sliderEnable = value;
              }),
            ),
            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://static.wikia.nocookie.net/mouseguard/images/3/32/Kenzie_Sketchbook.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
