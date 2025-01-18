#!/bin/bash


# Colaboração:    Fernando Souza - https://www.youtube.com/@fernandosuporte/

clear

# -------------------------------------------------------------------------------------------------

# Verificar se o programa esta instalado:

which yad         1> /dev/null || exit 1

# -------------------------------------------------------------------------------------------------

clear

a="$(dirname $0)"

cd "$a"

dir="${XDG_DATA_HOME:-$HOME/.local/share}/xfce4/terminal/colorschemes"

echo "Copying .theme files to $dir ..."

mkdir -p "$dir"

# Executar o comando cp

cp -vin ./colorschemes/*.theme "$dir"

# Verificar o código de saída

if [ $? -ne 0 ]; then

   # Capturar o código de erro
   
    erro=$?
    
    yad --center --title "Erro" --error --text="The command failed with error code $error. Check the path or syntax." --button="OK"
    
    exit 1
    
fi

echo "done."

exit 0



    
    




