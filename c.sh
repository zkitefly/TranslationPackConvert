wget --no-dns-cache --random-wait --continue -d -T 60 -t 30 "$dLINK/$dNAMR"
unzip -d 'tmp' "$dNAME"
cd 'tmp'
cat 'pack.mcmeta' | jq -M "."pack"."pack_format"=$cV" > 'tmp.txt'
cp 'tmp.txt' 'pack.mcmeta'
rm 'tmp.txt'
zip "$cNAME" *
md5sum "$cNAME" "$mNAME"
sed 's/  //' > "$mNAME"
sed "s/$cNAME//" > "$mNAME"
mv "$cNAME" ../
mv "$mNAME" ../
cd ../
rm -r 'tmp'
mv "$cNAME" 'files'
