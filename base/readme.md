**Compile base template**

rgbasm -Werror -Weverything -Hl -o main.o main.asm
rgbasm -Werror -Weverything -Hl -o sample.o sample.asm
rgblink --dmg --tiny --map sample.map --sym sample.sym -o sample.gb main.o sample.o
rgbfix --title game --pad-value 0 --validate sample.gb