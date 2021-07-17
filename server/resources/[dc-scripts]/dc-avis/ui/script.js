const avis = new Vue({
    el: "#avis",

    data: {
        // Shared
        ResourceName: "dc-avis",
        showAvis: false,

    },

    methods: {

        // START OF MAIN MENU
        OpenAvisMenu() {
            this.showAvis     = true;
        },

        CloseMenu() {
            axios.post(`http://${this.ResourceName}/CloseMenu`, {}).then((response) => {
                this.showAvis  = false;
            }).catch((error) => { });
        },
    },
});

// Listener from Lua CL
document.onreadystatechange = () => {
    if (document.readyState == "complete") {
        window.addEventListener("message", (event) => {
            if (event.data.type == "openAvisMenu") {
                avis.OpenAvisMenu();
            }
        });
    }
}
