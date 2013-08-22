CRUMBS!
======

navigate in powershell by dropping crumbs


commands
------------
## `crumb [options]`

**alias: `cr`**


**usage:**

`crumb`
>drops a crumb at the current location, allowing you to get back there easily.

`crumb 0`
> set-location to the path associated with crumb number 0.

`crumb -0`
> remove the path associated with id 0 from the list of available crumbs.


## `crumbs`

**alias: `crs`**

**usage:**

`crumbs`
> lists all crumbs

crummy tips
----

1. Add "`. .\crumbs.ps1`" to your $profile
2. Use the alias `cr` for `crumb` and the alias `crs` for `crumbs`
3. Watch some _Dangermouse_.


install
-------

1. Download `crumbs.ps1`
2. Add this to your `$profile`: "`. .\crumbs.ps1`"



a little example
-----

> `PS C:\SomeLongPath\> crumb`

> `PS C:\SomeLongPath\> crumbs`

> `0 -> C:\SomeLongPath`

> `PS C:\SomeLongPath\> cd C:\DifferentPath`

> `PS C:\DifferentPath\> crumb`

> `PS C:\DifferentPath\> crumbs`

> `0 -> C:\SomeLongPath`

> `1 -> C:\DifferentPath`

> `PS C:\DifferentPath\> cd C:\AThirdPath`

> `PS C:\AThirdPath\> crumb 0`

> `PS C:\SomeLongPath\> crumb 1`

>`PS C:\DifferentPath\> crumb -0   #remove crumb 0`

> `PS C:\DifferentPath\> crumbs`

> `0 -> C:\DifferentPath`





