package model

type SummaryResponse struct {
	Country        string
	CountryCode    string
	NewConfirmed   int
	TotalConfirmed int
	NewDeaths      int
	NewRecovered   int
	LastUpdate     string
}
