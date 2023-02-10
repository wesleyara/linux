#! /bin/bash

convert_images() {
  # Validando a existência da pasta png
  if [ ! -d png ]; then
      mkdir png
  fi

  for file in *.jpg; do
      # Definindo uma variável local para pegar o nome do arquivo sem a extensão
      local file_name=$(ls "$file" | awk -F. '{print $1}')
      convert "$filename" "png/${filename}.png"
  done
}

# Chamando a função e redirecionando a saída de erro para um arquivo
convert_images 2>error.log

# Verificando o status de saída da função
if [ $? -eq 0 ]; then
    echo "Conversão realizada com sucesso!"
else
    echo "Houve uma falha no processo!"
fi