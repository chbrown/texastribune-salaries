## Texas Tribune's Salaries Project Data

The Texas Tribune's [Government Salaries Explorer](https://salaries.texastribune.org/) is cool, but it's kind of ironic to build an entire product around Freedom of Information Act (FOIA) requests and then not make that data easily accessible to your end users. Like, yes, as journalists, you're part of the solution, but as a for-profit entity that holds onto your data almost as tight as the government, you're part of the problem.

So for now, I guess crawling will have to do.


## Instructions

On Mac OS X with Homebrew installed:

    git clone https://github.com/chbrown/texastribune-salaries.git
    cd texastribune-salaries
    make

To refresh:

    make clean && make


## Details

The Makefile performs the following steps:

1. Crawl all the agency pages under <https://salaries.texastribune.org/agencies/>
2. Find all the "Download this data" links, which are all S3 URLs
3. Download all of those


## License

I'm not really sure.
The Texas Tribune site says "© 2014 The Texas Tribune" but that can only apply to their contributions to that site, since you can't claim copyright for public domain data.
This repository describes how to crawl parts of the Texas Tribune site, but does not include those pages in the contents of the repository (see [`.gitignore`](.gitignore)).
What _is_ included is the information that the Texas Tribune "obtained [...] under the [Texas Public Information Act](https://www.texastribune.org/tribpedia/public-information-act/about/)."
There's no talk of copyright or license on that page, so I think it's reasonable to assume that all that information is public domain, due to being ["work of the United States government"](https://en.wikipedia.org/wiki/Copyright_status_of_work_by_the_U.S._government).

If you work for the Texas Tribune and have a comment on that, please create an Issue.
