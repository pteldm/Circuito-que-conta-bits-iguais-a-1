entity Circuito_Completo is
	port(A,B,C : in bit;
		saida_1,saida_2 : out bit);
end Circuito_Completo;

architecture Arc_final of Circuito_Completo is
signal sinal_a : bit;
signal sinal_b : bit;
signal sinal_c : bit;
signal sinal_d : bit;
----------------------------------------------
component Porta_And_1 is
port(in1,in2 : in bit;
	r1 : out bit);
end component;

component Porta_And_2 is
port(input1,input2, input3	: in bit;
	r2 : out bit);
end component;

component Porta_And_3 is
port(entrada_1, entrada_2, entrada_3 : in bit;
	r3 : out bit);
end component;

component Porta_And_4 is
port(valor1, valor2, valor3 : in bit;
		output : out bit);
end component;
component Porta_OR is
port(entry_1, entry_2 : in bit;
	saida_def : out bit);
end component;
----------------------------------------------
begin
u1: Porta_And_1 PORT MAP(in1 => A, in2 => B, r1 =>sinal_a);
u2: Porta_And_2 PORT MAP(input1 => A, input2 => B, input3 => C, r2 => sinal_b);
u3: Porta_And_3 PORT MAP(entrada_1 => A, entrada_2 => B, entrada_3 => C, r3 => sinal_c);
u4: Porta_And_4 PORT MAP(valor1 => A, valor2 => B, valor3 => C, output => sinal_d);
u5: Porta_OR PORT MAP(entry_1 => sinal_a, entry_2 => sinal_b, saida_def => saida_1);
u6: Porta_OR PORT MAP(entry_1 => sinal_c, entry_2 => sinal_d, saida_def => saida_2);
end architecture arc_final;