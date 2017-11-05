%Pb M-ary FSK plot PbMFSK.m

EbNo = (0:10)';
berF2 = berawgn(EbNo,'fsk',2,'coherent');
berF4 = berawgn(EbNo,'fsk',4,'coherent');
berF8 = berawgn(EbNo,'fsk',8,'coherent');
berF16 = berawgn(EbNo,'fsk',16,'coherent');
semilogy(EbNo,[berF2 berF4 berF8 berF16])
xlabel('Eb/No (dB)')
ylabel('BER')
legend('BFSK','4FSK','8FSK', '16FSK')
grid
