#問1-1.下の画像のように、それぞれを2乗した値を出力できるよう以下のfor文を完成させて下さい。
# int型のリストdataを作成し、値を1,3,5,7で初期化
from typing import TextIO


date = [1,3,5,7]
for i in date:
    print(i*i)


#問2-1.下の画像のような出力になるように、コードを完成させてください。
all_place = ["札幌","東京","横浜","大阪","名古屋","福岡"]
wait_place = ["札幌","大阪"]
get_place = ["横浜"]

for place in all_place:
    if place in get_place:
        print(place + "のチケットが当選しました！")
    if place in wait_place:
        print(place + "のチケットは結果待ち")
    else:
        print(place + "のチケットは落選しました")


#問2-2.下の画像のような出力になるように、問2-1の続きにコードに追加してください。
#ヒントその①　wait_placeリストの要素である札幌と大阪、get_placeリストの要素である横浜を、ひとつのリストに....
#ヒントその②　format関数を使って、文字列{}の中に 引数の値を順番に埋め込むことで出力する方法がありましたね....
get_place2 = get_place + wait_place
s = "{}と{}と{}のチケットが当選しました！"
print(s.format(get_place2[0],get_place2[1],get_place2[2]))