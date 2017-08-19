<h2>Get Link Data</h2>

<cfoutput><pre>#xmlFormat('
<cfscript>
    // Create object, pass in file and parse
    Jsoup = createObject("java", "org.jsoup.Jsoup");
    JFile = createObject("java", "java.io.File");

    fileName = expandPath("../resources/example.html");
    document = Jsoup.parse(JFile.init(fileName), "utf-8");

    // Get an array of links
    links = document.select("a[href]");
    for (link in links) {
        writeOutput("
            <div>Link: ##link.attr("href")##</div>
            <div>Text: ##link.text()##</div>
        ");
    }
</cfscript>
')#</pre></cfoutput>

<h3>Results:</h3>

<cfscript>
    // Create object, pass in file and parse
    Jsoup = createObject("java", "org.jsoup.Jsoup");
    JFile = createObject("java", "java.io.File");

    fileName = expandPath("../resources/example.html");
    document = Jsoup.parse(JFile.init(fileName), "utf-8");

    // Get an array of links
    links = document.select("a[href]");
    for (link in links) {
        writeOutput("
            <div>Link: #link.attr("href")#</div>
            <div>Text: #link.text()#</div>
        ");
    }
</cfscript>
