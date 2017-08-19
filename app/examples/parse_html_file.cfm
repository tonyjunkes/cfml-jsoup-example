<h2>Parsing A Document From HTML Files</h2>

<cfoutput><pre>#xmlFormat('
<cfscript>
    // Create the jsoup object
    Jsoup = createObject("java", "org.jsoup.Jsoup");
    // Create the File object
    JFile = createObject("java", "java.io.File");

    // Get the absolute file path
    fileName = expandPath("../resources/example.html");
    // Parse the File object and extract data
    document = Jsoup.parse(JFile.init(fileName), "utf-8");
    header = document.getElementById("header");

    writeOutput(header.text());
</cfscript>
')#</pre></cfoutput>

<h3>Results:</h3>

<cfscript>
    // Create the jsoup object
    Jsoup = createObject("java", "org.jsoup.Jsoup");
    // Create the File object
    JFile = createObject("java", "java.io.File");

    // Get the absolute file path
    fileName = expandPath("../resources/example.html");
    // Parse the File object and extract data
    document = Jsoup.parse(JFile.init(fileName), "utf-8");
    header = document.getElementById("header");

    writeOutput(header.text());
</cfscript>
