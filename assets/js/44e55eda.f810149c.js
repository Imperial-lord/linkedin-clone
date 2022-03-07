"use strict";(self.webpackChunklinkedin_clone_documentation=self.webpackChunklinkedin_clone_documentation||[]).push([[536],{3905:function(e,t,n){n.d(t,{Zo:function(){return p},kt:function(){return f}});var r=n(7294);function a(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function i(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function o(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?i(Object(n),!0).forEach((function(t){a(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):i(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function s(e,t){if(null==e)return{};var n,r,a=function(e,t){if(null==e)return{};var n,r,a={},i=Object.keys(e);for(r=0;r<i.length;r++)n=i[r],t.indexOf(n)>=0||(a[n]=e[n]);return a}(e,t);if(Object.getOwnPropertySymbols){var i=Object.getOwnPropertySymbols(e);for(r=0;r<i.length;r++)n=i[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(a[n]=e[n])}return a}var c=r.createContext({}),l=function(e){var t=r.useContext(c),n=t;return e&&(n="function"==typeof e?e(t):o(o({},t),e)),n},p=function(e){var t=l(e.components);return r.createElement(c.Provider,{value:t},e.children)},d={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},u=r.forwardRef((function(e,t){var n=e.components,a=e.mdxType,i=e.originalType,c=e.parentName,p=s(e,["components","mdxType","originalType","parentName"]),u=l(n),f=a,m=u["".concat(c,".").concat(f)]||u[f]||d[f]||i;return n?r.createElement(m,o(o({ref:t},p),{},{components:n})):r.createElement(m,o({ref:t},p))}));function f(e,t){var n=arguments,a=t&&t.mdxType;if("string"==typeof e||a){var i=n.length,o=new Array(i);o[0]=u;var s={};for(var c in t)hasOwnProperty.call(t,c)&&(s[c]=t[c]);s.originalType=e,s.mdxType="string"==typeof e?e:a,o[1]=s;for(var l=2;l<i;l++)o[l]=n[l];return r.createElement.apply(null,o)}return r.createElement.apply(null,n)}u.displayName="MDXCreateElement"},6507:function(e,t,n){n.r(t),n.d(t,{assets:function(){return p},contentTitle:function(){return c},default:function(){return f},frontMatter:function(){return s},metadata:function(){return l},toc:function(){return d}});var r=n(7462),a=n(3366),i=(n(7294),n(3905)),o=["components"],s={sidebar_position:2},c="Radar",l={unversionedId:"chat-smart-replies/setup/radar",id:"chat-smart-replies/setup/radar",title:"Radar",description:"Radar is a leading geofencing platform. It helps build best-in-class location-based experiences with SDKs, APIs, and dashboards for geofencing, place detection, trip tracking, and more.",source:"@site/docs/chat-smart-replies/setup/radar.md",sourceDirName:"chat-smart-replies/setup",slug:"/chat-smart-replies/setup/radar",permalink:"/linkedin-clone/docs/chat-smart-replies/setup/radar",editUrl:"https://github.com/Imperial-lord/linkedin-clone/docs/chat-smart-replies/setup/radar.md",tags:[],version:"current",sidebarPosition:2,frontMatter:{sidebar_position:2},sidebar:"tutorialSidebar",previous:{title:"Getting Started",permalink:"/linkedin-clone/docs/chat-smart-replies/setup/intro"},next:{title:"Firebase",permalink:"/linkedin-clone/docs/chat-smart-replies/setup/firebase"}},p={},d=[{value:"Getting Started",id:"getting-started",level:2},{value:"Use the API key",id:"use-the-api-key",level:2}],u={toc:d};function f(e){var t=e.components,s=(0,a.Z)(e,o);return(0,i.kt)("wrapper",(0,r.Z)({},u,s,{components:t,mdxType:"MDXLayout"}),(0,i.kt)("h1",{id:"radar"},"Radar"),(0,i.kt)("p",null,"Radar is a leading geofencing platform. It helps build best-in-class location-based experiences with SDKs, APIs, and dashboards for geofencing, place detection, trip tracking, and more."),(0,i.kt)("h2",{id:"getting-started"},"Getting Started"),(0,i.kt)("p",null,"Create a new radar account. Once done open your ",(0,i.kt)("a",{parentName:"p",href:"https://radar.com/dashboard"},"dashboard")," to get the keys. They key we will need is of the type ",(0,i.kt)("inlineCode",{parentName:"p"},"Live publishable (client)"),". Copy this key."),(0,i.kt)("p",null,(0,i.kt)("img",{loading:"lazy",alt:"Radar",src:n(5353).Z,width:"2880",height:"798"})),(0,i.kt)("h2",{id:"use-the-api-key"},"Use the API key"),(0,i.kt)("p",null,"Open the environment file inside ",(0,i.kt)("inlineCode",{parentName:"p"},"assets/config/.env"),". Once there, paste the API key in place. Your API key should look something like - ",(0,i.kt)("inlineCode",{parentName:"p"},"prj_live_pk_*************************")),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre",className:"language-bash",metastring:'title="assets/config/.env"',title:'"assets/config/.env"'},'RADAR_LIVE_TOKEN = "prj_live_pk_*************************"\n')))}f.isMDXComponent=!0},5353:function(e,t,n){t.Z=n.p+"assets/images/radar-ef0e7af43dfc5392fcfdb2913a338ebe.png"}}]);