"use strict";(self.webpackChunklinkedin_clone_documentation=self.webpackChunklinkedin_clone_documentation||[]).push([[85],{6416:function(e,n,a){a.r(n),a.d(n,{default:function(){return d}});var t=a(7294),l=a(6010),i=a(2773),c=a(3905),s=a(4689),m=a(1575),o=a(3725),r="mdxPageWrapper_zHyg";function d(e){var n=e.content,a=n.metadata,d=a.title,u=a.description,v=a.permalink,f=a.frontMatter,N=f.wrapperClassName,g=f.hide_table_of_contents;return t.createElement(i.Z,{title:d,description:u,permalink:v,wrapperClassName:null!=N?N:o.kM.wrapper.mdxPages,pageClassName:o.kM.page.mdxPage},t.createElement("main",{className:"container container--fluid margin-vert--lg"},t.createElement("div",{className:(0,l.Z)("row",r)},t.createElement("div",{className:(0,l.Z)("col",!g&&"col--8")},t.createElement(c.Zo,{components:s.Z},t.createElement(n,null))),!g&&n.toc&&t.createElement("div",{className:"col col--2"},t.createElement(m.Z,{toc:n.toc,minHeadingLevel:f.toc_min_heading_level,maxHeadingLevel:f.toc_max_heading_level})))))}},1575:function(e,n,a){a.d(n,{Z:function(){return r}});var t=a(7462),l=a(3366),i=a(7294),c=a(6010),s=a(5002),m="tableOfContents_cNA8",o=["className"];function r(e){var n=e.className,a=(0,l.Z)(e,o);return i.createElement("div",{className:(0,c.Z)(m,"thin-scrollbar",n)},i.createElement(s.Z,(0,t.Z)({},a,{linkClassName:"table-of-contents__link toc-highlight",linkActiveClassName:"table-of-contents__link--active"})))}},5002:function(e,n,a){a.d(n,{Z:function(){return o}});var t=a(7462),l=a(3366),i=a(7294),c=a(3725),s=["toc","className","linkClassName","linkActiveClassName","minHeadingLevel","maxHeadingLevel"];function m(e){var n=e.toc,a=e.className,t=e.linkClassName,l=e.isChild;return n.length?i.createElement("ul",{className:l?void 0:a},n.map((function(e){return i.createElement("li",{key:e.id},i.createElement("a",{href:"#"+e.id,className:null!=t?t:void 0,dangerouslySetInnerHTML:{__html:e.value}}),i.createElement(m,{isChild:!0,toc:e.children,className:a,linkClassName:t}))}))):null}function o(e){var n=e.toc,a=e.className,o=void 0===a?"table-of-contents table-of-contents__left-border":a,r=e.linkClassName,d=void 0===r?"table-of-contents__link":r,u=e.linkActiveClassName,v=void 0===u?void 0:u,f=e.minHeadingLevel,N=e.maxHeadingLevel,g=(0,l.Z)(e,s),k=(0,c.LU)(),_=null!=f?f:k.tableOfContents.minHeadingLevel,C=null!=N?N:k.tableOfContents.maxHeadingLevel,p=(0,c.b9)({toc:n,minHeadingLevel:_,maxHeadingLevel:C}),h=(0,i.useMemo)((function(){if(d&&v)return{linkClassName:d,linkActiveClassName:v,minHeadingLevel:_,maxHeadingLevel:C}}),[d,v,_,C]);return(0,c.Si)(h),i.createElement(m,(0,t.Z)({toc:p,className:o,linkClassName:d},g))}}}]);