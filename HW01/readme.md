

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
<image align="center" src = "q1part2pic1.png" width="600">
</p>
Now we should plot the pattern for $N = 10$ and d = $\frac{\lambda}{2}$ we will have:
<p align="center">
<image align="center" src = "q1part2pic2.png" width="600">
</p>
Now I want to compare these three graphs so I plot them in one figure to find out the differences:
<p align="center">
<image align="center" src = "compare.png" width="600">
</p>

It is obviously shown in the Figure above that 10 element array with $\lambda /2$ has the largest $BW_{Null to Null}$ and also it has the largest half power bandwidth. the side lobes are similar in the 4 element array and 10 elements with  $\lambda /2$ but in the other one there are another peaks in the pattern.
