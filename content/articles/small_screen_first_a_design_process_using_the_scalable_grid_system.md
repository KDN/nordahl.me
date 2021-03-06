# Small screen first. A design process using the Scalable Grid System

Editors note: The following article was published a dissertation project for the *Master of Digital Design with Honours* degree. The paper was marked with a 7 out of 7 mark by the examiners at Griffith University Collage, Brisbane, Australia. This article is in the same state as the published paper except for added interactivity. The paper is dated June 2nd 2011.

## Synopsis

This paper describes the fragmentation in the current design of web content and looks at a possible solution to ease the entry point for cross browser and multi screen size development. It takes a step back from the discussion regarding the design aesthetics and focuses on the overall layout.
The paper starts with an overview of layouts in general to get a feel for where grid systems come from. The next step is to look at the fixed size systems that where the original grid layouts. It then goes on to look at their modern counterparts with some thoughts on how to tackle multiple platforms. 

The paper then looks at designing for the small screen first approach, instead of focusing on the larger sizes first. This is a new thought process which is going to speed up the design and development of web applications on multiple platforms as it’s easier to add aesthetics and content as you move up in screen size instead of removing functionality and content by moving down.

The paper then goes on to talk about the different components of the [scalable.gs](http://scalable.gs).  First up is an overview of what the system actually is and what it does. The next part takes an overview on the rapid transformation of the system from it’s initial minimalism to a more feature rich system that handles things such as site load and optimization between screen sizes and devices. The paper then goes on to mention the software technologies used in the system and then to define the different experiences the system is optimized for. Next is a description of the core functionality like column collapsing/expanding, dynamic loading and the unified control panel. This coupled with the responsive web design approach is what makes this framework unique compared to other grid systems. The last part of the paper goes through how the system is tested on applications with different requirements.

## Table of Contents

1. Layout
    1. Fixed width grid layout
    2. Scalable grid layout
2. Design for small screen first design process
3. Related work
4. The Scalable Grid System framework [scalable.gs]
    1. Introduction
    2. Development of the framework
    3. Software technologies
    4. Defining resolution groups
        1. Phone / small screen devices
        2. Tablet
        3. TV/projection
        4. Laptop/desktop
    5. Scaling depending on viewport size
    6. Dynamic loading
    7. Uni!ed control panel to shift between the views
    8. How to approach sclalable.gs
    9. Using the Core
    10. Testing
        1. nTodo
        2. Blurb.it
        3. KDNMEDIA (prototyped as digital asset store)
        4. Kedano
        5. Cross browser testing
5. Future research
6. Reference
7. Appendix



## Layout
The standardization of layout can be traced back to the 1450s as printing in Europe moved from movable type to typesetting using individual metal letters. The basic principle of a grid is extremely simple. A grid is the graphics design equivalent of a buildings foundation. The vertical lines will relate to the column widths while the horizontal lines will be determined by the space that a line of type occupies. The next 450 years of printing was dominated by symmetrical design, mostly devoted to book production. (Roberts, R)

The grid was taken through a few different phases between the start of the century until the second world war, mainly based around the typographic elements of the baseline and field grids. Many designers contributed to the widespread application of the grid structure, but the publication, “The graphic artist and his design problems” by Josef Müller-Brockton is one of the pillar resource to the teaching of graphic design(Müller-Brockton, J).


“The grid system is an aid, not a guarantee. It permits a number of possible uses and each designer can look for a solution appropriate to his personal style. But one must learn how to use the grid; it is an art that requires practice.” - Josef Müller-Brockmann

### Fixed width grid layout
Web developers have only recently started to show a real interest in grid systems. While grid systems have seen significant use in print media, interest from web developers has only recently seen a resurgence. Website design frameworks producing HTML and CSS had existed for a while before newer frameworks, such as the 960 grid system, popularized the use of grid-based layouts.

The problems of fixed width grid systems and layouts becomes more apparent when the size is specified for a larger layout than the users browser viewport. This approach asks the user to adapt to the design rather than the reverse. Users have to actively interact with the content in order to view it, and might in the worse case miss key content as it is hidden (Figure 1.1).
￼Figure 1.1

The problem of clipped content due to screen size limitation becomes increasingly important with web browsers running on the next version of Mac OSX, Lion. The automatic behavior of the scrollbars is that they autohide unless you are actively scrolling around in the document or resizing the window size (Figure 1.2).
￼Figure 1.2

The user experience of the content gets compromised even further when a fixed width layout is accessed on a mobile device like a smartphone or a small screen tablet. Many of these devices have build in interaction to zoom in and focus on specific parts of the web content (figure 1.3).  
￼Figure 1.3

### Scalable grid layout

> The control which designers know in the print medium, and often desire in the web medium, is simply a function of the limitation of the printed page. We should embrace the fact that the web doesn’t have the same constraints, and design for this flexibility. But first, we must accept the webb and flow of things.

> <cite>- John Allsopp, A Dao of Web Design</cite>

The whole responsive web movement was popularized by Marcotte in the form of responsive web design. That definition has become very specific for websites designed with a percentage value for the width and then optimization by using media-queries. Marcotte wrote a blog post in the List Apart (Marcotte, E) blog which has become the main reference point for scaling web design. The term responsive web design covers fluid widths and percentage values and optimization via media-queries. Only this is not seen as a grid framework or a framework itself. The topic was first covered in the Bulletproof CSS book (Cederholm, D.; Marcotte, E.), but there is 4 books under production scheduled for release over the next 6 months covering the topic of cross device design and development.

￼By applying percentage values to the width of the grid system you suddenly have an adaptive design, but within a limited scope. The problem with only specifying percentage values for the grid becomes apparent on a small screen. The paragraphs, especially in the sidebar is almost transformed into a one column list of words instead of sentences (figure 1.4). The designer meet the same kind of problem if the screen is to wide as well with line width exceeding the preferred 18 to 22 words in a line (figure 1.5).


## Design for small screen first design process
The most common way of optimizing for the smartphone and tablet form factor has been to design all the features into a desktop experience and then shift those functions around or hide them completely when that original design is refitted into the tablet form-factor. The original design is in most cases almost entirely gone when the design is refitted again into the smartphone experience. Instead of rethinking how you can use the screen real-estate as you move further down in the screen size, it would be better to start at the other end and design the for the smallest screen first. As the screen size increases the app could gain visual elements and even more functionality if it is required at the larger screen size. If the smartphone or device supports touch based input the user experience can use these innovations to aid the setbacks of the limited screen real-estate.

## Related work
There has been much work done on usability of non-adaptive small screen interfaces. They generally conclude that the output design is harder to achieve due to the limited screen real estate. For example, in comparison to large screens, reading text requires more navigation (Dillon, A.; Richardson, J.; and McKnight, C.) and searching the Internet is slower (Jones, M.; Bu- chanan, G.; and Thimbleby, H.).

An early design approach for mobile devices is to eliminate the horizontal scrolling requirement by presenting all content in a single narrow column (with Opera Small Screen Rendering, for example; www.opera.com). Although fast and simple to implement, this method increases page height significantly and requires users to scroll up and down excessively. Y. Hwang and colleagues improved the one-column method by considering the importance of both Web components and Web page structure (Hwang, Y.; Kim, J. and Seo, E.).

The fluid 960 grid system is an adoption of the original 960.gs into a fluid widths of the grid with percentage values(Bau, S). The Fluidgrid system is a very basic system without any boundaries. This means that the framework itself won’t work on multiple devices as each platform would require their own setup since the framework doesn’t adjust (Silvashy, J).

Adapt.js is a JavaScript file that determines which CSS file to load before the page is rendered by the browser, depending on the viewport size. The framework listens to any viewport changes on the fly and serves only the CSS required for that viewport size. One of the drawbacks of this Ajax method of pulling in the CSS fragment you require is that the screen might flash for a brief moment while the correct CSS  is loaded (Smith, N).

## The Scalable Grid System framework [scalable.gs]


### Introduction

The Scalable Grid System or scalable.gs for short, is a device independent and cross screen size web development framework. The system use a range of technologies to optimize the user experience of a website on a range of different platforms.

The idea for the research subject and the framework started as a need to optimize websites for the rapid explosion of the smartphone platform and the change in the way people access the internet. 
The framework is available on it’s own website, http://scalable.gs where the visitor can download multiple versions of the framework to fit their own grid requirements. The source code itself is available in a centralized version controlled environment on Github. Github is a web-based hosting service for software development projects that use the Git revision control system to version and securely store code. By using github for the framework, all the code is checked in at stages so it is easier to navigate back and forth between code revisions in additions to 3rd party developer interaction around the future of the framework. The scalable grid system has shifted dramatically throughout this 6-month development/research period as can be seen in the online Github repository (http://github.com/kdn/scalable.gs).

### Development of the framework
The framework started out as a CSS only framework optimized for the desktop computer with grid collapsing down to the mobile platform. By continually testing the framework during the development of four different applications described later in this paper, the framework shifted to include other technologies as well. This especially became apparent during the development of the social video application blurb.it as sketching and designing for the desktop first, interfered with the usability on the smaller platform.
The way the code was loaded in the browser had to change when the go-to-design methodology changed. The framework code was rearranged so the code for the smallest platform was loaded first and become the core. Each additional platform supported, become a separate module. With this setup it is very easy to add new modules in the future, as the internet reach even more platforms. 
The last iteration of the framework discovered during the testing phase was the need to dynamically load platform specific code instead of loading everything at once. This becomes important on larger applications which include a lot of CSS code for aesthetics, especially on web-platforms with a touch screen, since the UI for those platforms requires an evolution of the interface due to the touch input.

### Software technologies

The grid system uses three key software specifications with an opt-in in the future for a forth component as it gets implemented in browsers. Media-queries are used in the framework to automatically switch the column collapsing. The multicolumn module is used in the framework on very wide browsers to reduce the line width of the paragraphs. Javascript is used to dynamically load the correct stylesheets depending on the viewport size or type. In addition to that JavaScript is used to insert the the universal control panel as well as override the viewport size and type detection.
CSS Media Queries is a design module originating for the HTML4 and CSS2.1 standards but has been developed even further in its current CSS3 form. Media queries are used to specify specific stylesheet rules to a specific type of media, screen size or interactive state of the accessing platform. It is important to note that media-queries alone does not prevent the data loaded into the browser. The designer can divide code into separate units and “suppress access” with media-queries, but all the code is loaded into the browser. The code is however not active until the conditions of the media-queries are met. Figure 4.1 displays a media-query that targets an iPad in either Portrait or landscape mode and then sets the body background to a red color (Lie, H W; Celik, T; Glazman D; Kesteren, A).
￼
Figure 4.1


CSS Multicolumn layout module is an open technology standard under development by the W3C. The purpose of the technology is to sort information into columns automatically based on the amount of space the content area spans over. The content can include headings, paragraphs of text, images, video, audio and lists. The specification includes information on the pagination for physical printing. The multicolumn module is used in the scalable.gs for very wide grid blocks (Figure 4.2).
￼
Figure 4.2

JavaScripts primarily usage is to enhance the interaction experience of a website, but it can however help us gradually load design assets depending on the platform, screen size and method of interactivity. JavaScript enables programmatic access to computational objects within a host environment.

Grid Layout contains features for web application authors who want to achieve many different layouts by dividing up major regions of an application to define the relationships between size, position and layout in regions of the markup document. The huge advantage the Grid Layout module has compared to the regular way of setting up a grid is that it does not have an impact on the markup of the document like all the hybrid grid frameworks do (Mogilevsky, A; Cupp, P; Mielke M; Glazman, D)

### Defining resolution groups

With the diversity of different accessing platforms it is important to define groups of resolution scopes. Some of the platform groups already have or are about to incorporate high pixel density displays into their line of products. This further complicates the challange of defining common groups. The current way operating systems handle high pixel per inch displays is by automatically doubling the content size unless specifically asked not to. This is great for the current state of web content, but might be a problem in the future when these next generation screens becomes the common displays. 


#### Phone / small screen devices
A cellphone/smartphone is defined as a device that includes a cellular transmitter and a screen size below 5”. The cellphone/smartphone has been divided into three different categories depending on screen width size. 

* small: 84px to 132px
* medium: 208px to 240px
* large: 300px(portrait) to 800px(landscape) (include high resolution variations as well)

The small group consists of devices with screen sizes too small to access the modern web. The medium category includes most of the feature rich phones today, and even some of the smaller smartphones. This screen size has enough screen real estate to display modern websites. The large category is commonly talked about as mobile in the web industry and includes smartphones based on the Android, iOS, WebOS and Windows 7 operating systems.
This range of devices will be the bases that the rest of the system build upon as the screen size and resolution gets larger. The touch based devices could be targeted separately for optimized user interface for those devices.

#### Tablet
The tablet form factor has been divided into two sections and is treated differently. The first section of tablets consist of touch screen enabled computers who often have a full screen keyboard for input. They are build on traditional computer components and are most likely to be running a Windows based operating system. This section of tablets will be defined in the laptop/desktop group of the accessing platforms. The other section of tablets consist of the modern usage of the term such as iPad, Galaxy Tab or Motorola Xoom. They are build on the same kind of hardware used in smartphones but have a screen size between 7 and 11 inches. The tablets have a dynamic UI that changes depending on the way you hold the device, portrait or landscape position. The resolutions range from 600 to 800 pixel width in portrait position and all the way up to 1280 pixel width in landscape position. 


#### TV/projection
People have tried to connect the TV/projection experience to the internet for interaction with webpages for almost a decade now, but during the last couple of years or so there has been a fundamental change in the way users interact with the web on smartphones and tablets. The content that users consume as changed from articles and pictures, to include video and sound. This change of the user habits has enabled some of the big internet companies to take this platform for another spin. The TV/projection experience require a totally different user interface as the interaction is often through a remote or keyboard. A HD ready display has a minimum resolution of 1280 pixel width and up to 1920 pixels on full HD displays.


#### Laptop/desktop
This group consist of everything that is not a tablet and has a screen resolution above a 600 pixel width. This is the “rich client” that often has that most often has the most modern hardware. There is however a downfall for this platform and that is called Internet Explorer(IE), more specifically everything before IE9. By adding support for that browser the CSS often becomes full of workarounds for backwards compatibility.

Scaling depending on viewport size
The main task for the scalable.gs is to adopt to the appropriate screen resolution by scaling and expanding or contracting columns depending on the available space. If the viewport is scaled by the user, the system has to dynamically adapt on the fly. The overall width of the grid system is determent by a minimum and a maximum value. The overall space is then divided into multiple grid fields depending on the overall maximum width (figure 5.1). As a general rule of thumb, more grid fields is recommended as the overall max width is expanded. The width of the grid fields themselves take a percentage value depending on the amount of grids. When a grid column reaches its minimum width size, it expands to fill the space of multiple grid columns to adapt to the limited space. The visual effect of the transformation is a smooth scaling animation. 
￼
Figure 5.1

￼The system has build in support for folding of the grid field widths depending on the viewport width. The system has build in support for folding at the smartphone, tablet, TV/projection and laptop/desktop viewport sizes, but can be customized for the specific applications need  (Figure 5.2).


### Dynamic loading
The core grid system is loaded in as a default together with a CSS reset and the mobile styling. The developer can then decide if they want to serve all of the design in one file or split it into specific files for mobile, tablet, TV/projection or laptop/desktop specific files. The unified solution is often the a better solution for smaller sites while the separate option is better fit for more detailed design differences.

To further create a dynamic loading application, the system has an add-in for dynamic loading of assets like images based on the resolution group.


### Unified control panel to shift between the views
By introducing a unified control panel as part of the application structure you enable the visitor to override the automatic optimization for the specific visiting platform. An example would be to display the TV experience of an application when you connect a smartphone to the display. Since this has to be a functionality universally accessible on the different experiences it would have to have a unified design. At the same time the placement of these controls have to be the last thing in the document object model as it does not add anything to the content but only acts as a visual switcher.
This feature is not activated on the attached example files as none of them require this functionality. This feature of the framework will however be shown at the presentation of the paper as a more future rich application using the scalable grid system will be further along in it’s development cycle by that time.

How to approach sclalable.gs
The code structure of the framework is:


``
| index.html
| stylesheets/
|----- core.css
|----- 600-to-max.css
|----- Mobile.css
|----- Tablet.css
|----- Desktop.css
|----- Tv-projection.css
|----- Print.css
| javascripts/
|----- plugin.js
|-----Scripts.js
``

The recommended way of working with the framework is to comment out the dynamic loading of code in the development phase and then shift each specific part over to dynamic loading in the optimization phase development.
The CSS part of the framework lives at the start of the core.css file and in the 600-and-up.css file. The main work in the starting phase is to develop the markup structure as the HTML file together with the main layout in the core.css file. The core.css file includes media-queries for each of the screen/device groups for faster development.
When the project reaches the optimization stage, it is time to start shifting the code towards dynamic loading. It is recommended to include core code like colors, fonts and other primary aesthetics in the core.css file. You then shift the general styling shared between the tablet, desktop and TV-projection into the 600-to-max.css file. The rest of your code is then separated into their own sections.
You should now remove the comments around the dynamic loading and start testing your application load. The firebug add-on for Firefox or the Developer Tools in Chrome / Safari are great to measure the responsiveness of your application.


### Using the Core
The framework base size is set by the body font size and then referenced with the EM measurement standard throughout the scalable.gs. By having one base value it is easy for people with low eye sight or for people accessing the content through reading devices to select the font size they are comfortable with. The minimum and maximum sizes for the scalable wrapper is then adjusted accordingly to that one font size. The real benefit of this is that button and element sizes automatically scale according to the base font size. If the size measurement is adjusted by a pixel value it does not scale when the font size is changed. Another important aspect for using the EM value for size measurement instead of PX based measurement is for element effects like shadows and rounded corners. In the case of a pixel based value these effects wont scale on a base font value change, or if the site is displayed on a high resolution display.


### Testing
The testing of the framework was done by designing 4 different web applications with the mobile first design process that where developed using the scalable.gs. The applications have a variety of functionality to get a broad set of use cases for the framework. See each specific application section for an explanation of what they do and how the design for small screen first process and the scalable.gs framework ease the cross screen size development.


#### nTodo
￼Note: See the video guide for an overview of how this application adapt to the different screen sizes.

This is a simple todo application only meant for the smartphone platform, but with the use of the scalable.gs it automatically works well on both the tablet and desktop platforms as well. Due to its simplicity of the application the dynamic loading and unified control panel is removed altogether. This application use the local database system in HTML5 to store to-do’s.
This application uses the 4 grid system layout with a body font-size set to 12px, minimum screen size set to 20em and maximum set to 60em. This scales the application from the smartphone experience to the tablet experience with a narrow 2 column list on larger desktop screens.  

#### Blurb.it
Note: This application will be displayed at the presentation.￼
This is a social video sharing application. The primary focus of the application is smartphones with a video recording functionality, but the content can be accessible on tablets, desktops and HDTV’s as well.
This project has been in development since the start of the scalable.gs and was on one of the key systems that followed the same development process as the framework. This has resulted in much back and forth on the application by first using the “design for full screen first” method and then later on started from scratch to focus on a mobile first design philosophy. 

This project is more an application than a website due to the rich functionality and the of user interface on the touch based platforms. The dynamic loading of files to each specific platform ease the overall load of each page. The unified control system will be implemented with custom application hooks at a later date when a desktop version is appropiate.
This application uses the 20 grid system layout with a 12px body font-size. The minimum width is set to 20em and it scales all the way up to 160em. The font-size is tripled at both 720p and 1080p for HD displays. The EM values for minimum and maximum width are adjusted accordingly for those HD displays.

#### KDNMEDIA (prototyped as digital asset store)
￼
Note: See the video guide for an overview of how this application adapts to different screen sizes.

This is a digital asset store with a focus on valuable tools a designer can’t live without. The store experience on a mobile device should primarily be to view the product pictures, as the store itself sells digital assets downloaded on a laptop or a desktop computer.

The store uses the 12 grid system with a body font-size of 12px. The store scales from 20em and up to 100% width. This web app uses the build in optimization to section content into several sub columns on widescreen displays.

#### Kedano
Note: This application will be displayed at the presentation.

This is a social content sharing platform. It include everything from simple links, articles, pictures, videos and sound to social interactions through comments, profiles and a gamification layer. The idea behind the platform is that you’re able to access the content from users you follow or content you bookmark anywhere.
The main focus in the design process if this application was to display video, pictures and article previews on a smartphone. The Scalable grid system helped as a development platform due to the ease of fast cross device prototyping required.

Kedano uses the 24 grid system for many different content setups according to content type. It uses a 12px body font-size as it’s base and it scales from 20em to 160em. As with the blurb.it app, this uses triple body font-size when viewed on HD displays. Unless the users HDTV/projector has a web browser the user has to manually switch on that mode of the web application through the universal control panel to activate the optimum viewing experience for that platform.

This application is still in early stages of development but the scalable.gs has become a valuable tool in rapid user experience testing.


#### Cross browser testing
Note: See the appendix for information about the image companion to this section
The key goal of the scalable.gs is to ease the cross screen size design and development of web content and applications. One of the key factors of reaching that goal is browser support. The framework is tested in the following browsers; Internet Explorer 6+, Firefox 3+, Chrome 7+, Safari and Opera on Windows, Mac and Linux. The framework works in all the mentioned browsers and environment. See a list of screenshots of how the applications behaved in the different browsers in the assets folder on the companion disk.
Besides browser testing, the framework was tested on the following devices/units; iPhone, iPad, Galaxy S2(Android) and Playstation 3. The framework was not tested on Apple TV or Google TV enabled television sets, but both of those have browsers based on the Webkit framework which supports all the used technologies.

## Future research
The research in this paper can be extend upon by defining a new design methodology for a for small screen first approach. The framework would then benefit from a continuous update route along the development of the new design methodology.
The research done in this paper can be taken another step in order to answer if the design aesthetic have had an impact from the mobile first approach or from the framework itself. With the limited screen real estate it would be interesting to see if the thought process for the larger screen size later on has been affected. 
Another aspect to have a look at is how the framework affects the industry. Is it going to be used, what is the use cases, is it useful if the goal of the project is to deliver for only one platform?
Another important discussion is if the small screen first thought process becomes a valued market strategy. It is estimated that by the end of 2011, the smartphone market will outsell the desktop market.

## References

Baudisch, P.; Xie, X.; Wang, C.; Ma, W. Y., 2004. Collapse-to-zoom: viewing web pages on small screen devices by interactively removing irrelevant content. Symposium on User Interface Software and Technology,  p. 91-94.

Cederholm, D.; Marcotte, E., 2010. Handcrafted CSS: More bulletproof web design. 1 ed. Berkley, CA, USA: New Riders,  p. 131-170.

Dillon, A.; Richardson, J.; and McKnight, C., 1990. The effects of display size and text splitting on reading length text from screen. Behaviour and Information Technology, 9 (3),  p. 215-227.

Hwang, Y.; Kim, J. and Seo, E., 2003. Tructure-Aware Web Transcoding for Mobile Devices. IEEE Internet Computing, 7 (5),  p. 14-21.

Jones, M.; Buchanan, G.; and Thimbleby, H., 2003. Improving
web search on small screen devices. Interacting with Computers, 15 (4),  p. 479-495.

Lie, H W; Celik, T; Glazman D; Kesteren, A, 2010. Media Queries. [webpage].
Available from: http://www.w3.org/TR/css3-mediaqueries/
[accessed 2 June 2011]

Marcotte, E, 2009. Fluid Grids. [Webpage].
Available from: http://www.alistapart.com/articles/fluidgrids/
[accessed 24 May 2011]

Mogilevsky, A; Cupp, P; Mielke M; Glazman, D, 2011. Grid Layout. [webpage].
Available from: http://www.w3.org/TR/css3-grid-layout/
[accessed 2 June 2011]

Silvashy, J, 2010. fluidgrid. [webpage].
Available from: http://fluid.newgoldleaf.com/
[accessed 24 May 2011]

Smith, N, 2011. Adapt.js. [Website]. 960.gs, 
Available from: http://adapt.960.gs/
[accessed 12 May 2011].

## Appendix

The appendixes for this paper are available in the assets folder on the supplementary disc. They where chosen to not be on printed material to help saving the environment.
Appendix A - List of images of how the framework work across multiple browsers and platforms.