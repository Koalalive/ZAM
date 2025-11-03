#!/bin/bash

# Simplified package installation script

echo "Checking Python environment..."

# Check Python
if ! command -v python3 &> /dev/null && ! command -v python &> /dev/null; then
    echo "Error: Python not found. Please install Python first"
    exit 1
fi

# Determine Python and pip commands
if command -v python3 &> /dev/null; then
    PYTHON_CMD="python3"
    PIP_CMD="pip3"
else
    PYTHON_CMD="python"
    PIP_CMD="pip"
fi

echo "Using: $PYTHON_CMD, $PIP_CMD"

# Check and install numpy
if ! $PYTHON_CMD -c "import numpy" 2>/dev/null; then
    echo "Installing numpy..."
    $PIP_CMD install numpy
fi

# Check and install pygame
if ! $PYTHON_CMD -c "import pygame" 2>/dev/null; then
    echo "Installing pygame..."
    $PIP_CMD install pygame
fi

echo "Installation completed!"

echo "================================"
echo "==HAPPY BIRTHDAY TO ZAM's MOM!=="
echo "================================"
cd ./ZAM

python ./main.py