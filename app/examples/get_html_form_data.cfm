<h2>Getting Form Input Data</h2>

<cfoutput><pre>#xmlFormat('
<cfscript>
    // Create object, pass in file and parse
    Jsoup = createObject("java", "org.jsoup.Jsoup");
    JFile = createObject("java", "java.io.File");

    fileName = expandPath("../resources/form.html");
    document = Jsoup.parse(JFile.init(fileName), "utf-8");

    // Get the form and inputs
    contactForm = document.getElementById("contact");  
    inputs = contactForm.getElementsByTag("input");

    // Iterate through the inputs
    for (input in inputs) {
        key = input.attr("name");  
        value = input.attr("value");  
        writeOutput("
            <div>Name: ##key##</div>
            <div>Value: ##value##</div>
        ");  
    }
</cfscript>
')#</pre></cfoutput>

<h3>Results:</h3>

<cfscript>
    // Create object, pass in file and parse
    Jsoup = createObject("java", "org.jsoup.Jsoup");
    JFile = createObject("java", "java.io.File");

    fileName = expandPath("../resources/form.html");
    document = Jsoup.parse(JFile.init(fileName), "utf-8");

    // Get the form and inputs
    contactForm = document.getElementById("contact");  
    inputs = contactForm.getElementsByTag("input");

    // Iterate through the inputs
    for (input in inputs) {
        key = input.attr("name");  
        value = input.attr("value");  
        writeOutput("
            <div>Name: #key#</div>
            <div>Value: #value#</div>
        ");  
    }
</cfscript>
