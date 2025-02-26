# dfec-pi

Any PDFs placed in this repository will be displayed on the TV outside of 2F6.

**How to set up a new pi**

1. Install github on pi
2. Clone dfec-pi repository
3. Run the pi_disp_setup.sh
4. Follow the instructions below

**How to upload an image**

1. Modify the display_image.sh locally (on the pi, not in the github) for the pi you're using (i.e. - pi-1, pi-2, pi-3)
2. Convert image/slideshow/document/etc. to PDF
3. Upload or push document to the pi's respective repository

The Pi updates once a day at about 0830, so any changes made to this repository will only take effect the next day.

**How this script works**

pi_disp_setup.sh installs the necessary tools to make this work. display_image.sh uses pull_pdf.sh and clones the dfec-pi repository. The line "for pdf in ~/dfec-pi/pi-1/*.pdf; do" in display_image.sh looks into the cloned repository for pi-1 (will need to be edited to pi-2, pi-3, etc. for other Pi's) and pulls pdfs in those files to display on the TVs.
