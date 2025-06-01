use `hillel-qauto`;

select * from user_profiles where name like '%am%';

select MAX(expenses.totalCost)
from expenses
inner join cars on expenses.carId = cars.id
inner join car_brands on cars.carBrandId = car_brands.id
where car_brands.title = 'Audi';

select COUNT(car_models.id), car_brands.id
from car_models
inner join car_brands on car_models.carBrandId = car_brands.id
where car_brands.title in ('Audi', 'BMW')
group by car_brands.id;

select car_models.title, car_brands.title, COUNT(DISTINCT cars.userId)
from cars
inner join car_models on cars.carModelId = car_models.id
inner join car_brands on cars.carBrandId = car_brands.id
group by car_models.title, car_brands.title;

select distinct user_profiles.name
from user_profiles
inner join users on user_profiles.userId = users.id
inner join cars on cars.userId = users.id;


