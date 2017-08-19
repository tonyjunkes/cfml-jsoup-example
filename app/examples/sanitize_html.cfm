<h2>Sanitizing HTML Content With jsoup</h2>

<cfoutput><pre>#xmlFormat('
<cfscript>
    Jsoup = createObject("java", "org.jsoup.Jsoup");
    Whitelist = createObject("java", "org.jsoup.safety.Whitelist");
    Cleaner = createObject("java", "org.jsoup.safety.Cleaner");

    html = "<html><head><title>My title</title></head><body><center>Body content</center></body></html>";
    filter = Whitelist.none();
    valid = Jsoup.isValid(html, filter);

    if (valid) {
        writeOutput("The document is valid!");
    } else {
        invalidData = Jsoup.parse(html);
        writeOutput("The document is not valid!");
        writeDump(invalidData.html());
        cleanDocument = Cleaner.init(filter).clean(invalidData);
        writeOutput("The document has been cleaned.");
        writeDump(cleanDocument.html());
    }
</cfscript>
')#</pre></cfoutput>

<h3>Results:</h3>

<cfscript>
    Jsoup = createObject("java", "org.jsoup.Jsoup");
    Whitelist = createObject("java", "org.jsoup.safety.Whitelist");
    Cleaner = createObject("java", "org.jsoup.safety.Cleaner");

    html = "<html><head><title>My title</title></head><body><center>Body content</center></body></html>";
    filter = Whitelist.none();
    valid = Jsoup.isValid(html, filter);

    if (valid) {
        writeOutput("The document is valid!");
    } else {
        invalidData = Jsoup.parse(html);
        writeOutput("The document is not valid!");
        writeDump(invalidData.html());
        cleanDocument = Cleaner.init(filter).clean(invalidData);
        writeOutput("The document has been cleaned.");
        writeDump(cleanDocument.html());
    }
</cfscript>
