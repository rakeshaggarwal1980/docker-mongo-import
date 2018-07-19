DIR='/seed-data/'
echo "Hello world"
for file in "$DIR"*.json
do
fileBaseName="$(basename $file)"
fileName=$(echo "$fileBaseName" | cut -f 1 -d '.')
echo $fileName
mongoimport --host mongodb --db subquip --collection  $fileName --type json --file $file --jsonArray
done