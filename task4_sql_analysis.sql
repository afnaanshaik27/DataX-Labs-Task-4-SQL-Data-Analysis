mysql> SELECT COUNT(*) FROM products_raw;
+----------+
| COUNT(*) |
+----------+
|    30000 |
+----------+
1 row in set (0.01 sec)

mysql> DESCRIBE products_raw;
+----------------+---------------+------+-----+---------+-------+
| Field          | Type          | Null | Key | Default | Extra |
+----------------+---------------+------+-----+---------+-------+
| product_uuid   | varchar(100)  | YES  |     | NULL    |       |
| actual_price   | decimal(12,2) | YES  |     | NULL    |       |
| selling_price  | decimal(12,2) | YES  |     | NULL    |       |
| average_rating | decimal(3,2)  | YES  |     | NULL    |       |
| brand          | varchar(255)  | YES  |     | NULL    |       |
| category       | varchar(255)  | YES  |     | NULL    |       |
| out_of_stock   | int           | YES  |     | NULL    |       |
| product_id     | varchar(100)  | YES  |     | NULL    |       |
| seller         | varchar(255)  | YES  |     | NULL    |       |
| sub_category   | varchar(255)  | YES  |     | NULL    |       |
| title          | text          | YES  |     | NULL    |       |
| discount       | int           | YES  |     | NULL    |       |
+----------------+---------------+------+-----+---------+-------+
12 rows in set (0.01 sec)

mysql> SELECT COUNT(*) FROM products_raw;
+----------+
| COUNT(*) |
+----------+
|    30000 |
+----------+
1 row in set (0.01 sec)

mysql> SELECT
    ->     product_id,
    ->     title,
    ->     brand,
    ->     category,
    ->     selling_price,
    ->     average_rating
    -> FROM products_raw
    -> LIMIT 10;
+------------------+-----------------------------------+-------+--------------------------+---------------+----------------+
| product_id       | title                             | brand | category                 | selling_price | average_rating |
+------------------+-----------------------------------+-------+--------------------------+---------------+----------------+
| TKPFCZ9EA7H5FYZH | Solid Men Multicolor Track Pants  | York  | Clothing and Accessories |        921.00 |           3.90 |
| TKPFCZ9EJZV2UVRZ | Solid Men Blue Track Pants        | York  | Clothing and Accessories |        499.00 |           3.90 |
| TKPFCZ9EHFCY5Z4Y | Solid Men Multicolor Track Pants  | York  | Clothing and Accessories |        931.00 |           3.90 |
| TKPFCZ9ESZZ7YWEF | Solid Men Multicolor Track Pants  | York  | Clothing and Accessories |        911.00 |           3.90 |
| TKPFCZ9EVXKBSUD7 | Solid Men Brown, Grey Track Pants | York  | Clothing and Accessories |        943.00 |           3.90 |
| TKPFCZ9EFK9DNWDA | Solid Men Multicolor Track Pants  | York  | Clothing and Accessories |       1169.00 |           3.80 |
| TKPFDABN3GXYPFHE | Solid Men Dark Blue Track Pants   | York  | Clothing and Accessories |        466.00 |           3.80 |
| TKPFCZ9ESGZYT8NH | Solid Men Beige Track Pants       | York  | Clothing and Accessories |        545.00 |           3.80 |
| TKPFCZ9DYU33FFXS | Solid Men Black Track Pants       | York  | Clothing and Accessories |        489.00 |           3.80 |
| TKPFDABN4NQFVKZY | Solid Men Grey Track Pants        | York  | Clothing and Accessories |        531.00 |           3.70 |
+------------------+-----------------------------------+-------+--------------------------+---------------+----------------+
10 rows in set (0.00 sec)

mysql> SELECT
    ->     product_id,
    ->     title,
    ->     brand,
    ->     average_rating,
    ->     selling_price
    -> FROM products_raw
    -> WHERE average_rating >= 4.0
    -> LIMIT 20;
+------------------+--------------------------------------------+---------------+----------------+---------------+
| product_id       | title                                      | brand         | average_rating | selling_price |
+------------------+--------------------------------------------+---------------+----------------+---------------+
| TKPFDACEXAWUHGR7 | Solid Men Dark Blue Track Pants            | York          |           4.50 |        531.00 |
| TKPFD3K6K5TNYZGF | Color Block Men Grey Track Pants           | York          |           4.50 |        531.00 |
| TKPFD3K6ZMN79MPH | Color Block Men Blue Track Pants           | York          |           4.50 |        521.00 |
| TKPFD3K6UZBYDZNY | Color Block Men Black Track Pants          | York          |           4.50 |        531.00 |
| TKPFD3K62JB9PEMR | Solid Men Brown Track Pants                | York          |           4.50 |        511.00 |
| SOCFVCCYUDEN2AVH | Men Self Design Ankle Length  (Pack of 4)  | ANGI          |           4.20 |        280.00 |
| CTPFVZTEMJWEJJJV | nu-Lite Satin Tie & Cufflink  (Red)        | Unknown       |           4.30 |        499.00 |
| CTPFVPM3NDPBPPXE | nu-Lite Satin Tie & Cufflink  (Purple)     | Unknown       |           4.70 |        349.00 |
| CTPFVZHSA7G4PFC5 | nu-Lite Satin Tie & Cufflink  (Grey)       | Unknown       |           4.30 |        499.00 |
| CTPFVSU7CXFCXEHD | nu-Lite Satin Tie & Cufflink  (Blue)       | Unknown       |           4.50 |        499.00 |
| CTPFVZT7EFZWVRUP | nu-Lite Satin Tie & Cufflink  (Blue)       | Unknown       |           4.30 |        899.00 |
| CTPFVPHDCSXN6FCY | nu-Lite Satin Tie & Cufflink  (Red)        | Unknown       |           4.30 |        349.00 |
| CTPFVPZGUAYCWCKF | nu-Lite Satin Tie & Cufflink  (Multicolor) | Unknown       |           4.30 |        499.00 |
| CTPFVQZX4SZHHHHZ | nu-Lite Satin Tie & Cufflink  (Beige)      | Unknown       |           4.00 |        499.00 |
| CTPFVZNX3KKES9DH | nu-Lite Satin Tie & Cufflink  (Red)        | Unknown       |           4.00 |        499.00 |
| CTPFVPH6TJ3GHRBY | nu-Lite Satin Tie & Cufflink  (Pink)       | Unknown       |           4.30 |        599.00 |
| CTPFVPKKWBZUCH7Y | nu-Lite Satin Tie Pin Set  (Green)         | Unknown       |           4.30 |        349.00 |
| CTPFVPKJUJDPNCCR | nu-Lite Satin Tie Pin Set  (Red)           | Unknown       |           4.40 |        349.00 |
| SWTFYGS7GFGWVX4J | Striped V Neck Casual Men Orange Sweater   | Man           |           4.30 |        399.00 |
| TSHFWTPXBG5SZDV7 | Solid Men Round Neck Black T-Shirt         | DISCOUNT OUTL |           4.80 |        289.00 |
+------------------+--------------------------------------------+---------------+----------------+---------------+
20 rows in set (0.00 sec)

mysql> SELECT
    ->     product_id,
    ->     title,
    ->     brand,
    ->     average_rating,
    ->     selling_price
    -> FROM products_raw
    -> WHERE average_rating IS NOT NULL
    -> ORDER BY average_rating DESC
    -> LIMIT 10;
+------------------+-------------------------------------------------------------+-------+----------------+---------------+
| product_id       | title                                                       | brand | average_rating | selling_price |
+------------------+-------------------------------------------------------------+-------+----------------+---------------+
| TSHFHWRYCSNSZCAF | Striped Men Polo Neck Multicolor T-Shirt                    | Oka   |           5.00 |        632.00 |
| TSHFGHYHNZHNN3GZ | Striped Men Polo Neck White, Pink, Grey T-Shirt             | Oka   |           5.00 |        632.00 |
| TSHFFNRDKXHP6ETU | Solid Men Polo Neck Black, Orange T-Shirt  (Pack of 2)      | Keo   |           5.00 |        521.00 |
| TSHFGDDVBZ3FHYV5 | Solid Men Polo Neck Red, Green, Orange T-Shirt  (Pack of 3) | Keo   |           5.00 |        664.00 |
| JCKFX4VPBAC2MCSJ | Full Sleeve Solid Men Jacket                                | Oka   |           5.00 |       1590.00 |
| TKPFPHKFPNHGPHJW | Solid Men Dark Blue Track Pants                             | Oka   |           5.00 |        812.00 |
| TSHFFEYSD558XVRZ | Solid Men Round Neck Blue T-Shirt                           | Oka   |           5.00 |        385.00 |
| TKPFHWDCYAGH2EDZ | Printed Men Blue Track Pants                                | Oka   |           5.00 |        667.00 |
| TSHFGGYW57HGZHYY | Solid Men Polo Neck Dark Blue T-Shirt                       | Oka   |           5.00 |        660.00 |
| TSHFFNRDHGG89KXG | Solid Men Polo Neck Orange, Grey T-Shirt  (Pack of 2)       | Keo   |           5.00 |        521.00 |
+------------------+-------------------------------------------------------------+-------+----------------+---------------+
10 rows in set (0.04 sec)

mysql> SELECT
    ->     category,
    ->     COUNT(*) AS product_count
    -> FROM products_raw
    -> GROUP BY category
    -> ORDER BY product_count DESC;
+--------------------------+---------------+
| category                 | product_count |
+--------------------------+---------------+
| Clothing and Accessories |         28971 |
| Footwear                 |           987 |
| Bags, Wallets & Belts    |            41 |
| Toys                     |             1 |
+--------------------------+---------------+
4 rows in set (0.10 sec)

mysql> SELECT
    ->     category,
    ->     ROUND(AVG(selling_price), 2) AS avg_selling_price
    -> FROM products_raw
    -> WHERE selling_price IS NOT NULL
    -> GROUP BY category
    -> ORDER BY avg_selling_price DESC;
+--------------------------+-------------------+
| category                 | avg_selling_price |
+--------------------------+-------------------+
| Clothing and Accessories |            724.55 |
| Footwear                 |            501.23 |
| Bags, Wallets & Belts    |            258.51 |
| Toys                     |            189.00 |
+--------------------------+-------------------+
4 rows in set (0.04 sec)

mysql> SELECT
    ->     COUNT(*) AS total_products,
    ->     COUNT(DISTINCT brand) AS total_brands,
    ->     ROUND(AVG(selling_price), 2) AS average_selling_price,
    ->     ROUND(MIN(selling_price), 2) AS minimum_price,
    ->     ROUND(MAX(selling_price), 2) AS maximum_price
    -> FROM products_raw;
+----------------+--------------+-----------------------+---------------+---------------+
| total_products | total_brands | average_selling_price | minimum_price | maximum_price |
+----------------+--------------+-----------------------+---------------+---------------+
|          30000 |          322 |                716.55 |         99.00 |       7999.00 |
+----------------+--------------+-----------------------+---------------+---------------+
1 row in set (0.18 sec)

mysql> SELECT
    ->     ROUND(SUM(selling_price), 2) AS total_selling_price
    -> FROM products_raw;
+---------------------+
| total_selling_price |
+---------------------+
|         21496394.00 |
+---------------------+
1 row in set (0.02 sec)

mysql> SELECT
    ->     COUNT(*) AS total_rows,
    ->     SUM(product_id IS NULL) AS null_product_ids,
    ->     SUM(brand IS NULL) AS null_brands,
    ->     SUM(category IS NULL) AS null_categories,
    ->     SUM(selling_price IS NULL) AS null_selling_prices,
    ->     SUM(average_rating IS NULL) AS null_ratings
    -> FROM products_raw;
+------------+------------------+-------------+-----------------+---------------------+--------------+
| total_rows | null_product_ids | null_brands | null_categories | null_selling_prices | null_ratings |
+------------+------------------+-------------+-----------------+---------------------+--------------+
|      30000 |                0 |           0 |               0 |                   0 |            0 |
+------------+------------------+-------------+-----------------+---------------------+--------------+
1 row in set (0.07 sec)

mysql> SELECT
    ->     product_id,
    ->     COALESCE(brand, 'Unknown') AS brand,
    ->     COALESCE(category, 'Uncategorized') AS category,
    ->     COALESCE(average_rating, 0) AS rating
    -> FROM products_raw
    -> LIMIT 10;
+------------------+-------+--------------------------+--------+
| product_id       | brand | category                 | rating |
+------------------+-------+--------------------------+--------+
| TKPFCZ9EA7H5FYZH | York  | Clothing and Accessories |   3.90 |
| TKPFCZ9EJZV2UVRZ | York  | Clothing and Accessories |   3.90 |
| TKPFCZ9EHFCY5Z4Y | York  | Clothing and Accessories |   3.90 |
| TKPFCZ9ESZZ7YWEF | York  | Clothing and Accessories |   3.90 |
| TKPFCZ9EVXKBSUD7 | York  | Clothing and Accessories |   3.90 |
| TKPFCZ9EFK9DNWDA | York  | Clothing and Accessories |   3.80 |
| TKPFDABN3GXYPFHE | York  | Clothing and Accessories |   3.80 |
| TKPFCZ9ESGZYT8NH | York  | Clothing and Accessories |   3.80 |
| TKPFCZ9DYU33FFXS | York  | Clothing and Accessories |   3.80 |
| TKPFDABN4NQFVKZY | York  | Clothing and Accessories |   3.70 |
+------------------+-------+--------------------------+--------+
10 rows in set (0.00 sec)

mysql> SELECT
    ->     brand,
    ->     COUNT(*) AS product_count
    -> FROM products_raw
    -> WHERE brand IS NOT NULL
    -> GROUP BY brand
    -> HAVING COUNT(*) >= 50
    -> ORDER BY product_count DESC;
+----------------------+---------------+
| brand                | product_count |
+----------------------+---------------+
| Unknown              |          2068 |
| ARBO                 |           999 |
| REEB                 |           996 |
| True Bl              |           996 |
| Pu                   |           996 |
| ECKO Unl             |           993 |
| Free Authori         |           864 |
| Keo                  |           668 |
| Amp                  |           621 |
| Black Beat           |           560 |
| PixF                 |           528 |
| yellowvib            |           507 |
| vims rai             |           504 |
| Marca Disa           |           444 |
| Oka                  |           419 |
| Gracew               |           405 |
| TEE BUD              |           398 |
| Shoef                |           358 |
| V                    |           346 |
| CupidSto             |           338 |
| Urban D              |           324 |
| Xi                   |           319 |
| AXMA                 |           318 |
| ATHL                 |           303 |
| FLEXIM               |           301 |
| Dudli                |           293 |
| Cots                 |           291 |
| TOM BU               |           291 |
| T10 Spor             |           285 |
| Lev                  |           279 |
| Breakboun            |           273 |
| Mett                 |           273 |
| M7 By Metrona        |           267 |
| Scott Internation    |           267 |
| Fairdea              |           260 |
| JACK AND HAR         |           232 |
| Vector               |           231 |
| chawla fashi         |           229 |
| Steenb               |           225 |
| A                    |           224 |
| Uber Urb             |           223 |
| MASH UNLIMIT         |           216 |
| ATTIITU              |           204 |
| SATDEVANGIKHADIBHAND |           200 |
| Bone                 |           196 |
| HUMANITY ORIGINA     |           196 |
| Lucky Bi             |           191 |
| HUMBE                |           190 |
| Byford by Pantaloo   |           179 |
| Mo                   |           178 |
| CA                   |           172 |
| Zack Fo              |           172 |
| CANTAB               |           172 |
| VOXA                 |           159 |
| Jagdish Garmen       |           157 |
| ModeWa               |           156 |
| LDHSA                |           151 |
| Rose We              |           150 |
| Purple Sta           |           148 |
| Solid Styl           |           140 |
| Mylifestylebazz      |           137 |
| Mountain colou       |           136 |
| Crocks Cl            |           129 |
| Lucky Rog            |           128 |
| Lafant               |           125 |
| RELIEF ZO            |           121 |
| Adam Park            |           113 |
| rockha               |           111 |
| East I               |           108 |
| THE HOLLAND          |           107 |
| REEBOK CLASSI        |           104 |
| Styleska             |           100 |
| Tees Collecti        |            99 |
| Jai Textil           |            98 |
| Wildst               |            98 |
| Bonnevil             |            98 |
| U.S. Polo Ass        |            95 |
| TeeMoo               |            95 |
| Inspi                |            94 |
| A J STYL             |            91 |
| M.R. FASHI           |            89 |
| Vibrant Vestu        |            88 |
| REF                  |            87 |
| RodZ                 |            84 |
| GLO                  |            83 |
| DISCOUNT OUTL        |            82 |
| allan pet            |            80 |
| Onei                 |            79 |
| saltla               |            77 |
| Bindass Bo           |            75 |
| Mah                  |            74 |
| SORA                 |            74 |
| dream o              |            73 |
| SayItLo              |            72 |
| FOREVER YOU          |            72 |
| SUR                  |            71 |
| Pol                  |            71 |
| Szto                 |            69 |
| R                    |            65 |
| FancyW               |            64 |
| Asa                  |            64 |
| adidas Origina       |            61 |
| Sherr                |            61 |
| NEBRAS               |            60 |
| limited colou        |            59 |
| FASHION WOU          |            58 |
| MagMatri             |            57 |
| Welwe                |            57 |
| BLACK SN             |            57 |
| Clo                  |            56 |
| G                    |            56 |
| AS Tre               |            55 |
| Sharar               |            54 |
| Wab                  |            53 |
| U.s.Polo Associati   |            51 |
+----------------------+---------------+
115 rows in set (0.02 sec)

mysql> SELECT
    ->     product_id,
    ->     title,
    ->     brand,
    ->     selling_price
    -> FROM products_raw
    -> WHERE selling_price > (
    ->     SELECT AVG(selling_price)
    ->     FROM products_raw
    -> )
    -> ORDER BY selling_price DESC
    -> LIMIT 20;
+------------------+------------------------------------------------------------------+---------+---------------+
| product_id       | title                                                            | brand   | selling_price |
+------------------+------------------------------------------------------------------+---------+---------------+
| TKTFZ3YGGMMNBYEZ | Solid Men Track Suit                                             | REEB    |       7999.00 |
| BZRFVAX2QGTEGHRH | Checkered Single Breasted Party Men Full Sleeve Blazer  (Grey)   | True Bl |       7998.00 |
| JCKFQF5KMJJ349H8 | Full Sleeve Solid Men Casual Jacket                              | Pu      |       7799.00 |
| SWSFUMFGQFKVZGYH | Full Sleeve Printed Men Sweatshirt                               | Pu      |       7799.00 |
| JEAF8S4GWU5YKQTF | Skinny Men Blue Jeans                                            | G       |       7794.00 |
| BZRFVDGUJHTQHDAX | Self Design Single Breasted Party Men Full Sleeve Blazer  (Blue) | True Bl |       6998.00 |
| JEAF8S4GE8PKH7H3 | Regular Fit Men Dark Blue Cotton Blend Trousers                  | G       |       6925.00 |
| JEAF65G3MZYG3BQM | Maxx Regular Men Black Jeans                                     | G       |       6692.00 |
| JCKFQF5K72AT2JDC | Full Sleeve Solid Men Casual Jacket                              | Pu      |       6499.00 |
| JCKFQF5K72AT2JDC | Full Sleeve Solid Men Casual Jacket                              | Pu      |       6499.00 |
| JCKFQF5K72AT2JDC | Full Sleeve Solid Men Casual Jacket                              | Pu      |       6499.00 |
| JCKFQF5K72AT2JDC | Full Sleeve Solid Men Casual Jacket                              | Pu      |       6499.00 |
| JEAFEN3WGHH3ZEFY | Skinny Men Blue Jeans                                            | G       |       6493.00 |
| JEAFQFGWXSVSMRWC | Slim Men Dark Blue Jeans                                         | Lev     |       6399.00 |
| JEAFVXDHCTVDT3PR | Slim Men Black Jeans                                             | Lev     |       6399.00 |
| JCKFW8EFUXMSBHMZ | Full Sleeve Solid Men Padded Jacket                              | Pu      |       6049.00 |
| JCKFW8EDXGMHU28V | Full Sleeve Solid Men Casual Jacket                              | Pu      |       5999.00 |
| JEAFM6343GJVNCKE | Tapered Fit Men Blue Jeans                                       | Lev     |       5999.00 |
| JCKFVAX8F2QQSU2M | Full Sleeve Solid Men Casual Jacket                              | True Bl |       5998.00 |
| JCKFVAX8XKF8GXUS | Full Sleeve Solid Men Quilted Jacket                             | True Bl |       5998.00 |
+------------------+------------------------------------------------------------------+---------+---------------+
20 rows in set (0.03 sec)

mysql> CREATE VIEW category_analysis AS
    -> SELECT
    ->     category,
    ->     COUNT(*) AS product_count,
    ->     ROUND(AVG(selling_price), 2) AS avg_selling_price,
    ->     ROUND(AVG(average_rating), 2) AS avg_rating,
    ->     SUM(out_of_stock = 1) AS out_of_stock_products
    -> FROM products_raw
    -> GROUP BY category;
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT *
    -> FROM category_analysis
    -> ORDER BY product_count DESC;
+--------------------------+---------------+-------------------+------------+-----------------------+
| category                 | product_count | avg_selling_price | avg_rating | out_of_stock_products |
+--------------------------+---------------+-------------------+------------+-----------------------+
| Clothing and Accessories |         28971 |            724.55 |       3.65 |                  1731 |
| Footwear                 |           987 |            501.23 |       3.88 |                    11 |
| Bags, Wallets & Belts    |            41 |            258.51 |       4.13 |                     0 |
| Toys                     |             1 |            189.00 |       3.60 |                     0 |
+--------------------------+---------------+-------------------+------------+-----------------------+
4 rows in set (0.04 sec)

mysql> SHOW FULL TABLES
    -> WHERE TABLE_TYPE = 'VIEW';
+----------------------------------+------------+
| Tables_in_ecommerce_sql_analysis | Table_type |
+----------------------------------+------------+
| category_analysis                | VIEW       |
+----------------------------------+------------+
1 row in set (0.00 sec)

mysql> CREATE INDEX idx_category
    -> ON products_raw(category);
Query OK, 0 rows affected (0.42 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> CREATE INDEX idx_brand
    -> ON products_raw(brand);
Query OK, 0 rows affected (0.27 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SHOW INDEX FROM products_raw;
+--------------+------------+--------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table        | Non_unique | Key_name     | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+--------------+------------+--------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| products_raw |          1 | idx_category |            1 | category    | A         |           3 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| products_raw |          1 | idx_brand    |            1 | brand       | A         |         322 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+--------------+------------+--------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
2 rows in set (0.01 sec)

mysql> CREATE TABLE brand_summary AS
    -> SELECT
    ->     brand,
    ->     COUNT(*) AS product_count
    -> FROM products_raw
    -> WHERE brand IS NOT NULL
    -> GROUP BY brand;
Query OK, 322 rows affected (0.04 sec)
Records: 322  Duplicates: 0  Warnings: 0

mysql> SELECT *
    -> FROM brand_summary
    -> LIMIT 10;
+------------------+---------------+
| brand            | product_count |
+------------------+---------------+
| A                |           224 |
| A J STYL         |            91 |
| A to Z life sty  |             1 |
| A2Z QUALITY GROU |            11 |
| ABC ANY BUDY CLE |            27 |
| Absolu           |            19 |
| Adam Park        |           113 |
| adidas Origina   |            61 |
| Aeload           |             4 |
| Alderman Sheikhj |             4 |
+------------------+---------------+
10 rows in set (0.00 sec)

mysql> SELECT
    ->     p.product_id,
    ->     p.title,
    ->     p.brand,
    ->     b.product_count
    -> FROM products_raw p
    -> INNER JOIN brand_summary b
    ->     ON p.brand = b.brand
    -> LIMIT 20;
+------------------+------------------------------------------------------------+-------+---------------+
| product_id       | title                                                      | brand | product_count |
+------------------+------------------------------------------------------------+-------+---------------+
| TSHFXR6VVY6WFZMW | Solid, Color Block Men Round Neck Maroon T-Shirt           | A     |           224 |
| TSHFYKZNX5ZCFKHU | Solid Men Round Neck Blue, Red T-Shirt  (Pack of 2)        | A     |           224 |
| TSHFYV9SC6GBJ4YS | Solid Men Round Neck Black T-Shirt                         | A     |           224 |
| TSHFXR6VRHTNKCZE | Solid, Color Block Men Round Neck Maroon T-Shirt           | A     |           224 |
| TSHFXZX3QW82KAGS | Color Block Men Round Neck Dark Blue T-Shirt               | A     |           224 |
| TSHFYJR8YGMFCXKH | Solid Men Round Neck White, Black T-Shirt  (Pack of 2)     | A     |           224 |
| TSHFYKZNSWSJ75QS | Solid Men Round Neck Black, Blue T-Shirt  (Pack of 2)      | A     |           224 |
| TSHFYY7GTESPJSV6 | Solid Men Round Neck White T-Shirt                         | A     |           224 |
| TSHFYKZNH4Z5ETPS | Solid Men Round Neck Dark Blue, Red T-Shirt  (Pack of 2)   | A     |           224 |
| TSHFYY7GXXGG5PXG | Solid Men Round Neck Yellow T-Shirt                        | A     |           224 |
| TSHFYY7G2TNHDF6N | Solid Men Round Neck Maroon T-Shirt                        | A     |           224 |
| TSHFXRQ6WRG8ZSXQ | Solid, Color Block Men Round Neck Black T-Shirt            | A     |           224 |
| TSHFYF5ANSGY2G3N | Solid Men Round Neck Black, Yellow T-Shirt  (Pack of 2)    | A     |           224 |
| TSHFYKZNHMKZRAHT | Solid Men Round Neck Black, Dark Blue T-Shirt  (Pack of 2) | A     |           224 |
| TSHFYF5AYAYDDKCD | Solid Men Round Neck Maroon, White T-Shirt  (Pack of 2)    | A     |           224 |
| TSHFYF5AHQCUGQV6 | Solid Men Round Neck Maroon, Yellow T-Shirt  (Pack of 2)   | A     |           224 |
| TSHFYKZNZHPKUH4T | Solid Men Round Neck Black, Maroon T-Shirt  (Pack of 2)    | A     |           224 |
| TSHFYF5AMK9BQEW2 | Solid Men Round Neck Maroon, Black T-Shirt  (Pack of 2)    | A     |           224 |
| TSHFYF5A3H4GCAYF | Solid Men Round Neck Black, Yellow T-Shirt  (Pack of 2)    | A     |           224 |
| TSHFYV9SZCWWH5GF | Solid Men Round Neck Black T-Shirt                         | A     |           224 |
+------------------+------------------------------------------------------------+-------+---------------+
20 rows in set (0.00 sec)

mysql> SELECT
    ->     p.product_id,
    ->     p.title,
    ->     p.brand,
    ->     b.product_count
    -> FROM products_raw p
    -> LEFT JOIN brand_summary b
    ->     ON p.brand = b.brand
    -> LIMIT 20;
+------------------+---------------------------------------------+-------+---------------+
| product_id       | title                                       | brand | product_count |
+------------------+---------------------------------------------+-------+---------------+
| TKPFCZ9EA7H5FYZH | Solid Men Multicolor Track Pants            | York  |            34 |
| TKPFCZ9EJZV2UVRZ | Solid Men Blue Track Pants                  | York  |            34 |
| TKPFCZ9EHFCY5Z4Y | Solid Men Multicolor Track Pants            | York  |            34 |
| TKPFCZ9ESZZ7YWEF | Solid Men Multicolor Track Pants            | York  |            34 |
| TKPFCZ9EVXKBSUD7 | Solid Men Brown, Grey Track Pants           | York  |            34 |
| TKPFCZ9EFK9DNWDA | Solid Men Multicolor Track Pants            | York  |            34 |
| TKPFDABN3GXYPFHE | Solid Men Dark Blue Track Pants             | York  |            34 |
| TKPFCZ9ESGZYT8NH | Solid Men Beige Track Pants                 | York  |            34 |
| TKPFCZ9DYU33FFXS | Solid Men Black Track Pants                 | York  |            34 |
| TKPFDABN4NQFVKZY | Solid Men Grey Track Pants                  | York  |            34 |
| TKPFCZ9ENWGMX23W | Checkered Men Blue, Black, Grey Track Pants | York  |            34 |
| TKPFZFSHHACG3FHC | Solid Men Multicolor Track Pants            | York  |            34 |
| TKPFZFSHQPDRGZTM | Solid Men Multicolor Track Pants            | York  |            34 |
| TKPFZ4YTRF3ZRTTH | Self Design Men Multicolor Track Pants      | York  |            34 |
| TKPFZ4YTJZWBFYFZ | Self Design Men Multicolor Track Pants      | York  |            34 |
| TKPFZFSH3F9ZA7C6 | Solid Men Multicolor Track Pants            | York  |            34 |
| TKPFZ4YT7ZNYXG27 | Self Design Men Multicolor Track Pants      | York  |            34 |
| TKPFZ4YTGNZJDZDU | Self Design Men Multicolor Track Pants      | York  |            34 |
| TKPFZ4YTX94CY9JX | Self Design Men Multicolor Track Pants      | York  |            34 |
| TKPFCZ9EHCNAPKPU | Solid Men Multicolor Track Pants            | York  |            34 |
+------------------+---------------------------------------------+-------+---------------+
20 rows in set (0.00 sec)

mysql> SELECT
    ->     p.product_id,
    ->     p.title,
    ->     p.brand,
    ->     b.product_count
    -> FROM products_raw p
    -> RIGHT JOIN brand_summary b
    ->     ON p.brand = b.brand
    -> LIMIT 20;
+------------------+------------------------------------------------------------+-------+---------------+
| product_id       | title                                                      | brand | product_count |
+------------------+------------------------------------------------------------+-------+---------------+
| TSHFXR6VVY6WFZMW | Solid, Color Block Men Round Neck Maroon T-Shirt           | A     |           224 |
| TSHFYKZNX5ZCFKHU | Solid Men Round Neck Blue, Red T-Shirt  (Pack of 2)        | A     |           224 |
| TSHFYV9SC6GBJ4YS | Solid Men Round Neck Black T-Shirt                         | A     |           224 |
| TSHFXR6VRHTNKCZE | Solid, Color Block Men Round Neck Maroon T-Shirt           | A     |           224 |
| TSHFXZX3QW82KAGS | Color Block Men Round Neck Dark Blue T-Shirt               | A     |           224 |
| TSHFYJR8YGMFCXKH | Solid Men Round Neck White, Black T-Shirt  (Pack of 2)     | A     |           224 |
| TSHFYKZNSWSJ75QS | Solid Men Round Neck Black, Blue T-Shirt  (Pack of 2)      | A     |           224 |
| TSHFYY7GTESPJSV6 | Solid Men Round Neck White T-Shirt                         | A     |           224 |
| TSHFYKZNH4Z5ETPS | Solid Men Round Neck Dark Blue, Red T-Shirt  (Pack of 2)   | A     |           224 |
| TSHFYY7GXXGG5PXG | Solid Men Round Neck Yellow T-Shirt                        | A     |           224 |
| TSHFYY7G2TNHDF6N | Solid Men Round Neck Maroon T-Shirt                        | A     |           224 |
| TSHFXRQ6WRG8ZSXQ | Solid, Color Block Men Round Neck Black T-Shirt            | A     |           224 |
| TSHFYF5ANSGY2G3N | Solid Men Round Neck Black, Yellow T-Shirt  (Pack of 2)    | A     |           224 |
| TSHFYKZNHMKZRAHT | Solid Men Round Neck Black, Dark Blue T-Shirt  (Pack of 2) | A     |           224 |
| TSHFYF5AYAYDDKCD | Solid Men Round Neck Maroon, White T-Shirt  (Pack of 2)    | A     |           224 |
| TSHFYF5AHQCUGQV6 | Solid Men Round Neck Maroon, Yellow T-Shirt  (Pack of 2)   | A     |           224 |
| TSHFYKZNZHPKUH4T | Solid Men Round Neck Black, Maroon T-Shirt  (Pack of 2)    | A     |           224 |
| TSHFYF5AMK9BQEW2 | Solid Men Round Neck Maroon, Black T-Shirt  (Pack of 2)    | A     |           224 |
| TSHFYF5A3H4GCAYF | Solid Men Round Neck Black, Yellow T-Shirt  (Pack of 2)    | A     |           224 |
| TSHFYV9SZCWWH5GF | Solid Men Round Neck Black T-Shirt                         | A     |           224 |
+------------------+------------------------------------------------------------+-------+---------------+
20 rows in set (0.00 sec)

mysql> SHOW FULL TABLES
    -> WHERE TABLE_TYPE = 'VIEW';
+----------------------------------+------------+
| Tables_in_ecommerce_sql_analysis | Table_type |
+----------------------------------+------------+
| category_analysis                | VIEW       |
+----------------------------------+------------+
1 row in set (0.00 sec)

mysql> SELECT *
    -> FROM category_analysis
    -> ORDER BY product_count DESC;
+--------------------------+---------------+-------------------+------------+-----------------------+
| category                 | product_count | avg_selling_price | avg_rating | out_of_stock_products |
+--------------------------+---------------+-------------------+------------+-----------------------+
| Clothing and Accessories |         28971 |            724.55 |       3.65 |                  1731 |
| Footwear                 |           987 |            501.23 |       3.88 |                    11 |
| Bags, Wallets & Belts    |            41 |            258.51 |       4.13 |                     0 |
| Toys                     |             1 |            189.00 |       3.60 |                     0 |
+--------------------------+---------------+-------------------+------------+-----------------------+
4 rows in set (0.11 sec)