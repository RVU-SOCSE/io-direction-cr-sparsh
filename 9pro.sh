#!/bin/bash

while true
do
    echo "----- I/O Redirection Manager -----"
    echo "1. Write to file"
    echo "2. Append to file"
    echo "3. Display file"
    echo "4. Exit"

    read -p "Enter choice: " ch

    case $ch in
        1)
            read -p "Enter filename: " file
            echo "Enter text (CTRL+D to save):"
            cat > $file
            ;;
        2)
            read -p "Enter filename: " file
            echo "Enter text to append (CTRL+D):"
            cat >> $file
            ;;
        3)
            read -p "Enter filename: " file
            cat $file
            ;;
        4)
            exit
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac
done

