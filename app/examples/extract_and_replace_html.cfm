<h2>Extract &amp; Replace An HTML Element With It's Content</h2>

<cfoutput><pre>#xmlFormat('
<cfscript>
    // Create Java objects
    Jsoup = createObject("java", "org.jsoup.Jsoup");
    TextNode = createObject("java", "org.jsoup.nodes.TextNode");

    // Create some markup...
    html = #chr(39)#<html><head><title>Hello World!</title></head><body><h1>A Header</h1><p>Some content. <a href="##">A cool link.</a></p></body></html>#chr(39)#;
    // Parse it into a Jsoup Document
    document = Jsoup.parse(html);

    // Create a Node object
    link = document.select("a").first();
    node = TextNode.init(link.text(), "");

    writeDump(node);
    writeDump(link.replaceWith(node));
    writeDump(link.text());
    writeDump(document.body().toString());
</cfscript>
')#</pre></cfoutput>

<h3>Results:</h3>

<cfscript>
    // Create Java objects
    Jsoup = createObject("java", "org.jsoup.Jsoup");
    TextNode = createObject("java", "org.jsoup.nodes.TextNode");

    // Create some markup...
    html = '<html><head><title>Hello World!</title></head><body><h1>A Header</h1><p>Some content. <a href="##">A cool link.</a></p></body></html>';
    // Parse it into a Jsoup Document
    document = Jsoup.parse(html);

    // Create a Node object
    link = document.select("a").first();
    node = TextNode.init(link.text(), "");
    link.replaceWith(node);

    writeDump(label="Original HTML", var="#html#");
    writeDump(label="Link Text", var="#link.text()#");
    writeDump(label="Modified HTML", var="#document.body().toString()#");
    writeDump(node);
</cfscript>
