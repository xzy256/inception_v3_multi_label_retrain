dir=$(cd "$(dirname "$0")";pwd)
basedir=$(basename ${dir})
echo "$basedir"

for name in $dir/*
do
  echo "$name"
  filename=$(basename ${name})
  echo "$filename"  
  echo "$basedir" >> ${filename}.txt
done
echo $0
rm -rf $(basename $0).txt
