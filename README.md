-----------------------------------------
-----------------------------------------

Table of Contents
=================

* [Components](#components)
* [Running](#running)
* [Updates](#updates)
* [Issues](#issues)
* [Copyright & License](#copyright--license)
* [See Also](#see-also)
-----------------------------------------

Components
===========
| Component        | Details			 |
| ---------------- | ------------------- |
| Windows Server Core	   | 10.0.14300.1000   |
| Chocolate | Chocolate Apt Manager v2 |
| * | Service + dependencies


Running
===========
```bash
$ docker run --name some-name -v /some/name.conf:/etc/name/name.conf:ro -d mirabis/name 

```
or the docker-compose equivalent.
```yaml
version: '2'
services:
 image: mirabis/name
  ...."

```

Updates
===========
Image is automatically rebuilt when one of the main components repository changes.


Issues
===========
If you have any problems with or questions about this image, please contact me through a [GitHub issue!](/issues).

Copyright & License
===================
to be determined.


See Also
========
* [Blog](https://mirabis.nl/)
* [Twitter](https://twitter.com/imirabis/) 
