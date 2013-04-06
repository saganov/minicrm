(function() {
    var httpRequest;

    document.forms['profile_add'].onsubmit = function(e){
        var empty_mandatory = [];
        for(var max = this.elements.length, i = 0; i < max; i++)
        {
            if(hasClass(this.elements[i], 'mandatory') && this.elements[i].value == '')
            {
                empty_mandatory.push(this.elements[i].value);
                this.elements[i].className = this.elements[i].className + " warning";
            }
            else
            {
                removeClass(this.elements[i], 'warning');
            }
        } 
        
        var messager = document.getElementById('form_message');
        messager.innerHTML = "";
        messages = [];
        
        if(empty_mandatory.length)
        {
            messages.push("Please fill the mandatory fields");
        }
        
        if(messages.length)
        {
            messager.appendChild(document.createTextNode(messages.join("<br/>\n")));
            return false;
        }
        
        //e.preventDefault();
        makeRequest('POST', this.getAttribute('action'), new FormData(this));
        return false;
        
        //return true;
    }

    function makeRequest(method, url, data) {
        if (window.XMLHttpRequest) { // Mozilla, Safari, ...
            httpRequest = new XMLHttpRequest();
        } else if (window.ActiveXObject) { // IE
            try {
                httpRequest = new ActiveXObject("Msxml2.XMLHTTP");
            }
            catch (e) {
                try {
                    httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
                } catch (e) {}
            }
        }
        
        if (!httpRequest) {
            alert('Giving up :( Cannot create an XMLHTTP instance');
            return false;
        }

        httpRequest.onreadystatechange = alertContents;
        httpRequest.open(method, url, true);
        httpRequest.send(data);
    }
    
    function alertContents() {
        if (httpRequest.readyState === 4) {
            if (httpRequest.status === 200) {
                var response = JSON.parse(httpRequest.responseText);
                if(response.res !== false)
                {
                    switch (response.operation){
                    case 'insert':
                        var message = ['New profile was succesfully inserted'];
                        break; 
                    case 'update':
                        var message = ['Profile was succesfully updated'];
                        window.location.href = app_root+'/profiles/list/';
                        break;
                    default:
                        var message = ['Unknown operation: '+ response.operation];
                    }

                    var color   = 'green';
                    document.forms['profile_add'].reset()
                }
                else
                {
                    var message = ['Error occurs during profile saving'];
                    var color   = 'red';
                    if(response.invalid && response.invalid.length > 0)
                    {
                        var err = [];
                        for(var max = response.invalid.length, i = 0; i < max; i++)
                        {
                            addClass('warning', document.getElementById(response.invalid[i]))
                            err.push(response.invalid[i]);
                        }
                        
                        message.push('Invalid field(s): ' + err.join(', '));
                    }

                    if(response.absent && response.absent.length > 0)
                    {
                        var err = [];
                        for(var max = response.absent.length, i = 0; i < max; i++)
                        {
                            addClass('warning', document.getElementById(response.absent[i]))
                            err.push(response.absent[i]);
                        }
                        
                        message.push('Missed mandatory field(s): ' + err.join(', '));
                    }
                }
                
                var messageElm = document.getElementById('profile_massage');
                messageElm.setAttribute('style', 'text-align:center;margin:10px;color:'+color);
                messageElm.innerHTML = '';
                for(var max=message.length, i=0; i<max; i++)
                {
                    //var input_field = document.getElementById(i);
                    //addClass(input_field, 'warning');
                    messageElm.appendChild(document.createTextNode(message[i]));
                    messageElm.appendChild(document.createElement("br"));
                }
                console.log(response);
            } else {
                alert('There was a problem with the request.');
            }
        }
    }
    
    function hasClass(element, cls) {
        return (' ' + element.className + ' ').indexOf(' ' + cls + ' ') > -1;
    }
    
    function addClass(element, cls){
        if(!hasClass(element, cls)){
            element.className = element.className +' '+ cls;
        }
    }
    
    function removeClass(element, cls){
        var classes = element.className.split(/\s+/);
        var idx = classes.indexOf(cls);
        if(idx > -1)
        {
            classes.splice(idx, 1);
        }
        
        element.className = classes.join(" ");
    }
})();
