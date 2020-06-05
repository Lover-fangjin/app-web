const ncov = {
    state: {
        currentArea: 'china',
        mousemoveArea: 'china',
        currTab: 'flat'
    },

    mutations: {
        updateCurrentArea (state, value) {
            state.currentArea = value;
        },
        updateMousemoveArea (state, value) {
            state.mousemoveArea = value;
        },
        updateCurrTab (state, value) {
            state.currTab = value;
        },
    },

    actions: {},

    getters: {
        currentArea (state){
            return state.currentArea;
        },
        mousemoveArea (state){
            return state.mousemoveArea;
        },
        currTab (state){
            return state.currTab;
        }
    },
}

export default ncov