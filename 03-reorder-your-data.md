# **Reorder Your Data**

How should the bars in the data visualization be sorted? Sorting by increasing or decreasing frequency may be more meaningful to the readers. However, you may have across bar sorting styles which are not in this way in careless data visualization studies. Since, most of the data visualization tools approach the values in the variables alphabetically or sort of the data entry. You can make more readable the data visualization with minor adjustments.
For instance, the movie genres awarded at the BAFTA awards are shown in the below lollipop plot (a special case of barplot). Drama and Romance are clearly prominent. But do you think you can list the others easily enough?

![lollipop1](https://github.com/user-attachments/assets/039411f1-154c-4358-90b9-e1c79479c138)

With the help of the `reorder()` function in R, we can sort the genres of the movies according to their frequencies. If it is applied, we can get the plot below.

![lollipop2](https://github.com/user-attachments/assets/9d25e8a5-d86c-4259-9548-ecddc8b9fe34)

**Conclusion:** No one can dictate how the bars in a barplot should be sorted. However, sorting by increasing or decreasing frequency can provide better insight for readers. Sometimes this sorting may need to follow a specific order (e.g. months of the year, days of the week). In this case, the order of the categories remains unchanged. 
