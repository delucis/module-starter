# Module Starter Kit
Generic project starter kit for building a module for the Music 264 “Modular”.

## Naming conventions
You should rename your module’s main Max patch to follow the following naming conventions for inclusion in the “Modular” project.

The basic naming structure is `prefix.module-function.maxpat`.

### Prefixes
Your patch should have one of the following prefixes followed by a period to separate it from the main name.
* **audio** — use for any module that will process audio in any way
* **listen** — use for any module that will analyse audio and output some kind of data
* **ctrl** — use for any module that will output control data, either interpreting an external controller input or generating some kind of data (for example, a melody or rhythm generator)

### Main name
Give your patch a short name that describes its functionality as clearly as possible.
* Try to keep it to a maximum of **two** hyphenated words if at all possible
* Only abbreviate if the meaning remains relatively clear. `listen.envelope-follower` could be abbreviated to `listen.env-follower`, `audio.nz-gt` is not as immediately obvious as `audio.noise-gate`.