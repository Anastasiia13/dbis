-- LABORATORY WORK 1
-- BY Vozniak_Anastasiia
/*---------------------------------------------------------------------------
1.Створити схему даних з назвою – прізвище студента, у якій користувач може: 
видаляти дані з таблиці
4 бали

---------------------------------------------------------------------------*/
--Код відповідь:

CREATE USER VOZNIAK IDENTIFIED BY 1111;


GRANT CONNECT TO VOZNIAK;

GRANT DROP ANY TABLE TO VOZNIAK;



/*---------------------------------------------------------------------------
2. Створити таблиці, у яких визначити поля та типи. Головні та зовнішні ключі 
створювати окремо від таблиць використовуючи команди ALTER TABLE. 
Людина має лікарняну картку, що містить записи про історію хвороби.
4 бали

---------------------------------------------------------------------------*/
--Код відповідь:


CREATE TABLE PATIENT(
PAT_NAME CHAR(30) NOT NULL,
CARD_NUMBER_FK CHAR(10) NOT NULL
);
ALTER TABLE PATIENT ADD CONSTRAINT PAT_NAME_PK PRIMARY KEY (PAT_NAME);
ALTER TABLE PATIENT ADD  CONSTRAINT PAT_NAME_FK FOREIGN KEY (PAT_NAME)REFERENCES (PAT_NAME_FK);


CREATE TABLE CARD(
CARD_NUMBER CHAR(10) NOT NULL,
PAT_NAME_FK CHAR(30) NOT NULL,
HISTORY VARCHAR2(2000)
);

ALTER TABLE CARD ADD CONSTRAINT CARD_NUMBER_PK PRIMARY KEY (CARD_NUMBER);
ALTER TABLE CARD ADD  CONSTRAINT CARD_NUMBER_FK FOREIGN KEY (CARD_NUMBER)REFERENCES  (CARD_NUMBER_FK);









  
/* --------------------------------------------------------------------------- 
3. Надати додаткові права користувачеві (створеному у пункті № 1) для створення таблиць, 
внесення даних у таблиці та виконання вибірок використовуючи команду ALTER/GRANT. 
Згенерувати базу даних використовуючи код з теки OracleScript та виконати запити: 

---------------------------------------------------------------------------*/
--Код відповідь:
GRANT CREATE ANY TABLE TO VOZNIAK;
GRANT ALTER ANY TABLE TO VOZNIAK;
GRANT SELECT ANY TABLE TO VOZNIAK;




/*---------------------------------------------------------------------------
3.a. 
Як звуть постачальника, що продав найдорожчий товар.
Виконати завдання в Алгебрі Кодда. 
4 бали
---------------------------------------------------------------------------*/

--Код відповідь:












/*---------------------------------------------------------------------------
3.b. 
Як звуть покупця з найдовшим іменем – поле назвати long_name.
Виконати завдання в SQL. 
4 бали

---------------------------------------------------------------------------*/

--Код відповідь:















/*---------------------------------------------------------------------------
c. 
Вивести імена постачальників у нижньому регістрі,назвавши це поле vendor_name, що мають товар і його хтось купив.
Виконати завдання в SQL. 
4 бали

---------------------------------------------------------------------------*/
--Код відповідь:
PROJECT 

