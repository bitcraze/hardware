#!/usr/bin/env bash
set -e

# Generate all datasheets from markdown to PDF
#
# This script will use Jekyll to generate Markdown -> HTML and wkhtmltopdf to
# generate HTML -> PDF
#
# The generated PDF will be named after which directory it is stored in

# Figure out the path for the directory
scriptDir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
rootDir=$scriptDir/..

# Write base path to local Jekyll config
echo "url: ${rootDir}" > ${rootDir}/_local_config.yml

# Execute Jekyll
cmd="docker run --rm -it --volume=${rootDir}:/module bitcraze/web-builder jekyll build --config _config.yml,_local_config.yml --trace"
echo "$cmd"
if $cmd; then
  # Create docs directory if it doesn't exist
  mkdir -p ${rootDir}/docs

  # Find all HTML files and generate PDFs from them
  find _html -type f -name "*.html" | while read fname
  do
    # Take the path "_html/products/myproduct/datasheet/index.html" and extract "my-product"
    tmp=${fname%/datasheet/index.html}
    tmp=${tmp#_html/products/}
    # Replace - with _ ("my-product" -> "my_product")
    product=${tmp//-/_}
    if [ -z "$1" ] || [ $1 == $tmp ]
    then
      echo $product
      echo $1
      cmd="wkhtmltopdf --margin-top 10 --margin-bottom 10 --header-spacing 5 --footer-html ${rootDir}/assets/html/datasheet-footer.html --header-html ${rootDir}/assets/html/datasheet-header.html --viewport-size 1280x1024 ${rootDir}/${fname} ${rootDir}/docs/${product}-datasheet.pdf"
      echo ${cmd}
      `${cmd}`
    fi
    # Generate the PDF
  done
  true
else
  echo "Error when running Jekyll"
fi