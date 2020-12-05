package cmd

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os"

	"github.com/gorilla/mux"
	"github.com/spf13/cobra"

	"app-covid-19/model"

	_ "github.com/go-sql-driver/mysql"
	homedir "github.com/mitchellh/go-homedir"
	"github.com/spf13/viper"
)

var cfgFile string
var dbPool *sql.DB

var rootCmd = &cobra.Command{
	Use: "app-covid-19",
	Run: func(cmd *cobra.Command, args []string) {
		var router = mux.NewRouter()
		var port = ":80"

		router.HandleFunc("/summary", func(w http.ResponseWriter, r *http.Request) {
			result, err := dbPool.Query("SELECT Country, CountryCode, NewConfirmed, TotalConfirmed, NewDeaths, NewRecovered, LastUpdate FROM covid_summary ORDER BY Country ASC")
			if err != nil {
				log.Fatal(err)
			}

			defer result.Close()

			var summaryResponse []model.SummaryResponse

			for result.Next() {
				var temp model.SummaryResponse
				result.Scan(&temp.Country, &temp.CountryCode, &temp.NewConfirmed, &temp.TotalConfirmed, &temp.NewDeaths, &temp.NewRecovered, &temp.LastUpdate)
				summaryResponse = append(summaryResponse, temp)
			}

			w.Header().Add("Content-Type", "application/json")
			json.NewEncoder(w).Encode(summaryResponse)
		})

		fmt.Printf("Server run at port %s\n", port)
		http.ListenAndServe(port, router)
	},
}

func Execute() {
	if err := rootCmd.Execute(); err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
}

func init() {
	cobra.OnInitialize(initConfig, initDB)
	rootCmd.PersistentFlags().StringVar(&cfgFile, "config", "", "config file (default is $HOME/.app-covid-19.toml)")
}

func initConfig() {
	viper.SetConfigType("toml")
	if cfgFile != "" {
		viper.SetConfigFile(cfgFile)
	} else {
		home, err := homedir.Dir()
		if err != nil {
			fmt.Println(err)
			os.Exit(1)
		}

		viper.AddConfigPath(".")
		viper.AddConfigPath(home)
		viper.SetConfigName(".server")
	}

	viper.AutomaticEnv()

	if err := viper.ReadInConfig(); err == nil {
		fmt.Println("Using config file:", viper.ConfigFileUsed())
	}
}

func initDB() {
	dbConfig := fmt.Sprintf("%s:%s@(%s:%s)/%s?parseTime=true",
		viper.Get("MYSQL_USERNAME"),
		viper.Get("MYSQL_PASSWORD"),
		viper.Get("MYSQL_HOST"),
		viper.Get("MYSQL_PORT"),
		viper.Get("MYSQL_DBNAME"),
	)

	db, err := sql.Open("mysql", dbConfig)
	if err != nil {
		log.Fatal(err)
	}

	err = db.Ping()
	if err != nil {
		log.Fatal(err)
	}

	dbPool = db
}
