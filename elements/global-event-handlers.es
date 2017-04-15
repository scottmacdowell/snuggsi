const GlobalEventHandlers = Node =>

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

(class extends Node {

  constructor () { super ()
    this.mirror   ()
    this.register ()
  }

  register () {
    const
      selector = // CSS :not negation https://developer.mozilla.org/en-US/docs/Web/CSS/:not
        ':not(script):not(template):not(style):not(link)'

    , nodes = // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_operator#A_more_powerful_array_literal
        [ this, ... ( Array.from ( this.querySelectorAll (selector))) ]

    console.log (nodes)
  }

  mirror () {

    const
      filter = /^on/

    , onevents = name =>
        filter.exec (name)

    , handlers =
        Object.getOwnPropertyNames (Node)
          .filter (onevents)

    , properties = Array.from (this.attributes)
        .map (attr => attr.name)
        .filter (onevents)

    , explicit = event =>
        properties.indexOf (event) >= 0

    , reflect = self => function (events) {
        return events
          .filter (name => self [name] !== undefined)
          .map (delegate (self), this)
    }

    , delegate = self => function (name) {
        self [name] = self
          [(/{\s*(\w+)\s*}/.exec (self [name]) || Array (2)) [1]]
            || this [name]
      }

    console.log('Node onclick', handlers.filter (explicit))//, handlers.filter (properties) ) //, implicit)

//  void [implicit, explicit]
//    .map ( reflect (this), Node )
  }

  // custom element reactions
  connectedCallback () {

    void ( super.constructor.onconnect
      || super.connectedCallback
      || function noop () {}
    ).call (this)

    this.render ()
  }

  static get observedAttributes () { return ['id'] }
  attributeChangedCallback (property, previous, next)
    { console.warn ('['+property+'] ['+previous+'] to ['+next+']') }
})