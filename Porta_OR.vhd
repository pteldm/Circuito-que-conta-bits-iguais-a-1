entity Porta_OR is
	port(entry_1, entry_2 : in bit;
		saida_def : out bit);
end Porta_OR;

architecture Arc_OR of Porta_OR is
begin
saida_def <= entry_1 or entry_2;
end architecture Arc_OR;