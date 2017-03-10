resource "google_dns_record_set" "jump" {
  name = "jump.riouxsyl17.cr460lab.com."
  type = "A"
  ttl  = 300

  managed_zone = "riouxsyl17"

  rrdatas = ["${google_compute_instance.riouxsyl17-jumphost.network_interface.0.access_config.0.assigned_nat_ip}"]
}
