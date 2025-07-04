# Assembly Project (English)

This project demonstrates how to compile, link, and debug Assembly code (MASM) in VS Code for both **x86** and **x64** architectures on Windows.

## Prerequisites

* **VS Code** installed.

* VS Code extensions:

  * **ASM Code Lens** (for syntax highlighting, IntelliSense, and Code Lens for `.asm`).
  * **C/C++** (Microsoft) (to enable the `cppvsdbg` debugger).

* **Visual Studio Build Tools** (including `ml.exe`, `ml64.exe`, and `link.exe`).

  * Make sure the **"Desktop development with C++"** workload is installed.

## Project Structure

```
assembly-projects/
├── test/
│   ├── main.asm         # Your Assembly code
│   ├── build.bat        # Script to build x86
│   ├── build_x64.bat    # Script to build x64
│   └── .vscode/
│       ├── tasks.json   # Build tasks configuration
│       └── launch.json  # Debug configuration
```

## Building

1. Open the project folder in VS Code.
2. Press `Ctrl+Shift+B` to open the **Build Tasks** menu.
3. Select one of the options:

   * **Build x86** (runs `build.bat` and generates `main.exe`).
   * **Build x64** (runs `build_x64.bat` and generates `main64.exe`).

After completion, you will have the corresponding executable:

* `main.exe` for x86
* `main64.exe` for x64

### Running

In the integrated terminal or Windows Command Prompt, run:

```bat
# x86
main.exe

# x64
main64.exe
```

## Debugging in VS Code

1. Ensure you compiled with debug symbols (the scripts use `/Zi` and `/DEBUG`).
2. Go to **Run & Debug** (`Ctrl+Shift+D`).
3. Select the **Debug Assembly (MASM)** configuration.
4. Press **F5** to start debugging.

### Breakpoints

* To set a breakpoint, click in the left gutter or place the cursor on a line and press **F9**.
* If the marker doesn’t appear, enable it in `settings.json`:

  ```json
  "debug.allowBreakpointsEverywhere": true
  ```

### Inspecting Registers

* During a debug session, open the **Registers** panel:

  * In the debug pane, click `...` → **View** → check **Registers**.
* The registers (`EAX`, `EBX`, `ECX`, `RAX`, etc.) will be displayed and updated as you step through.

---

With this setup, you have a complete MASM Assembly development environment in VS Code, supporting x86 and x64 with integrated build, run, and debug. Happy hacking! 🚀

# Assembly Project (Portuguese)

Este projeto demonstra como compilar, linkar e depurar código Assembly (MASM) no VS Code para as arquiteturas **x86** e **x64** usando o ambiente Windows.

## Pré-requisitos

* **VS Code** instalado.

* Extensões do VS Code:

  * **ASM Code Lens** (para realce de sintaxe, IntelliSense e Code Lens para `.asm`).
  * **C/C++** (Microsoft) (para habilitar o depurador `cppvsdbg`).

* **Visual Studio Build Tools** (contendo `ml.exe`, `ml64.exe` e `link.exe`).

  * Certifique-se de ter instalado o componente **"Desktop development with C++"** ou similar.

## Estrutura do projeto

```
assembly-projects/
├── test/
│   ├── main.asm         # Seu código Assembly
│   ├── build.bat        # Script para build x86
│   ├── build_x64.bat    # Script para build x64
│   └── .vscode/
│       ├── tasks.json   # Configuração de build tasks
│       └── launch.json  # Configuração de debug
```

## Compilação e build

1. Abra a pasta do projeto no VS Code.
2. Pressione `Ctrl+Shift+B` para abrir o menu de **Build Tasks**.
3. Escolha uma das opções:

   * **Build x86** (chama `build.bat` e gera `main.exe`).
   * **Build x64** (chama `build_x64.bat` e gera `main64.exe`).

Após o término, você terá o executável correspondente:

* `main.exe` para x86
* `main64.exe` para x64

### Executando

No terminal integrado do VS Code ou no prompt do Windows, execute:

```bat
# x86
main.exe

# x64
main64.exe
```

## Debug no VS Code

1. Certifique-se de ter compilado com debug symbols (os scripts já usam `/Zi` e `/DEBUG`).
2. Vá em **Run & Debug** (`Ctrl+Shift+D`).
3. Selecione a configuração **Debug Assembly (MASM)**.
4. Pressione **F5** para iniciar o debug.

### Breakpoints

* Para colocar um breakpoint, clique na margem esquerda (gutter) ou posicione o cursor e pressione **F9**.
* Se não aparecer o marcador, habilite no `settings.json`:

  ```json
  "debug.allowBreakpointsEverywhere": true
  ```

### Inspecionar registradores

* Durante a sessão de debug, abra o painel **Registers**:

  * No painel de debug, clique em `...` → **View** → marque **Registers**.
* Os registradores (`EAX`, `EBX`, `ECX`, `RAX`, etc.) serão exibidos e atualizados conforme você avança.

---