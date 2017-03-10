resource "google_compute_firewall" "riouxsyl17-fw-work-to-back" {
  name    = "riouxsyl17-fw-work-to-back"
  network = "${google_compute_network.cr460.name}"
  allow {
    protocol = "tcp"
    ports    = ["22","2379","2380"]
  }
      source_tags = ["east1-riouxsyl17-work"]
      target_tags = ["east1-riouxsyl17-backend"]
}
