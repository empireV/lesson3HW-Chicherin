# - достанет всех клиентов.
select * from client.client;
# - достанет всех клиентов мужского пола.
select * from client.client where sex = 'male';
# - достанет всех клиентов женского пола.
select * from client.client where sex = 'female';
# - достанет всех клиентов старше 18.
select * from client.client where age > 18;
# - достанет всех клиентов старше 18 и младеше 60.
select * from client.client where age between 18 and 60;
# - достанет всех клиентов старше 18 и младеше 60 мужского пола.
select * from client.client where age between 18 and 60 and sex = 'male';
# - достанет всех клиентов  младеше 60 женского пола.
select * from client.client where age < 60 and sex = 'female';
# - достать клиентов с id от 3 до 15.
select * from client.client
order by id limit 13 offset 2;
# - достать клиентов с почтой от gmail
select * from client.client where email like '%@gmail.%';

#     - достает все автомобили
select * from auto;
# - достает все автомобили типа внедорожник
select * from auto where type = 'suv';
# - достает все автомобили типа спорткар
select * from auto where type = 'sportcar';
# - достает все автомобили старше 2010
select * from auto where year > 2010;
# - достает все автомобили старше 2010 и младше 2020
select * from auto where year between 2010 and 2020;
# - достает все автомобили с объемом двигателя менне 2 литров
select * from auto where eng_volume < 2;
# - достает все автомобили с объемом двигателя более 2 литров
select * from auto where eng_volume > 2;
# - достает все автомобили с объемом двигателя более 2 литров и менее 3х литров
select * from auto where eng_volume between 2 and 3;
# - достает все автомобили мощностью больше 100 лс
select * from auto where horse_power > 100;
# - достает все автомобили мощностью больше 100 лс и меньше 200 лс
select * from auto where horse_power between 100 and 200;
# - достает все автомобили мощностью больше 100 лс и объемом двигателя менне 2 литров
select * from auto where horse_power > 100 and eng_volume < 2;
# - достает все автомобили мощностью больше 100 лс и объемом двигателя более 2 литров
select * from auto where horse_power > 100 and eng_volume > 2;
# - достает все автомобили марки bmw мощностью больше 100 лс и объемом двигателя более 2 литров
select * from auto where manufacturer = 'bmw' and horse_power > 100;