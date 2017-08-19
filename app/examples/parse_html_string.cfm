<h2>Parse A Document From An HTML String</h2>

<cfoutput><pre>#xmlFormat('
<cfscript>
    // Create the jsoup object
    Jsoup = createObject("java", "org.jsoup.Jsoup");

    // HTML string
    html = "<html><head><title>CFML & jsoup Example</title></head><body>Content about CFML and jsoup.</body></html>";
    // Parse the string
    document = Jsoup.parse(html);
    // Extract content
    title = document.title();
    body = document.body().text();

    writeOutput("
        <div>Title: ##title##</div>
        <div>Body: ##body##</div>
    ");
</cfscript>
')#</pre></cfoutput>

<h3>Results:</h3>

<cfscript>
    // Create the jsoup object
    Jsoup = createObject("java", "org.jsoup.Jsoup");

    // HTML string
    html = "<html><head><title>CFML & jsoup Example</title></head><body>Content about CFML and jsoup.</body></html>";
    // Parse the string
    document = Jsoup.parse(html);
    // Extract content
    title = document.title();
    body = document.body().text();

    writeOutput("
        <div>Title: #title#</div>
        <div>Body: #body#</div>
    ");
</cfscript>
