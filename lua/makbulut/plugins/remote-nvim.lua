local status, remote_nvim = pcall(require, "remote-nvim")
if not status then
  return
end

remote_nvim.setup({
  devpod = { enabled = false },
  log = {
    level = "info",
    max_size = 1024 * 1024 * 2, -- 2MB
  },
  ssh_config = {
    ssh_binary = "ssh",
    scp_binary = "scp",
    ssh_config_file_paths = { "$HOME/.ssh/config" },
  },
})
