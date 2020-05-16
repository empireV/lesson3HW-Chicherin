# 1. +Вибрати усіх клієнтів, чиє ім'я має менше ніж 6 символів.
select * from client where length(FirstName) < 6;
#
# 2. +Вибрати львівські відділення банку.+
select * from department where DepartmentCity = 'Lviv';
#
# 3. +Вибрати клієнтів з вищою освітою та посортувати по прізвищу.
select * from client where Education = 'high'
order by LastName;
#
# 4. +Виконати сортування у зворотньому порядку над таблицею Заявка і вивести 5 останніх елементів.
select * from application order by idApplication desc limit 5;
#
#
#
# 5. +Вивести усіх клієнтів, чиє прізвище закінчується на OV чи OVA.
select * from client where LastName like '%iv%';
#
# 6. +Вивести клієнтів банку, які обслуговуються київськими відділеннями.
select * from client
join department d on client.Department_idDepartment = d.idDepartment
where DepartmentCity = 'Kyiv';
#
# 7. +Вивести імена клієнтів та їхні номера телефону, погрупувавши їх за іменами.
select FirstName, LastName, Age from client order by FirstName;
# 8. +Вивести дані про клієнтів, які мають кредит більше ніж на 5000 тисяч гривень.
select * from application a
join client on client.idClient = a.Client_idClient
where Sum > 5000 and CreditState = 'Not returned';
#
# 9. +Порахувати кількість клієнтів усіх відділень та лише львівських відділень.
select count(idClient) as count from client;
#
select count(*) as count_Lviv from client
join department d on client.Department_idDepartment = d.idDepartment
where DepartmentCity = 'Lviv';
#
# 10. Знайти кредити, які мають найбільшу суму для кожного клієнта окремо.
select max(Sum), FirstName, LastName from client
    join application a on client.idClient = a.Client_idClient
    group by idClient;
#
# 11. Визначити кількість заявок на крдеит для кожного клієнта.
select count(idClient),FirstName,LastName from application
join client c on application.Client_idClient = c.idClient
group by idClient;
#
# 12. Визначити найбільший та найменший кредити.
select max(Sum), min(Sum) from application;
#
#
# 13. Порахувати кількість кредитів для клієнтів,які мають вищу освіту.
select count(idClient) as highEd_credits from application
join client c on application.Client_idClient = c.idClient
where Education = 'high';
#
# 14. Вивести дані про клієнта, в якого середня сума кредитів найвища.
select avg(Sum) as avg,LastName,FirstName from client
join application a on client.idClient = a.Client_idClient
group by Client_idClient
order by avg desc limit 1;
#
# 15. Вивести відділення, яке видало в кредити найбільше грошей
select count(Department_idDepartment) as count_of_credits, idDepartment from client
join application a on client.idClient = a.Client_idClient
join department d on client.Department_idDepartment = d.idDepartment
group by Department_idDepartment;
#
# 16. Вивести відділення, яке видало найбільший кредит.
select idDepartment, DepartmentCity from department
join client c on department.idDepartment = c.Department_idDepartment
join application a on c.idClient = a.Client_idClient
order by Sum desc limit 1;
#
# 17. Усім клієнтам, які мають вищу освіту, встановити усі їхні кредити у розмірі 6000 грн.
select * from application a
join client c on a.Client_idClient = c.idClient
where Education = 'high';
update application a
    join client c on a.Client_idClient = c.idClient
    set Sum = 6000
where Education = 'high';
#
# 18. Усіх клієнтів київських відділень пересилити до Києва.
select * from client
join department d on client.Department_idDepartment = d.idDepartment
where DepartmentCity = 'Kyiv';
update client
join department d on client.Department_idDepartment = d.idDepartment
set City = 'Kyiv' where DepartmentCity = 'Kyiv';
#
# 19. Видалити усі кредити, які є повернені.
select * from application
where CreditState = 'returned';
delete from application
where CreditState = 'returned';
#
# 20. Видалити кредити клієнтів, в яких друга літера прізвища є голосною.
# select * from application
# where Client_idClient in (
#     select * from (
#                       select client.idClient
#                       from client
#                       where substr(client.LastName, 2, 1) in ('a', 'e', 'i', 'o', 'u', 'y')
#                   ) as ciC
#     )
# ;
delete from application
where Client_idClient in (
    select * from (
                      select client.idClient
                      from client
                      where substr(client.LastName, 2, 1) in ('a', 'e', 'i', 'o', 'u', 'y')
                  ) as ciC
)
;
#
#
# Знайти львівські відділення, які видали кредитів на загальну суму більше ніж 5000
select Sum(Sum), Department_idDepartment from department
join client c on department.idDepartment = c.Department_idDepartment
join application a on c.idClient = a.Client_idClient
where DepartmentCity = 'Lviv'
group by Department_idDepartment;
#
#
#
#
#
# Знайти клієнтів, які повністю погасили кредити на суму більше ніж 5000
select FirstName, LastName, Sum, CreditState from client c
join application a on c.idClient = a.Client_idClient
where CreditState = 'returned' and Sum > 5000;
#
#
#
#
# /* Знайти максимальний неповернений кредит.*/
select * from application
where CreditState = 'not returned'
order by Sum desc limit 1;
#
#
#
# /*Знайти клієнта, сума кредиту якого найменша*/
select FirstName, LastName from client
join application a on client.idClient = a.Client_idClient
order by Sum limit 1;
#
#
#
# /*Знайти кредити, сума яких більша за середнє значення усіх кредитів*/
select * from application
where Sum > (select avg(Sum) from application);
#
#
# /*Знайти клієнтів, які є з того самого міста, що і клієнт, який взяв найбільшу кількість кредитів*/
select * from client
join application a on client.idClient = a.Client_idClient
where idClient = a.Client_idClient and City like (
    select City from client
    join application a2 on client.idClient = a2.Client_idClient
    group by idClient order by count(idClient) desc limit 1
    );
#
# #місто чувака який набрав найбільше кредитів
select City from client
join application a on client.idClient = a.Client_idClient
group by idClient order by count(idClient) desc limit 1