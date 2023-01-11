# TranslationPackConvert
一个将  CFPAOrg/Minecraft-Mod-Language-Package 翻译包转换的自动化仓库
```
wget --no-dns-cache --random-wait --continue -d -T 60 -t 30 'https://zkitefly.github.io/TranslationPackMirror/files/Minecraft-Mod-Language-Modpack.zip'
unzip -d './tmp' './Minecraft-Mod-Language-Modpack.zip'
cd './tmp'
cat './pack.mcmeta' | jq -M '."pack"."pack_format"=123456789' > './tmp.txt'
cp './tmp.txt' './pack.mcmeta'
rm './tmp.txt'
zip Minecraft-Mod-Language-Modpack.zip *
mv Minecraft-Mod-Language-Modpack.zip ../
cd ../
rm -r './tmp'
mv Minecraft-Mod-Language-Modpack.zip ./files
```
```
20230111
 pack_format	    Minecraft version
"pack_format": 1	1.6.1–1.8.9
"pack_format": 2	1.9–1.10.2
"pack_format": 3	1.11–1.12.2
"pack_format": 4	1.13–1.14.4
"pack_format": 5	1.15–1.16.1
"pack_format": 6	1.16.2–1.16.5
"pack_format": 7	1.17.x
"pack_format": 8	1.18.x
"pack_format": 9	1.19-1.19.2
"pack_format": 11	22w42a-22w44a
"pack_format": 12	1.19.3
```
