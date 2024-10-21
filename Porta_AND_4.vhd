entity Porta_AND_4 is
	port(valor1, valor2, valor3 : in bit;
		output : out bit);
end Porta_AND_4;

architecture Arc_4 of Porta_AND_4 is
begin
	output <= valor1 and (valor2 xnor valor3);
end architecture Arc_4;