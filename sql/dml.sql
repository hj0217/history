BEGIN
FOR i IN 2..15 LOOP
            INSERT INTO TERM_MST (TERM_NO, TERM_TYPE, TERM_YN, TERM_STARTDATE, TERM_ENDDATE, TERM_RGST_BY, TERM_RGST_DATE)
            VALUES (
                       i,
                       '이용약관',
                       'Y',
                       '2022-01-01',
                       '2023-09-14',
                       '엄복동',
                       SYSDATE
                   );
END LOOP;
COMMIT;
END;

BEGIN
FOR i IN 16..30 LOOP
            INSERT INTO TERM_MST (TERM_NO, TERM_TYPE, TERM_YN, TERM_STARTDATE, TERM_ENDDATE, TERM_RGST_BY, TERM_RGST_DATE)
            VALUES (
                       i,
                       '개인정보취급방침',
                       'N',
                       '2022-01-01',
                       '2023-09-14',
                       '김순자',
                       SYSDATE
                   );
END LOOP;
COMMIT;
END;

insert into TERM_MST (TERM_NO, TERM_TYPE, TERM_YN, TERM_STARTDATE, TERM_ENDDATE, TERM_RGST_BY, TERM_RGST_DATE)
values ( 50,
         '주문동의',
         'Y',
         '2022-01-01',
         '2023-09-14',
         '홍길동',
         SYSDATE);

/* term-dtl 더미데이터*/
insert into TERM_DTL (TERM_NO, TERM_LANG, TERM_CNT)
values (50,
        'ko',
        'This is the order-Agreement. (ver.En)');



/* PRODUCT 더미데이터*/
INSERT INTO PRODUCT (product_name, product_price) VALUES ('블루티 세럼', '21000원');
select * from product;


/* PRODUCTHISTORY 더미데이터*/
INSERT INTO PRODUCT_HISTORY (product_id, history_type) VALUES (#{productId}, #{historyType});
select * from product_history;
