About gnuradio
==============

Home: http://gnuradio.org/

Package license: GPL-3.0

Feedstock license: BSD 3-Clause

Summary: The free and open software radio ecosystem

GNU Radio is a free software development toolkit that provides the signal
processing runtime and processing blocks to implement software radios using
readily-available, low-cost external RF hardware and commodity processors.
It is widely used in hobbyist, academic and commercial environments to
support wireless communications research as well as to implement real-world
radio systems.

GNU Radio applications are primarily written using the Python programming
language, while the supplied, performance-critical signal processing path
is implemented in C++ using processor floating point extensions where
available. Thus, the developer is able to implement real-time, high-
throughput radio systems in a simple-to-use, rapid-application-development
environment.


Current build status
====================


<table>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/rvolz/feedstock-builds/_build/latest?definitionId=4&branchName=master">
            <img src="https://dev.azure.com/rvolz/feedstock-builds/_apis/build/status/gnuradio-feedstock?branchName=master">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux_python2.7</td>
              <td>
                <a href="https://dev.azure.com/rvolz/feedstock-builds/_build/latest?definitionId=4&branchName=master">
                  <img src="https://dev.azure.com/rvolz/feedstock-builds/_apis/build/status/gnuradio-feedstock?branchName=master&jobName=linux&configuration=linux_python2.7" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_python3.6</td>
              <td>
                <a href="https://dev.azure.com/rvolz/feedstock-builds/_build/latest?definitionId=4&branchName=master">
                  <img src="https://dev.azure.com/rvolz/feedstock-builds/_apis/build/status/gnuradio-feedstock?branchName=master&jobName=linux&configuration=linux_python3.6" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_python3.7</td>
              <td>
                <a href="https://dev.azure.com/rvolz/feedstock-builds/_build/latest?definitionId=4&branchName=master">
                  <img src="https://dev.azure.com/rvolz/feedstock-builds/_apis/build/status/gnuradio-feedstock?branchName=master&jobName=linux&configuration=linux_python3.7" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_python2.7</td>
              <td>
                <a href="https://dev.azure.com/rvolz/feedstock-builds/_build/latest?definitionId=4&branchName=master">
                  <img src="https://dev.azure.com/rvolz/feedstock-builds/_apis/build/status/gnuradio-feedstock?branchName=master&jobName=osx&configuration=osx_python2.7" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_python3.6</td>
              <td>
                <a href="https://dev.azure.com/rvolz/feedstock-builds/_build/latest?definitionId=4&branchName=master">
                  <img src="https://dev.azure.com/rvolz/feedstock-builds/_apis/build/status/gnuradio-feedstock?branchName=master&jobName=osx&configuration=osx_python3.6" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_python3.7</td>
              <td>
                <a href="https://dev.azure.com/rvolz/feedstock-builds/_build/latest?definitionId=4&branchName=master">
                  <img src="https://dev.azure.com/rvolz/feedstock-builds/_apis/build/status/gnuradio-feedstock?branchName=master&jobName=osx&configuration=osx_python3.7" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_python3.6</td>
              <td>
                <a href="https://dev.azure.com/rvolz/feedstock-builds/_build/latest?definitionId=4&branchName=master">
                  <img src="https://dev.azure.com/rvolz/feedstock-builds/_apis/build/status/gnuradio-feedstock?branchName=master&jobName=win&configuration=win_python3.6" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_python3.7</td>
              <td>
                <a href="https://dev.azure.com/rvolz/feedstock-builds/_build/latest?definitionId=4&branchName=master">
                  <img src="https://dev.azure.com/rvolz/feedstock-builds/_apis/build/status/gnuradio-feedstock?branchName=master&jobName=win&configuration=win_python3.7" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
![ppc64le disabled](https://img.shields.io/badge/ppc64le-disabled-lightgrey.svg)
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-gnuradio-green.svg)](https://anaconda.org/ryanvolz/gnuradio) | [![Conda Downloads](https://img.shields.io/conda/dn/ryanvolz/gnuradio.svg)](https://anaconda.org/ryanvolz/gnuradio) | [![Conda Version](https://img.shields.io/conda/vn/ryanvolz/gnuradio.svg)](https://anaconda.org/ryanvolz/gnuradio) | [![Conda Platforms](https://img.shields.io/conda/pn/ryanvolz/gnuradio.svg)](https://anaconda.org/ryanvolz/gnuradio) |

Installing gnuradio
===================

Installing `gnuradio` from the `ryanvolz` channel can be achieved by adding `ryanvolz` to your channels with:

```
conda config --add channels ryanvolz
```

Once the `ryanvolz` channel has been enabled, `gnuradio` can be installed with:

```
conda install gnuradio
```

It is possible to list all of the versions of `gnuradio` available on your platform with:

```
conda search gnuradio --channel ryanvolz
```




Updating gnuradio-feedstock
===========================

If you would like to improve the gnuradio recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`ryanvolz` channel, whereupon the built conda packages will be available for
everybody to install and use from the `ryanvolz` channel.
Note that all branches in the ryanvolz/gnuradio-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://conda.io/docs/user-guide/tasks/build-packages/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://conda.io/docs/user-guide/tasks/build-packages/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@ryanvolz](https://github.com/ryanvolz/)

