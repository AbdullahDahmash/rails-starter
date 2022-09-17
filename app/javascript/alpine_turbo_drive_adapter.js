(function() {
    const dispatch = function(el, name, detail = {}) {
        el.dispatchEvent(
            new CustomEvent(name, {
                detail,
                bubbles: true,
                composed: true,
                cancelable: true,
            })
        )
    }
    const beforeRenderCallback = (event) => {
        if (document.documentElement.hasAttribute('data-turbo-preview')) {
            return
        }
        event.detail.newBody.querySelectorAll('[data-alpine-generated-me],[x-cloak]').forEach((el) => {
            if (el.hasAttribute('x-cloak')) {
                el.setAttribute('data-alpine-was-cloaked', el.getAttribute('x-cloak') ?? '')
            }
            if (el.hasAttribute('data-alpine-generated-me')) {
                el.removeAttribute('data-alpine-generated-me')
                el.remove()
            }
        })
        Alpine.deferMutations()
    }
    const renderCallback = (event) => {
        if (document.documentElement.hasAttribute('data-turbo-preview')) {
            return
        }

        dispatch(document, 'alpine:init')
        dispatch(document, 'alpine:initializing')
        Alpine.flushAndStopDeferringMutations()
        dispatch(document, 'alpine:initialised')
        document.querySelectorAll('[data-alpine-ignored]').forEach((el) => {
            el.removeAttribute('x-ignore')
            el.removeAttribute('data-alpine-ignored')
        })
    }

    const beforeCacheCallback = (event) => {
        document.body.querySelectorAll('[x-for],[x-if],[data-alpine-was-cloaked]').forEach((el) => {
            if (el.hasAttribute('data-alpine-was-cloaked')) {
                el.setAttribute('x-cloak', el.getAttribute('data-alpine-was-cloaked') ?? '')
                el.removeAttribute('data-alpine-was-cloaked')
            }

            if (el.hasAttribute('x-for') && el._x_lookup) {
                Object.values(el._x_lookup).forEach(el => el.setAttribute('data-alpine-generated-me', true))
            }
            
            if (el.hasAttribute('x-if') && el._x_currentIfEl) {
                el._x_currentIfEl.setAttribute('data-alpine-generated-me', true)
            }
        })

        document.querySelectorAll('[data-turbo-permanent]').forEach((el) => {
            if(!el.hasAttribute('x-ignore')) {
                el.setAttribute('x-ignore', true)
                el.setAttribute('data-alpine-ignored', true)
            }
            el.querySelectorAll('[data-alpine-generated-me]').forEach((sub) => {
                sub.removeAttribute('data-alpine-generated-me')
            })
        })
    }
    document.addEventListener('turbo:before-render', beforeRenderCallback)
    document.addEventListener('turbo:before-cache', beforeCacheCallback)
    document.addEventListener('turbo:render', renderCallback)
})()