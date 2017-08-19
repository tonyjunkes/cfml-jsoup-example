<h2>Getting the HTML Source From An External Document</h2>

<cfoutput><pre>#xmlFormat('
<cfscript>
    // Create the jsoup object and connect
    Jsoup = createObject("java", "org.jsoup.Jsoup");

    siteAddress = "https://jsoup.org/";
    document = Jsoup.connect(siteAddress).get();

    writeDump(document.html());
</cfscript>
')#</pre></cfoutput>

<h3>Results:</h3>

<cfscript>
    // Create the jsoup object and connect
    Jsoup = createObject("java", "org.jsoup.Jsoup");

    siteAddress = "https://jsoup.org/";
    document = Jsoup.connect(siteAddress).get();

    writeDump(document.html());
</cfscript>
