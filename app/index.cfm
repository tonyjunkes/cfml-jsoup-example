<h1>Crash Course In CFML &amp; jsoup</h1>

<h2>Examples</h2>

<cfset list = directoryList("examples", false, "name")>
<ul>
<cfloop index="link" array="#list#">
    <cfoutput><li><a href="examples/#link#">#replace(link.listToArray(".")[1], "_", " ", "all")#</a></li></cfoutput>
</cfloop>
</ul>
