package jvarness

import (
	"fmt"
	"net/http"
)
// cerner_2^5_2019
// This defines a small microservice
func Handler(w http.ResponseWriter, r *http.Request) {
	w.WriteHeader(404)
	fmt.Fprint(w, "<h1>404, gopher not found</h1>")
}