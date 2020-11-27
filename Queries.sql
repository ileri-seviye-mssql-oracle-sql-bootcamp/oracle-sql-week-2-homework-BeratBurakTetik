-- Kotasý limitsiz olan ürünler hangileridir? ----Telco þemasý için

    SELECT PRODUCT_NAME
    FROM TELCO.PRODUCT
    WHERE QUOTA='LIMITLESS' 
    GROUP BY PRODUCT_NAME
    

-- Statüsü 'Initial' olan müþterileri bulunuz. ----Telco þemasý için

    SELECT *
    FROM telco.customer
    WHERE status='INITIAL'

-- Þehir bilgisi 'ISTANBUL' olan adresleri bulunuz. ----Telco þemasý için

    Select *
    from TELCO.address
    where City='Istanbul'

-- Birim fiyatý 150'den büyük olan order_itemlarý bulunuz. ----Sales þemasý için

    SELECT *
    FROM SALES.order_ýtems
    WHERE UNIT_PRICE>150

-- Ýþe alým tarihi Mayýs 2016 olan çalýþanlarý bulunuz. ----Sales þemasý için

    SELECT *
    FROM SALES.employees
    WHERE HIRE_DATE LIKE '%/05/2016'

-- Adý Charlie ya da Charlsie olan contactlarý bulunuz. ----Sales þemasý için

    SELECT *
    FROM SALES.contacts
    WHERE FIRST_NAME='Charlie' OR FIRST_NAME='Charlsie'

--Yýlýn 4. aylarýnda en çok hangi amaçla kredi çekilmi?tir? ----Banking þemasý için

    SELECT PURPOSE
    FROM BANKING.loans
    WHERE MONTH=4
    GROUP BY PURPOSE
    ORDER BY SUM(LOAN_ID)

-- Adet sayýsý 10dan büyük 50den küçük envanterleri bulunuz. ----Sales þemasý için

    SELECT *
    FROM SALES.ýnventorýes
    WHERE QUANTITY>10 AND QUANTITY<50

-- Birincil iletiþim bilgisi olmayan telefon numaralarýný bulunuz. ----Telco þemasý için

    SELECT *
    FROM TELCO.contact
    WHERE IS_PRIMARY!=1 AND CNT_TYPE='PHONE'

-- Bir sipariþte toplam 100.0000'den fazla ücret ödeyen emirler nedir? ----Sales þemasý için

    SELECT orders.*
    FROM SALES.orders,SALES.order_ýtems
    WHERE orders.ORDER_ID= order_ýtems.ORDER_ID AND (order_ýtems.QUANTITY)*(order_ýtems.UNIT_PRICE)>100000

-- Bankanýn 50 ve ya 51 yaþýnda kadýn müþterilerinden ayný isme sahip olan müþterisi/müþterileri var mý? Varsa isimleri neler?----Banking þemasý için

-- Hesap ödeme þekli nakit olmayan hesaplar hangileridir? ----Telco þemasý için

    SELECT * 
    FROM TELCO.account
    WHERE PAYMENT_TYPE!='CASH'

-- Statüsü deaktif olan müþterilerin baðlantý kesim tarihleri nedir? ----Telco þemasý için

    SELECT DISCONNECTION_DATE
    FROM TELCO.customer
    WHERE STATUS='DEACTIVE'

-- Manager'ý olmayan çalýþanlar hangileridir? ----Sales þemasý için

    SELECT *
    FROM SALES.employees
    WHERE MANAGER_ID IS NULL

-- State bilgisi boþ olan lokasyonlarý bulunuz.----Sales þemasý için

    SELECT *
    FROM SALES.locatýons
    WHERE STATE IS NULL

-- Hesap kapanýþ tarihi dolu olan hesaplarý bulunuz. ----Telco þemasý için

    SELECT *
    FROM TELCO.ACCOUNT
    WHERE ACCOUNT_CLOSING_DATE IS NOT NULL

-- Elektronik fatura mail adresi (E_bill_email) olan hesaplar hangileridir? ----Telco þemasý için

    SELECT *
    FROM TELCO.account
    WHERE E_BILL_EMAIL IS NOT NULL
    
-- Durumu iptal olan ve satýcýlarý olmayan emirler hangileridir? ----Sales þemasý için

    SELECT *
    FROM SALES.ORDERS
    WHERE STATUS='Canceled' AND SALESMAN_ID IS NULL

-- Sözleþme bitiþ tarihi 1 Ocak 2000'den büyük , 1 Ocak 2005'ten küçük olan sözleþmeleri bulunuz. ----Telco þemasý için

    SELECT *
    FROM TELCO.agreement 
    WHERE COMMITMENT_START_DATE>'01/01/2000' AND COMMITMENT_START_DATE<'01/01/2005'

-- Ocak 2016 ile Haziran 2016 arasýnda verilen sipariþler hangileridir? ----Sales þemasý için

    SELECT *
    FROM SALES.orders
    WHERE ORDER_DATE>'31/01/2016' AND ORDER_DATE<'01/06/2016'

-- 2005 yýlýndan önce yapýlan ve hala aktif olan subscriptionlar hangileridir? ----Telco þemasý için

    SELECT *
    FROM TELCO.subscrýptýon
    WHERE STATUS='ACTIVE' AND ACTIVATION_DATE<'01/01/2005'

-- Sözleþme baþlangýç tarihi Ocak 2010'dan büyük olan sözleþmeleri bulunuz. ----Telco þemasý için

    SELECT *
    FROM TELCO.agreement
    WHERE COMMITMENT_START_DATE>'31/01/2010'

-- Ýsmi E ile baþlayan müþterileri bulunuz. ----Telco þemasý için

    SELECT *
    FROM TELCO.customer
    WHERE Name LIKE 'E%'

-- Product tipi 'DSL' ile biten ürünleri bulunuz. ----Telco þemasý için

    SELECT * 
    FROM TELCO.product
    WHERE PRODUCT_TYPE LIKE '%DSL'

-- Unvaný 'S' ile baþlamayan çalýþanlarý bulunuz. ----Sales þemasý için

    SELECT *
    FROM SALES.employees
    WHERE LAST_NAME NOT LIKE 'S%'

-- Herhangi bir çeþit Intel Xeon ürünler hangileridir? ----Sales þemasý için

    SELECT *
    FROM SALES.products
    WHERE PRODUCT_NAME LIKE '%Intel Xeon%'

-- Ýsminde ya da soyisminde 'ü' harfi geçen müþteriler hangileridir? ----Telco þemasý için

    SELECT *
    FROM TELCO.customer
    WHERE Name LIKE '%ü%' OR Surname LIKE '%ü%'
    

-- Ýsmi 'C' ile baþlayan kontaklar hangileridir? Soyadýna göre alfabetik sýra ile sýralayalým. ----Sales þemasý için

    SELECT *
    FROM SALES.contacts
    WHERE FIRST_NAME LIKE 'C%'
    ORDER BY LAST_NAME

-- Ürün adý 'Asus' ile baþlayan ve liste fiyatý standart ücretinden küçük olan ürünleri bulunuz. ----Sales þemasý için

    SELECT *
    FROM SALES.products
    WHERE PRODUCT_NAME LIKE 'Asus%' AND LIST_PRICE<STANDARD_COST

-- Ülke kodu UK ve AU olan adresleri bulunuz.----Telco þemasý için

    SELECT *
    FROM TELCO.address
    WHERE COUNTRY_CD='UK' OR COUNTRY_CD='AU'

-- 1,2,4,5 id'li kategorilerin bilgilerini bulunuz. ----Sales þemasý için

    SELECT *
    FROM SALES.product_categorýes
    WHERE CATEGORY_ID BETWEEN 1 AND 5

-- Taahhüt süresi 240 ve 120 ay olan bütün sözleþmeleri bulmak istiyoruz.----Telco þemasý için

    SELECT *
    FROM TELCO.agreement
    WHERE COMMITMENT_DURATION='120 MONTHS' OR COMMITMENT_DURATION='240 MONTHS'

-- Sipariþ durumu 'Shipped'den farklý olan müþterilerin bilgilerini bulunuz. ----Sales þemasý için

    SELECT customers.*
    FROM SALES.customers,SALES.orders
    WHERE Customers.CUSTOMER_ID=orders.CUSTOMER_ID AND orders.STATUS!='Shipped' 

-- Adet sayýsý 100e eþit olan envanterlerin product bilgisini bulunuz. ----Sales þemasý için

    SELECT products.*
    FROM SALES.ýnventorýes,SALES.products
    WHERE ýnventorýes.PRODUCT_ID=products.PRODUCT_ID AND ýnventorýes.QUANTITY=100

-- Sözleþme alt tipi MAIN olan kaç tane sözleþme vardýr?----Telco þemasý için 

    SELECT COUNT(ID)
    FROM TELCO.agreement
    WHERE SUBTYPE='MAIN'

-- Deaktif müþterilerin sayýsýný bulunuz.----Telco þemasý için

    SELECT COUNT(ID)
    FROM TELCO.customer
    WHERE STATUS='DEACTIVE'

-- Beijing (8 numaralý warehouse)'da kaç farklý envanter vardýr? ----Sales þemasý için

    SELECT COUNT(ýnventorýes.PRODUCT_ID)
    FROM SALES.warehouses,SALES.ýnventorýes
    WHERE ýnventorýes.WAREHOUSE_ID=warehouses.WAREHOUSE_ID AND warehouses.WAREHOUSE_ID=8

-- Ýletiþim tipi olarak email ve statusu kullanýmda olan kaç müþteri var?----Telco þemasý için

    SELECT COUNT(ID)
    FROM TELCO.contact
    WHERE CNT_TYPE='EMAIL' AND STATUS='USED'

-- Liste fiyati 1000 ile 3000 arasinda olan kaç product var?----Sales þemasý için

    SELECT COUNT(PRODUCT_ID)
    FROM SALES.products
    WHERE LIST_PRICE BETWEEN 1000 AND 3000

--Hangi yýllarda kaç hesap açýlmýþtýr?----Banking þemasý için

    SELECT YEAR,SUM(ACCOUNT_ID)
    FROM BANKING.accounts
    GROUP BY YEAR

-- Ýþlemlerin tiplerine göre toplam sayýlarýnýn büyükten küçüðe sýralamasý nedir?----Banking þemasý için

    SELECT TYPE,COUNT(ID)
    FROM BANKING.transactions
    GROUP BY TYPE
    ORDER BY COUNT(ID)

-- Ýþlemlerin tiplerine göre toplam tutarlarýnýn büyükten küçüðe sýralamasý nedir?----Banking þemasý için

    SELECT TYPE,SUM(AMOUNT)
    FROM BANKING.transactýons
    GROUP BY TYPE
    ORDER BY SUM(AMOUNT)
    