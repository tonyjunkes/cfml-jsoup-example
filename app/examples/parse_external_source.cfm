<h2>Parsing An External Source</h2>

<cfoutput><pre>#xmlFormat('
<cfscript>
    // Create the jsoup object
    Jsoup = createObject("java", "org.jsoup.Jsoup");

    // Connect
    siteAddress = "https://jsoup.org/";
    document = Jsoup.connect(siteAddress).get();

    // Do things to act on the Document...
    
    // Dump the object
    writeDump(document);
</cfscript>
')#</pre></cfoutput>

<h3>Results:</h3>

<cfscript>
    // Create the jsoup object
    Jsoup = createObject("java", "org.jsoup.Jsoup");

    // Connect
    siteAddress = "https://jsoup.org/";
    document = Jsoup.connect(siteAddress).get();

    // Do things to act on the Document...
    
    // Dump the object
    writeDump(document);
</cfscript>
