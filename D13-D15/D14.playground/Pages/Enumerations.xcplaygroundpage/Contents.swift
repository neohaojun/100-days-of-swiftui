//: [Previous](@previous)

import Foundation

enum WeatherType {
    case sun, cloud, rain, wind, snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    // just .sun rather than WeatherType.sun works too as Swift knows what type you're referring to
    if weather == WeatherType.sun {
        return nil
    } else {
        return "Hate"
    }
}

getHaterStatus(weather: .cloud)

// enum with additional values
enum WeatherType2 {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getHaterStatus2(weather: WeatherType2) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus2(weather: WeatherType2.wind(speed: 5))

//: [Next](@next)
