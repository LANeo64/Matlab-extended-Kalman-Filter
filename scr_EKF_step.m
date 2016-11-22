%% EKF function step

path_ekf = zeros(3,length(path_enc(1,:)));
a = 0;
b = 0;

for i = 2:length(path);    
    ym = [path_comp(3,i);path_comp(3,i);path_gnss(1,i);path_gnss(2,i)];
    [L,a1] = GetPolar(path_enc(1,i)-path_enc(1,i-1), path_enc(2,i)-path_enc(2,i-1));
    if i == 2
        [~,a2] = GetPolar(path_enc(1,i), path_enc(2,i));
    else
        [~,a2] = GetPolar(path_enc(1,i-1)-path_enc(1,i-2), path_enc(2,i-1)-path_enc(2,i-2));
    end
    u = [L;a1-a2];
    %ym = [start;start;0;b+2*i];
    %u = [2;0];
    [x,P] = prediX(P,V,x,u);
    [y,x,S,K,P] = koreX(H,P,W,x,ym);
    
    path_ekf(1:3,i) = x;
end

