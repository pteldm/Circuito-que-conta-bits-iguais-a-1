entity Porta_AND_1 is
	port(in1,in2 : in bit;
	r1 : out bit);
end Porta_AND_1;

architecture Arc_1 of Porta_AND_1 is
	begin
	r1 <= in1 and in2;
end architecture Arc_1;