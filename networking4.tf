resource "google_compute_firewall" "riouxsyl17-fw-pub-to-back" {
  name    = "riouxsyl17-fw-pub-to-back"
  network = "${google_compute_network.cr460.name}"
  allow {
    protocol = "tcp"
    ports    = ["22","2379","2380"]
  }
      source_tags = ["east1-riouxsyl17-public"]
      target_tags = ["east1-riouxsyl17-backend"]
}
