**Tracua_OS**

O Tracua_OS é um projeto de sistema operacional minimalista criado com o objetivo de estudar a fundo os conceitos de baixo nível da Ciência da Computação, como arquitetura de computadores, gerenciamento de memória e virtualização de hardware.

Atualmente, o sistema inicializa via GRUB, configura a GDT e exibe saída de texto em modo VGA.
<img width="721" height="463" alt="image" src="https://github.com/user-attachments/assets/4fa3609e-0ff4-4a8d-b850-3e7802007c71" />


**Funcionalidades Atuais**

**O kernel está em estágio inicial (Bootstrapping), implementando as seguintes bases:**

    [x] Multiboot Compliant: Inicialização compatível com a especificação Multiboot (carregado via GRUB).

    [x] Higher Half Kernel: O kernel é mapeado para 3GB (0xC0000000) no espaço virtual, mantendo o espaço do usuário livre.

    [x] VGA Text Mode Driver: Escrita direta na memória de vídeo (0xB8000) para exibição de strings e caracteres.

    [x] Global Descriptor Table (GDT): Configuração de segmentos de memória (Kernel Code/Data e User Code/Data) substituindo a GDT temporária do GRUB.

    [x] Stack Setup: Configuração inicial da pilha para permitir execução de código C.

**🛠️ Tech Stack**

    Linguagens: C (Lógica do Kernel), Assembly x86 (Boot e GDT stub), Linker Script.

    Compilação: GCC (Cross-Compiler recomendado), NASM, GNU Make.

    Emulação: QEMU.

    Bootloader: GRUB (Grand Unified Bootloader).
    
Você precisará das seguintes ferramentas instaladas no seu ambiente Linux/WSL:
Bash

sudo apt install build-essential nasm qemu-system-x86 xorriso grub-pc-bin grub-common

**Os próximos passos no desenvolvimento do Tracua_OS:**

    🚧 Interrupt Descriptor Table (IDT): Gerenciamento de exceções de CPU.

    🚧 Interrupt Service Routines (ISRs): Tratamento de IRQs de hardware.

    ⏳ Driver de Teclado (PS/2): Leitura de input do usuário.

    ⏳ Physical Memory Manager (PMM): Alocador de memória física.

    ⏳ Mini Shell: Interpretador de comandos básico.

📚 Referências e Estudos

Este projeto foi construído com base no estudo de diversos materiais clássicos:

    Operating Systems: Three Easy Pieces (Remzi H. Arpaci-Dusseau & Andrea C. Arpaci-Dusseau)

    OSDev.org Wiki

    Intel® 64 and IA-32 Architectures Software Developer Manuals

📄 Licença

Este projeto está sob a licença MIT. Sinta-se livre para usar, estudar e modificar.

Feito com ☕ e 💻 por Flávio Mota (flavi0mota)
