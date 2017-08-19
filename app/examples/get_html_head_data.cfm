<h2>Reading From the &lt;head&gt; Element</h2>

<cfoutput><pre>#xmlFormat('
<cfscript>
    // Create object, pass in file and parse
    Jsoup = createObject("java", "org.jsoup.Jsoup");
    JFile = createObject("java", "java.io.File");

    fileName = expandPath("../resources/example.html");
    document = Jsoup.parse(JFile.init(fileName), "utf-8");
    
    title = document.title();
    head = document.head();

	writeOutput("Title: ##title##");
    writeDump(head);
</cfscript>
')#</pre></cfoutput>

<h3>Results:</h3>

<cfscript>
    // Create object, pass in file and parse
    Jsoup = createObject("java", "org.jsoup.Jsoup");
    JFile = createObject("java", "java.io.File");

    fileName = expandPath("../resources/example.html");
    document = Jsoup.parse(JFile.init(fileName), "utf-8");
    
    title = document.title();
    head = document.head();

	writeOutput("Title: #title#");
    writeDump(head);
</cfscript>
