% Parameters
num_packets = 1000;  % Total number of packets
arrival_rate = 5;    % Average arrival rate (packets per second)
service_rate = 8;    % Server processing rate (packets per second)
time = 0;            % Initial time

% Arrays to store results
arrival_times = zeros(1, num_packets); 
service_times = zeros(1, num_packets);
queue_length = zeros(1, num_packets);

% Generate packet arrival times
for i = 2:num_packets
    inter_arrival_time = exp(1/arrival_rate); % Exponential distribution
    arrival_times(i) = arrival_times(i-1) + inter_arrival_time;
end

% Simulate queue and service times
for i = 1:num_packets
    if i == 1
        service_times(i) = arrival_times(i) + (1/service_rate);
    else
        service_times(i) = max(service_times(i-1), arrival_times(i)) + (1/service_rate);
    end
    queue_length(i) = sum(service_times(1:i) > arrival_times(1:i)); % Queue length
end

% Plotting results
figure;
subplot(2, 1, 1);
plot(arrival_times, 1:num_packets, 'b', 'LineWidth', 2);
hold on;
plot(service_times, 1:num_packets, 'r', 'LineWidth', 2);
xlabel('Time (seconds)');
ylabel('Packet Number');
legend('Arrival Times', 'Service Times');
title('Packet Arrival and Service Times');

subplot(2, 1, 2);
plot(arrival_times, queue_length, 'k', 'LineWidth', 2);
xlabel('Time (seconds)');
ylabel('Queue Length');
title('Queue Length Over Time');
