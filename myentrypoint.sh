#!/bin/bash
function check_dependanies() {

    if ! python3 --version >/dev/null; then
        echo "Python is not installed"
        exit 1
    else

        echo "Python is installed"
        if ! fastapi --version >/dev/null; then
            exit 0
        else
            echo "FastAPI is installed"
        fi
    fi
}
check_dependanies
fastapi run
