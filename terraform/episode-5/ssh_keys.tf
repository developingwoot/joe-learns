
resource "hcloud_ssh_key" "default" {
    name       = "default"
    public_key = "${var.HCLOUD_SSH}"
}
