resource "google_compute_firewall" "riouxsyl17-fw-work" {
  name    = "riouxsyl17-fw-work"
  network = "${google_compute_network.cr460.name}"
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
      source_tags = ["east1-riouxsyl17-public"]
      target_tags = ["east1-riouxsyl17-workload"]
}
