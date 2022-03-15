model l8

constant Real p_cr=24.0; //критическая стоимость продукта
constant Real tau1=24.0; //длительность производственного цикла фирмы 1
constant Real p1=7.4; //себестоимость продукта у фирмы 1
constant Real tau2=20.0; //длительность производственного цикла фирмы 2
constant Real p2=11.4; //себестоимость продукта у фирмы 2
constant Real N=54.0; //число потребителей производимого продукта
constant Real q=1.0; //максимальная потребность одного человека в продукте в единицу времени

constant Real a1=p_cr/(tau1*tau1*p1*p1*N*q);
constant Real a2=p_cr/(tau2*tau2*p2*p2*N*q);
constant Real b=p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q);
constant Real c1=(p_cr-p1)/(tau1*p1);
constant Real c2=(p_cr-p2)/(tau2*p2);

Real M1;
Real M2;

initial equation //начальные условия
M1=4.5;
M2=6.5;

equation
//первый случай
/*der(M1)=M1-(b/c1)*M1*M2-(a1/c1)*M1*M1;
der(M2)=(c2/c1)*M2-(b/c1)*M1*M2-(a2/c1)*M2*M2;*/

//второй случай
der(M1)=M1-(b/c1)*M1*M2-(a1/c1)*M1*M1;
der(M2)=(c2/c1)*M2-((b/c1)+0.00022)*M1*M2-(a2/c1)*M2*M2;

end l8;
