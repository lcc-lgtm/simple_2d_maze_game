# Simple Maze Program

A retro 2D maze game built with x86 Assembly language using `INT 21H` and basic video graphics mode.

## Features
* **5 Levels**: Progress from beginner to master maps.
* **VGA Graphics**: Uses Mode `13h` ($320 \times 192$ resolution, $16 \times 16$ pixel blocks).
* **Live Timer**: Tracks completion time using DOS system interrupts.
* **Menus**: Includes a main menu and a victory screen.

## Map Legend
* **`0`**: Path (Walkable)
* **`1`**: Wall (Solid block)
* **`2`**: Target (Goal)

## Controls
* **Arrow Keys**: Move player or navigate menus.
* **Enter**: Confirm selection.
* **ESC**: Return to menu or exit.

## Screenshots
* <img width="631" height="391" alt="image" src="https://github.com/user-attachments/assets/d575d07c-3328-4b0b-8c8a-6e4b986b8183" />
* <img width="508" height="325" alt="image" src="https://github.com/user-attachments/assets/6175427d-63c7-4b64-a5b9-0aae8befac14" />
* <img width="630" height="385" alt="image" src="https://github.com/user-attachments/assets/bef0e244-4c70-44df-a3a7-29d1d383c4d4" />

## How to Run
1. Open your Assembly environment (such as DOSBox and MASM/TASM).
2. Compile and link the source code:
   ```text
   masm MAPS.asm;
   link MAPS.obj;
   MAPS.exe
