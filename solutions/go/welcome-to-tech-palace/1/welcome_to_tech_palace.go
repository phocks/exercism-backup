package techpalace

import "strings"

// WelcomeMessage returns a welcome message for the customer.
func WelcomeMessage(customer string) string {
    var name = strings.ToUpper(customer)
	return "Welcome to the Tech Palace, " + name
}

// AddBorder adds a border to a welcome message.
func AddBorder(welcomeMsg string, numStarsPerLine int) string {
    var line = strings.Repeat("*", numStarsPerLine)
    var message = welcomeMsg
	return line + "\n" + message + "\n" + line
}

// CleanupMessage cleans up an old marketing message.
func CleanupMessage(oldMsg string) string {
	var noStars = strings.ReplaceAll(oldMsg, "*", "")
    var trimmed = strings.TrimSpace(noStars)
    return trimmed
}
