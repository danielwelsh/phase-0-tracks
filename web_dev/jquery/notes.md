1. Read general documentation on jQUERY


#Here is the basic syntax of jQuery to access elements and perform functions on them. 

	Basic syntax is: $(selector).action()

	A $ sign to define/access jQuery
	A (selector) to "query (or find)" HTML elements
	A jQuery action() to be performed on the element(s)

	#SELECTORS 

	$(this).hide() - hides the current element.
	$("p").hide() - hides all <p> elements.
	$(".test").hide() - hides all elements with class="test".
	$("#test").hide() - hides the element with id="test".
	$("*") Selects all elements
	$("p.intro") Selects all <p> elements with class="intro"
	$("p:first") Selects the first <p> element
	$("ul li:first") Selects the first <li> element of the first <ul>
	$("ul li:first-child") Selects the first <li> element of the first <ul>
	$("[href]")	Selects all elements with an href attribute
	$("a[target='_blank']")	Selects all <a> elements with a target attribute value equal to "_blank"
	$("a[target!='_blank']")	Selects all <a> elements with a target attribute value NOT equal to "_blank"
	$(":button")	Selects all <button> elements and <input> elements of type="button"
	$("tr:even")	Selects all even <tr> elements
	$("tr:odd")	Selects all odd <tr> elements

	#Events https://www.w3schools.com/jquery/jquery_events.asp 
	
	Different actions that a web page can listen or and respond to.
	Mouse Events
		* click
		* dbclick
		* mouseenter
		* mouseleave
	Keyboard Events 
		* keypress
		* keydown
		* keyup
	Form Events 
		* submit
		* change
		* focus
		* blur
	Document?Window Events
		* load
		* resize
		* scroll
		* unload


2. Find a introductary video that may introduce to the nomenclature and particulars of the language. 

Video: https://www.youtube.com/watch?v=khvPMh5Xfks

# jQuery 101
	1. What is it?
	A library for working well with DOM. Cross browser manipulation and events. It acts as a helper library. Makes the DOM easier to work with. 

	When the browser renders HTML it generates the DOM tree. And we need to work with the DOM tree to add functionality. (Document Object Model). It is small so you never have to worry about including it. 

	Offers traversal and manipulation. 
	Web apps often deploy as SPA (single page architecture)
	Angular is another more advanced framework. 


	2. When to use it?
	It means taking on a dependancy that may not be nessesary. 

	3. Workflow
	Use the ready function or place the js above the bottom body tag to ensure all HTML selectors are loaded to the DOM. 



3. Read methods and class documentation to orient to language
http://api.jquery.com/

4. Play with the new methods in a file to see the functionality
