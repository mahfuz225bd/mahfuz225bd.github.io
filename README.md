# TryIt

This is a unofficial desktop version of w3school tryit editor developed for practicing html coding. I have plan for adding more features like file system or others with other programming facilities.

Firstly, install all dependencies with:

> npm install

Then, run with command:

> npm run tauri dev

To build:

> npm run tauri build

After building, a binary file in `src-tauri/target/release` will be created.

## File/Folder Structure

To introduce the necessary files and folders that will support future updates of the app, as outlined below in a structured format:

```
tryit/
├── binaries/                        # Contains the binary files generated after building
│   ├── TryIt_x64.exe                # The built executable file for 64-bit Windows
├── src/                             # Main source code of the application
│   ├── .vscode/                     # Contains project-specific settings and configurations for Visual Studio Code, including preferences, tasks, and debug configurations.
│   ├── assets/                      # Contains assets like CSS and icons used in the application
│   │   ├── css/                     # Folder for CSS files
│   │   │   ├── btn.css              # Styles for buttons
│   │   │   ├── icon-bar.css         # Styles for the icon bar
│   │   │   ├── default.css          # Default styles for the app (btn.css and icon-bar.css are already imported)
│   │   ├── icons/                   # Folder for icon files
│   ├── index.html                   # The main HTML file for the app
│   ├── main.js                      # Main JavaScript file for app functionality
│   ├── styles.css                   # General styles for the application
├── src-tauri/                       # Contains the Tauri-specific source and configuration files
│   ├── icons/                       # Tauri-specific icons
│   ├── .gitignore                   # Git ignore file for the Tauri source directory
│   ├── target/                      # Directory where the Tauri build output is stored
│   ├── Cargo.toml                   # Rust dependencies and configuration for Tauri
│   ├── tauri.conf.json              # Configuration file for Tauri build and settings
├── .gitignore                       # Global git ignore file for the entire project
├── package.json                     # Contains project metadata and dependencies for the JavaScript app

```

## Features for Future Releases

Here are some features that I plan to include for the future releases:

- Tab action on code input

- Colorful syntax highlighting

- Toggling auto run (with saving toggled value is true or false into localStorage to remain same after closing the editor)

- Dynamic resizing of the code input and output is allowed with a drag-bar (where code input + output should equal 100%)

- Console for JS code

- Along with only HTML, HTML-CSS-JS like codepen.io
    - Downloading whole project
    - Saving the whole project as a project file

- Allow adding multiple files with a tree-structured view of files/folders.
    - Tab for the switching

- Drag and drop to open a file to edit

- Allow open with this code editor though context menu of the file explorer

- Build-in bash command prompt

- Built-in git

- Allow coding for other platforms like Node.js, PHP, Python, Java, C, C++, and others with allowing instant clickable downloads and installations of compilers and interpreters of different versions and authors.

- Zoom in/out for code and output

- Find/Replace

- Allowing to add current date/time with F5 or others

- Menubar

- Status bar
    - Line, Col
    - Character Counts
    - Zoom values of code and output

- Settings
    - Toggle on/off syntax highlighting
    - Managing versions and variants (authors) of the platforms

- Allowing to open and publish of a project of a git repository

- Web publishing
    - Free or limited free publishing with a subdomain
    - Free publishing as a GitHub page
    - Publishing directly like FileZilla which should be as easy as possible

- Optional login/logout for well managing

## TODOs for Before Next Release

- Revise whole code of this editor and re-write optimized version

- Try to add more features as possible, which should at least be for HTML or HTML-CSS-JS
