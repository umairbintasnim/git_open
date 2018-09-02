
bass = audioread('bass.wav');
guit = audioread('guitar.wav');
drums= audioread('drums.wav');
len_bass=length(bass);
min=len_bass/44100;
min;
bass_seg= bass(44100*10 : 44100*20);

%subplot(2,2,1);

%plot(bass_seg)

% subplot(2,2,2); plot(bass);
% 
% subplot(2,2,3);
%plot(drums);
drum_seg=drums(44100*10:44100*20);
%subplot(2,2,4);
%plot(drum_seg,150000);
%sound(drums,186400);

guit_seg=guit(44100*10:44100*20);

%bass_seg = bass_seg*4;
%sound(bass_seg,44100);
%guit_seg=guit_seg*.5;

%sound(composite_sig,44100);
%plot(drum_seg);
hold on;
ramp=0:1/(44100*7):1;
n=length(ramp);
ramp=transpose(ramp);
drum_seg(1:n)=drum_seg(1:n).*ramp;

composite_sig=drum_seg + guit_seg +bass_seg;
%sound(drum_seg,44100);

%plot(drum_seg,'r');
