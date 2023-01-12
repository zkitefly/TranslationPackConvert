#!/bin/bash
echo "1==============================================="
# 下载要转换的资源包。
echo "dLINK-$dLINK"
echo "dNAME-$dNAME"
# wget --no-dns-cache --random-wait --continue -d -T 60 -t 30 "$dLINK/$dNAME"
ls
echo "2==============================================="
# 创建 “tmp” 文件夹。
mkdir "tmp"
ls
# 解压缩 “$dNAME” 中的文件至 “tmp” 文件夹。
echo "dNAME-$dNAME"
unzip -q -d 'tmp' "$dNAME"
ls
echo "3==============================================="
# 跳到 “tmp” 文件夹。
cd 'tmp'
ls
echo "4==============================================="
# 转换。
echo "cV-$cV"
echo > './tmp.txt'
cat 'tmp.txt'
ls
echo >> "park.mcmeta"
file "pack.mcmeta"
cat "pack.mcmeta"
cat "pack.mcmeta" | jq -M "."pack"."pack_format"=$cV">"tmp.txt"
ls
cat "tmp.txt"
echo "5==============================================="
# 将 “tmp.txt” 覆盖至 “pack.mcmeta”。
cat 'tmp.txt' > 'pack.mcmeta'
echo >> "park.mcmeta"
cat "pack.mcmeta"
ls
echo "6==============================================="
# 删除 “tmp.txt”。
rm 'tmp.txt'
ls
echo "7==============================================="
# 打包 zip。
echo $cNAME
zip -q $cNAME -r *
ls
echo "8-9============================================="
# md5 校验，输出至 “$mNAME”。
echo $cNAME
# https://github.com/CFPAOrg/Minecraft-Mod-Language-Package/blob/5a2c1647e597ab0ffa7d203d7f06efbe98fcac73/zip.py#L38
md5sum -b "$cNAME">"tmp.txt"
cut "tmp.txt" -z -c1-32>"./$mNAME"
cat "$mNAME"
ls
echo "10=============================================="
# 将 “$cNAME” 和 “$mNAME” 移动至上一层文件夹。
echo $cNAME
mv "$cNAME" ../
echo $mNANE
mv "$mNAME" ../
ls
echo "11=============================================="
# 跳到上一层文件夹。
cd ../
ls
echo "12=============================================="
# 删除 tmp 文件夹。
rm -r './tmp'
ls
echo "13=============================================="
# 将 “$cNAME” 和 “$mNAME” 移动至 “files” 文件夹，并将该页面所有的 .zip 文件删除。
echo $cNAME
mv "./$cNAME" './files'
echo "mNAME-$mNAME"
mv "./$mNAME" './files'
ls "./files"
ls
echo "Done============================================"