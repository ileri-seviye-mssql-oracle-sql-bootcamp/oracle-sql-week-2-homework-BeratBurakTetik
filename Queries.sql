-- Kotas� limitsiz olan �r�nler hangileridir? ----Telco �emas� i�in

    SELECT PRODUCT_NAME
    FROM TELCO.PRODUCT
    WHERE QUOTA='LIMITLESS' 
    GROUP BY PRODUCT_NAME
    

-- Stat�s� 'Initial' olan m��terileri bulunuz. ----Telco �emas� i�in

    SELECT *
    FROM telco.customer
    WHERE status='INITIAL'

-- �ehir bilgisi 'ISTANBUL' olan adresleri bulunuz. ----Telco �emas� i�in

    Select *
    from TELCO.address
    where City='Istanbul'

-- Birim fiyat� 150'den b�y�k olan order_itemlar� bulunuz. ----Sales �emas� i�in

    SELECT *
    FROM SALES.order_�tems
    WHERE UNIT_PRICE>150

-- ��e al�m tarihi May�s 2016 olan �al��anlar� bulunuz. ----Sales �emas� i�in

    SELECT *
    FROM SALES.employees
    WHERE HIRE_DATE LIKE '%/05/2016'

-- Ad� Charlie ya da Charlsie olan contactlar� bulunuz. ----Sales �emas� i�in

    SELECT *
    FROM SALES.contacts
    WHERE FIRST_NAME='Charlie' OR FIRST_NAME='Charlsie'

--Y�l�n 4. aylar�nda en �ok hangi ama�la kredi �ekilmi?tir? ----Banking �emas� i�in

    SELECT PURPOSE
    FROM BANKING.loans
    WHERE MONTH=4
    GROUP BY PURPOSE
    ORDER BY SUM(LOAN_ID)

-- Adet say�s� 10dan b�y�k 50den k���k envanterleri bulunuz. ----Sales �emas� i�in

    SELECT *
    FROM SALES.�nventor�es
    WHERE QUANTITY>10 AND QUANTITY<50

-- Birincil ileti�im bilgisi olmayan telefon numaralar�n� bulunuz. ----Telco �emas� i�in

    SELECT *
    FROM TELCO.contact
    WHERE IS_PRIMARY!=1 AND CNT_TYPE='PHONE'

-- Bir sipari�te toplam 100.0000'den fazla �cret �deyen emirler nedir? ----Sales �emas� i�in

    SELECT orders.*
    FROM SALES.orders,SALES.order_�tems
    WHERE orders.ORDER_ID= order_�tems.ORDER_ID AND (order_�tems.QUANTITY)*(order_�tems.UNIT_PRICE)>100000

-- Bankan�n 50 ve ya 51 ya��nda kad�n m��terilerinden ayn� isme sahip olan m��terisi/m��terileri var m�? Varsa isimleri neler?----Banking �emas� i�in

-- Hesap �deme �ekli nakit olmayan hesaplar hangileridir? ----Telco �emas� i�in

    SELECT * 
    FROM TELCO.account
    WHERE PAYMENT_TYPE!='CASH'

-- Stat�s� deaktif olan m��terilerin ba�lant� kesim tarihleri nedir? ----Telco �emas� i�in

    SELECT DISCONNECTION_DATE
    FROM TELCO.customer
    WHERE STATUS='DEACTIVE'

-- Manager'� olmayan �al��anlar hangileridir? ----Sales �emas� i�in

    SELECT *
    FROM SALES.employees
    WHERE MANAGER_ID IS NULL

-- State bilgisi bo� olan lokasyonlar� bulunuz.----Sales �emas� i�in

    SELECT *
    FROM SALES.locat�ons
    WHERE STATE IS NULL

-- Hesap kapan�� tarihi dolu olan hesaplar� bulunuz. ----Telco �emas� i�in

    SELECT *
    FROM TELCO.ACCOUNT
    WHERE ACCOUNT_CLOSING_DATE IS NOT NULL

-- Elektronik fatura mail adresi (E_bill_email) olan hesaplar hangileridir? ----Telco �emas� i�in

    SELECT *
    FROM TELCO.account
    WHERE E_BILL_EMAIL IS NOT NULL
    
-- Durumu iptal olan ve sat�c�lar� olmayan emirler hangileridir? ----Sales �emas� i�in

    SELECT *
    FROM SALES.ORDERS
    WHERE STATUS='Canceled' AND SALESMAN_ID IS NULL

-- S�zle�me biti� tarihi 1 Ocak 2000'den b�y�k , 1 Ocak 2005'ten k���k olan s�zle�meleri bulunuz. ----Telco �emas� i�in

    SELECT *
    FROM TELCO.agreement 
    WHERE COMMITMENT_START_DATE>'01/01/2000' AND COMMITMENT_START_DATE<'01/01/2005'

-- Ocak 2016 ile Haziran 2016 aras�nda verilen sipari�ler hangileridir? ----Sales �emas� i�in

    SELECT *
    FROM SALES.orders
    WHERE ORDER_DATE>'31/01/2016' AND ORDER_DATE<'01/06/2016'

-- 2005 y�l�ndan �nce yap�lan ve hala aktif olan subscriptionlar hangileridir? ----Telco �emas� i�in

    SELECT *
    FROM TELCO.subscr�pt�on
    WHERE STATUS='ACTIVE' AND ACTIVATION_DATE<'01/01/2005'

-- S�zle�me ba�lang�� tarihi Ocak 2010'dan b�y�k olan s�zle�meleri bulunuz. ----Telco �emas� i�in

    SELECT *
    FROM TELCO.agreement
    WHERE COMMITMENT_START_DATE>'31/01/2010'

-- �smi E ile ba�layan m��terileri bulunuz. ----Telco �emas� i�in

    SELECT *
    FROM TELCO.customer
    WHERE Name LIKE 'E%'

-- Product tipi 'DSL' ile biten �r�nleri bulunuz. ----Telco �emas� i�in

    SELECT * 
    FROM TELCO.product
    WHERE PRODUCT_TYPE LIKE '%DSL'

-- Unvan� 'S' ile ba�lamayan �al��anlar� bulunuz. ----Sales �emas� i�in

    SELECT *
    FROM SALES.employees
    WHERE LAST_NAME NOT LIKE 'S%'

-- Herhangi bir �e�it Intel Xeon �r�nler hangileridir? ----Sales �emas� i�in

    SELECT *
    FROM SALES.products
    WHERE PRODUCT_NAME LIKE '%Intel Xeon%'

-- �sminde ya da soyisminde '�' harfi ge�en m��teriler hangileridir? ----Telco �emas� i�in

    SELECT *
    FROM TELCO.customer
    WHERE Name LIKE '%�%' OR Surname LIKE '%�%'
    

-- �smi 'C' ile ba�layan kontaklar hangileridir? Soyad�na g�re alfabetik s�ra ile s�ralayal�m. ----Sales �emas� i�in

    SELECT *
    FROM SALES.contacts
    WHERE FIRST_NAME LIKE 'C%'
    ORDER BY LAST_NAME

-- �r�n ad� 'Asus' ile ba�layan ve liste fiyat� standart �cretinden k���k olan �r�nleri bulunuz. ----Sales �emas� i�in

    SELECT *
    FROM SALES.products
    WHERE PRODUCT_NAME LIKE 'Asus%' AND LIST_PRICE<STANDARD_COST

-- �lke kodu UK ve AU olan adresleri bulunuz.----Telco �emas� i�in

    SELECT *
    FROM TELCO.address
    WHERE COUNTRY_CD='UK' OR COUNTRY_CD='AU'

-- 1,2,4,5 id'li kategorilerin bilgilerini bulunuz. ----Sales �emas� i�in

    SELECT *
    FROM SALES.product_categor�es
    WHERE CATEGORY_ID BETWEEN 1 AND 5

-- Taahh�t s�resi 240 ve 120 ay olan b�t�n s�zle�meleri bulmak istiyoruz.----Telco �emas� i�in

    SELECT *
    FROM TELCO.agreement
    WHERE COMMITMENT_DURATION='120 MONTHS' OR COMMITMENT_DURATION='240 MONTHS'

-- Sipari� durumu 'Shipped'den farkl� olan m��terilerin bilgilerini bulunuz. ----Sales �emas� i�in

    SELECT customers.*
    FROM SALES.customers,SALES.orders
    WHERE Customers.CUSTOMER_ID=orders.CUSTOMER_ID AND orders.STATUS!='Shipped' 

-- Adet say�s� 100e e�it olan envanterlerin product bilgisini bulunuz. ----Sales �emas� i�in

    SELECT products.*
    FROM SALES.�nventor�es,SALES.products
    WHERE �nventor�es.PRODUCT_ID=products.PRODUCT_ID AND �nventor�es.QUANTITY=100

-- S�zle�me alt tipi MAIN olan ka� tane s�zle�me vard�r?----Telco �emas� i�in 

    SELECT COUNT(ID)
    FROM TELCO.agreement
    WHERE SUBTYPE='MAIN'

-- Deaktif m��terilerin say�s�n� bulunuz.----Telco �emas� i�in

    SELECT COUNT(ID)
    FROM TELCO.customer
    WHERE STATUS='DEACTIVE'

-- Beijing (8 numaral� warehouse)'da ka� farkl� envanter vard�r? ----Sales �emas� i�in

    SELECT COUNT(�nventor�es.PRODUCT_ID)
    FROM SALES.warehouses,SALES.�nventor�es
    WHERE �nventor�es.WAREHOUSE_ID=warehouses.WAREHOUSE_ID AND warehouses.WAREHOUSE_ID=8

-- �leti�im tipi olarak email ve statusu kullan�mda olan ka� m��teri var?----Telco �emas� i�in

    SELECT COUNT(ID)
    FROM TELCO.contact
    WHERE CNT_TYPE='EMAIL' AND STATUS='USED'

-- Liste fiyati 1000 ile 3000 arasinda olan ka� product var?----Sales �emas� i�in

    SELECT COUNT(PRODUCT_ID)
    FROM SALES.products
    WHERE LIST_PRICE BETWEEN 1000 AND 3000

--Hangi y�llarda ka� hesap a��lm��t�r?----Banking �emas� i�in

    SELECT YEAR,SUM(ACCOUNT_ID)
    FROM BANKING.accounts
    GROUP BY YEAR

-- ��lemlerin tiplerine g�re toplam say�lar�n�n b�y�kten k����e s�ralamas� nedir?----Banking �emas� i�in

    SELECT TYPE,COUNT(ID)
    FROM BANKING.transactions
    GROUP BY TYPE
    ORDER BY COUNT(ID)

-- ��lemlerin tiplerine g�re toplam tutarlar�n�n b�y�kten k����e s�ralamas� nedir?----Banking �emas� i�in

    SELECT TYPE,SUM(AMOUNT)
    FROM BANKING.transact�ons
    GROUP BY TYPE
    ORDER BY SUM(AMOUNT)
    