;(function(window) {

  var svgSprite = '<svg>' +
    '' +
    '<symbol id="icon-xiangji" viewBox="0 0 1024 1024">' +
    '' +
    '<path d="M850 232.8H720.1c-9.5 0-20.2 8.4-22.4 17.7l-7.7 32h192.6l-8.9-31.7c-2.6-9.4-13.9-18-23.7-18zM887.5 312.5h-751v478.7h510.3l240.8-240.8V312.5zM408.1 723.9c-94.1 0-170.7-76.6-170.7-170.7S314 382.5 408.1 382.5s170.7 76.6 170.7 170.7c0 94.2-76.6 170.7-170.7 170.7zM849.6 398c0 6.6-5.4 12-12 12h-68.5c-6.6 0-12-5.4-12-12v-33.2c0-6.6 5.4-12 12-12h68.5c6.6 0 12 5.4 12 12V398zM768.1 791.2l119.4-119.4v-79L689.1 791.2zM887.5 791.2v-77l-76.9 77z" fill="#FFBC00" ></path>' +
    '' +
    '<path d="M916.4 301.5c0.4-4.9 0-9.9-1.4-15l-12.3-43.9c-6.3-22.3-29.4-39.8-52.5-39.8H720.1c-23.4 0-46.1 17.9-51.6 40.7l-9.4 39H288.6V252.9c0-14.9-12.1-27-27-27h-94.5c-14.9 0-27 12.1-27 27v29.5h-6.7c-14.9 0-27 12.1-27 27v484.7c0 14.9 12.1 27 27 27h757.1c14.9 0 27-12.1 27-27V309.5c0-2.8-0.4-5.5-1.1-8z m-226.4-19l7.7-32c2.2-9.3 12.9-17.7 22.4-17.7H850c9.8 0 21 8.5 23.7 17.9l8.9 31.7H690z m-519.8-26.7h88.5V278h-88.5v-22.2z m717.3 535.4h-77l77-77v77z m0-119.4L768.1 791.2h-79l198.4-198.4v79zM646.7 791.2H136.5V312.5h751.1v237.9L646.7 791.2z" fill="#46287C" ></path>' +
    '' +
    '<path d="M548.8 553.3c0-77.6-63.1-140.7-140.7-140.7s-140.7 63.1-140.7 140.7S330.5 694 408.1 694c77.6-0.1 140.7-63.2 140.7-140.7z m-140.7 74.4c-41.1 0-74.4-33.3-74.4-74.4 0-41.1 33.3-74.4 74.4-74.4s74.4 33.3 74.4 74.4c0 41.1-33.3 74.4-74.4 74.4z" fill="#FFBC00" ></path>' +
    '' +
    '<path d="M408.1 382.6c-94.1 0-170.7 76.6-170.7 170.7S314 724 408.1 724s170.7-76.6 170.7-170.7-76.6-170.7-170.7-170.7zM267.5 553.3c0-77.6 63.1-140.7 140.7-140.7s140.7 63.1 140.7 140.7S485.8 694 408.2 694c-77.6-0.1-140.7-63.2-140.7-140.7z" fill="#46287C" ></path>' +
    '' +
    '<path d="M408.1 553.3m-74.4 0a74.4 74.4 0 1 0 148.8 0 74.4 74.4 0 1 0-148.8 0Z" fill="#FFFFFF" ></path>' +
    '' +
    '<path d="M837.6 352.9h-68.5c-6.6 0-12 5.4-12 12V398c0 6.6 5.4 12 12 12h68.5c6.6 0 12-5.4 12-12v-33.2c0-6.5-5.4-11.9-12-11.9z" fill="#FFFFFF" ></path>' +
    '' +
    '<path d="M170.2 255.8h88.5V278h-88.5z" fill="#FFBC00" ></path>' +
    '' +
    '</symbol>' +
    '' +
    '<symbol id="icon-icon-test" viewBox="0 0 1024 1024">' +
    '' +
    '<path d="M815.5 345.6H214.6c-49.6 0-88.9 41.8-85.8 91.3l24.9 398.2c2.8 45.3 40.4 80.6 85.8 80.6h551.1c45.4 0 82.9-35.3 85.8-80.6l24.9-398.2c3-49.5-36.3-91.3-85.8-91.3zM394.2 117c-11.6-11.6-30.4-11.6-42 0l-58.8 58.8c-11.6 11.6-11.6 30.4 0 42 11.6 11.6 30.4 11.6 42 0l58.8-58.8c11.6-11.6 11.6-30.4 0-42zM768.6 175.7l-59-59c-11.6-11.6-30.5-11.6-42.1 0-11.6 11.6-11.6 30.5 0 42.1l59 59c11.6 11.6 30.5 11.6 42.1 0 11.7-11.7 11.7-30.5 0-42.1z" fill="#FD6155" ></path>' +
    '' +
    '<path d="M368.9 525.6c-8.1 0-14.6 6.5-14.6 14.6v204.6c0 8.1 6.5 14.6 14.6 14.6s14.6-6.5 14.6-14.6V540.2c0-8.1-6.5-14.6-14.6-14.6z m146.1 0c-8.1 0-14.6 6.5-14.6 14.6v204.6c0 8.1 6.5 14.6 14.6 14.6s14.6-6.5 14.6-14.6V540.2c0-8.1-6.5-14.6-14.6-14.6z m146.1 0c-8.1 0-14.6 6.5-14.6 14.6v204.6c0 8.1 6.5 14.6 14.6 14.6s14.6-6.5 14.6-14.6V540.2c0-8.1-6.5-14.6-14.6-14.6z" fill="#FEF3D5" ></path>' +
    '' +
    '<path d="M849 179.3H181c-45.1 0-81.7 36.6-81.7 81.7v50.5c0 45.1 36.6 81.7 81.7 81.7h668c45.1 0 81.7-36.6 81.7-81.7V261c0-45.2-36.6-81.7-81.7-81.7z" fill="#FEC053" ></path>' +
    '' +
    '</symbol>' +
    '' +
    '</svg>'
  var script = function() {
    var scripts = document.getElementsByTagName('script')
    return scripts[scripts.length - 1]
  }()
  var shouldInjectCss = script.getAttribute("data-injectcss")

  /**
   * document ready
   */
  var ready = function(fn) {
    if (document.addEventListener) {
      if (~["complete", "loaded", "interactive"].indexOf(document.readyState)) {
        setTimeout(fn, 0)
      } else {
        var loadFn = function() {
          document.removeEventListener("DOMContentLoaded", loadFn, false)
          fn()
        }
        document.addEventListener("DOMContentLoaded", loadFn, false)
      }
    } else if (document.attachEvent) {
      IEContentLoaded(window, fn)
    }

    function IEContentLoaded(w, fn) {
      var d = w.document,
        done = false,
        // only fire once
        init = function() {
          if (!done) {
            done = true
            fn()
          }
        }
        // polling for no errors
      var polling = function() {
        try {
          // throws errors until after ondocumentready
          d.documentElement.doScroll('left')
        } catch (e) {
          setTimeout(polling, 50)
          return
        }
        // no errors, fire

        init()
      };

      polling()
        // trying to always fire before onload
      d.onreadystatechange = function() {
        if (d.readyState == 'complete') {
          d.onreadystatechange = null
          init()
        }
      }
    }
  }

  /**
   * Insert el before target
   *
   * @param {Element} el
   * @param {Element} target
   */

  var before = function(el, target) {
    target.parentNode.insertBefore(el, target)
  }

  /**
   * Prepend el to target
   *
   * @param {Element} el
   * @param {Element} target
   */

  var prepend = function(el, target) {
    if (target.firstChild) {
      before(el, target.firstChild)
    } else {
      target.appendChild(el)
    }
  }

  function appendSvg() {
    var div, svg

    div = document.createElement('div')
    div.innerHTML = svgSprite
    svgSprite = null
    svg = div.getElementsByTagName('svg')[0]
    if (svg) {
      svg.setAttribute('aria-hidden', 'true')
      svg.style.position = 'absolute'
      svg.style.width = 0
      svg.style.height = 0
      svg.style.overflow = 'hidden'
      prepend(svg, document.body)
    }
  }

  if (shouldInjectCss && !window.__iconfont__svg__cssinject__) {
    window.__iconfont__svg__cssinject__ = true
    try {
      document.write("<style>.svgfont {display: inline-block;width: 1em;height: 1em;fill: currentColor;vertical-align: -0.1em;font-size:16px;}</style>");
    } catch (e) {
      console && console.log(e)
    }
  }

  ready(appendSvg)


})(window)