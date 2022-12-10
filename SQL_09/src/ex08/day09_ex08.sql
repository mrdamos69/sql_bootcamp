create function fnc_fibonacci(in pstop int default 10)
returns setof int as
$$
begin return query (with recursive fib(number_, value_) as (
(select 0, 1) union all (select fib.number_ + fib.value_, fib.number_ from fib
    where fib.number_ < pstop - fib.value_)
) select number_ from fib);
end
$$ language plpgsql;