# Statistics_Project_UA_Wi-Fi_Network_Speed

This repository describes the report I made for a team project at a statistics coursework, University of Arizona (UA).

## Objective:
The main objective of this project is to determine whether location, time, day and PC (personal computers) have any effect on UA Wi-Fi network speed. Specifically, we tried to answer the interesting questions like:
❖	Does location affect the UA Wi-Fi speed?
❖	Is the speed higher in mornings or evenings?
❖	Do the difference of days (weekdays and weekends) affect the network speed?

## UA Wi-Fi Architecture & Background: 
The UA Wi-Fi Network is a vast and comprehensive system with many components spread across the campus. The core component of the network is comprised of 3 Cisco routers. These 3 core routers provide access to the World Wide Web for The University of Arizona. The core routers are “backed-up” by several distribution routers. In other words, when a core router fails, the distribution routers will provide the services without any network connection error. The next level down in the network infrastructure is switches. Switches serve to connect physical computers/devices to the routers and provide access to the network (a wired connection). Finally, access points connect to switches and allow for devices to connect to the network wirelessly. Our campus is said to have roughly 9400 access points on campus. 
Coming to the device wireless network standards, IEEE 802.11 Wi-Fi standards generally refer to the standard of the network module used in the device. There are a wide range of standards ranging from 802.11A/B/G/N/AC, and UA Wi-Fi can adapt to all of these specifications

<img src="UA_Wifi_Network_Architecture_image.png" width=80%>

## Data collection & Methodology:
To start the experiment, we wanted to know the overview and general functioning of UA Wi-Fi. We scheduled a meeting with the UITS team to gain an understanding of the overview of UA Wi-Fi network as well as effective methodology and experiment design. This meeting was very helpful towards our experiment and data collection strategy. Based on their suggestions, we were adopted a network speed checker tool called iperf (https://iperf.fr/iperf-download.php) with which we were able to measure the absolute speed of the network. By using this software, we were able to successfully set up a virtual server and client system so that we can measure the network speed by-passing the internet having uncontrollable uncertainties such as network traffic, change of path and uncertain server locations.
In Figure 1, the actual communication path in our methodology was shown. The circled components acts either as a server or client, and they directly communication with each other.
Here is the detail of the methodology. We installed the iperf to each laptop. We fixed the location of the server at Science and Engineering Library which was connected with the network through an Ethernet port (not Wi-Fi) and measured the time at the three other locations. To eliminate as many nuisance factors as possible, the place of each location, position, direction and battery charge remaining were fixed at any combinations of treatment factors.
Hence, we succeeded to eliminate many nuisance factors by elaborating the design of experiment; first, by using iperf, we eliminated nuisance factors such as network path, unknown server locations, and other network traffic, etc, and second, by fixing the way of measurement, we also eliminated other nuisance factors like distance to the closest access point and existence of obstacles. 
Based on our objective, as treatment factors, we chose three places, two time slots, and two days, and two different computers as shown below, and measured the network speeds at all combinations of them. The detail is described in the next section “Experimental Design”.

## Design of Experiment:
In this section, we briefly explain the detail of the experimental design such as treatment factors, replications, method of statistical analysis.
We decided to do two experiments: a full factorial design, and a partial factorial design. The first design examined the interactions between all of the treatment factors below. In total, we had 24 combinations of the treatment factors.
1st Treatment- Location, 3 levels: Forbes Basement (1), Main Library (2), Shantz 440(3)
2nd Treatment- Day, 2 levels: Friday (1) & Sunday (2)
3rd Treatment- Time, 2 levels: 9 am (1) & 4 pm (2)
4th Treatment- Who’s PC?. 2 levels: Goutham’s (1) & Cameron’s (2)

One of the factors Day is usually considered to be a block factor in general, but we were interested in the interaction with Day, and its affect was also in the scope of our objective. Thus, we treated Day as a treatment factor. We collected 40 replicates for each measurement at a specific location, day and time. Hence we have 960 observations for the total experiment.
In the second experiment, we focused on the difference caused by the distance from access points and obstacles, and so, we also measured, only on Sunday, the speed at the connecting corridor at Shantz 4th floor, and compared the speed with that of Shantz 440. Same as the first experiment, we collected 40 replicates at each replication.
Lastly, the unit of response variable is Mega bits/second (Mbit/sec).

## Experiment 1 Results and discussions:

The result and discussion of Experiment 1 is depicted in detail in the submitted report:


## Experiment 2 Results and discussions:

The result and discussion of Experiment 1 is depicted in detail in the submitted report:


## Conclusion:
In concluding our experimental statistical analysis of UA Wi-Fi network speed, it can be said that all interactions of treatment factors and 3 of 4 actual treatment factors (Location, Day, and types of computers) were statistically significant. The only insignificant treatment factor was Time. Among the 3 levels for ‘Location’, the Main Library provided the overall slowest network speed, while Forbes basement provided readings slightly greater than that of Shantz 440. Overall, ‘Time’ did not have much influence on network speed; “Day” was found to be statistically significant but did not seem to be so influential as the Location, types of computers and the other interactions.
As causes of the difference between the PCs used for measurement, many reasons would be come up with. To the best of our knowledge, the operation of the other application software, types of wireless card, and the compatibility between computers and UA Wi-Fi (more specifically, the access points) were suggested
Through this experiment a greater understanding of the UA Wi-Fi network infrastructure was achieved and data was successfully collected and analyzed. Finally, it can be said that the developed statistical model was both normal and adequate with almost 1000 data points collected. 

## SAS code

The SAS code I wrote for this project is available at:








