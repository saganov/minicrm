(function() {
    var httpRequest;
    makeRequest('GET', app_root+'/profiles/manage');

    function setEvent(elm, event, listener){
        if (elm.addEventListener)
            elm.addEventListener(event, listener, false); //everything else    
        else if (elm.attachEvent)
            elm.attachEvent(event, listener);  //IE only

        return elm;
    }

    function showUploadVideoPopup(item){
        var popup   = createElement('DIV', {'class': 'popup'});

        var header  = append(createElement('H3'),
                             createTextNode('Video for '+item.first_name+' - #'+item.id),
                             append(setEvent(createElement('A', {'class':'close',
                                                                 'href': '#close',
                                                                 'title':'Close'}),
                                             'click',
                                            (function(elm){
                                                return function(e){
                                                    elm.setAttribute('style', 'opacity:0');
                                                    setTimeout(function(){document.getElementsByTagName('BODY')[0].removeChild(elm);}, 500);
                                                    }})(popup)),
                                    createTextNode('x')));
        var profile = append(createElement('DIV', {'class': 'avatar'}),
                             createElement('IMG',
                                           {'src':    item.portrait,
                                            'width':  100,
                                            'height': 133}));

        var fieldset  = append(createElement('FIELDSET'),
                              append(createElement('OL'),
                                     append(createElement('LI'),
                                            append(createElement('LABEL',{'for': 'video'}),
                                                   createTextNode('Upload New Video:')),
                                            createElement('INPUT', {'type': 'file',
                                                                    'name': 'video'})),
                                     append(createElement('LI'),
                                            append(createElement('LABEL',{'for': 'title'}),
                                                   createTextNode('Title:')),
                                            createElement('INPUT', {'type': 'text',
                                                                    'name': 'title'}))));
        var submit  = append(createElement('FIELDSET', {'class': 'submit'}),
                             append(createElement('OL'),
                                    append(createElement('LI'),
                                           createElement('INPUT', {'type': 'submit',
                                                                   'name': 'submit',
                                                                   'value': 'Upload'}))));
        append(document.getElementsByTagName('BODY')[0],
               append(popup, append(createElement('DIV'), header,  profile, fieldset, submit)));

        setTimeout(function(){popup.setAttribute('style', 'opacity:100');}, 500);
    }

    function showActivateDeactivate(item){
        var popup   = createElement('DIV', {'class': 'popup'});
        
        var header  = append(
            append(createElement('H3'),
                   createTextNode(('active' == item.status ? 'Де-активация' : 'Активация')),
                   append(setEvent(createElement('A', {'class':'close', 'href': '#close', 'title':'Close'}),
                                   'click',
                                   (function(elm){
                                       return function(e){
                                           elm.setAttribute('style', 'opacity:0');
                                           setTimeout(function(){document.getElementsByTagName('BODY')[0].removeChild(elm);}, 500);
                                       }})(popup)),
                          createTextNode('x'))));
        
        var tostatus = ('active' == item.status ? 'деактивации' :  'активации');
        var fieldset  = append(createElement('FIELDSET', {'style': 'width:100%;margin:20px 0;padding:0'}),
                              append(createElement('OL'),
                                     append(createElement('LI', {'class': 'wide'}),
                                            append(createElement('LABEL',{'for': 'reason', 'style': 'width:100%;font-weight:bold'}),
                                                   createTextNode('Причина '+ tostatus +' анкеты '
                                                                  +'#'+ item.id +' ('+ item.first_name +' '+ item.last_name +'):')),
                                            createElement('INPUT', {'type': 'text',
                                                                    'name': 'reason',
                                                                   'style': 'width:100%'}))));
        var submit  = append(createElement('FIELDSET', {'class': 'submit'}),
                             append(createElement('OL'),
                                    append(createElement('LI'),
                                           createElement('INPUT', {'type': 'submit',
                                                                   'name': 'submit',
                                                                   'value':('active' == item.status ? 'Deactivate' :  'Activate')}))));
        append(document.getElementsByTagName('BODY')[0],
               append(popup, append(createElement('DIV'), header,  fieldset, submit)));

        setTimeout(function(){popup.setAttribute('style', 'opacity:100');}, 500);
    }

    function showFirstletterPopup(item){
        var popup   = createElement('DIV', {'class': 'popup'});
        
        var header  = append(
            append(createElement('H3'),
                   createTextNode('Первое письмо'),
                   append(setEvent(createElement('A', {'class':'close', 'href': '#close', 'title':'Close'}),
                                   'click',
                                   (function(elm){
                                       return function(e){
                                           elm.setAttribute('style', 'opacity:0');
                                           setTimeout(function(){document.getElementsByTagName('BODY')[0].removeChild(elm);}, 500);
                                       }})(popup)),
                          createTextNode('x'))));
        
        var fieldset  = append(createElement('FIELDSET', {'style': 'width:100%;margin:20px 0;padding:0'}),
                              append(createElement('OL'),
                                     append(createElement('LI', {'class': 'wide'}),
                                            append(createElement('LABEL',{'for': 'reason', 'style': 'width:100%;font-weight:bold'}),
                                                   createTextNode('')),
                                            createElement('TEXTAREA', {'name': 'first_letter',
                                                                       'style': 'width:100%;height:90px'}))));
        var submit  = append(createElement('FIELDSET', {'class': 'submit'}),
                             append(createElement('OL'),
                                    append(createElement('LI'),
                                           createElement('INPUT', {'type': 'submit',
                                                                   'name': 'submit',
                                                                   'value':'Save'}))));
        append(document.getElementsByTagName('BODY')[0],
               append(popup, append(createElement('DIV'), header,  fieldset, submit)));

        setTimeout(function(){popup.setAttribute('style', 'opacity:100');}, 500);
    }


    function createElement(tag, attributes){
        attributes = attributes || false;
        var elm = document.createElement(tag);
        if(attributes){
            for(var i in attributes){
                elm.setAttribute(i, attributes[i]);
            }
        }
        
        return elm;
    }

    function createTextNode(text){
        return document.createTextNode(text);
    }


    function append(parent)
    {
        for(var i=1, max=arguments.length; i<max; i++){
            parent.appendChild(arguments[i]);
        }
        return parent;
    }

    function makeRequest(method, url) {
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
        httpRequest.send();
    }
    
    function alertContents() {
        if (httpRequest.readyState === 4) {
            if (httpRequest.status === 200) {
                var response = JSON.parse(httpRequest.responseText);
                var container = document.getElementById('profile_list');
                for(var max=response.length, i=0; i<max; i++){
                    /*
                      ID:		
                      First Name:
                      Last Name:
                      Profile: 		View,Edit
                      Status:		Active, Invisible
                      Login:		View
                      Video:		Upload
                      Firstletter:	Upload
                      Profile views:	
                    */
                    var profile = document.createElement('DIV');
                    
                    var item = {id: 'ID', first_name: 'First Name', last_name: 'Last Name'};
                    var desc = document.createElement('OL');
                    for(var lbl in item){
                        var elm = document.createElement('LI');
                        var label = document.createElement('SPAN');
                        label.appendChild(document.createTextNode(item[lbl] +': '));
                        elm.appendChild(label);
                        var text = document.createElement('SPAN');
                        text.appendChild(document.createTextNode(response[i][lbl] || lbl));
                        elm.appendChild(text);
                        desc.appendChild(elm);
                    }
                    
                    // Profile: 	View,Edit
                    var elm = document.createElement('LI');
                    var label = document.createElement('SPAN');
                    label.appendChild(document.createTextNode('Profile: '));
                    elm.appendChild(label);
                    var text = document.createElement('SPAN');
                    var view = document.createElement('A');
                    view.setAttribute('href', app_root+'/profiles/get/'+response[i].id);
                    view.appendChild(document.createTextNode('view'));
                    var edit = document.createElement('A');
                    edit.setAttribute('href', app_root+'/profiles/get/'+response[i].id);
                    edit.appendChild(document.createTextNode('edit'));
                    text.appendChild(view);
                    text.appendChild(document.createTextNode('|'));
                    text.appendChild(edit);
                    elm.appendChild(text);
                    desc.appendChild(elm);

                    // Status:		Active, Invisible
                    var elm = document.createElement('LI');
                    var label = document.createElement('SPAN');
                    label.appendChild(document.createTextNode('Status: '));
                    elm.appendChild(label);
                    var text = document.createElement('SPAN');
                    var status_text = ('active' == response[i].status ? 'active' : 'inactive');
                    var status = append(createElement('A', {'href': '#', 'data-status': status_text}),
                                        createTextNode(status_text));
                    setEvent(status, 'mouseenter', (function(status){
                        return function(e){
                            e.preventDefault();
                            e.stopPropagation();
                            e.target.innerHTML = ('active' == status ? 'deactivate?' : 'activate?');
                        }
                    })(status_text));
                    setEvent(status, 'mouseout', (function(status){
                        return function(e){
                            e.preventDefault();
                            e.stopPropagation();
                            e.target.innerHTML = this.getAttribute('data-status');
                        }
                    })(status_text));
                    setEvent(status, 'click', (function(item){
                        return function(e){
                            e.preventDefault();
                            e.stopPropagation();
                            showActivateDeactivate(item);
                        }
                    })(response[i]));
                    elm.appendChild(append(text, status));
                    desc.appendChild(elm);

                    // Login:		View
                    var elm = document.createElement('LI');
                    var label = document.createElement('SPAN');
                    label.appendChild(document.createTextNode('Login: '));
                    elm.appendChild(label);
                    var text = document.createElement('SPAN');
                    var view = document.createElement('A');
                    view.setAttribute('href', '#');
                    setEvent(view, 'click', (function(item){return function(e){
                        //e.stopImmediatePropagation();
                        e.preventDefault();
                        e.stopPropagation();
                        alert("Login: "+ item.email +"\nPassword: "+ item.password);}})(response[i]));
                    view.appendChild(document.createTextNode('view'));
                    text.appendChild(view);
                    elm.appendChild(text);
                    desc.appendChild(elm);                    
                    
                    //  Video:		Upload
                    var elm = document.createElement('LI');
                    var label = document.createElement('SPAN');
                    label.appendChild(document.createTextNode('Video: '));
                    elm.appendChild(label);
                    var text = document.createElement('SPAN');
                    var upload = document.createElement('A');
                    upload.setAttribute('href', '#');
                    setEvent(upload, 'click', (function(item){return function(e){
                        //e.stopImmediatePropagation();
                        e.preventDefault();
                        e.stopPropagation();
                        showUploadVideoPopup(item)}})(response[i]));
                    upload.appendChild(document.createTextNode('upload'));
                    text.appendChild(upload);
                    elm.appendChild(text);
                    desc.appendChild(elm);                    

                    //  Firstletter:	Upload
                    var elm = document.createElement('LI');
                    var label = document.createElement('SPAN');
                    label.appendChild(document.createTextNode('Firstletter: '));
                    elm.appendChild(label);
                    var text = document.createElement('SPAN');
                    var upload = document.createElement('A');
                    upload.setAttribute('href', '#');
                    setEvent(upload, 'click', (function(item){return function(e){
                        //e.stopImmediatePropagation();
                        e.preventDefault();
                        e.stopPropagation();
                        showFirstletterPopup(item)}})(response[i]));
                    upload.appendChild(document.createTextNode('upload'));
                    text.appendChild(upload);
                    elm.appendChild(text);
                    desc.appendChild(elm);

                    //  Profile views:
                    var elm = document.createElement('LI');
                    var label = document.createElement('SPAN');
                    label.appendChild(document.createTextNode('Profile views: '));
                    elm.appendChild(label);
                    var text = document.createElement('SPAN');
                    text.appendChild(document.createTextNode(response[i]['show']));
                    elm.appendChild(text);
                    desc.appendChild(elm);


                    var link = document.createElement('A');
                    link.setAttribute('href', app_root+'/profiles/get/'+response[i].id);
                    var avatar = document.createElement('IMG');
                    avatar.setAttribute('src', response[i].portrait);
                    avatar.setAttribute('width', 100);
                    avatar.setAttribute('height', 133);
                    link.appendChild(avatar);

                    profile.appendChild(link);
                    profile.appendChild(desc);
                    container.appendChild(profile);
                }
                console.log(response);
            } else {
                alert('There was a problem with the request.');
            }
        }
    }
})();
