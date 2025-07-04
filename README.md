# Assembly Project

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

Com isso, você tem um ambiente completo para desenvolvimento Assembly (MASM) no VS Code, suportando x86 e x64 com build, execução e depuração integrados. Bom hacking! 🚀
