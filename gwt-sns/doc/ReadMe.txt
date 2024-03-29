2010年3月7日开始写弹出窗口代码.

// Create a new panel
		AbsolutePanel absolutePanel = new AbsolutePanel();
	    absolutePanel.setSize("250px", "250px");
	    absolutePanel.ensureDebugId("cwAbsolutePanel");

	    // Add an HTML widget to the panel
	    HTML text = new HTML("11111111111111");
	    absolutePanel.add(text, 10, 20);

	    // Add a Button to the panel
	    Button button = new Button("222");
	    absolutePanel.add(button, 80, 45);
	    
	    
	    DecoratorPanel rigntPanel = new DecoratorPanel();
	    rigntPanel.add(new HTML("11111111111111"));
	    
	    absolutePanel.add(rigntPanel, 180, 45);
	    
	    // Wrap the absolute panel in a DecoratorPanel
	    DecoratorPanel absolutePanelWrapper = new DecoratorPanel();
	    absolutePanelWrapper.setWidget(absolutePanel);

	    // Add the components to a panel and return it
	    HorizontalPanel mainLayout = new HorizontalPanel();
	    mainLayout.setSpacing(10);
	    mainLayout.add(absolutePanelWrapper);
	    mainLayout.setLayoutData(HorizontalPanel.ALIGN_CENTER);
	    initWidget(mainLayout);
	    

	    
	    
<!--
  Copyright 2008 Google Inc.
  Licensed under the Apache License, Version 2.0 (the "License"); you
  may not use this file except in compliance with the License. You may
  may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
  implied. License for the specific language governing permissions and
  limitations under the License.
-->

<!DOCTYPE ui:UiBinder 
  SYSTEM "http://dl.google.com/gwt/DTD/xhtml.ent"
  [
    <!ENTITY % MyEntities SYSTEM "MyEntities.ent">
    %MyEntities;
  ]
>
<!-- 
  This scary DOCTYPE section is not required. It's here to demonstrate two 
  things.
  
  First, this bit:
  
    SYSTEM "http://dl.google.com/gwt/DTD/xhtml.ent"
 
  allows you to use familiar HTML entities like &nbsp; and &bull;, 
  which are not part of XML. (The file is also available as 
  https://dl-ssl.google.com/gwt/DTD/xhtml.ent.)
  
    
  Next, the bit in square brackets is even more optional. It shows how
  to add your own entities, in this case pulling in additional
  definitions for &point-left; and &point-right; from local file
  MyEntities.ent.

  You don't have to be so verbose to include a local file! For
  example, you might instead grab your own copy of xhtml.ent
  and add your custom entity definitions to it, and use this 
  for your DOCTYPE:
  
  <!DOCTYPE ui:UiBinder SYSTEM "my-xhtml.ent">
-->

<ui:UiBinder xmlns:ui='urn:ui:com.google.gwt.uibinder'
  xmlns:gwt='urn:import:com.google.gwt.user.client.ui'
  xmlns:demo='urn:import:com.google.gwt.uibinder.test.client'

  ui:defaultLocale="en_US"
  ui:generateKeys="com.google.gwt.i18n.rebind.keygen.MD5KeyGenerator"
  ui:generateFormat="com.google.gwt.i18n.rebind.format.PropertiesFormat"
  ui:generateFilename="myapp_translate_source"
  ui:generateLocales="en_US"
>

<ui:with field='external' type='com.google.gwt.uibinder.test.client.WidgetBasedUiExternalResources'>
  (This text is ignored, but it's a handy place to document a resource.)
  
  external is used to test receiving a resource from the owner via
  @UiField(provided = true), particularly useful for dependency
  injection via Gin and the like
</ui:with>

<ui:with field='values' type='com.google.gwt.uibinder.test.client.FakeBundle'>
  Tests the default creation of a resource via GWT.create(), and also the ability
  for a resource to provide arbitrary objects to arbitrary attributes (look for FooLabel)
</ui:with>

<!-- 
  Tests creating a CssResource from an external file.
 -->
<ui:style field='myStyle' src='WidgetBasedUi.css Menu.css' 
    type='com.google.gwt.uibinder.test.client.WidgetBasedUi.Style'>
    .menuBar { 
      font-family: sans-serif;
    }
</ui:style>
 
<ui:style field='myOtherStyle' type='com.google.gwt.uibinder.test.client.WidgetBasedUi.Style'>
  /* because we extend WidgetBasedUi.Style and it's tagged @Shared, we can refine the menubar 
     style defined in other files */
  
  .menuBar.psychedelic {
    background-color: Yellow;
  }

  /* Visible only to this template  */
  .privateColor {
    color: Purple;
  }
</ui:style>

<ui:style field='myTotallyPrivateStyle'>
  /* An inline style tied to no public type */
  
  .superPrivateColor {
    background-color: Gold;
  }
</ui:style>

<ui:style field='cursorifficStyle'>
  @url cursor heartCursorResource;
  .cursor {
    cursor:cursor,pointer;
  }
</ui:style>
<ui:data field='heartCursorResource' src='heart.cur'/>

<ui:style field='mySpritelyStyle'>
  @sprite .simpleSprite { 
    gwt-image: "prettyImage"; 
  }

  @sprite .tilingSprite { 
    gwt-image: "prettyTilingImage"; 
  }
  
  .garish {
    color: Purple;
    font-weight: bold;
    font-family: sans-serif;
    text-shadow: white 1px 1px 1px;
   }

   .garish.tilingSprite {
      font-size: 1.5em; 
    }
</ui:style>
<ui:image field='prettyImage' />
<ui:image field='prettyTilingImage' src='prettyImage.png' flipRtl='true' repeatStyle='Both'/>
<ui:image field='right'/>
<ui:image field='down'/>

<gwt:DockPanel ui:field="root" width="100%" verticalAlignment="ALIGN_TOP">
  <gwt:Dock direction='NORTH'>
    <gwt:HTML>
      <div style='border: 4px solid gray; padding: 4px; margin: 4px;'>
        <img src='http://www.google.com/images/logo_sm.gif' alt="logo" />
        <span ui:field="trimmedMessage"><ui:msg description='"title" of the doc'
          meaning='would not normally do a "meaning" here'
          key='and I would never use "key" at all'>
          <!-- A test expects this *not* to be on one line  -->
          Title area, specified largely in HTML.
        </ui:msg></span>
      </div>
    </gwt:HTML>
  </gwt:Dock>
  <gwt:Dock direction='WEST'>
    <gwt:HTML>
      <div ui:field="sideBar"
      style='border: 4px solid gray; padding: 4px; margin: 4px;'
      >This could<br/>
        be a<br/>
        side bar<br/>
        or something<br/>
        like that...</div>
    </gwt:HTML>
  </gwt:Dock>
  <gwt:Dock direction='CENTER'>
    <gwt:HTMLPanel>
      <p ui:field='bracedParagraph' fnord='blah di blah {{foo: "bar"} di blah'><ui:msg>This is a demonstration and test bed of GWT's shiny UiBinder
      package. At the moment it works mainly as described in
      <a href="http://code.google.com/p/google-web-toolkit-incubator/wiki/DeclarativeUi"
        ui:ph="oldBlogLink">
      this blog post</a>, but it is en route to the use cases desribed at
      <a href="http://go/gwt-uibinder" ui:ph="newBlogLink">http://go/gwt-uibinder</a> and
      <a href="http://go/gwt-uibinder-i18n" ui:ph="i18nBlogLink">http://go/gwt-uibinder-i18n</a>. Early
      adopters should recognize themselves as such, and be prepared to have the
      api rug yanked out from under them.</ui:msg></p>
      <p ui:field="main">
        &point-right;&nbsp;<span ui:field="messageInMain"><ui:msg>This is the main area. 
        It's an <b>HTMLPanel</b>, which allows you to mix 
          &point-right; &bull; XHTML &bull; &point-left; and regular GWT widgets, more or less with 
          impunity. Take the following button for example.</ui:msg></span>&nbsp;&point-left;
      </p>
      <gwt:Button ui:field='myButton'>
        Button with <b id='shouldSayHTML'>HTML</b> contents...
      </gwt:Button>
      <p>
        It's specified using the Button widget, so that it's easy to work with from
        Java code. Its markup has a ui:field value of 'myButton', which allows you to get it using the
        <i ui:field="nonStandardElement">getMyButton()</i> method from MyTemplate.java.  </p>
      <p>
        Here is a similarly clickable
        <demo:ClickyLink text="hyperlink based on a custom widget"
          ui:field="customLinkWidget" popupText="That tickles! "/>. And an
          <gwt:Anchor><i>Anchor to nowhere</i></gwt:Anchor>.

      <p>I bet you like babies in your Image widgets.</p>
      <div class='{cursorifficStyle.cursor}'>
      <gwt:Image ui:field='babyWidget' resource='{prettyImage}'/>
      </div>

      <p ui:field='simpleSpriteParagraph' 
          class='{mySpritelyStyle.simpleSprite} {mySpritelyStyle.garish}
            {cursorifficStyle.cursor}' >
        And sprites too
      </p>

      <p class='{mySpritelyStyle.tilingSprite} {mySpritelyStyle.garish}
          {cursorifficStyle.cursor}'>
        Well how do you like  <br/>
        tiled sprited images...of babies!! <br/>
        Well of course you do. Who wouldn't? 
      </p>

      <p>
        <ui:msg description="">
          Of course, it could just as easily be a Tree under a MenuBar...
        </ui:msg>
      </p>
      <div class="{myStyle.menuBar}">
        <gwt:MenuBar ui:field="topMenuBar" vertical="false">
          <gwt:MenuItem>
            <div id="higgledy">
              <ui:msg description="Last 7 Day Period">
                Higgeldy
               </ui:msg>
            </div>
            <gwt:MenuBar vertical="true" styleName="{myStyle.menuBar}">
              <gwt:MenuItem>able</gwt:MenuItem>
              <gwt:MenuItem>baker</gwt:MenuItem>
              <gwt:MenuItem>charlie</gwt:MenuItem>
            </gwt:MenuBar>
            </gwt:MenuItem>
          <gwt:MenuItem>
            <div id="piggledy">
              <ui:msg description="Last 7 Day Period">
                Piggledy
              </ui:msg>
              </div>
            <gwt:MenuBar vertical="true" styleName="{myStyle.menuBar} {myOtherStyle.psychedelic}">
              <gwt:MenuItem>delta</gwt:MenuItem>
              <gwt:MenuItem>echo</gwt:MenuItem>
              <gwt:MenuItem>foxtrot</gwt:MenuItem>
            </gwt:MenuBar>
          </gwt:MenuItem>
          <gwt:MenuItem>
            <div id="pop-can-has-submenu">
              <ui:msg description="Last 7 Day Period">Pop</ui:msg>
            </div>
            <gwt:MenuBar vertical="true" ui:field="dropdownMenuBar" 
              styleName="{myStyle.menuBar}">
              <gwt:MenuItem ui:field='menuItemCustomDateRange'>
                <ui:msg description="Custom date range">
                  the Dog
                </ui:msg>
              </gwt:MenuItem>
              <gwt:MenuItem>
                <ui:msg>has eaten</ui:msg>
              </gwt:MenuItem>
              <gwt:MenuItem ui:field="menuItemMop" styleName="moppy">
                <ui:msg>the Mop</ui:msg>
              </gwt:MenuItem>
              <gwt:MenuItem ui:field='menuItemLegacy'>
                <span style="white-space:nowrap">The <gwt:MenuItemHTML>pig's in</gwt:MenuItemHTML> a hurry</span>
              </gwt:MenuItem>
            </gwt:MenuBar>
          </gwt:MenuItem>
        </gwt:MenuBar>
        </div>
        <gwt:Tree ui:field='myTree' width="100px" />

      <p>...TextBoxes...</p>
      
      <gwt:TextBox maxLength="21">21 chars only, please</gwt:TextBox>

      <p>...or perhaps a handful of RadioButtons:</p>
      <gwt:RadioButton ui:field='myRadioAble' name="radios" text="Able" checked="true">
        <ui:attribute name="text" description="radio button name"/>
      </gwt:RadioButton>
      <gwt:RadioButton ui:field='myRadioBaker' name="radios" text="Baker">
        <ui:attribute name="text" description="radio button name"/>
      </gwt:RadioButton>
      <demo:PointlessRadioButtonSubclass ui:field='emptyRadio' name="radios"
        text="Charlie (this one is a subclass of RadioButton)">
        <ui:attribute name="text" description="radio button name"/>
      </demo:PointlessRadioButtonSubclass>
      
	<gwt:HorizontalPanel horizontalAlignment="ALIGN_LEFT">
	  <gwt:Cell><gwt:HTMLPanel>
      <p> ... a StackPanel ... </p>
      
      <gwt:StackPanel stylePrimaryName="myStyle" width="280px" ui:field='myStackPanel'>
        <gwt:Label text="Stack One Text"  gwt:StackPanel-text="Stack One"
            ui:field='myStackPanelItem'>
          <ui:attribute name="text" description="Content for Stack One Text"/>
        </gwt:Label>
        <gwt:HTMLPanel gwt:StackPanel-text="Stack Two">
          <div>
            <ui:msg description="Describe div content">Some other content</ui:msg>
          </div>
        </gwt:HTMLPanel>
        <gwt:Label text="Stack Three Text"  gwt:StackPanel-text="Stack Three" />
      </gwt:StackPanel>
      </gwt:HTMLPanel></gwt:Cell>
      
      <gwt:cell><gwt:HTMLPanel>
        <p> ... a TabPanel </p>
      
        <gwt:TabPanel>
          <gwt:Tab text='Able'><gwt:Label>Able Widget</gwt:Label></gwt:Tab>
          <gwt:Tab><gwt:TabHTML><b>B</b>aker</gwt:TabHTML>
            <gwt:Label>Baker widget</gwt:Label>
          </gwt:Tab>
        </gwt:TabPanel>
      </gwt:HTMLPanel></gwt:cell>
      
      </gwt:HorizontalPanel>
      
      
      <p> ... a DisclosurePanel with a text header ... </p>
      
      <gwt:DisclosurePanel ui:field='myDisclosurePanel' animationEnabled='true'>
        <gwt:header>
          <ui:msg description="Label for Disclosure One">I just have a text header</ui:msg>
        </gwt:header>


          <gwt:Label ui:field='myDisclosurePanelItem'>
            <ui:msg  description="Content for Disclosure One Text">Disclosure Text</ui:msg>
          </gwt:Label>

      </gwt:DisclosurePanel>
      
      <p> ... a DisclosurePanel with a widget header ... </p>
      
      <gwt:DisclosurePanel animationEnabled='true'>
        <gwt:customHeader>
          <gwt:Label>
            <ui:msg description="Content for Disclosure Two Text">Disclosure Header - closed</ui:msg>
          </gwt:Label>
        </gwt:customHeader>


          <gwt:Label>
            <ui:msg description="Content for Disclosure Two">Disclosure Two - closed</ui:msg>
          </gwt:Label>

      </gwt:DisclosurePanel>

      <p> ... an open DisclosurePanel with a widget header ... </p>

      <gwt:DisclosurePanel open='true' animationEnabled='true'>
        <gwt:customHeader>
          <gwt:Label>
            <ui:msg description="Content for Disclosure Two Text">Disclosure Header - open</ui:msg>
          </gwt:Label>
        </gwt:customHeader>


          <gwt:Label>
            <ui:msg description="Content for Disclosure Two">Disclosure Two - open</ui:msg>
          </gwt:Label>

      </gwt:DisclosurePanel>

      <p> ... a DisclosurePanel with no header ... </p>

      <gwt:DisclosurePanel open="true" animationEnabled='true'>

          <gwt:Label>
            <ui:msg description="Content for Disclosure Three">Disclosure Three</ui:msg>
          </gwt:Label>

      </gwt:DisclosurePanel>

      <p> ... an open DisclosurePanel with a text label and no animation</p>

      <gwt:DisclosurePanel open="true" >
        <gwt:header><ui:msg>Disclosure Three - open</ui:msg></gwt:header>


          <gwt:Label>
            <ui:msg description="Content for Disclosure Three">Disclosure Three</ui:msg>
          </gwt:Label>

      </gwt:DisclosurePanel>

      <p> ... a DisclosurePanel with no content ... </p>

      <gwt:DisclosurePanel>
        <gwt:header><ui:msg>"I just have a text header"</ui:msg></gwt:header>
      </gwt:DisclosurePanel>
      
      <p> ... a DisclosurePanel with custom images ... </p>
      
      <gwt:DisclosurePanel open='false' animationEnabled='true'>
        <gwt:header openImage='{down}' closedImage='{right}'>
          <ui:msg description="Content for Disclosure Two Text">Custom images header</ui:msg>
        </gwt:header>

          <gwt:Label>
            <ui:msg description="Content for Disclosure Two">Custom images body</ui:msg>
          </gwt:Label>

      </gwt:DisclosurePanel>
      
      <h2>Stylish</h2>
      <p>
       Templates work with ClientBundle. For example,
       this label gets its text from somplace tricky and its style from a ClientBundle
       defined outside of this UI:</p>
      <gwt:Label ui:field='bundledLabel' text="{values.helloText}" styleName="{external.style.prettyText}"/>
      <!-- Note use of id rather than ui:field, to test that ids work on dom elements -->
      <p class="{external.style.prettyText}" id='prettyPara'>
        This stylish paragraph also gets its good looks from the
        external ClientBundle.
      </p>
      <p ui:field='privateStyleParagraph' class='{myStyle.privateColor}'>
        This one is has a private style, defined out in WidgetBaseUi.css and used only by this ui.xml file.
      </p>
      <p ui:field='reallyPrivateStyleParagraph' class='{myOtherStyle.privateColor}'>
        And this style is defined right here inside the ui.xml file. 
        <span ui:field='totallyPrivateStyleSpan' class='{myTotallyPrivateStyle.superPrivateColor}'>
          (This one too, but even more so.)
        </span>
      </p>
      <demo:CssImportScopeSample ui:field='cssImportScopeSample' wrappedText='Please use it.'>
        And this one relies on CssResource's imported scopes feature
      </demo:CssImportScopeSample>
      <h2>Evolving</h2>
      <p>
        Things change. This label uses the new ui:field attribute to declare
        its identity. Soon everything
        will work that way:
      </p>
      <gwt:Label ui:field='gwtFieldLabel'>Tommy can you hear me? Can you field me near you?</gwt:Label>
      <h2>Localization and character escaping</h2>
      <p ui:field="funnyCharsParagraph">Templates can be marked up for <b>localization</b>,
      which presents alls kinds of exciting opportunities for bugs related to
      character escaping. Consider these funny characters " &quot; ' &#39; &amp; &lt; &gt; > { },
      and the various places they might make your life miserable, like this
      untranslated paragraph.</p>
      <p ui:field="funnyCharsMessageParagraph"><ui:msg>They might show up
      in body text that has been <b>marked for translation</b>: funny characters " &quot; ' &#39; &amp; &lt; &gt; > { }</ui:msg></p>
      <p><ui:msg>Or perhaps in a subelement with a ui:field: <span ui:field='funnyCharsMessageChildSpan'>funny characters " &quot; ' &#39; &amp; &lt; &gt; > { }</span></ui:msg></p>
      <p ui:field="funnyCharsProtectedMessageParagraph"><ui:msg>Don't forget about protected untranslatable blocks: <ui:ph name='francine'>funny characters " &quot; ' &#39; &amp; &lt; &gt; > { }</ui:ph></ui:msg></p>
      <p ui:field="funnyCharsMessageDomAttributeParagraph" title="funny characters &quot; ' &#39; &amp; &lt; &gt; > { }">
        <ui:attribute name="title"/>
        Attributes of dom elements can be translated too, like the
        tooltip of this paragraph, which features the challenging characters.
      </p>
      <p ui:field="funnyCharsDomAttributeParagraph"
        title="funny characters &quot; ' &#39; &amp; &lt; &gt; > { }">
        They might also appear in an unstranslated attribute of a dom element, like
        the tooltip for this paragraph.
      </p>
      <p>And all the cases above apply to widgets as well:</p>
      <gwt:Label>I am an untranslatable HasText with funny characters " &quot; ' &#39; &amp; &lt; &gt; > { }</gwt:Label>
      <gwt:HTML>I am an untranslatable HasHTML with funny characters " &quot; ' &#39; &amp; &lt; &gt; > { }</gwt:HTML>
      <gwt:Label><ui:msg>I am a translatable <ui:ph name="widgetType" example="myWidget">HasText</ui:ph> with funny characters " &quot; ' &#39; &amp; &lt; &gt; > { }</ui:msg></gwt:Label>
      <gwt:HTML><ui:msg>I am a translatable <ui:ph name="widgetType" example="myWidget">HasHTML</ui:ph> with funny characters " &quot; ' &#39; &amp; &lt; &gt; > { }</ui:msg></gwt:HTML>
      <demo:ClickyLink ui:field="funnyCharsAttributeWidget"
        popupText="funny characters &quot; ' &#39; &amp; &lt; &gt; > { }">
        Click to see my untranslatable text passed by attribute
      </demo:ClickyLink>
      <br/>
      <demo:ClickyLink ui:field="funnyCharsMessageAttributeWidget"
        popupText="funny characters &quot; ' &#39; &amp; &lt; &gt; > { }">
        <ui:attribute name="popupText"/>
        Click to see my translatable text passed by attribute
      </demo:ClickyLink>

      <h2>Placeholders in localizables</h2>
      <p><ui:msg>When you mark up your text for translation, there will be bits
      that you don't want the translators to mess with. You can protect
      these with <span id="placeholdersSpan" style="font-weight:bold" class="{external.style.prettyText}"
        ui:ph="boldSpan">placeholders</span><ui:ph name="tm"><sup ui:field="tmElement"
        class="{external.style.tmText}">TM</sup></ui:ph>.</ui:msg></p>

      <p><ui:msg>You may also need to have <span ui:field="spanInMsg"
      style="font-weight:bold" class="{external.style.prettyText}">named
      portions</span> of <span class="{external.style.prettyText}">translatable text</span></ui:msg></p>

      <p><ui:msg>Of course you'll want to be able to do this kind of thing
      with widgets <demo:MyDatePicker/> as well, whether they <gwt:Label>HasText<ui:ph name="tm">*TM*</ui:ph></gwt:Label>
      or <gwt:HTML>HasHTML<ui:ph name="TM2"><sup ui:field="tmElementJr"
        class="{external.style.tmText}">TM</sup></ui:ph></gwt:HTML></ui:msg></p> 
        
      <p><ui:msg>
        You can mix both widgets and named dom fields within a
        <gwt:HTML ui:field='mixedMessageWidget'>single translatable message</gwt:HTML>, another source
        <span ui:field='mixedMessageSpan'>exciting and subtle</span>
         bugs.
      </ui:msg></p>

      <h2>Any Widget You Like</h2>
      <p><demo:AnnotatedStrictLabel text="This widget is not default instantiable." ui:field="strictLabel"/></p>
      <p><demo:AnnotatedStrictLabel text="Another constructor based widget, translated this time." ui:field="translatedStrictLabel">
        <ui:attribute name="text" description="Arbitrary text"/>
      </demo:AnnotatedStrictLabel></p>
      <p><demo:StrictLabel text="More of the same." ui:field="veryStrictLabel"/></p>
      <p><demo:StrictLabel text="Likewise, again translated this time." ui:field="translatedVeryStrictLabel">
        <ui:attribute name="text" description="Arbitrary text"/>
      </demo:StrictLabel></p>
      <p><demo:NeedlesslyAnnotatedLabel ui:field="needlessLabel"
        text="Sometimes people do things they don't need to do. Don't punish them."/></p>
      <demo:FooLabel ui:field='theFoo' pojo="{values.pojo}"/>
      <demo:EnumeratedLabel ui:field='enumLabel' suffix='tail'>This label uses an enum for its</demo:EnumeratedLabel>
      <gwt:PushButton ui:field='pushButton' enabled='true'>
        <gwt:upFace><b>click me</b></gwt:upFace>
        <gwt:downFace image='{prettyImage}'/>
        <gwt:upHoveringFace><b>Click ME!</b></gwt:upHoveringFace>
        <gwt:downHoveringFace image='{prettyImage}'/>
        <gwt:upDisabledFace image='{prettyImage}'/>
        <gwt:downDisabledFace image='{prettyImage}'/>
      </gwt:PushButton>

    <h2>How to use the debugId, addStyleNames, addDependentStyleNames attributes</h2>
    <p>You can use the <strong>debugId</strong>, <strong>addStyleNames</strong>, and <strong>addDependentStyleNames</strong>
       attributes on any widget that extends UIObject.
       <ul>
         <li><b>debugId</b> will set an <em>id</em> on the element prefixed with <em>gwt-debug</em></li>
         <li><b>addStyleNames</b> (comma separated) will add all class names to the existing style (space separated)</li>
         <li><b>addDependentStyleNames</b> (comma separated) will concatenate all class names to the existing style with a "-" as a separator</li>
       </ul>
       You can/should use FireBug or a simple view source to see the attributes that were created.
       <br />
    </p>

    <b>Template:</b>
    <pre style="border: 1px dashed #666; padding: 5px 0;">
  &lt;ui:UiBinder
    xmlns:ui='urn:ui:com.google.gwt.uibinder'
    xmlns:gwt='urn:import:com.google.gwt.user.client.ui'&gt;

    &lt;gwt:FlowPanel&gt;
      &lt;gwt:Label ui:field="lblDebugId" debugId="joe" 
          addStyleNames="newStyle anotherStyle" 
          addStyleDependentNames="dependentStyle anotherDependentStyle" 
          text="a label with debug id" /&gt;

      &lt;!-- A button that only adds a single style name, no comma's needed --&gt;
      &lt;gwt:Button ui:field="btnGo" debugId="myButton" 
          addStyleNames="buttonStyle" text="a button with extra attributes" /&gt;
    &lt;/gwt:FlowPanel>

  &lt;/ui:UiBinder&gt;</pre>

    <b>HTML:</b>
    <pre style="border: 1px dashed #666; padding: 5px 0;">
  &lt;div id="gwt-debug-joe" 
      class="gwt-Label newStyle anotherStyle gwt-Label-dependentStyle 
        gwt-Label-anotherDependentStyle"&gt;
    A label with a debug id
  &lt;/div&gt;
  &lt;button id="gwt-debug-myButton" class="gwt-Button buttonStyle" tabindex="0" 
    type="button"&gt;Go&lt;/button&gt;</pre>

    <gwt:FlowPanel>
      <gwt:Label ui:field="lblDebugId" debugId="joe" 
          addStyleNames="newStyle, anotherStyle {external.style.prettyText}" 
          addStyleDependentNames="dependentStyle anotherDependentStyle, {external.style.prettyText}">
        A label with a debug id
      </gwt:Label>
      <gwt:Button ui:field="btnGo" debugId="myButton" addStyleNames="buttonStyle">Go</gwt:Button>
    </gwt:FlowPanel>

    <h2>How to tie handlers automatically!!</h2>
    <p>You can add event handlers to template widgets as long as they have
      valid ui:field attributes. If the template is shared, each widget can
      register listeners for the events it's interested in. In the example
      below, we listen to MouseOver events on the status label and clicks
      on the button.</p>

    <demo:HandlerDemo />

    <b>Template:</b>
    <pre style="border: 1px dashed #666; padding: 5px 0;">
  &lt;ui:UiBinder
    xmlns:ui='urn:ui:com.google.gwt.uibinder'
    xmlns:gwt='urn:import:com.google.gwt.user.client.ui'&gt;

    &lt;gwt:FlowPanel&gt;
      &lt;gwt:Label ui:field="label" text="Looking for happiness?" /&gt;
      &lt;gwt:Button ui:field="button" text="Click here to happiness!!" /&gt;
      &lt;gwt:TextBox ui:field="textbox" /&gt;
    &lt;/gwt:FlowPanel>

  &lt;/ui:UiBinder&gt;</pre>

  <b>The code:</b>
  <pre style="border: 1px dashed #666; padding: 5px 0;">
  public class HandlerDemo extends Composite {

    @UiTemplate("HandlerDemo.ui.xml")
    interface MyUiBinder extends UiBinder&lt;FlowPanel, HandlerDemo&gt; {}
    private static final MyUiBinder binder = GWT.create(MyUiBinder.class);

    @UiField Label label;

    // No need of declare button here via @UiField if it is not really used
    // in the class. Just don't forget to "ui:field" it in the template.

    private int counter;

    public HandlerDemo() {
      initWidget(binder.createAndBindUi(this));
    }

    @UiHandler({"label", "button"})
    protected void doClick(ClickEvent event) {
      Window.alert("Yes, now I'm happy!");
      counter = 0;
      label.setText("Don't mouse over, click me!!!");
    }

    @UiHandler("button")
    protected void doMouseOver(MouseOverEvent event) {
      ++counter;
      label.setText(counter + ". Don't mouse over, click me!");
    }

    @UiHandler("textbox")
    protected void doChangeValue(ValueChangeEvent&lt;String&gt; event) {
      label.setText("Typing = " + event.getValue());
    }
  }</pre>


  <h2>People write the darndest markup</h2>
  <table border="1" bcolor="yellow" cellpadding="3" ui:field="widgetCrazyTable">
    <demo:ExplicitElementPanel tag="thead">
      <demo:ExplicitElementWidget tag="td">They have been known</demo:ExplicitElementWidget>
      <demo:ExplicitElementWidget tag="td">to write widgets</demo:ExplicitElementWidget>
    </demo:ExplicitElementPanel>
    <demo:ExplicitElementPanel tag="tr">
      <demo:ExplicitElementWidget tag="td">that masquerade</demo:ExplicitElementWidget>
      <demo:ExplicitElementWidget tag="td">as table cells,</demo:ExplicitElementWidget>
    </demo:ExplicitElementPanel>
    <demo:ExplicitElementPanel tag="tfoot">
      <demo:ExplicitElementWidget tag="td">just like these.</demo:ExplicitElementWidget>
      <demo:ExplicitElementWidget tag="td">Burma Shave</demo:ExplicitElementWidget>
    </demo:ExplicitElementPanel>
  </table>
  <ul>
    <demo:ExplicitElementWidget tag="li">You</demo:ExplicitElementWidget>
    <demo:ExplicitElementWidget tag="li">can</demo:ExplicitElementWidget>
    <demo:ExplicitElementWidget tag="li">imagine</demo:ExplicitElementWidget>
  </ul>
  <ol ui:field="widgetCrazyOrderedList">
    <demo:ExplicitElementWidget tag="li">similar</demo:ExplicitElementWidget>
    <demo:ExplicitElementWidget tag="li">things</demo:ExplicitElementWidget>
  </ol>
  <dl ui:field="widgetCrazyDefinitionList">
    <demo:ExplicitElementWidget tag="dt">Being</demo:ExplicitElementWidget>
    <demo:ExplicitElementWidget tag="dd">done</demo:ExplicitElementWidget>
    <demo:ExplicitElementWidget tag="dd">with</demo:ExplicitElementWidget>
    <demo:ExplicitElementWidget tag="dd">lists</demo:ExplicitElementWidget>
  </dl>
  <gwt:HTMLPanel tag="table" ui:field="customTagHtmlPanel">
    <tr><td>Even HTMLPanel gets in on the game</td></tr>
    <tr><td>Lately, anyway.</td></tr>
  </gwt:HTMLPanel>
  
    </gwt:HTMLPanel>
  </gwt:Dock>
</gwt:DockPanel>
</ui:UiBinder>
	    