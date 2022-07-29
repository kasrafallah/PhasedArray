## Question 1

### Part a

Based on the forming of the array I write the gain formula of them:
$$A F=\frac{1}{N}\left(e^{0}+e^{j \psi}+e^{j 7 \psi}+e^{j 9 \psi}\right) $$

Where $N = 4$ and $\psi=k_{0} d \cos \theta=\frac{2 \pi}{\lambda} \frac{\lambda}{2} \cos \theta=\pi \cos \theta$ so we will have:
$$A F=\frac{1+e^{j \pi \cos \theta}+e^{j 7 \pi \cos \theta}+e^{j 9\pi \cos \theta}}{4}$$

I wrote a code to plot this in matlab and the result is shown below:
<p align="center">
<image align="center" src = "images/Normalizaed Array Factor.png" width="600">
</p>

As you can see in the Figure above there is no zero in the pattern, but we can assume two points near 100 and 80 as null point so we will have from te shown point in the figure:
$$BW_{Null to Null} = 97.65^{\circ} - 82.35^{\circ} = 15.3 ^{\circ}$$
### Part b

In this part first of all we write the pattern equation for uniform array :
$$|A F|=\frac{\sin \left(\frac{N \psi}{2}\right)}{N \sin \left(\frac{\psi}{2}\right)}$$
Now we should calculate it when $N = 10$ and  $\psi=k_{0} d \cos \theta=\frac{2 \pi}{\lambda} \frac{\lambda}{2}\cos \theta=\pi \cos \theta$  so we have:
$$|A F|=\frac{\sin \left(\frac{10 \pi \cos \theta}{2}\right)}{10 \sin \left(\frac{\pi \cos \theta}{2}\right)}$$

Now we plot it in matlab and the result is shown below:
<p align="center">
<image align="center" src = "images/q1part2pic1.png" width="600">
</p>
Now we should plot the pattern for $N = 10$ and d = $\frac{\lambda}{2}$ we will have:
<p align="center">
<image align="center" src = "images/q1part2pic2.png" width="600">
</p>
Now I want to compare these three graphs so I plot them in one figure to find out the differences:
<p align="center">


<image align="center" src = "images/compare.png" width="600">
</p>

It is obviously shown in the Figure above that 10 element array with $\lambda /2$ has the largest $BW_{Null to Null}$ and also it has the largest half power bandwidth. the side lobes are similar in the 4 element array and 10 elements with  $\lambda /2$ but in the other one there are another peaks in the pattern.

### Part c

First I calculate the equation of new array which will be:

$$A F=\frac{1+e^{j \pi \cos \theta}+e^{j 4 \pi \cos \theta}+e^{j 6\pi \cos \theta}}{4}$$
I plot both pattern for different values of $N$ and the best match was in the $N = 9$ which is shown below:

<p align="center">
<image align="center" src = "images/q1part3.png" width="600">
</p>


### Part d

I load given data in the file and plot the real antenna pattern in the MATLAB that is shown below:
<p align="center">
<image align="center" src = "images/real.png" width="600">
</p>
we can readily calculate the band width from the Figure above and it will be:
$$BW_{null to Null} = 150^{\circ} - 12^{\circ} = 138 ^{\circ}$$

## Question 2

### Part a
I implemented desired code for this section, and then I plot the antenna pattern which is shown below:
<p align="center">
<image align="center" src = "images/q2part1.png" width="600">
</p>

### Part B

I implemented desired code for this section in  part the only thing that is changed is the distance between all of the elements are multiplied in two, and then I plot the antenna pattern which is shown below:
<p align="center">
<image align="center" src = "images/q2part2.png" width="600">
</p>
Now for comparing this two patterns I draw them on one dingle figure:
<p align="center">
<image align="center" src = "images/q2compare.png" width="600">
</p>
As we can see in Fig.7 both kind of band width are larger in the case of R1, and it is compatible with our knowledge because the only effective parameter in bandwidth of uniform arrays is the length of array. In addition, the number of side lobes are increase in the case of R2. Finally, we are faced some fake peak side lobes in the case of R2; the main reason is that we are working at $f = 60 GHz$ so the wave length is $\lambda = \frac{3*10^8}{60 GHz} = 5 mm$, As a result in the case of R2 the distance between arrays is equal to the wavelength, and this will cause fake main lobes in the pattern.


### Part C + D
I make a GIF for his part named Partd.gif which is available in the folder to show how the pattern change randomly. For choosing the best result I select the one which has the smallest side lobe. I run 100 times in the following figure, and choose between them:
<p align="center">
<image align="center" src = "images/ppartd.png" width="600">
</p>
I choose number 96 is the best of this pattern because all of the side lobe are less than 4 db:
<p align="center">
<image align="center" src = "images/best.png" width="600">
</p>
Learned points: when you randomize the place of arrays patterns can be changed a lot but in the most of  cases this randomization cancel the effect of fake main side lobes. Although this randomization give a rise to unknown pattern, It eliminate the situation which we have in the part b, and we never have fake main lobes with noisy locations.

## Question 3
### Part A
First of all, we take a look at our data set, and there is crystal clear that $\phi$ and $\theta$ are changed with step of $2 ^{\circ}$, so the resolution of this measurement is $2 ^{\circ}$. In addition, the range of data cover all of the space so $\theta$ is from $- \pi$ to $+\pi$, and $\phi$ is from 0 to $+2 \pi$



### Part b
In this part, as the question told, first we should reshape the data to make our data in a standard form and generating 181 * 181 matrix for the values of this antenna pattern. After that I plot the result which is shown below:
<p align="center">
<image align="center" src = "images/Q3part2.png" width="600">
</p>
Also we can plot it in other form like this:
<p align="center">
<image align="center" src = "images/Q3part21.png" width="600">
</p>
### Part c
In this part I only follow up the description of CONTOURF command in Matlab, and then set the plot to draw the contour graph:

<p align="center">
<image align="center" src = "images/Q3part3.png" width="600">
</p>

### Part d
In this part I draw the beam pattern, and show the important values to use them in our calculation:
<p align="center">
<image align="center" src = "images/Q3part4.png" width="600">
</p>
Using values in the Fig.15 we will have:
$$Maximum gain = 8.724 bd$$
$$HPBW = 32 + 16 = 48 ^{\circ}$$
$$Null points = (-172^{\circ} , -30,86 db), (-136^{\circ}, -11.2), (146^{\circ} , -14.88)$$
$$Side lobes = (-154^{\circ} , -7.706 db), (166^{\circ} , -5.986)$$

### Part e

In this part I draw the beam pattern, and show the important values to use them in our calculation:

<p align="center">
<image align="center" src = "images/Q3part5.png" width="600">
</p>

Using values in the Fig. 16 we will have:
$$Maximum gain = 8.724 bd$$
$$HPBW = 28 + 28 = 56 ^{\circ}$$
$$Null points = (-154^{\circ} , -15.72 db), (+154^{\circ}, -15.26)$$
$$Side lobes = (-180^{\circ} , -11.13 db), (180^{\circ} , -11.13db)$$
### Part f
There are some known effects of coupling between transmitting and receiving antenna patterns. First, It makes the sidelobe more dominant and increases its bandwidth and functional area. In addition, it can change the bandwidth of the beam. Finally, it makes an inductance between two paths, and this inductance can have some non-linear effects on our performance.


## Question 4
### Part A 
Based on the data set we have frequencies from $50 GHz$ to $70 GHz$ in our set
### Part B
I extract data from the data set, ,and then plot all of them on one plot to compare them:

<p align="center">
<image align="center" src = "images/Q4part1.png" width="600">
</p>
These s-parameters are from transmitter mode and receiving mode of one antenna, and their interference on each other and on themselves. As it is shown in Fig.18 $S_{12} = S_{21}$. These two show the coupling between transmitting mode and receiving mode of antenna. In other words, the effects of wave in transmitting mode in the receiving  mode, and visa versa is the parameter that we talked about. In addition, we obviously see that $S_{11} = S_{22}$, the symmetry of the problem give a rise to this output.


### Part C
For finding the 10 db band width we should calculate the distance between crossing point of $S_{11}$ or $S_{22}$ with -10 db band, and calculate the their difference in frequency:

<p align="center">
<image align="center" src = "images/Q4part2.png" width="600">
</p>
$$10db BW = 66.7 10^9 - 56.4 10^9 =10.3 GHz$$
Fractional bandwidth is the division of 10db BW into the lowest gain frequency in the problem so we will have:
$$fractional bandwidth =  \frac{BW_{10db}}{F_{index min gain}}  =  \frac{10.3 GHz}{61.5GHz} = 16.75$$

### Part D

when we face coupling effect the energy that goes from $S_{1}$ to $S_{1} $ should be minimize because the most part of it is going to the environment, So the resonant frequency of antenna is the minimum gain for  $S_{11}$ so we have:

$$resonant frequency = 61.5 GHz @ S_{12} = S_{21} = -16.17 db$$
For solving this problem we can increase the distance between arrays but distance is also limited because we don't want to face fake peaks. Another way is using sub arrays with random forming which was discussed in the class.

## Question 5

### Part A & B

For the arrays like the initial forming we just need to add $\delta\phi$ to the phase so we will have:
$$|A F|=\frac{\sin \left(\frac{N}{2}(\psi+\Delta \phi)\right)}{N \sin \left(\frac{\psi+\Delta \phi}{2}\right)}$$
Where $\psi=k_{0} d \sin (\theta)$
<p align="center">
<image align="center" src = "images/q5part1.png" width="600">
</p>

 also for $\phi = \pi$ we have:

<p align="center">
<image align="center" src = "images/q5part2.png" width="600">
</p>
Now we want to calculate the important parameters for this two situations so we need some measurements:


<p align="center">
<image align="center" src = "images/q5part3.png" width="600">
</p>
Using values in the Figure above we will have:

$$Maximum gain = 1db$$
$$HPBW =| -36 +24.3| = 11.7 ^{\circ}$$
$$steering angle = -30.6 ^{\circ}$$
$$Side lobes = (-51.84^{\circ} , -0.2247 db)$$
need some measurements:

<p align="center">
<image align="center" src = "images/q5part4.png" width="600">
</p>



Using values in the Fig.21 we will have:
$$Maximum gain = 1db$$
$$HPBW =| 114.5 - 65.7 | = 48.8 ^{\circ}$$
$$steering angle = 90 ^{\circ}$$
$$Side lobes = (45.18^{\circ} , +0.2244 db)$$
### Part C

so for two desired situations we will have :
( Also I make a GIF which shows the steering of beam beautifully Q5.gif)

<p align="center">
<image align="center" src = "images/q5part5.png" width="600">
</p>
### Part D
From the lecture we know that the form of amplitude in frequency steering method is shown below:

$$|A F|=\frac{\sin \left(\frac{N}{2}(\psi+\Delta \phi)\right)}{N \sin \left(\frac{\psi+\Delta \phi}{2}\right)}$$
Where $\psi=k_{0}(f) \frac{\lambda_{0}}{2} \sin (\theta)$ and $∆ϕ = k0(f)λ0$

## Question 6

### Part A
The angle of beam is small and we can readily write:
$$\left(\frac{\theta}{2}\right)=\frac{1 m}{500 k m}$$
so we will have:
$$\theta=B W_{\max } \approx \frac{1}{250km} = 4 * 10^-6$$

### Part B

We have in the lecture that:
$$HP BW \approx \frac{0.9 \lambda}{Nd}$$
And we can assume that $\lambda/2 = d$:
$$HP BW = \frac{1.8 }{N}  = 4 * 10^-6$$
so the minimum number of array is:
$$N = 4500000$$
and the minimum length of array will be :
$$N * \lambda /2 = \frac{4500000 * 3*10 ^8}{15 * 10 ^9 *2)}  = 450 m$$

### Part C
In the previous section, it was found that even if we use uniform arrays, which results in the smallest beam width, the length obtained for the array is not practical ( 450m is more than any satellite). We can use phased array to create small beam width, but it will cost too many processors ( if applied digitally) or many circuits.

### Part D

There was an article about PAMIR and I found below data from that:

<p align="center">
<image align="center" src = "images/q6.png" width="600">
</p>








