# Hardware documentation and design

This repository hold hardware documentation and design.

## Product datasheets

The product datasheets are written in markdown and generated
to using Jekyll and wkhtmltopdf. To generate the datasheets
you need [Docker](https://www.docker.com/) and [wkhtmltopdf](https://wkhtmltopdf.org/)
installed.

The following command will generate all the datasheets and
place the output PDFs in the ```docs``` directory:

```bash
tools/generate.sh
```
