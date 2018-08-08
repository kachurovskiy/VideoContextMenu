# About

Stabilize a shaky video or convert to H264 with a single Windows Explorer context menu click.

<kbd><img src="https://4.bp.blogspot.com/-QHroqXz-s28/W2r8-KLx-CI/AAAAAAADw5o/4KP5AIRg3kga9k-LXMXIvTUYu_zn6Y3bQCLcBGAs/s1600/cm.png"/></kbd>

# Installation

1. Make sure you have ffmpeg installed and added to PATH, so that typing `ffmpeg` into the Command Line works.
2. Download https://github.com/kachurovskiy/VideoContextMenu into `C:\VideoContextMenu`
3. Execute `all.reg`

You should now have the video stabilization and converting shortcuts for all file types.

# Customization

Edit the BAT files locally to best fit your needs or add more shortcuts to your liking by adding more BAT files (don't forget `.reg` corresponding changes). Pull requests are welcome. Enjoy!

# Where to find output files

Stabilization: in the same folder with `_stabilized` suffix and `.MP4` extension e.g. `C:\Media\1.FLV` is stabilized into `C:\Media\1_stabilized.MP4`.

Conversion: in the same folder with `.mp4` extension. If such file already exists then `-h264` suffix is added to the output file name.

# Uninstall

To delete these menu items, start Windows `regedit` tool and remove corresponding items from `HKEY_CLASSES_ROOT\*\shell`
