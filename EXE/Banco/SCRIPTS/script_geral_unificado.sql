
/* mostrar o valor total de venda por periodo */

select sum(valor) from VENDA
where cadastro between '01.01.2020' and '31.12.2020'

/*mostrar o valor de compra por periodo */
select sum(valor) from compra
where cadastro between '01.01.2020' and '31.12.2020'


/* MOSTRA O QUANTO FOI RECEBIDO */
select sum(total_pagar) from CONTAS_RECEBER
where dt_pagamento between '01.01.2020' and '31.12.2020'
and status='RECEBIDO';

/*MOSTRA O QUANTO FOI PAGO POR PERIODO */
select sum(total_pagar) from CONTAS_PAGAR   
where dt_pagamento between '01.01.2020' and '31.12.2020'
and status='PAGO';

/* MOSTRA O QUANTO FALTA RECEBER */
select sum(total_pagar) from CONTAS_RECEBER
where dt_VENCIMENTO between '01.01.2020' and '31.12.2020'
and status='EM ABERTO';

/* MOSTRA O QUANTO FALTA PAGAR */
select sum(total_pagar) from CONTAS_PAGAR
where dt_VENCIMENTO between '01.01.2020' and '31.12.2020'
and status='EM ABERTO';
