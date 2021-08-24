## To create a local, Vagrant-based build of Jupyter Lab:

1. Install [Git](https://git-scm.com/), [VirtualBox](https://www.virtualbox.org/), and [Vagrant](https://www.vagrantup.com/)
1. Clone this repository
1. Change into the cloned directory
1. Start and configure the VM: `vagrant up`
1. Log in to the VM: `vagrant ssh`
1. Optional, but recommended: Change to the `/vagrant` directory, which is shared between the VM and the host machine. This way you can save any notebooks without worrying about losing work.
1. Start the Jupyter server: `jupyter lab --port 8000 --ip 0.0.0.0`. Note that the `--ip` flag is important so that your browser on the host machine will talk to the VM.
1. After the server starts, it will give you a URL like `http://127.0.0.1:8000/lab?token=<TOKEN>`, which you can copy to a web browser on your host machine.
