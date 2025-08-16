
# Fortran Basics and Physics

This repository contains a collection of Fortran programs to solve basic physics and mathematics problems. The goal is to serve as a reference and practice resource for students and enthusiasts who want to learn Fortran by applying it to classic exercises.

## Project Structure

- **src/**: Source code for Fortran programs.
- **bin/**: Executables generated after compilation.
- **xyz_output/**: Output folder for generated .xyz files (atomic arrangements).
- **README.md**: This documentation file.
- **LICENSE**: Project license.

## Included Examples

- One-dimensional kinematics (rectilinear motion equations).
- Right triangle calculations using trigonometry.
- Mechanical energy calculation.
- Parabolic projectile motion.
- Chromatic aberration in quartz.
- Linear atomic arrangements (.xyz file generator).

## How to Compile and Run

1. Install [gfortran](https://gcc.gnu.org/fortran/) and make sure it is in your PATH.
2. Use VS Code tasks:
	 - Press `Ctrl+Shift+B` to compile the open Fortran file. The executable will be saved in the `bin` folder.
3. Run the program from the terminal:
		```powershell
		.\bin\program_name.exe
		```

### VS Code tasks.json example

Add the following to your `.vscode/tasks.json` for automatic compilation and file management:

```jsonc
{
	"version": "2.0.0",
	"tasks": [
		{
			"label": "Build Fortran",
			"type": "shell",
			"command": "gfortran",
			"args": [
				"-o",
				"bin/${fileBasenameNoExtension}.exe",
				"${file}"
			],
			"group": {
				"kind": "build",
				"isDefault": true
			},
			"problemMatcher": []
		},
	]
}
```


## How to Add New Programs

1. Create your `.f90` file in the `src` folder.
2. Compile it using the VS Code build task.
3. If your program generates `.xyz` files, use the provided task to move them to `xyz_output`.
4. Briefly document the purpose of the program in this README.

## Contributions

You can add more programs for physics, mathematics, or basic algorithms. Suggestions and improvements are welcome!

---

This project is designed to grow and serve as a base for Fortran exercises and practice. Feel free to experiment and expand it.
