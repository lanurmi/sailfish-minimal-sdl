This is a minimal sample project for loading and showing a bitmap with SDL2, without using OpenGL.

Minimal SDL2 example from:
https://wiki.libsdl.org/SDL_CreateRenderer

Build it for the emulator
====

```sb2 -t SailfishOS-i486 make```

Copy the the binary ```sailfish-minimal-sdl``` and ```img/hello.bmp``` to the emulator. The bmp needs to be in a subdirectory.

Build it for the phone
====

```sb2 -t SailfishOS-armv7hl make```

Copy the the binary ```sailfish-minimal-sdl``` and ```img/hello.bmp``` to the phone. The bmp needs to be in a subdirectory.

Run it on the emulator
====

Like this: ```./sailfish-minimal-sdl```

You'll see a smiley face.

Run it on the phone
====

Like this: ```./sailfish-minimal-sdl```

You'll see ... nothing? Only a black screen?


Extra task
====

On ```src/Game.cpp:14```, replace ```SDL_RENDERER_ACCELERATED``` with ```SDL_RENDERER_SOFTWARE``` and retry from the beginning. You'll notice it runs in the emulator, but segfaults on the phone?
