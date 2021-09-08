/* ■ [回答]と記載のある箇所へ、1〜8の各課題内容に沿ったSQL文を記述しなさい。 */
 
-- 1. 店舗テーブルから店舗名を抽出しなさい。また、列名の表示は別名で'店舗名'とすること。
-- [回答]
 SELECT store_name AS 店舗名 FROM store_table
 
  [Google](https://gyazo.com/5f23b719b08ddc3b5e2ca14c4e310eef) 

-- 2. 店舗情報を店舗名のABC順に抽出しなさい。
-- [回答]
SELECT * FROM store_table ORDER BY store_name ASC
 
 [Google](https://gyazo.com/7e7b6a4270286a9d4b98795426f898b5)

-- 3. 在庫テーブルに店舗テーブル、商品テーブルを「内部結合」し、店舗名・商品名・在庫数を全て取得しなさい。
-- [回答]
SELECT store_name,goods_name,quantity FROM stock_table
JOIN store_table ON stock_table.store_code = store_table.store_code
JOIN goods_table ON stock_table.goods_code = goods_table.goods_code	

 [Google](https://gyazo.com/95762fb7392f0608f3ab72529a91bb79)

-- 4. 商品テーブルから全商品の単価の平均値を抽出しなさい。
-- [回答]
SELECT AVG(price) FROM goods_table
 
 [Google](https://gyazo.com/9c80978bc71e6887189b6fb07fa328ce)
 
-- 5. 店舗コード='EA01'の在庫数の平均値より大きい在庫数を持つ店舗コードを抽出しなさい。
-- [回答]
 SELECT store_code FROM stock_table
 WHERE quantity > (SELECT AVG(quantity) FROM stock_table WHERE store_code = 'EA01')
 
 [Google](https://gyazo.com/0d028c46f2addaba0a80e8440da2484f)

-- 6. 商品テーブルに「商品コード='M001'、商品名='マフラー'、単価=4500円、更新日付=本日日付」のデータを追加しなさい。
-- ※実行後のSELECT結果も貼付すること。
-- [回答]
 INSERT INTO goods_table
(goods_code,goods_name,price,update_day)
VALUES
('M001','マフラー',4500,CURRENT_DATE)
 
 [Google](https://gyazo.com/5054ea361d3967cd2641d2f95df02509)

-- 7. 在庫テーブルの商品コード='S987'、かつ、店舗コード='EA01'に対して、「在庫数=10、更新日付=本日日付」で更新しなさい。
-- ※実行後のSELECT結果も貼付すること。
-- [回答]
 UPDATE stock_table
SET quantity = 10,
    update_day = CURRENT_DATE
WHERE goods_code = 'S987' AND store_code = 'EA01'
 
  [Google](https://gyazo.com/5f041ee04dd42f299d35c27be012b609)

-- 8. 7で更新した商品を削除しなさい。※実行後のSELECT結果も貼付すること。
-- [回答]
DELETE FROM stock_table
WHERE goods_code = 'S987' AND store_code = 'EA01'

 [Google](https://gyazo.com/655849557053cbf616c6b9e1ada320aa)