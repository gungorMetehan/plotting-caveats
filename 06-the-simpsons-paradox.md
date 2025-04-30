**The Simpson’s Paradox**
> “Trends can exist in subgroups but reverse for the whole”

Simpson’s paradox is a common phenomenon in data analysis and visualization. If not taken into account, it may lead to spurious conclusions or misleading predictions. The paradox happens when an association or relationship between two variables in one direction (e.g., negative) reverses (e.g., becomes positive) when a third variable (e.g., group) is considered.

Let’s examine the scatter plot below. You can see the overall trend of bill length vs bill depth for the entire population (penguins). The relationship between two variables is shown by a line (it is correlation/regression).

**Additional Info:** The `penguins` dataset is a dataset within the `palmerpenguins` package in R. The data was collected by scientists and contains information about the characteristics of 3 different penguins living in the Palmer Archipelago in Antarctica. These 3 penguin species are: Adelie, Chinstrap and Gentoo.

![penguin_plot1](https://github.com/user-attachments/assets/c6f979bd-b2e3-4d70-a802-9826c771fec8)

From the scatter plot above you might conclude that the longer the bill, the less deep it is. However, if you had studied penguin species at the group level, you would have realized that you needed to rethink the inference you just made. 
Check the second scatter plot out!

![penguin_plot2](https://github.com/user-attachments/assets/14f515cf-4241-45af-b7c7-4997a3c7c0ad)

**Further:** Simpson's paradox is frequently mentioned in data analysis and data visualization (see. [COVID-19]( https://pmc.ncbi.nlm.nih.gov/articles/PMC8791436/), [UC Berkeley gender bias](https://www.r-bloggers.com/2020/11/simpsons-paradox-and-misleading-statistical-inference/), [Marketing]( https://dartef.com/blog/statistics-marketing-1/)). So it's good to be aware.

**Conclusion:** Simpson’s paradox is an example of how, depending on context, one might reach opposite conclusions when looking at the data more closely. We have to be very careful when we make a statistical inference and we need to take into consideration all the parameters which may be related to the results.


