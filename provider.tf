provider "google" {
  project = "red-parity-380313"
  region = "us-east1"
  credentials = file("/Users/davindersingh/Documents/myfolder/Yadwinder/red-parity-380313-a7da91166831.json")
}
 terraform {
   required_providers {
     google = {
       source = "hashicorp/google"
       version = "4.60.2"
     }
  }
  backend "gcs" {
    bucket = "mybucket-terrform"
    credentials = "/Users/davindersingh/Documents/myfolder/Yadwinder/red-parity-380313-a7da91166831.json"
  }
}