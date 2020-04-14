# tiled demo

This is a demo project for godot, that uses [tiled-to-godot-export](https://github.com/MikeMnD/tiled-to-godot-export).

You can find the Tiled map & tile-definitions under `assets/`

The .tres (godot tile-layer) files had to be hand-edited after export from Tiled, since they didn;t correctly have tile-image sizes:

```
0/region = Rect2( 0, 0, 1024, 1024 )
```