a = [3,1,1
    ;1,3,1
    ;1,1,3];

trans=zeros(1,1000);

for i = 1:1000

    b=a+0.001*randn(3,3);
    try

        bt=inv(b);
        k=det(bt);
        trans(i)=k;


    catch ME

        disp(['Error, sigle matrix is detected in the step ', num2str(i)]);
        trans(i)=0;

    end

end

figure;
plot(trans);
title('Corrupted signal');
grid on

