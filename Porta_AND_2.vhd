entity Porta_AND_2 is
	port(input1,input2, input3	: in bit;
	r2 : out bit);
end Porta_AND_2;

architecture Arc_2 of Porta_AND_2 is
begin
	r2 <= (input1 xor input2) and (input3);
end architecture Arc_2;	