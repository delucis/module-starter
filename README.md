# Module Starter Kit
Generic project starter kit for building a module for the [Music 264 “Modular”](https://github.com/mus264/music-264-modular).

## Naming conventions
You should rename your module’s main Max patch to follow the following naming conventions for inclusion in the “Modular” project.

The basic naming structure is `prefix.module-function.maxpat`. The default starter patch is named `audio.starter-module.maxpat`.

### Prefixes
Your patch should have one of the following prefixes followed by a period to separate it from the main name.
* **audio** — use for any module that will process audio in any way
* **listen** — use for any module that will analyse audio and output some kind of data
* **ctrl** — use for any module that will output control data, either interpreting an external controller input or generating some kind of data (for example, a melody or rhythm generator)

### Main name
Give your patch a short name that describes its functionality as clearly as possible.
* Try to keep it to a maximum of **two** hyphenated words if at all possible
* Only abbreviate if the meaning remains relatively clear. `listen.envelope-follower` could be abbreviated to `listen.env-follower`, `audio.nz-gt` is not as immediately obvious as `audio.noise-gate`.

## Utilities
The `lib` folder contains simple abstractions that are universal to the “Modular” project. Use these in your modules to be consistent and ensure compatibility.

### Audio Input & Output pickers
* `modular.stereo-input-picker.maxpat`
* `modular.stereo-output-picker.maxpat`

The input & output pickers provide an interface for choosing audio & data input and output sources, which are dynamically generated in the main patch. Load them in a `[bpatcher]` in your module to use them.

The outputs send out the name of sources (input picker) or destinations (output picker). You can either prepend these with a `set` message and connect them directly to `[send~]` or `[receive~]` objects, or use them in tandem with the `[modular.send-switcher]`.

### Data Output picker
* `modular.data-picker.maxpat`

The data module can be attached to either `[send]` or `[receive]` objects to set the destination for your data. The inlets connect to the `[umenu]` objects allowing you to send them defaults etc.

### Send Switcher
* `modular.send-switcher.maxpat`

*Documentation to come.*

### `[pattrstorage]` helpers
* `pattr-control.maxpat`
* `read-write-pattr.maxpat`

The starter patches come with a ready-to-use `[pattrstorage]` system for preset management in the main patch, using the above abstractions. To ensure they work, replace the indicated arguments with unique names.
