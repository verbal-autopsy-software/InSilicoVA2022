# InSilicoVA2020

To install this package, download this repository and run the following R command:

```r
install.packages("path/to/this/repository/InterVA2020", repos = NULL, type = "source")
```

To use InSilicoVA2020, 'rJava' package is required and it requires Java 6 or above properly installed and linked to R. 

For more information about additional tools see [openva.net](https://openva.net)

### Reference
Tyler H. McCormick, Zehang Richard Li, Clara Calvert, Amelia C. Crampin, Kathleen Kahn, and Samuel J. Clark. <a href="http://arxiv.org/abs/1411.3042">Probabilistic Cause-of-death Assignment using Verbal Autopsies</a>. _Journal of the American Statistical Association_ 111.515 (2016): 1036-1049.

### What's New
- This package is currently in the testing stage.
 

### Additional information when running large models
If you hit the error message compaining about java heap size, e.g. ``java.lang.OutOfMemoryError: Java heap space``

Try start a new R session and run this line of code **before** calling ``library(openVA)`` or ``library(InSilicoVA)``:

> options(java.parameters = c("-XX:+UseConcMarkSweepGC"))
