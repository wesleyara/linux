#! /bin/bash

convert_images() {
  local path=$1

  local file_name=$(ls "$path" | awk -F. '{print $1}')
  convert "$path" "${file_name}.png"
}

navigate_convert() {
  cd $1

  for file in *; do
    # Definindo uma variável local para pegar o nome do arquivo sem a extensão
    local path_file=$(find ~/Documentos/apps/linux/docs/anotations/002-navigate_in_all_directory/images -name "$file")
    echo $path_file

    if [ -d "$path_file" ]; then
      # Chamando a função recursivamente
      navigate_convert $path_file
    else
      convert_images $path_file
    fi
  done
}

# Chamando a função e redirecionando a saída de erro para um arquivo
navigate_convert ~/Documentos/apps/linux/docs/anotations/002-navigate_in_all_directory/images

# Verificando o status de saída da função
if [ $? -eq 0 ]; then
  echo "Conversão realizada com sucesso!"
else
  echo "Houve uma falha no processo!"
fi
