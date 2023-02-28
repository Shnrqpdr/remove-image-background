# remove-image-background

A simple shell script to remove image background recursively using REMBG and ImageMagick convert command.

Since "rembg p -a -ae 30" uses alpha matting to remove the background, if your image has a large size, the image can be resized to a value that you computer can render it. The default value is "40%".

Installing dependencies:

``
pip install rembg
``

``
sudo apt-get install imagemagick
``

References: 
  - https://github.com/danielgatis/rembg
  - https://github.com/pymatting/pymatting

