[Contents](index.html)

---

This table gives some examples of admst scripts that adms can interpret.


Name | Description | Usage | Recent Changes | WasBug?
--- | --- | --- | --- | ---
[sort.xml](scripts/sort.xml)            | Save file sort.va - illustrate different usages of sort() and reverse() | admsXml -e sort.xml | 	21dec2007: updated for 2.2.8 | -
[getargv.xml](scripts/getargv.xml)         |	prints command line arguments | admsXml -e getargv.xml |	21dec2007: updated for 2.2.8 |	-
[getenv.xml](scripts/getenv.xml) 	        | prints environment variable |	admsXml -e getenv.xml 	| 21dec2007: updated for 2.2.8 	| -
[getinstance.xml](scripts/getinstance.xml)     |	prints instance names |	admsXml -e getinstance.xml 	| 21dec2007: updated for 2.2.8 	| -
[admstvariables.xml](scripts/admstvariables.xml)  |	illustrates the concept of admst variables | admsXml -e admstvariables.xml 	| 21dec2007: updated for 2.2.8 	|yes
[analogfunction.xml](scripts/analogfunction.xml)  |	illustrates how to compute partial derivatives of analog functions | admsXml [analogfunction.va](scripts/) -e analogfunction.xml 	| 21dec2007: updated for 2.2.8 	| yes
[attributes.xml](scripts/attributes.xml) 	    | illustrates how to play with Verilog-AMSattributes | admsXml -e attributes.xml 	| 21dec2007: updated for 2.2.8 	|no
[blockvariables.xml](scripts/blockvariables.xml)  | illustrates how to manipulate block variables (variables defined inside begin...end) | admsXml -e blockvariables.xml 	| 21dec2007: updated for 2.2.8 	|-
[vlatovla.xml](scripts/vlatovla.xml)        |	Verilog-ams to Verilog-ams converter - used for auto-testing | admsXml [analogfunction.va](scripts/analogfunction.va) -e vlatovla.xml 	| 21dec2007: updated for 2.2.8 	|no
[arobavariables.xml](scripts/arobavariables.xml) | --- | --- | --- | ---
[croixvariable.xml](scripts/croixvariable.xml) | --- | --- | --- | ---
[dependency.xml](scripts/dependency.xml) | --- | --- | --- | ---
[gettransform.xml](scripts/gettransform.xml) | --- | --- | --- | ---
[strutils.xml](scripts/strutils.xml) | --- | --- | --- | ---
[vlatommlMODULE.htm.xml](scripts/vlatommlMODULE.htm.xml) | Verilog-ams to MathML converter. It helps debugging adms and simplifying the process of documenting compact devices | admsXml <model>.va -e vlatommlMODULE.htm.xml | --- | ---

---

Retrieved from [scripts.html](http://vacomp.noovela.com/scripts.html)