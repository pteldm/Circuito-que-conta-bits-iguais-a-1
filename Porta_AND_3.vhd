entity Porta_AND_3 is
	port(entrada_1, entrada_2, entrada_3 : in bit;
	r3 : out bit);
end Porta_AND_3;

architecture Arc_3 of Porta_AND_3 is
begin
	r3 <= (not entrada_1) and (entrada_2 xor entrada_3);
end architecture Arc_3; 