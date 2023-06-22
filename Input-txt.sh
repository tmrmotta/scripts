#!/bin/bash
# Lista de URLs
items=(
  "item1"
  "item2"
  "item3"
  "item4"
  "item5"
  "item6"
  "item7"
  "item8"
  "item9"
  "item10"
  "item11"
  "item12"
  "item13"
  "item14"
  "item15"
  "item16"
  "item17"
  "item18"
  "item19"
  "item20"
)

# Atualiza o código com as URLs
new_file="output.txt"
index=0

# Abre o arquivo de saída

# Atualiza o código com as URLs
for ((i=0; i<${#items[@]}; i+=5)); do #Change the value i+=5 for the number os items you want to add
    block=""
    for ((j=i; j<i+5 && j<${#items[@]}; j++)); do
        item="${items[j]}"
        block+="\"$item\",
        "
    done

    new_block="$block"

  echo "$new_block" >> "$new_file"
  index=$((index + 1))
done