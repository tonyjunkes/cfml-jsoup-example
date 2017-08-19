<h2>Filtering Selected Results With Regex</h2>

<cfoutput><pre>#xmlFormat('
<cfscript>
    // Create Java objects
    Jsoup = createObject("java", "org.jsoup.Jsoup");

    siteAddress = "https://jsoup.org/";
    document = Jsoup.connect(siteAddress).get();
    links = document.select("a[href~=^((?!##|html).)*$]");

    original = [];
    for (link in document.select("a[href]")) {
        original.append(link.attr("href"));
    }

    filtered = [];
    for (link in links) {
        filtered.append(link.attr("href"));
    }

    // Original links
    writeDump(label="Original Links", var="##original##");
    // Filtered links
    writeDump(label="Filtered Links", var="##filtered##");
</cfscript>
')#</pre></cfoutput>

<h3>Results:</h3>

<cfscript>
    // Create Java objects
    Jsoup = createObject("java", "org.jsoup.Jsoup");

    siteAddress = "https://jsoup.org/";
    document = Jsoup.connect(siteAddress).get();
    links = document.select("a[href~=^((?!##|html).)*$]");

    original = [];
    for (link in document.select("a[href]")) {
        original.append(link.attr("href"));
    }

    filtered = [];
    for (link in links) {
        filtered.append(link.attr("href"));
    }

    // Original links
    writeDump(label="Original Links", var="#original#");
    // Filtered links
    writeDump(label="Filtered Links", var="#filtered#");
</cfscript>
