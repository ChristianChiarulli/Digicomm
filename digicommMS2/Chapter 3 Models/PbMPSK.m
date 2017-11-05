%Pb M-ary PSK plot PbMPSK.m

EbNo = (0:10)';
berP2 = berawgn(EbNo,'psk',2,'nondiff');
berP8 = berawgn(EbNo,'psk',8,'nondiff');
berP16 = berawgn(EbNo,'psk',16,'nondiff');
berP32 = berawgn(EbNo,'psk', 32, 'nondiff');
semilogy(EbNo,[berP2 berP8 berP16 berP32])
xlabel('Eb/No (dB)')
ylabel('Probability of Bit Error')
legend('BPSK/QPSK','8-PSK','16-PSK','32-PSK')
grid
