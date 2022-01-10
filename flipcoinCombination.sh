flipcoin=$((RANDOM%2))
flipcoin=0
flipcoin=1
if [[ ${flipcoin} -eq 0 ]]; then
    echo HEADS
elif [[ ${flipcoin} -eq 1 ]]; then
    echo TAILS
fi


