# RStudio Auto Setup

This repository automates the installation and setup of RStudio Server on either a remote or local machine using Bash or Ansible, creating and running it under a dedicated non-root user. It is particularly useful when you need to **perform or showcase analyses live**, allowing you to quickly set up a **publicly accessible RStudio panel**.


---

## 🖥️ Remote Machine

Run the following command on the remote server:

```bash
bash <(curl -Ls https://raw.githubusercontent.com/advafaeian/rstudio-auto-setup/main/remote.sh)
```

After setup, files can be **uploaded through the RStudio Server panel**.

---

## 💻 Local Machine

### Option 1: Bash

```bash
bash <(curl -Ls https://raw.githubusercontent.com/advafaeian/rstudio-auto-setup/main/local.sh)
```

### Option 2: Ansible

```bash
cd ansible
ansible-playbook ./playbooks/install_rstudio.yaml
```

When running locally, you can **configure a project path** to be **copied to the remote server**, and in both local and remote setups, you can **upload files** through the **RStudio Server panel**.


---

## 🔐 Password Information

For **Ansible installations only**, the password for the RStudio web interface is **automatically generated** and saved in:

```
ansible/generated_password.txt
```
