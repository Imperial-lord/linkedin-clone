"use strict";(self.webpackChunklinkedin_clone_documentation=self.webpackChunklinkedin_clone_documentation||[]).push([[2636],{3905:function(e,t,n){n.d(t,{Zo:function(){return d},kt:function(){return u}});var i=n(7294);function a(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function o(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var i=Object.getOwnPropertySymbols(e);t&&(i=i.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,i)}return n}function r(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?o(Object(n),!0).forEach((function(t){a(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):o(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function s(e,t){if(null==e)return{};var n,i,a=function(e,t){if(null==e)return{};var n,i,a={},o=Object.keys(e);for(i=0;i<o.length;i++)n=o[i],t.indexOf(n)>=0||(a[n]=e[n]);return a}(e,t);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);for(i=0;i<o.length;i++)n=o[i],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(a[n]=e[n])}return a}var l=i.createContext({}),c=function(e){var t=i.useContext(l),n=t;return e&&(n="function"==typeof e?e(t):r(r({},t),e)),n},d=function(e){var t=c(e.components);return i.createElement(l.Provider,{value:t},e.children)},m={inlineCode:"code",wrapper:function(e){var t=e.children;return i.createElement(i.Fragment,{},t)}},p=i.forwardRef((function(e,t){var n=e.components,a=e.mdxType,o=e.originalType,l=e.parentName,d=s(e,["components","mdxType","originalType","parentName"]),p=c(n),u=a,h=p["".concat(l,".").concat(u)]||p[u]||m[u]||o;return n?i.createElement(h,r(r({ref:t},d),{},{components:n})):i.createElement(h,r({ref:t},d))}));function u(e,t){var n=arguments,a=t&&t.mdxType;if("string"==typeof e||a){var o=n.length,r=new Array(o);r[0]=p;var s={};for(var l in t)hasOwnProperty.call(t,l)&&(s[l]=t[l]);s.originalType=e,s.mdxType="string"==typeof e?e:a,r[1]=s;for(var c=2;c<o;c++)r[c]=n[c];return i.createElement.apply(null,r)}return i.createElement.apply(null,n)}p.displayName="MDXCreateElement"},5565:function(e,t,n){n.r(t),n.d(t,{assets:function(){return d},contentTitle:function(){return l},default:function(){return u},frontMatter:function(){return s},metadata:function(){return c},toc:function(){return m}});var i=n(7462),a=n(3366),o=(n(7294),n(3905)),r=["components"],s={sidebar_position:3},l="Idea",c={unversionedId:"video-meetings/idea",id:"video-meetings/idea",title:"Idea",description:"Jitsi meet can be used for free without any account or setup needed.",source:"@site/docs/video-meetings/idea.md",sourceDirName:"video-meetings",slug:"/video-meetings/idea",permalink:"/linkedin-clone/docs/video-meetings/idea",editUrl:"https://github.com/Imperial-lord/linkedin-clone/docs/video-meetings/idea.md",tags:[],version:"current",sidebarPosition:3,frontMatter:{sidebar_position:3},sidebar:"tutorialSidebar",previous:{title:"Setup",permalink:"/linkedin-clone/docs/video-meetings/setup"},next:{title:"Flow",permalink:"/linkedin-clone/docs/video-meetings/flow"}},d={},m=[{value:"Meeting Types",id:"meeting-types",level:2},{value:"Meeting URLs",id:"meeting-urls",level:2},{value:"Content Stored in DB",id:"content-stored-in-db",level:2}],p={toc:m};function u(e){var t=e.components,s=(0,a.Z)(e,r);return(0,o.kt)("wrapper",(0,i.Z)({},p,s,{components:t,mdxType:"MDXLayout"}),(0,o.kt)("h1",{id:"idea"},"Idea"),(0,o.kt)("p",null,"Jitsi meet can be used for free ",(0,o.kt)("strong",{parentName:"p"},"without any account or setup")," needed."),(0,o.kt)("p",null,(0,o.kt)("img",{loading:"lazy",alt:"Jitsi Hero",src:n(4716).Z,width:"2870",height:"806"})),(0,o.kt)("p",null,"This gives us 2 important points to take care of:"),(0,o.kt)("ul",null,(0,o.kt)("li",{parentName:"ul"},"We don't need to worry about setting up an OAuth application or using APIs."),(0,o.kt)("li",{parentName:"ul"},"The only parameter in play is the meeting URL. This comes from the meeting topic/title, with all the spaces or special characters (those not allowed in URLs) removed. We need to come up with a solution to generate unique and hard to guess (to protect privacy) URLs to connect users.")),(0,o.kt)("h2",{id:"meeting-types"},"Meeting Types"),(0,o.kt)("p",null,"There are 2 types of meetings that we will be creating in this section."),(0,o.kt)("p",null,(0,o.kt)("img",{loading:"lazy",alt:"Meeting Types",src:n(2470).Z,width:"2880",height:"1800"})),(0,o.kt)("ol",null,(0,o.kt)("li",{parentName:"ol"},(0,o.kt)("strong",{parentName:"li"},"Instant meetings")," which can be joined ",(0,o.kt)("em",{parentName:"li"},"instantly"),". These meetings can be unique between 2 users."),(0,o.kt)("li",{parentName:"ol"},(0,o.kt)("strong",{parentName:"li"},"Scheduled meetings")," which can be joined ",(0,o.kt)("em",{parentName:"li"},"5 mins prior")," to the scheduled time. These need to have information about date-time and duration. Here the meetings (and their URLs) will have to be different.")),(0,o.kt)("h2",{id:"meeting-urls"},"Meeting URLs"),(0,o.kt)("p",null,"We can make use of Firebase UIDs, and generated group chat IDs to create meeting URLs. For scheduled meetings, we will keep the time and duration in the URL too. But how to secure meeting URLs?"),(0,o.kt)("div",{className:"admonition admonition-tip alert alert--success"},(0,o.kt)("div",{parentName:"div",className:"admonition-heading"},(0,o.kt)("h5",{parentName:"div"},(0,o.kt)("span",{parentName:"h5",className:"admonition-icon"},(0,o.kt)("svg",{parentName:"span",xmlns:"http://www.w3.org/2000/svg",width:"12",height:"16",viewBox:"0 0 12 16"},(0,o.kt)("path",{parentName:"svg",fillRule:"evenodd",d:"M6.5 0C3.48 0 1 2.19 1 5c0 .92.55 2.25 1 3 1.34 2.25 1.78 2.78 2 4v1h5v-1c.22-1.22.66-1.75 2-4 .45-.75 1-2.08 1-3 0-2.81-2.48-5-5.5-5zm3.64 7.48c-.25.44-.47.8-.67 1.11-.86 1.41-1.25 2.06-1.45 3.23-.02.05-.02.11-.02.17H5c0-.06 0-.13-.02-.17-.2-1.17-.59-1.83-1.45-3.23-.2-.31-.42-.67-.67-1.11C2.44 6.78 2 5.65 2 5c0-2.2 2.02-4 4.5-4 1.22 0 2.36.42 3.22 1.19C10.55 2.94 11 3.94 11 5c0 .66-.44 1.78-.86 2.48zM4 14h5c-.23 1.14-1.3 2-2.5 2s-2.27-.86-2.5-2z"}))),"tip")),(0,o.kt)("div",{parentName:"div",className:"admonition-content"},(0,o.kt)("p",{parentName:"div"},"To make sure that the meetings URLs are secured, we will make use of a ",(0,o.kt)("strong",{parentName:"p"},"Base64")," encryption. How to do that in Flutter? Read this answer on ",(0,o.kt)("a",{parentName:"p",href:"https://stackoverflow.com/a/56201075/11610122"},"StackOverflow"),"."))),(0,o.kt)("p",null,"A sample meeting URL now looks like this (ignoring the ",(0,o.kt)("inlineCode",{parentName:"p"},"mli-")," part and adding ",(0,o.kt)("inlineCode",{parentName:"p"},"https://"),"). Meeting URLs like these will be impossible to just guess and thus are safe. If we need to extract information from these, we can always decode the Base64 string, and get back our information."),(0,o.kt)("pre",null,(0,o.kt)("code",{parentName:"pre"},"mli-meet.jit.si/Y2pxc0lwb2ZFZWFlMHk5Tk1uQ2ZKVWhuNGhiMi11NlRKeWZveXlMZEd6WXNtdElDOHFEMDliYkEy\n")),(0,o.kt)("p",null,"But hold on, what is ",(0,o.kt)("inlineCode",{parentName:"p"},"mli-")," doing here?"),(0,o.kt)("h2",{id:"content-stored-in-db"},"Content Stored in DB"),(0,o.kt)("p",null,"Since we are storing meetings, chat text messages, images (next video), etc, we would want to specify the content type. One way could be to use prefixes and then split the Strings, and that's what we are doing here. The content stored in Cloud Firestore will have 2 different kind of prefixes -"),(0,o.kt)("ul",null,(0,o.kt)("li",{parentName:"ul"},(0,o.kt)("inlineCode",{parentName:"li"},"mli")," which stands for ",(0,o.kt)("strong",{parentName:"li"},"meeting link instant")),(0,o.kt)("li",{parentName:"ul"},(0,o.kt)("inlineCode",{parentName:"li"},"mls")," which stands for ",(0,o.kt)("strong",{parentName:"li"},"meeting link scheduled"))),(0,o.kt)("p",null,(0,o.kt)("img",{loading:"lazy",alt:"Meeting MLI MLS",src:n(7318).Z,width:"2880",height:"1800"})),(0,o.kt)("p",null,"Look at this function of completed code, which you can find ",(0,o.kt)("a",{parentName:"p",href:"https://github.com/Imperial-lord/linkedin-clone/blob/main/02-video-meetings/completed/linkedin_clone/lib/widgets/chat/common_chat_widgets.dart"},"here")," on GitHub."),(0,o.kt)("pre",null,(0,o.kt)("code",{parentName:"pre",className:"language-js",metastring:'title="common_chat_widgets.dart"',title:'"common_chat_widgets.dart"'},"Widget showChatItemBasedOnType(\n    String type, DocumentSnapshot document, BuildContext context, String name) {\n  // Expand this more as per need\n  if (type == 'mli') {\n    // Meeting Link Instant\n    return instantMeetingItemContent(document, context, name);\n  } else if (type == 'mls') {\n    // Meeting Link Scheduled\n    return scheduledMeetingItemContent(document, context, name);\n  } else {\n    // Chat text item\n    return chatItemContent(document);\n  }\n}\n")))}u.isMDXComponent=!0},4716:function(e,t,n){t.Z=n.p+"assets/images/jitsi-hero-891cc57365c1c8e0332b179a6d8979e9.png"},7318:function(e,t,n){t.Z=n.p+"assets/images/meeting-mli-mls-b2022bf6ecf44d4d4db96c52720d06ee.png"},2470:function(e,t,n){t.Z=n.p+"assets/images/meeting-types-538048bd42994e6432ab6860c1234871.png"}}]);