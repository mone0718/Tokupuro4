% 特プロ TMS
% 2023/01/13

fs = 2000;

data_filtered = data;
[b50,a50] = butter(3,[49 51]/500,'stop');
[b100,a100] = butter(3,[99 101]/500,'stop');
[b150,a150] = butter(3,[149 151]/500,'stop');
[b200,a200] = butter(3,[199 201]/500,'stop');
[b250,a250] = butter(3,[249 251]/500,'stop');
[b300,a300] = butter(3,[299 301]/500,'stop');
[b350,a350] = butter(3,[349 351]/500,'stop');
[b400,a400] = butter(3,[399 401]/500,'stop');
[b450,a450] = butter(3,[449 451]/500,'stop');
data_filtered = filtfilt(b50,a50,data_filtered);
data_filtered = filtfilt(b100,a100,data_filtered);
data_filtered = filtfilt(b150,a150,data_filtered);
data_filtered = filtfilt(b200,a200,data_filtered);
data_filtered = filtfilt(b250,a250,data_filtered);
data_filtered = filtfilt(b300,a300,data_filtered);
data_filtered = filtfilt(b350,a350,data_filtered);
data_filtered = filtfilt(b400,a400,data_filtered);
data_filtered = filtfilt(b450,a450,data_filtered);

EMG = data_filtered(:,2) * 1000;

time = 0:1/fs:length(EMG)/fs-1/fs;

plot(time,EMG,'LineWidth',1.5);