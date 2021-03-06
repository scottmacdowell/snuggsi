const GlobalEventHandlers = Element =>

  // DOM Levels
  // (https://developer.mozilla.org/fr/docs/DOM_Levels)
  //
  // Living Standard HTML5 GlobalEventHandlers
  // https://html.spec.whatwg.org/multipage/webappapis.html#globaleventhandlers
  //
  // MDN GlobalEventHandlers
  // https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers
  //
  // MDN on* Events
  // https://developer.mozilla.org/en-US/docs/Web/Guide/Events/Event_handlers
  //
  // DOM Level 0
  // This event handling model was introduced by Netscape Navigator,
  // and remains the most cross-browser model as of 2005
  // https://en.wikipedia.org/wiki/DOM_events#DOM_Level_0#DOM_Level_0
  //
  // Inline Model
  // https://en.wikipedia.org/wiki/DOM_events#DOM_Level_0#Inline_model
  //
  // Traditional Model
  // https://en.wikipedia.org/wiki/DOM_events#Traditional_model
  //
  // Traditional Registration
  // http://www.quirksmode.org/js/events_tradmod.html

(class extends Element {

  onimport (event) {

    const
      document =
        event.target.import

    , template = document &&
        document.querySelector ('template')

    template &&
      this.clone (template)

    // dispatch `import`
    // and captured from `EventTarget`
    this.constructor.onconnect &&
      this.constructor.onconnect.call (this)

    // dispatch `render`
    // and captured from `EventTarget`
    this.render ()
  }

  register (events = event => /^on/.exec (event)) {

    const
      mirror = handler =>
        (this [handler] === null) && // ensure W3C on event
          (this [handler] = Element [handler].bind (this))

    Object // mirror class events to element
      .getOwnPropertyNames (Element)
      .filter (events)
      .map (mirror)


    const
      nodes = // CSS :not negation https://developer.mozilla.org/en-US/docs/Web/CSS/:not
        // How can we select elements with on* attribute? (i.e. <... onclick=foo onblur=bar>)
        // If we can do this we can only retrieve the elements that have a traditional inline event.
        // This is theoretically more performant as most elements won't need traditional event registration.
        ':not(script):not(template):not(style):not(link)' // remove metadata elements

    , children =
        Array.from (this.querySelectorAll (nodes))

    , registered =
        node =>
          Array
            .from (node.attributes)
            .map (attr => attr.name)
            .filter (events)
            .length > 0

    , reflect =
        node =>
          Array
            .from (node.attributes)
            .map  (attr => attr.name)
            .filter (events)
            .map (reflection (node))

    , reflection =
        node => // closure
          event =>
            (node [event] = handle (node [event]))

    , handle =
        (handler, [_, event] = (/{\s*(\w+)\s*}/.exec (handler) || [])) =>
          event
            && Element [event]
            && Element [event].bind (this)
            || handler // existing handler
            || null  // default for W3C on* event handlers

    void [this]
      .concat (children)
      .filter (registered)
      .map (reflect)
  }
})

