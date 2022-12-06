select p.name, m.pizza_name, m.price, round(m.price - (m.price * (pd.discount/100)), 0) as discount_price, pz.name
from person_discounts as pd join person as p on pd.person_id = p.id
join menu as m on m.pizzeria_id = pd.pizzeria_id
join pizzeria as pz on m.pizzeria_id = pz.id
order by p.name, m.pizza_name