import std.stdio, std.math,std.typecons;
import std.conv, std.format;
import std.array;

const double G=9.8;

alias Tuple!(double,double) XY_t; 

XY_t Disassemble_from_sita_and_v0(double v0,double sita){
	return XY_t(
		cos(sita * (PI / 180))*v0,
		sin(sita * (PI / 180))*v0
	);
}

double Get_time_in_sky(XY_t v){
	return 2*v[1]/G;
}

double Get_length_in_sky(XY_t v,double t){
	return v[0]*t;
}

bool Approximately_equal(double a,double b){
	return abs(a-b)<0.1;
}

string Ballistic_to_eval(double end_x){
	return format("x(x-%s)=0",end_x);
}

unittest
{
	auto v_45_10=Disassemble_from_sita_and_v0(10,45);

	assert(
		Approximately_equal(
			10.203,
			10.204082
		)
	);	
	assert(
		Approximately_equal(
			Get_time_in_sky(v_45_10),
			1.443075063646
		)
	);	
	assert(
		Approximately_equal(
			Get_length_in_sky(
				v_45_10,
				Get_time_in_sky(v_45_10)
			),
			10.204081632653
		)
	);	

	assert(
		Ballistic_to_eval(10)==
		"x(x-10)=0"
	);
	assert(
		Ballistic_to_eval(10.02)==
		"x(x-10.02)=0"
	);
}


void main()
{
	write("v0(m/s) >");
	auto v0=readln.split[0].to!double;
	write("Sita(Degree) >");
	auto sita=readln.split[0].to!double;

	auto v=Disassemble_from_sita_and_v0(v0,sita);
	auto t=Get_time_in_sky(v);
	auto l=Get_length_in_sky(v,t);
	auto eval_str=Ballistic_to_eval(l);

	writeln();

	writefln("Flight time : %ss",t);
	writefln("Length : %sm",l);
	writefln("Expressed as a formula : %s",eval_str);

}
