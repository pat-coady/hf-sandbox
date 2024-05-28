# remove this plugin that GCP includes in jupyter install
# causes a bunch of warnings
pip uninstall dataproc_jupyter_plugin

# clone repo and install python packages
git clone https://github.com/pat-coady/hf-sandbox.git
pip install -r requirements.txt

# point to jupyter config in working directory
# sets ip = '*', port='8888', open_browser=False
export JUPYTER_CONFIG_DIR="."
# add startup script for next time
echo 'export JUPYTER_CONFIG_DIR="."' >> ~/.bashrc
