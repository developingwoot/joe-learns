
module "server" {
  source = "./modules/server"
  server_name       = "episode5-server"
  ssh_key = var.HCLOUD_SSH
}
