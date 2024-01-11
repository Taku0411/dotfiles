# install textlint
npm install textlint
npm install textlint-rule-preset-ja-spacing textlint-rule-preset-ja-technical-writing
npm install textlint-plugin-latex2e

# install efm-lang-server
BASEDIR=$(dirname $0)
cd $BASEDIR
go install github.com/mattn/efm-langserver@latest
mkdir ~/.config/efm-langserver
ln -s ${PWD}/config.yaml ~/.config/efm-langserver/config.yaml
