// Package weather provides info about the goblin weather.
package weather

// CurrentCondition represents the current weather pattern.
var CurrentCondition string
// CurrentLocation represents the current location in goblin city.
var CurrentLocation string

// Forecast returns the current weather for a certain location in goblin city.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
