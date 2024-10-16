#!/bin/bash

processos_lista=$(ps -ef | awk '{print $8}')
numero_processos=$(echo $processos_lista | wc)
echo $numero_processos
