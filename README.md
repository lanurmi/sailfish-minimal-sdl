This is a minimal sample project for loading and showing a bitmap with SDL2, without using OpenGL.

Minimal SDL2 example from:
https://wiki.libsdl.org/SDL_CreateRenderer

Prequisites
====

Install SDL2-devel on the MerSDK:

```sb2 -t SailfishOS-armv7hl -m sdk-install -R zypper install SDL2-devel```

```sb2 -t SailfishOS-i486 -m sdk-install -R zypper install SDL2-devel```

Install SDL2 on the emulator and phone: ```pkcon install SDL2```

See also: https://together.jolla.com/question/22379/porting-sdl-20-game-to-sailfish/

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
