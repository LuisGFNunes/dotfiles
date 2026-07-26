# 🌌 Dotfiles

Bem-vindo ao meu repositório pessoal de dotfiles! Aqui você encontra o backup e a organização da minha configuração de sistema, focada em produtividade e minimalismo.

```bash
sudo dnf5 install niri
sudo dnf5 install --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release
sudo dnf5 install noctalia-shell
```

## 🖥️ Meu Setup

* **Sistema Operacional:** Fedora Linux 44 (Workstation Edition)
* **Compositor (Wayland):** [Niri](https://github.com/YaLTeR/niri)
* **Ambiente/Tema:** [Noctalia](https://github.com/noctalia-dev/noctalia)

## 📂 Estrutura Modular

Este repositório está organizado de forma modular para facilitar a manutenção e a aplicação das configurações:

* 📁 **`niri/`**: Contém todas as configurações exclusivas do compositor Niri (atalhos de teclado, regras de layout, animações e comportamentos de janelas).

## 🚀 Instalação e Uso (apenas para mim)

Para aplicar estas configurações na sua máquina, você pode clonar este repositório e criar links simbólicos (symlinks) para a pasta `~/.config`, ou simplesmente copiar os arquivos.

```bash
# Clone este repositório
git clone https://github.com/LuisGFNunes/dotfiles.git ~/.dotfiles

# Entre no diretório
cd ~/.dotfiles

# Copie os diretórios para a sua pasta de configurações
cp -r niri ~/.config/
cp -r noctalia ~/.config/
