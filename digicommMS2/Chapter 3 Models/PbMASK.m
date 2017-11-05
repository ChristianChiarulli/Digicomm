%Pb M-ary ASK plot PbMASK.m

for v = 0:10
    EbNodB(v+1) = v;
    EbNo(v+1) = 10.^(v/10);
    berA2(v+1) = qfunc(sqrt(EbNo(v+1)/2));
    berA4Gray(v+1) = 0.75*qfunc(sqrt(0.286*EbNo(v+1)));
    berA4nonGray(v+1) = qfunc(sqrt(0.286*EbNo(v+1)));
end
semilogy(EbNodB, [berA2, berA4Gray])
xlabel('Eb/No (dB)')
ylabel('Probability of Bit Error')
legend('BASK', '4-ASK Gray coded', '4-ASK non-Gray coded')
grid