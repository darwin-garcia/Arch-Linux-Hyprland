# Data Science Packages in Arch Linux (pip)
Ajustes básicos para un entorno fijo
<p>Sigue las instrucciones para instalar los paquetes necesarios</p>

1. Instala el paquete Python con Jupyter Notebook
` sudo pacman -S –needed python3 python-pip jupyter-notebook`

3. Repositorios de Pacman
` sudo pacman -S python-pandas python-numpy python-matplotlib python-seaborn python-scikit-learn python-scipy python-requests python-plotly python-bs4 python-pywal python-prettytable python-lxml python-html5lib jupyter-nbformat jupyter-nbconvert jupyter-nbclassic `

2. Repositorios AUR (yay)
` sudo yay -S python-ipython-sql python-yfinance python-folium `

# Data Science Packages in Arch Linux (MiniConda) 

1. Instalacion de Mini Conda
`yay -s python-conda` o `yay -s miniconda3`
De forma manual se puede instalar:
`wget https://repo.anaconda.com/miniconda/MiniConda3-latest-Linux-x86_64.sh`
`sudo ./MiniConda3-latest-Linux-x86_64.sh`

2. Instalar los repositorios de Conda
`conda install -c conda-forge jupyterlab notebook pandas numpy seaborn scikit-learn scipy matplotlib yfinance plotly beautifulsoup4 curl requests html5lib hashlib ipykernel javascript-typescript-langserver jupyterlite-pyodide-kernel json jsonify jsfetch jyserver lxml micropip pathlib pyarrow python-pyfetch pyodide-build pyodide-py openpyxl pycurl pyfiglet pyodbc pypi pyscript pytest-asyncio resty sqlite sql-language-server statsmodels urllib3 python-wget yaml-language-server`

3. ejecutar el conda
`conda activate`
Para los ajustes `conda config`


# Instalacion de Open Visual Studio Code

1. Instalacion de Open VIsual Studio Code
`pacman -S code`
2. Ajuste de OSS-Code para escritorios basados en Wayland
`code --enable-features=UseOzonePlatform --ozone-platform=wayland --ozone-platform-hint=auto --enable-features=WaylandWindowDecorations "$@"`. Este codigo debe ser guardado en un archivo llamado: code-flags.conf
Para que funcione debe tener los siguientes paquetes instalados: `sudo pacman -S xorg-xwayland wayland-protocols`

Verifica los paquetes instalados de PIP. Ejemplo: `pip show yfinance`
Verifica los paquetes instalados de MiniConda. Ejemplo: `conda info --envs` o `conda list -n pyfetch`

#### Mas sobre Instalacion de Arch Linux
[Haz clic aqui](https://github.com/darwin-garcia/Arch-Linux-Hyprland/) para ver mas instrucciones de instalacion de Arch Linux

Probado en Julio 2025
👨‍💻 ©MMXXV. Darwin Garcia. 🇨🇴
