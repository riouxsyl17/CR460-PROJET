resource "google_compute_firewall" "riouxsyl17-fw-pub" {
  name    = "riouxsyl17-fw-pub"
  network = "${google_compute_network.cr460.name}"
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
}
