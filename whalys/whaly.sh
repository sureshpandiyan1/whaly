# step 1 pass the one value

if [ $1 == "--help" ]; then
echo " "
echo "list of all whaly commands "
echo "----------------------------------------"
echo "--run           run the file continously"
echo "                whaly <filename> --run"
echo " "
echo "--create        create a file format to ruby"
echo "                whaly <filename> --create"
echo " "
echo "--about         about whaly"
echo "                whaly --about"
exit 0
elif [ $1 == '--about' ]; then
echo " "
echo "whaly is super easy to write a selenium scripts very easily"
echo "it's words related lines better than lot of codes"
exit 0
fi


if [[ -f $1  &&  $2 = '--create' ]]; then
ruby whalys/whaly.rb $1
mkdir whalytest-scripts
mv whalytest_$1.rb whalytest-scripts/
arr=($1)
echo "process the file -  $1"
echo "created successfully - whaletest_.$1.rb"
exit 0
fi

if [ $2  == '--run' ]; then
echo "running from whalytest_$1.rb file"
while true
do
ruby whalys/whaly.rb $1
mv whalytest_$1.rb whalytest-scripts/
echo "whaly engine is running until you press ctrl + c to stop"
done
rm whalytest_$1.rb
fi