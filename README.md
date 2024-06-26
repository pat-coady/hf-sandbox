# Hugging Face Sandbox

Quick setup to run 8-13B LLMs from Hugging Face

## Start GCP VM Instance (about $1/hr)

**Compute and Memory**
- GPU Type: NVIDIA L4
- Machine Type: g2-standard-8 (8vCPUs, 32GB RAM)
**Boot Disk**
  - Switch image to **Deep Learning VM with CUDA**
  - Increase disk size to 200GB
**Firewall**
  - Allow HTTP and HTTPS traffic (useful for running Jupyter Notebooks)
**Public SSH key**
  - Generate local key pair `ssh-keygen -t rsa -b 4096 -C "user-name" -f my_key`
  - (user-name is somewhat arbitrary, use what you like)
  - Go to GCP Console -> Settings (left pane) -> Metadata
  - Add item (SSH Keys)
  - Paste line from `my_key.pub` file (in `~/.ssh` directory)
  - Update `~/.ssh/config`, for example:
```
Host gpu1
  HostName <GCP VM external IP address>
  User <user-name>
  IdentityFile /Users/<user direcotry>/.ssh/my-ssh-key
```

## Log in to VM instance

`ssh gpu1`

### First Login

1. Will ask if you want to Nvidia driver. (yes)
2. `pip uninstall dataproc_jupyter_plugin` Some plug-in GCP included with installation
3. `git clone https://github.com/pat-coady/hf-sandbox.git'
4. cd into `hf-sandbox.git`
5. `chmod +x setup.sh`
6. `./setup.sh`

### Starting up

1. Add Hugging Face token to environment:
`export HF_TOKEN=<token>`
2. Start notebook: `jupyter notebook`
3. Log in with browser <VM external IP>:8888