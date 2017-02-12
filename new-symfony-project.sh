#!/bin/bash
# ---------------------------------------------------------------------------- #
#
#              _______      __________             .__
#              \      \     \______   \____ _______|__| ______
#              /   |   \     |     ___|__  \\_  __ \  |/  ___/
#             /    |    \    |    |    / __ \|  | \/  |\___ \
#             \____|__  / /\ |____|   (____  /__|  |__/____  >
#                     \/  \/               \/              \/
#
# ---------------------------------------------------------------------------- #

AUTHOR="Nicolas PARIS <email@gmail.com>"

# check if Symfony framework is installed
if ! which symfony &> /dev/null; then
    echo "Command symfony is not found, you should install Symfony!"
    exit
fi

# define the name for your new project
echo Which name you would define for your new Symfony project?
read name

# select the version for your Symfony project
echo With which version of Symfony do you want to create a project?
select VERSION in 2.8 3.0 3.1 default
do
    case $VERSION in
        default)
        echo "--- Creation of the Symfony project launched..."
        symfony new $name
        STATUS="$?"
        [ "$STATUS" -eq 0 ] && echo "--- The $name project has been created and is ready to be developed"
        [ "$STATUS" -ne 0 ] && echo "--- !!! error"
        break
    ;;
        2.8)
        echo "--- Creation of the Symfony project, v2.8, launched..."
        symfony new $name 2.8
        STATUS="$?"
        [ "$STATUS" -eq 0 ] && echo "--- The $name project has been created and is ready to be developed"
        [ "$STATUS" -ne 0 ] && echo "--- !!! error"
        break
    ;;
        3.0)
        echo "--- Creation of the Symfony project, v3.0, launched..."
        symfony new $name 3.0
        STATUS="$?"
        [ "$STATUS" -eq 0 ] && echo "--- The $name project has been created and is ready to be developed"
        [ "$STATUS" -ne 0 ] && echo "--- !!! error"
        break
    ;;
        3.1)
        echo "--- Creation of the Symfony project, v3.1, launched..."
        symfony new $name 3.1
        STATUS="$?"
        [ "$STATUS" -eq 0 ] && echo "--- The $name project has been created and is ready to be developed"
        [ "$STATUS" -ne 0 ] && echo "--- !!! error"
        break
    ;;
        *) echo "ERROR: Invalid selection"
    ;;
    esac
done
