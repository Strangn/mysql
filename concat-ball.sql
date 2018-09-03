select 'Balances',
	concat('$', format(sum(Balance), 2)) as 'Balance Total',
	concat('$', format(sum(Fee), 2)) as 'Fee Total'
    from accounts