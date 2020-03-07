function ssq_lifo(n,pa,ps);
rand('state',0)
disp('This is a single server queue')
% ps is the service rate
% pa is the arrival rate
 
% we need some data structure and statistical counters
 
% whether the server is busy or not
serverBusy=0;
totalBusy=0;
totalIdle=0;

 
% delay
cDelay=0;
 
% customers served
customersServed=0;
 
% the queue
Queue=[]; % initially empty
 
nextEvent=0; % 0 - arrival 1 - departure
 
% initially there are no departure and arrival scheduled
nextArrival=realmax;
nextDeparture=realmax;
 
% simulation time
sTime=0;
 
 
% we generate the initial arrival only
% service rates will be generated only when they are entering in the service
nextArrival=geometric(pa);
 
 
 
while customersServed<n
    % decide the next event
    if nextArrival<nextDeparture
        nextEvent=0;    
    else
        nextEvent=1;
    end
    
    prevTime=sTime;
    
    if nextEvent==0 % next event arrival
        currentTime=nextArrival;
        disp('Arrival At:')
        nextArrival
        % check if the server is busy or not
        if serverBusy == 0
            % if server free then go directly to service
            % calculate its delay       
            nextDeparture=currentTime+geometric(ps);
            serverBusy=1;
 
        else
            tota
            % put the new job into the queue
            Queue=[Queue currentTime];  
            
        end
        % generate next arrival
        nextArrival=currentTime+geometric(pa);
        
    else
        currentTime=nextDeparture;
        disp('Departure At:')
        nextDeparture
        nextDeparture=realmax;
        % for departure check the queue status
        if length(Queue) == 0
            serverBusy=0;
            totalIdle=currentTime-prevTime;
        else
            % remove from queue and put into service
            nextDeparture=currentTime+geometric(ps);
            
            jobDeparts=Queue(length(Queue));
            Queue=Queue(1:(length(Queue)-1)); % considering LIFO
            
        end
        customersServed=customersServed+1;  
    end
    sTime=currentTime;
    
 
end

utilization=(sTime-totalIdle)/sTime;
disp('Server utilization: ')
utilization
end