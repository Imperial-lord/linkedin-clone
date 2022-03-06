"use strict";(self.webpackChunklinkedin_clone_documentation=self.webpackChunklinkedin_clone_documentation||[]).push([[886],{8665:function(e,t,a){a.d(t,{Z:function(){return E}});var n=a(3366),r=a(7294),l=a(6010),i=a(2773),m=a(9960),o="sidebar_a9qW",s="sidebarItemTitle_uKok",c="sidebarItemList_Kvuv",d="sidebarItem_CF0Q",u="sidebarItemLink_miNk",g="sidebarItemLinkActive_RRTD",p=a(5999);function v(e){var t=e.sidebar;return 0===t.items.length?null:r.createElement("nav",{className:(0,l.Z)(o,"thin-scrollbar"),"aria-label":(0,p.I)({id:"theme.blog.sidebar.navAriaLabel",message:"Blog recent posts navigation",description:"The ARIA label for recent posts in the blog sidebar"})},r.createElement("div",{className:(0,l.Z)(s,"margin-bottom--md")},t.title),r.createElement("ul",{className:c},t.items.map((function(e){return r.createElement("li",{key:e.permalink,className:d},r.createElement(m.Z,{isNavLink:!0,to:e.permalink,className:u,activeClassName:g},e.title))}))))}var h=["sidebar","toc","children"];function E(e){var t=e.sidebar,a=e.toc,m=e.children,o=(0,n.Z)(e,h),s=t&&t.items.length>0;return r.createElement(i.Z,o,r.createElement("div",{className:"container margin-vert--lg"},r.createElement("div",{className:"row"},s&&r.createElement("aside",{className:"col col--3"},r.createElement(v,{sidebar:t})),r.createElement("main",{className:(0,l.Z)("col",{"col--7":s,"col--9 col--offset-1":!s}),itemScope:!0,itemType:"http://schema.org/Blog"},m),a&&r.createElement("div",{className:"col col--2"},a))))}},7329:function(e,t,a){a.r(t),a.d(t,{default:function(){return s}});var n=a(7294),r=a(2263),l=a(8665),i=a(8561),m=a(6299),o=a(3725);function s(e){var t=e.metadata,a=e.items,s=e.sidebar,c=(0,r.Z)().siteConfig.title,d=t.blogDescription,u=t.blogTitle,g="/"===t.permalink?c:u;return n.createElement(l.Z,{title:g,description:d,wrapperClassName:o.kM.wrapper.blogPages,pageClassName:o.kM.page.blogListPage,searchMetadata:{tag:"blog_posts_list"},sidebar:s},a.map((function(e){var t=e.content;return n.createElement(i.Z,{key:t.metadata.permalink,frontMatter:t.frontMatter,assets:t.assets,metadata:t.metadata,truncated:t.metadata.truncated},n.createElement(t,null))})),n.createElement(m.Z,{metadata:t}))}},6299:function(e,t,a){a.d(t,{Z:function(){return i}});var n=a(7294),r=a(5999),l=a(1750);function i(e){var t=e.metadata,a=t.previousPage,i=t.nextPage;return n.createElement("nav",{className:"pagination-nav","aria-label":(0,r.I)({id:"theme.blog.paginator.navAriaLabel",message:"Blog list page navigation",description:"The ARIA label for the blog pagination"})},n.createElement("div",{className:"pagination-nav__item"},a&&n.createElement(l.Z,{permalink:a,title:n.createElement(r.Z,{id:"theme.blog.paginator.newerEntries",description:"The label used to navigate to the newer blog posts page (previous page)"},"Newer Entries")})),n.createElement("div",{className:"pagination-nav__item pagination-nav__item--next"},i&&n.createElement(l.Z,{permalink:i,title:n.createElement(r.Z,{id:"theme.blog.paginator.olderEntries",description:"The label used to navigate to the older blog posts page (next page)"},"Older Entries")})))}},8561:function(e,t,a){a.d(t,{Z:function(){return P}});var n=a(7294),r=a(6010),l=a(3905),i=a(5999),m=a(9960),o=a(4996),s=a(3725),c=a(8780),d=a(4689),u=a(6753),g="blogPostTitle_rzP5",p="blogPostData_Zg1s",v="blogPostDetailsFull_h6_j",h=a(62),E="image_o0gy";function b(e){return e.href?n.createElement(m.Z,e):n.createElement(n.Fragment,null,e.children)}function f(e){var t=e.author,a=t.name,r=t.title,l=t.url,i=t.imageURL,m=t.email,o=l||m&&"mailto:"+m||void 0;return n.createElement("div",{className:"avatar margin-bottom--sm"},i&&n.createElement("span",{className:"avatar__photo-link avatar__photo"},n.createElement(b,{href:o},n.createElement("img",{className:E,src:i,alt:a}))),a&&n.createElement("div",{className:"avatar__intro",itemProp:"author",itemScope:!0,itemType:"https://schema.org/Person"},n.createElement("div",{className:"avatar__name"},n.createElement(b,{href:o,itemProp:"url"},n.createElement("span",{itemProp:"name"},a))),r&&n.createElement("small",{className:"avatar__subtitle",itemProp:"description"},r)))}var _="authorCol_FlmR",N="imageOnlyAuthorRow_trpF",Z="imageOnlyAuthorCol_S2np";function k(e){var t=e.authors,a=e.assets;if(0===t.length)return null;var l=t.every((function(e){return!e.name}));return n.createElement("div",{className:(0,r.Z)("margin-top--md margin-bottom--sm",l?N:"row")},t.map((function(e,t){var i;return n.createElement("div",{className:(0,r.Z)(!l&&"col col--6",l?Z:_),key:t},n.createElement(f,{author:Object.assign({},e,{imageURL:null!=(i=a.authorsImageUrls[t])?i:e.imageURL})}))})))}function P(e){var t,a,E,b=(E=(0,s.c2)().selectMessage,function(e){var t=Math.ceil(e);return E(t,(0,i.I)({id:"theme.blog.post.readingTime.plurals",description:'Pluralized label for "{readingTime} min read". Use as much plural forms (separated by "|") as your language support (see https://www.unicode.org/cldr/cldr-aux/charts/34/supplemental/language_plural_rules.html)',message:"One min read|{readingTime} min read"},{readingTime:t}))}),f=(0,o.C)().withBaseUrl,_=e.children,N=e.frontMatter,Z=e.assets,P=e.metadata,T=e.truncated,w=e.isBlogPostPage,y=void 0!==w&&w,I=P.date,L=P.formattedDate,C=P.permalink,R=P.tags,M=P.readingTime,A=P.title,D=P.editUrl,U=P.authors,x=null!=(t=Z.image)?t:N.image,B=!y&&T,F=R.length>0,O=y?"h1":"h2";return n.createElement("article",{className:y?void 0:"margin-bottom--xl",itemProp:"blogPost",itemScope:!0,itemType:"http://schema.org/BlogPosting"},n.createElement("header",null,n.createElement(O,{className:g,itemProp:"headline"},y?A:n.createElement(m.Z,{itemProp:"url",to:C},A)),n.createElement("div",{className:(0,r.Z)(p,"margin-vert--md")},n.createElement("time",{dateTime:I,itemProp:"datePublished"},L),void 0!==M&&n.createElement(n.Fragment,null," \xb7 ",b(M))),n.createElement(k,{authors:U,assets:Z})),x&&n.createElement("meta",{itemProp:"image",content:f(x,{absolute:!0})}),n.createElement("div",{id:y?c.blogPostContainerID:void 0,className:"markdown",itemProp:"articleBody"},n.createElement(l.Zo,{components:d.Z},_)),(F||T)&&n.createElement("footer",{className:(0,r.Z)("row docusaurus-mt-lg",(a={},a[v]=y,a))},F&&n.createElement("div",{className:(0,r.Z)("col",{"col--9":B})},n.createElement(h.Z,{tags:R})),y&&D&&n.createElement("div",{className:"col margin-top--sm"},n.createElement(u.Z,{editUrl:D})),B&&n.createElement("div",{className:(0,r.Z)("col text--right",{"col--3":F})},n.createElement(m.Z,{to:P.permalink,"aria-label":(0,i.I)({message:"Read more about {title}",id:"theme.blog.post.readMoreLabel",description:"The ARIA label for the link to full blog posts from excerpts"},{title:A})},n.createElement("b",null,n.createElement(i.Z,{id:"theme.blog.post.readMore",description:"The label used in blog post item excerpts to link to full blog posts"},"Read More"))))))}},6753:function(e,t,a){a.d(t,{Z:function(){return u}});var n=a(7294),r=a(5999),l=a(7462),i=a(3366),m=a(6010),o="iconEdit_dcUD",s=["className"];function c(e){var t=e.className,a=(0,i.Z)(e,s);return n.createElement("svg",(0,l.Z)({fill:"currentColor",height:"20",width:"20",viewBox:"0 0 40 40",className:(0,m.Z)(o,t),"aria-hidden":"true"},a),n.createElement("g",null,n.createElement("path",{d:"m34.5 11.7l-3 3.1-6.3-6.3 3.1-3q0.5-0.5 1.2-0.5t1.1 0.5l3.9 3.9q0.5 0.4 0.5 1.1t-0.5 1.2z m-29.5 17.1l18.4-18.5 6.3 6.3-18.4 18.4h-6.3v-6.2z"})))}var d=a(3725);function u(e){var t=e.editUrl;return n.createElement("a",{href:t,target:"_blank",rel:"noreferrer noopener",className:d.kM.common.editThisPage},n.createElement(c,null),n.createElement(r.Z,{id:"theme.common.editThisPage",description:"The link label to edit the current page"},"Edit this page"))}},1750:function(e,t,a){a.d(t,{Z:function(){return l}});var n=a(7294),r=a(9960);function l(e){var t=e.permalink,a=e.title,l=e.subLabel;return n.createElement(r.Z,{className:"pagination-nav__link",to:t},l&&n.createElement("div",{className:"pagination-nav__sublabel"},l),n.createElement("div",{className:"pagination-nav__label"},a))}},7774:function(e,t,a){a.d(t,{Z:function(){return s}});var n=a(7294),r=a(6010),l=a(9960),i="tag_hD8n",m="tagRegular_D6E_",o="tagWithCount_i0QQ";function s(e){var t,a=e.permalink,s=e.name,c=e.count;return n.createElement(l.Z,{href:a,className:(0,r.Z)(i,(t={},t[m]=!c,t[o]=c,t))},s,c&&n.createElement("span",null,c))}},62:function(e,t,a){a.d(t,{Z:function(){return s}});var n=a(7294),r=a(6010),l=a(5999),i=a(7774),m="tags_XVD_",o="tag_JSN8";function s(e){var t=e.tags;return n.createElement(n.Fragment,null,n.createElement("b",null,n.createElement(l.Z,{id:"theme.tags.tagsListLabel",description:"The label alongside a tag list"},"Tags:")),n.createElement("ul",{className:(0,r.Z)(m,"padding--none","margin-left--sm")},t.map((function(e){var t=e.label,a=e.permalink;return n.createElement("li",{key:a,className:o},n.createElement(i.Z,{name:t,permalink:a}))}))))}}}]);