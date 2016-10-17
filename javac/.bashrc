function compile() { javac -cp ~/ap/ap.jar:. "$1".java ; java -cp ~/ap/ap.jar:. "$1" ; }
