Instalando mergetool




Instalar o diffmerge http://www.sourcegear.com/diffmerge/downloads.php
criar o link para o diffmerge abaixo:
ln -s /Applications/DiffMerge.app/Contents/Resources/diffmerge.sh /usr/local/bin/diffmerge
Executar os comandos abaixo:
git config --global diff.tool diffmerge
git config --global difftool.diffmerge.cmd 'diffmerge "$LOCAL" "$REMOTE"'
git config --global merge.tool diffmerge
git config --global mergetool.diffmerge.cmd 'diffmerge --merge --result="$MERGED" "$LOCAL" "$(if test -f "$BASE"; then echo "$BASE"; else echo "$LOCAL"; fi)" "$REMOTE"'
git config --global mergetool.diffmerge.trustExitCode true
