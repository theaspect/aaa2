TOTAL=0
SUCCESS=0

echo
echo No params
./RUN.sh
ACTUAL=$?
let "TOTAL++"
if [ $ACTUAL -eq 0 ]; then
    let "SUCCESS = $SUCCESS + 1"
    echo Success. Expected 0 actual $ACTUAL
else
    echo Fail. Expected 0 actual $ACTUAL
fi

echo
echo "With 1 params"
./RUN.sh foo
ACTUAL=$?
let "TOTAL++"
if [ $ACTUAL -eq 1 ]; then
    let "SUCCESS = $SUCCESS + 1"
    echo Success. Expected 1 actual $ACTUAL
else
    echo Fail. Expected 1 actual $ACTUAL
fi

echo
echo "With 2 params"
./RUN.sh foo bar
ACTUAL=$?
let "TOTAL++"
if [ $ACTUAL -eq 2 ]; then
    let "SUCCESS = $SUCCESS + 1"
    echo Success. Expected 2 actual $ACTUAL
else
    echo Fail. Expected 2 actual $ACTUAL
fi

echo
echo "With 3 params"
./RUN.sh foo bar baz
ACTUAL=$?
let "TOTAL++"
if [ $ACTUAL -eq 3 ]; then
    let "SUCCESS = $SUCCESS + 1"
    echo Success. Expected 3 actual $ACTUAL
else
    echo Fail. Expected 3 actual $ACTUAL
fi

echo
echo Results:
echo $SUCCESS success tests out of $TOTAL

echo
if [ $TOTAL -eq $SUCCESS ]; then
    echo success
    exit 0
else
    echo fail
    exit 1
fi
