#
# Leon Bambrick's CRUMBS!
#
# MIT License.
# dot this file (for example add this to your $profile: ". .\crumbs.ps1")

$crumbs = New-Object "System.Collections.Generic.List[string]";

function crumb([string] $to) {
  if ($to -eq "") {
    # drop a crumb
    get-location | % { $crumbs.Add($_); }
  } elseif ($to[0] -eq "-" ) {
    # pick up a crumb
    $crumbs.RemoveAt([int]($to.replace("-","")));
  } else {
    # go to a crumb
    set-location $crumbs[[int]$to];
  }
}
function crumbs() {
  $x = 0;
  $crumbs.GetEnumerator() | % { [string]$x + " -> " + $_; $x = $x +1}
}

set-alias cr crumb
set-alias crs crumbs

#function bake() {
# # bake a crumb into a crouton
#}
