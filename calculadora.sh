#!/bin/bash

echo "Calculadora Simples"
echo "1. Adição"
echo "2. Subtração"
echo "3. Multiplicação"
echo "4. Divisão"

read -p "Escolha a operação (1-4): " escolha

read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

case $escolha in
    1) resultado=$(echo "$num1 + $num2" | bc); echo "Resultado: $resultado" ;;
    2) resultado=$(echo "$num1 - $num2" | bc); echo "Resultado: $resultado" ;;
    3) resultado=$(echo "$num1 * $num2" | bc); echo "Resultado: $resultado" ;;
    4) resultado=$(echo "scale=2; $num1 / $num2" | bc); echo "Resultado: $resultado" ;;
    *) echo "Opção inválida" ;;
esac
