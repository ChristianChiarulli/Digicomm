%Pb Binary M=4 PbBinM4.m

for v = 0:10
    EbNodB(v+1) = v;
    EbNo(v+1) = 10.^(v/10);
    berA2(v+1) = qfunc(sqrt(EbNo(v+1)/2));
    berA4Gray(v+1) = 0.75*qfunc(sqrt(0.286*EbNo(v+1)));
end
berF2 = berawgn(EbNodB,'fsk',2,'coherent');
berP2 = berawgn(EbNo,'psk',2,'nondiff');
berF4 = berawgn(EbNo,'fsk',4,'coherent');
semilogy(EbNodB, [berA2' berF2' berP2 berA4Gray berF4])
xlabel('Eb/No (dB)')
ylabel('Probability of Bit Error')
legend('BASK', 'BFSK', 'BPSK/QPSK', '4-ASK Gray coded', '4FSK')
grid