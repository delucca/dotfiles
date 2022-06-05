<p align="center">
  <br>
   <img src="https://media3.giphy.com/media/3o85xvtYHFK2WgrqKc/giphy.gif?cid=790b7611ae0c0c8cee79b4b517c183ee95309ed3f28d087b&rid=giphy.gif" alt="A bunch of buildings being built" title="Dotfiles header's GIF" />
  <br>
</p>
<p align="center">
All my relevant configuration files in a single place.
</p>

## 📖 About this Project

It is pretty common for me to sync multiple devices. Also, it is a pain in the ass when I need to change to a different computer or format my own. On this repository, I'll centralize all my configuration files in order to allow an automated setup of my workstation.

## 🤖 Getting Started
    
My dotfiles are managed by [chezmoi].

After installing it, run the following command to apply my custom configurations to it:

```bash
ln -s ~/.dotfiles/configs/manual/chezmoi/chezmoi.toml ~/.config/chezmoi/chezmoi.toml
```

And them, finally, you can run the following: 

```bash
chezmoi apply
```

And all my dotfiles will be properly installed.

## 🔓 License

Distributed under the MIT License. See [`LICENSE`] for more information.


[chezmoi]: https://www.chezmoi.io/
[`LICENSE`]: LICENSE
