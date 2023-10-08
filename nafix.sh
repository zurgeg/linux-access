sudo npm install -g asar
asar extract "$WINEPREFIX/drive_c/Program Files/Native Instruments/Native Access/resources/app.asar" /tmp/nafix/extracted
cp sudoprompt.js "@vscode/sudo-prompt/index.js"
asar pack /tmp/nafix/extracted "$WINEPREFIX/drive_c/Program Files/Native Instruments/Native Access/resources/app.asar"
