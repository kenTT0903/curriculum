while True:
    try:
        print()
        print('1: ValueError例外を発生')
        print('2: IndexError例外を発生')
        print('3: 例外を発生させない')
        print('4: 終了')
        number = int(input('選択してください。: '))
        # 問①：if文を用いて、以下の画像のように処理されるように記述しましょう。
        ##ここに書く
        if number == 1:
            num = int('hoge')

        if number == 2:
            string = 'error'
            copy = string[6]

        if number == 3:
            print('例外を発生させませんでした')
    # 問②：else節を用いて、以下の画像のように処理されるように記述しましょう。
    ##ここに書く
        else:
            print('終了します')
            break
    except (ValueError,IndexError) as e:
        print(e.args)
print('↓')
print('無限ループを終了します')
