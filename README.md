## Texas Tribune's Salaries Project Data

The Texas Tribune's [Government Salaries Explorer](https://salaries.texastribune.org/) is cool —
props to them for making all those FOIA requests —
but they don't make it terribly easy to get at the raw data _en masse_.

From [their FAQ](https://salaries.texastribune.org/feedback/):
> Q: Can I receive a copy of the database?
>
> A: [...] There is no bulk download of all the data available at this time.

It's not too hard to crawl it, though... which is where this repo comes in.


## Instructions

On macOS with [Homebrew](https://brew.sh/) installed:

    git clone https://github.com/chbrown/texastribune-salaries.git
    cd texastribune-salaries
    make

To refresh:

    make clean && make


## Details

The [`Makefile`](Makefile) performs the following steps:

1. Crawl all the agency pages under <https://salaries.texastribune.org/agencies/>
2. Find all the "Download this data" links, which are all S3 URLs
3. Download all of those


## License

The Texas Tribune site says "© 2017 The Texas Tribune" but that can only apply to their contributions to that site,
since you can't claim copyright for public domain data.
This repository describes how to crawl parts of the Texas Tribune site, but does not include those pages in the contents of the repository (see [`.gitignore`](.gitignore)).
What _is_ included is the information that the Texas Tribune "obtained [...] under the [Texas Public Information Act](https://www.texastribune.org/tribpedia/public-information-act/about/)," so I think it's reasonable to assume that all that information is public domain, due to being ["work of the United States government."](https://en.wikipedia.org/wiki/Copyright_status_of_work_by_the_U.S._government)

**Update:** per [Issue #1](https://github.com/chbrown/texastribune-salaries/issues/1), the data in this repository is "fine to include" :)
Thanks @mandicai for the confirmation!
