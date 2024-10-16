#!/bin/bash

processos_lista=$(ps -ef)
numero_processos=$(echo "$processos_lista" | wc -l)
echo "Número de processos sendo executados no momento: $numero_processos"
