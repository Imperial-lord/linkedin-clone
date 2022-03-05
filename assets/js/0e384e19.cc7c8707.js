"use strict";(self.webpackChunklinkedin_clone_documentation=self.webpackChunklinkedin_clone_documentation||[]).push([[671],{3905:function(e,t,n){n.d(t,{Zo:function(){return c},kt:function(){return h}});var r=n(7294);function o(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function i(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function a(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?i(Object(n),!0).forEach((function(t){o(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):i(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function l(e,t){if(null==e)return{};var n,r,o=function(e,t){if(null==e)return{};var n,r,o={},i=Object.keys(e);for(r=0;r<i.length;r++)n=i[r],t.indexOf(n)>=0||(o[n]=e[n]);return o}(e,t);if(Object.getOwnPropertySymbols){var i=Object.getOwnPropertySymbols(e);for(r=0;r<i.length;r++)n=i[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(o[n]=e[n])}return o}var s=r.createContext({}),u=function(e){var t=r.useContext(s),n=t;return e&&(n="function"==typeof e?e(t):a(a({},t),e)),n},c=function(e){var t=u(e.components);return r.createElement(s.Provider,{value:t},e.children)},d={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},p=r.forwardRef((function(e,t){var n=e.components,o=e.mdxType,i=e.originalType,s=e.parentName,c=l(e,["components","mdxType","originalType","parentName"]),p=u(n),h=o,m=p["".concat(s,".").concat(h)]||p[h]||d[h]||i;return n?r.createElement(m,a(a({ref:t},c),{},{components:n})):r.createElement(m,a({ref:t},c))}));function h(e,t){var n=arguments,o=t&&t.mdxType;if("string"==typeof e||o){var i=n.length,a=new Array(i);a[0]=p;var l={};for(var s in t)hasOwnProperty.call(t,s)&&(l[s]=t[s]);l.originalType=e,l.mdxType="string"==typeof e?e:o,a[1]=l;for(var u=2;u<i;u++)a[u]=n[u];return r.createElement.apply(null,a)}return r.createElement.apply(null,n)}p.displayName="MDXCreateElement"},9881:function(e,t,n){n.r(t),n.d(t,{assets:function(){return c},contentTitle:function(){return s},default:function(){return h},frontMatter:function(){return l},metadata:function(){return u},toc:function(){return d}});var r=n(7462),o=n(3366),i=(n(7294),n(3905)),a=["components"],l={sidebar_position:1},s="Introduction",u={unversionedId:"intro",id:"intro",title:"Introduction",description:"This documentation will cover all the steps needed to get you ready with the starter projects. Each section in the sidebar corresponds to a Youtube video. We will also additionally provide links to documentation, extra resouces, or",source:"@site/docs/intro.md",sourceDirName:".",slug:"/intro",permalink:"/docs/intro",editUrl:"https://github.com/Imperial-lord/linkedin-clone/docs/intro.md",tags:[],version:"current",sidebarPosition:1,frontMatter:{sidebar_position:1},sidebar:"tutorialSidebar",next:{title:"Basics",permalink:"/docs/chat-smart-replies/basics"}},c={},d=[{value:"What is this application",id:"what-is-this-application",level:2},{value:"What can you expect?",id:"what-can-you-expect",level:3},{value:"What will we cover?",id:"what-will-we-cover",level:3},{value:"What will we leave out?",id:"what-will-we-leave-out",level:3},{value:"Getting Started",id:"getting-started",level:2},{value:"What you&#39;ll need",id:"what-youll-need",level:3},{value:"If you run into issues",id:"if-you-run-into-issues",level:2}],p={toc:d};function h(e){var t=e.components,n=(0,o.Z)(e,a);return(0,i.kt)("wrapper",(0,r.Z)({},p,n,{components:t,mdxType:"MDXLayout"}),(0,i.kt)("h1",{id:"introduction"},"Introduction"),(0,i.kt)("p",null,"This documentation will cover all the steps needed to get you ready with the starter projects. Each section in the sidebar corresponds to a Youtube video. We will also additionally provide links to documentation, extra resouces, or\ncode snippets whenever needed."),(0,i.kt)("h2",{id:"what-is-this-application"},"What is this application"),(0,i.kt)("p",null,"LinkedIn is a very beautiful application with tons of features. And there is a lot to learn from creating a clone. Together we will discover and learn new technologies, frameworks, and work with servers, databases, ML algorithms, Cloud Services, APIs, and more."),(0,i.kt)("h3",{id:"what-can-you-expect"},"What can you expect?"),(0,i.kt)("p",null,"I always try to keep things as easy and simple as possible, if you are someone who has never heard of Flutter you might find it a little hard to follow along. However, I encourage you to try, becuase hey who knows, this might spark your interest in the framework!"),(0,i.kt)("h3",{id:"what-will-we-cover"},"What will we cover?"),(0,i.kt)("p",null,"We will cover all of the interesting features of LinkedIn such as - Chat (with Smart replies, meetings, and other features), User connections, User feed, User posts (including some ML features), Notifications, etc."),(0,i.kt)("h3",{id:"what-will-we-leave-out"},"What will we leave out?"),(0,i.kt)("p",null,"It is important to understand that LinkedIn is a very huge application and has taken years to build. What we will make will be a simpler clone with most of the basic features. There is a lot more to it such as analytics, UX research, extra/hidden features, advanced system design, etc. Additionally, you can always go ahead and implement more features!"),(0,i.kt)("h2",{id:"getting-started"},"Getting Started"),(0,i.kt)("p",null,"Get started by ",(0,i.kt)("strong",{parentName:"p"},"cloning the repository")," and ",(0,i.kt)("strong",{parentName:"p"},"following the steps in the corresponding tutorial"),". Each tutorial will have a basic setup, which may or may not be dependent on the setting up for previous tutorials."),(0,i.kt)("h3",{id:"what-youll-need"},"What you'll need"),(0,i.kt)("ul",null,(0,i.kt)("li",{parentName:"ul"},(0,i.kt)("p",{parentName:"li"},"A laptop with atleast 8 GB of RAM for a smooth android and web development process.")),(0,i.kt)("li",{parentName:"ul"},(0,i.kt)("p",{parentName:"li"},(0,i.kt)("a",{parentName:"p",href:"https://flutter.dev"},"Flutter")," preferably v2 or above."),(0,i.kt)("ul",{parentName:"li"},(0,i.kt)("li",{parentName:"ul"},(0,i.kt)("p",{parentName:"li"},"Make sure that you have installed android studio (and/or XCode) and follow all instructions for your respective OS.")),(0,i.kt)("li",{parentName:"ul"},(0,i.kt)("p",{parentName:"li"},"To ensure that everything is working fine, run the command:"),(0,i.kt)("pre",{parentName:"li"},(0,i.kt)("code",{parentName:"pre",className:"language-bash"},"flutter doctor\n")))))),(0,i.kt)("h2",{id:"if-you-run-into-issues"},"If you run into issues"),(0,i.kt)("p",null,"It's common to run into issues while following along. It might an error in your code, or a misuderstanding or some random issue. Don't worry and feel free to reach out to me via ",(0,i.kt)("strong",{parentName:"p"},"Youtube comment section (if you have a minor issue or question)")," or using ",(0,i.kt)("strong",{parentName:"p"},"GitHub ",(0,i.kt)("a",{parentName:"strong",href:"https://github.com/Imperial-lord/linkedin-clone"},"discussions")," (if you need to put your stack trace or need to discuss something bigger)"),"."),(0,i.kt)("p",null,"Anything unclear or buggy in this tutorial? ",(0,i.kt)("a",{parentName:"p",href:"https://github.com/Imperial-lord/linkedin-clone/issues"},"Please report it"),"!"))}h.isMDXComponent=!0}}]);