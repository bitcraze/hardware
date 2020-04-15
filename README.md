# Hardware documentation and design

This repository hold hardware documentation and design.

## Product datasheets

The product datasheets are written in markdown and generated
to HTML by Jekyll and to PDF by wkhtmltopdf. It uses bootstrap
for layout of the HTML and liquid tags to help with the content
generation.

### Writing

Each datasheets needs to contain the following:

* Front Matter variables
* Ingress (with image)
* Datasheet history

#### Front Matter variables

Each datahseet has a number of attributs set in FrontMatter for datasheet:

| Name | Values | Description |
| ---- | ------ | ----------- |
| layout | datasheet-base | Selects the layout, there is only one |
| title | | Name of the product |
| sku | | The product SKU |
| version | | The version of the datasheet
| status | early-access / active / eol | The product life cycle status |

#### Liquid tags

There's a number of liquid tags to make things easier and keep formatting
consisent, they are listed below.

##### Datasheet intro

Used to create the ingress and image at the start of the datasheet. The
tag takes one argument, the image.

```liquid
{% datasheet_intro products/my-fancy-product/datasheet/my-fancy-image-jpg; %}
This is the ingress for the datahseet right here!
{% enddatasheet_intro %}
```

##### Inserting images

This tag is used to insert images and takes three arguments:

* Name of image
* Size of image: small, medium, large
* Alignment of image: center

```liquid
{% datasheet_img My Fancy image; medium; center; my-fancy-image.png; %}
```

##### Notice

This tag is used to insert a notice and takes one arguments:

* Type: warning (yellow background), success (green background),
danger (red background)

```liquid
{% datasheet_notice warning; %}
You have been warned!
{% enddatasheet_notice %}
```

### Generating

To generate the datasheets you need [Docker](https://www.docker.com/) installed.

The generation is done using the following command:

```text
$ tools/generate.sh [datasheet]

  datasheet - Optional directory name of datasheet for generating
              only one datasheet. If this is not specified all the
              datasheets are generated.
```
