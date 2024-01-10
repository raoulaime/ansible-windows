# role_windows_packages

[![Ansible version](https://img.shields.io/badge/ansible-%3E%3D2.10-black.svg?style=flat-square&logo=ansible)](https://github.com/ansible/ansible)

⭐ Star us on GitHub — it motivates us a lot!

your role description

**Platforms Supported**:

None.

## ⚠️ Requirements

Ansible >= 2.1.

### Ansible role dependencies

None.


### ✏️ Example Playbook

Basic usage is:

```yaml
- name: Windows Automation install packages
  hosts: windows
  gather_facts: true
  tasks:
    - name: Configure Chocolatey Package Manager
      ansible.builtin.include_role:
        name: role_windows_packages
        tasks_from: install_chocolatey
      when: install_chocolatey | default(true) | bool

    - name: Install Windows Packages
      ansible.builtin.include_role:
        name: role_windows_packages
        tasks_from: install_packages
      when: install_packages | default(true) | bool
      vars:
        softwares_list:
          - name: procexp
          - name: putty
          - name: rdcman
          - name: sysinternals
          - name: bginfo
          - name: microsoft-edge
            version: 120.0.2210.91

          - name: notepadplusplus
            version: 8.6.0

          - name: 7zip
            version: 23.1.0

          - name: python
            version: 3.12.1

          - name: adobereader
            version: 2023.8.20458

          - name: sql-server-management-studio
            version: 19.2.56.2

          - name: openssh
            version: 8.6.0-beta1

          - name: vscode
            version: 1.85.1

          - name: powershell-core
            version: 7.4.0

          - name: winscp
            version: 6.1.2


    - name: Update packages
      ansible.builtin.include_role:
        name: role_windows_packages
        tasks_from: upgrade_packages
      when: upgrade_packages | default(false) | bool

```

## ⚙️ Role Variables

Variables are divided in three types.

The **default vars** section shows you which variables you may
override in your ansible inventory. As a matter of fact, all variables should
be defined there for explicitness, ease of documentation as well as overall
role manageability.

The **context variables** are shown in section below hint you
on how runtime context may affects role execution.

### Default variables
Role default variables from `defaults/main.yml`.


### Context variables

Those variables from `vars/*.{yml,json}` are loaded dynamically during task
runtime using the `include_vars` module.

Variables loaded from `vars/main.yml`.




## Author Information

Raoul-Aime