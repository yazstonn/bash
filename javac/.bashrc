function compile() {

local myfile=$1
javac -cp ~/ap/ap.jar:. "$myfile".java 2> ~/null/bash_compile
if [ $? -eq 0 ]
then
        echo "[+] Compilation : OK"
        echo "Trying to run..."
        rm -f ~/null/bash_compile
        java -cp ~/ap/ap.jar:. "$myfile" 2> ~/null/bash_compile
        if [ $? -eq 0 ]
        then
                echo "[+] Execution : OK"
        else
                echo "[-] Error while execution : "
                cat ~/null/bash_compile
        fi
else
        echo "[-] Compilation : Failed"
        echo "Check error log : "
        cat ~/null/bash_compile
fi

rm -f ~/null/bash_compile

}
