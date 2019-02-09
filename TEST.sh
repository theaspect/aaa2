echo
echo "No params"
./RUN.sh
ACTUAL=$?
echo expected 0 actual $ACTUAL

echo
echo "With 1 params"
./RUN.sh foo
ACTUAL=$?
echo expect 1 actual $ACTUAL

echo
echo "With 2 params"
./RUN.sh foo bar
ACTUAL=$?
echo expect 2 actual $ACTUAL

echo
echo "With 3 params"
./RUN.sh foo bar baz
ACTUAL=$?
echo expect 3 actual $ACTUAL
