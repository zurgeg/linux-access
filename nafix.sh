sudo npm install -g asar
asar extract "$WINEPREFIX/drive_c/Program Files/Native Instruments/Native Access/resources/app.asar" /tmp/nafix/extracted
cp sudoprompt.js "/tmp/nafix/extracted/node-modules/@vscode/sudo-prompt/index.js"
asar pack /tmp/nafix/extracted "$WINEPREFIX/drive_c/Program Files/Native Instruments/Native Access/resources/app.asar"
touch ~/.local/share/applications/na-workaround.desktop
echo "[Desktop Entry]" >> ~/.local/share/applications/na-workaround.desktop
echo "Name=Native Access" >> ~/.local/share/applications/na-workaround.desktop
echo "Exec=WINEPREFIX=$WINEPREFIX wine \"%ProgramFiles%/Native Instruments/Native Access\" \"%u\"" >> ~/.local/share/applications/na-workaround.desktop
echo "Type=Application" >> ~/.local/share/applications/na-workaround.desktop
echo "Terminal=false" >> ~/.local/share/applications/na-workaround.desktop
echo "MimeType=x-scheme-handler/native-access;" >> ~/.local/share/applications/na-workaround.desktop
xdg-desktop-menu install ~/.local/share/applications/na-workaround.desktop
