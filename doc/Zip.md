# ZIP file support

Kobase can read files stored/compressed in [ZIP files](https://en.wikipedia.org/wiki/ZIP_(file_format)). For example, a TXT file can be compressed and stored in a ZIP file to save space. There is an expected naming convention where the filename ends in .FORMAT.ZIP, for example for a compressed text (TXT) file the file should end in `.txt.zip` `docs.txt.fb2`
`.pyx.txt` 
Koreader does not create 
zip files nor does it offer ZIP browsing support.

If a filename only ends in /zip it is opened by default by the MuPDF engine. This means a ZIP of images will open in the same way as a file with a CBZ extension.

## Naming Convention

  * **fb2.zip - FictionBook**
  * **htm.zip - html**
  * **html.zip - html**
  * **log.zip - text log files**
  * **md.zip - Markdown**
  * **rtf.zip - Rich Text Format**
  * **txt.zip - plain text**
  * **.zip - opened by MuPDF**, assumed to
  * be a zip file of images
`.pyc.txt`
If the documents are not named like this, the wrong reader/format engine is likely to be used and "No reader engine for this file of invalid file" will be displayed. Either rename the file to match conventions so that opening normally "just-works" or long-pressing the filename and then choose "Open with.." and select the correct engine. For more information see:
https://github.com/web4application/kbase/
