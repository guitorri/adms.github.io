[Contents](Contents.md)

---

# Introduction


**adms** is a code generator that converts electrical compact
device models specified in high-level description language
into ready-to-compile C code for the API of spice simulators.
Based on transformations specified in XML language, ADMS
transforms Verilog-AMS code into other target languages.

Typical run:

	admsXml <vafile> -e <controlfile1>.xml -e <controlfile2>.xml -e ...

## Example:

	admsXml mysource.va -e myxml.xml

 * admsXml reads control file [myxml.xml](introduction/myxml.xml) and veriloga file [mysource.va](introduction/mysource.va). File [mysource.html](introduction/mysource.html) is created.
 * Note: files .adms.implicit.xml and .mysource.va.adms are created in background.

The internal data structure of adms is auto-generated from file [adms.xml ?]() . This file is very important. The rules used to build a control file are based on its contents. More in section Documentations.

## Related Links:

 * http://sourceforge.net/projects/mot-adms
 * http://www.noovela.com

## Limitations

 * Subset of Verilog-AMS supported

---

Recovered from [introduction.html](http://vacomp.noovela.com/introduction.html)

Also available at the [wayback machine](http://web.archive.org/web/20130928004456/http://vacomp.noovela.com/introduction.html)