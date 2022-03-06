"use strict";(self.webpackChunklinkedin_clone_documentation=self.webpackChunklinkedin_clone_documentation||[]).push([[409],{3905:function(e,t,n){n.d(t,{Zo:function(){return u},kt:function(){return f}});var i=n(7294);function r(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function a(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var i=Object.getOwnPropertySymbols(e);t&&(i=i.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,i)}return n}function o(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?a(Object(n),!0).forEach((function(t){r(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):a(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function l(e,t){if(null==e)return{};var n,i,r=function(e,t){if(null==e)return{};var n,i,r={},a=Object.keys(e);for(i=0;i<a.length;i++)n=a[i],t.indexOf(n)>=0||(r[n]=e[n]);return r}(e,t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);for(i=0;i<a.length;i++)n=a[i],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(r[n]=e[n])}return r}var s=i.createContext({}),c=function(e){var t=i.useContext(s),n=t;return e&&(n="function"==typeof e?e(t):o(o({},t),e)),n},u=function(e){var t=c(e.components);return i.createElement(s.Provider,{value:t},e.children)},p={inlineCode:"code",wrapper:function(e){var t=e.children;return i.createElement(i.Fragment,{},t)}},d=i.forwardRef((function(e,t){var n=e.components,r=e.mdxType,a=e.originalType,s=e.parentName,u=l(e,["components","mdxType","originalType","parentName"]),d=c(n),f=r,b=d["".concat(s,".").concat(f)]||d[f]||p[f]||a;return n?i.createElement(b,o(o({ref:t},u),{},{components:n})):i.createElement(b,o({ref:t},u))}));function f(e,t){var n=arguments,r=t&&t.mdxType;if("string"==typeof e||r){var a=n.length,o=new Array(a);o[0]=d;var l={};for(var s in t)hasOwnProperty.call(t,s)&&(l[s]=t[s]);l.originalType=e,l.mdxType="string"==typeof e?e:r,o[1]=l;for(var c=2;c<a;c++)o[c]=n[c];return i.createElement.apply(null,o)}return i.createElement.apply(null,n)}d.displayName="MDXCreateElement"},6032:function(e,t,n){n.r(t),n.d(t,{assets:function(){return u},contentTitle:function(){return s},default:function(){return f},frontMatter:function(){return l},metadata:function(){return c},toc:function(){return p}});var i=n(7462),r=n(3366),a=(n(7294),n(3905)),o=["components"],l={sidebar_position:3},s="Firebase",c={unversionedId:"chat-smart-replies/setup/firebase",id:"chat-smart-replies/setup/firebase",title:"Firebase",description:"For this project we are going to use Firebase. Firebase is a platform developed by Google for creating mobile and web applications. It is best described as BaaS (Backend as a Service). It has a lot of inbuilt features, which we will use to our advantage such as Authentication, NoSQL DB, Cloud Storage, Functions, Notifications, Analytics, Hosting, etc.",source:"@site/docs/chat-smart-replies/setup/firebase.md",sourceDirName:"chat-smart-replies/setup",slug:"/chat-smart-replies/setup/firebase",permalink:"/linkedin-clone/docs/chat-smart-replies/setup/firebase",editUrl:"https://github.com/Imperial-lord/linkedin-clone/docs/chat-smart-replies/setup/firebase.md",tags:[],version:"current",sidebarPosition:3,frontMatter:{sidebar_position:3},sidebar:"tutorialSidebar",previous:{title:"Radar",permalink:"/linkedin-clone/docs/chat-smart-replies/setup/radar"},next:{title:"Google Login",permalink:"/linkedin-clone/docs/chat-smart-replies/setup/google-login"}},u={},p=[{value:"Adding application to Firebase",id:"adding-application-to-firebase",level:2},{value:"Explore FlutterFire",id:"explore-flutterfire",level:2}],d={toc:p};function f(e){var t=e.components,l=(0,r.Z)(e,o);return(0,a.kt)("wrapper",(0,i.Z)({},d,l,{components:t,mdxType:"MDXLayout"}),(0,a.kt)("h1",{id:"firebase"},"Firebase"),(0,a.kt)("p",null,"For this project we are going to use Firebase. Firebase is a platform developed by Google for creating mobile and web applications. It is best described as BaaS (Backend as a Service). It has a lot of inbuilt features, which we will use to our advantage such as Authentication, NoSQL DB, Cloud Storage, Functions, Notifications, Analytics, Hosting, etc."),(0,a.kt)("h2",{id:"adding-application-to-firebase"},"Adding application to Firebase"),(0,a.kt)("p",null,"After creating your new Firebase project, add applications to firebase. You can do that by clicking on the add app button. The instructions are straight forward from there and are well-documented in the Firebase docs."),(0,a.kt)("p",null,(0,a.kt)("img",{loading:"lazy",alt:"Firebase",src:n(5261).Z,width:"2880",height:"1130"})),(0,a.kt)("p",null,"Keep in mind the following points while adding applications to Firebase."),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Add Android/iOS apps as per your requirement and OS. Enable all required features in the Firebase console - such as authentication, cloud firestore, firebase storage, etc."),(0,a.kt)("li",{parentName:"ul"},"Ensure that you have activated authentication for Google, GitHub, and Email-Password because we will make use of these for authenticating users into our application."),(0,a.kt)("li",{parentName:"ul"},"Add ",(0,a.kt)("inlineCode",{parentName:"li"},"SHA1")," and ",(0,a.kt)("inlineCode",{parentName:"li"},"SHA256")," keys since they will be needed for enabling authentication in case of Android."),(0,a.kt)("li",{parentName:"ul"},"While adding applications, you will need to follow instructions to make changes to your apps, and add files. Notably ensure that you have added the files ",(0,a.kt)("inlineCode",{parentName:"li"},"GoogleService-Info.plist")," and ",(0,a.kt)("inlineCode",{parentName:"li"},"google-services.json")," appropriately in the project.")),(0,a.kt)("h2",{id:"explore-flutterfire"},"Explore FlutterFire"),(0,a.kt)("p",null,"FlutterFire is a set of Flutter plugins which connect your Flutter application to Firebase. It comes in really handy when working because it has a complete list of all plugins you will need, and also has Dart code written to explain their use cases."),(0,a.kt)("p",null,"We will however, need to run only 1 command in our case to create the ",(0,a.kt)("inlineCode",{parentName:"p"},"firebase_options.dart")," file."),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-bash"},"# Install the CLI if not already done so\ndart pub global activate flutterfire_cli\n\n# Run the `configure` command, select a Firebase project and platforms\nflutterfire configure\n")),(0,a.kt)("p",null,"The commands will guide you to select your project, check if your apps have been added and then create the ",(0,a.kt)("inlineCode",{parentName:"p"},"firebase_options.dart")," file for you. This will be later useful when we initialise firebase in our ",(0,a.kt)("inlineCode",{parentName:"p"},"main.dart")," file as below -"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart",metastring:'title="lib/main.dart"',title:'"lib/main.dart"'},"import 'firebase_options.dart';\n\nFuture<void> main() async {\n  WidgetsFlutterBinding.ensureInitialized();\n  await Firebase.initializeApp(\n    options: DefaultFirebaseOptions.currentPlatform,\n  );\n\n  /* more lines of code*/\n\n  runApp(const MyApp());\n}\n")))}f.isMDXComponent=!0},5261:function(e,t,n){t.Z=n.p+"assets/images/firebase-3c2324d39d5f3d1e364c1f478bb8be41.png"}}]);