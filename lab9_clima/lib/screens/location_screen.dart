import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../services/weather.dart';
import 'city_screen.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key, this.locationWeather});

  final dynamic locationWeather;

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherModel weather = WeatherModel();
  
  int temperature = 0;
  String weatherIcon = 'Error';
  String cityName = '';
  String weatherMessage = 'Unable to get weather data';
  int humidity = 0;
  double windSpeed = 0.0;
  String description = '';

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    setState(() {
      if (weatherData == null) {
        temperature = 0;
        weatherIcon = '🤷‍';
        weatherMessage = 'Unable to get weather data';
        cityName = 'N/A';
        humidity = 0;
        windSpeed = 0.0;
        description = 'Error';
        return;
      }
      
      var temp = weatherData['main']['temp'];
      temperature = temp.toInt();
      
      var condition = weatherData['weather'][0]['id'];
      weatherIcon = weather.getWeatherIcon(condition);
      weatherMessage = weather.getMessage(temperature);
      
      cityName = weatherData['name'] ?? 'Unknown';
      humidity = weatherData['main']['humidity'] ?? 0;
      
      var wind = weatherData['wind']['speed'];
      windSpeed = wind != null ? wind.toDouble() : 0.0;
      
      description = weatherData['weather'][0]['description'] ?? '';
      // Capitalize first letter
      if (description.isNotEmpty) {
        description = description[0].toUpperCase() + description.substring(1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE0F7FA), Color(0xFFB2EBF2), Color(0xFF4DD0E1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              // Top Action Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.near_me, size: 35.0, color: Colors.black87),
                      onPressed: () async {
                        var weatherData = await weather.getLocationWeather();
                        updateUI(weatherData);
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.search, size: 35.0, color: Colors.black87),
                      onPressed: () async {
                        var typedName = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CityScreen(),
                          ),
                        );
                        if (typedName != null) {
                          var weatherData = await weather.getCityWeather(typedName);
                          updateUI(weatherData);
                        }
                      },
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 30),
              
              // City Name & Description
              Text(
                cityName,
                style: kCityTextStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              Text(
                description,
                style: kDescriptionTextStyle,
              ),
              
              const SizedBox(height: 40),
              
              // Temperature & Icon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '$temperature°',
                    style: kTempTextStyle,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    weatherIcon,
                    style: kConditionTextStyle,
                  ),
                ],
              ),
              
              const SizedBox(height: 50),
              
              // Message
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  '$weatherMessage',
                  textAlign: TextAlign.center,
                  style: kDescriptionTextStyle.copyWith(
                    fontWeight: FontWeight.bold, 
                    fontSize: 24,
                    color: Colors.black87
                  ),
                ),
              ),
              
              const Spacer(),
              
              // Details Card bottom
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildDetailColumn('HUMIDITY', '$humidity%'),
                    Container(width: 1, height: 40, color: Colors.black12),
                    _buildDetailColumn('WIND', '${windSpeed.toStringAsFixed(1)} km/h'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailColumn(String title, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title, style: kDetailTitleStyle),
        const SizedBox(height: 5),
        Text(value, style: kDetailValueStyle),
      ],
    );
  }
}
