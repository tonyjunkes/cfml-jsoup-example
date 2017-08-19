<h2>Getting Metadata With Selectors</h2>

<cfoutput><pre>#xmlFormat('
<cfscript>
    // Create object, pass in file and parse
    Jsoup = createObject("java", "org.jsoup.Jsoup");
    JFile = createObject("java", "java.io.File");

    fileName = expandPath("../resources/example.html");
    document = Jsoup.parse(JFile.init(fileName), "utf-8");
    // Get metadata
    description = document.select("meta[name=description]").first().attr("content");
    keywords = document.select("meta[name=keywords]").first().attr("content");

    writeOutput("
        <p>##description##<p>
        <p>##keywords##</p>
    ");
</cfscript>
')#</pre></cfoutput>

<h3>Results:</h3>

<cfscript>
    // Create object, pass in file and parse
    Jsoup = createObject("java", "org.jsoup.Jsoup");
    JFile = createObject("java", "java.io.File");

    fileName = expandPath("../resources/example.html");
    document = Jsoup.parse(JFile.init(fileName), "utf-8");
    // Get metadata
    description = document.select("meta[name=description]").first().attr("content");
    keywords = document.select("meta[name=keywords]").first().attr("content");

    writeOutput("
        <p>Description: #description#<p>
        <p>Keywords: #keywords#</p>
    ");
</cfscript>
