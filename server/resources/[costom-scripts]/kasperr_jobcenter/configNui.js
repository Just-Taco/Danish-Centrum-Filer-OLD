var configs = {
    theme: {
        "primary_color": "#00b4f9",
        "secondary_color": "#0092cc"
    },
    jobs: [
        // {
        //     "title": "Example title",
        //     "shortDescription": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam semper diam at erat pulvina", // Max 90 characters
        //     "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam semper diam at erat pulvina",
        //     "group": "exampleRole",
        //     "whitelisted": true,
        //     requirements: ["Example requirement"]
        // },
        // Whitelisted jobs
        {
            "title": "Politi",
            "shortDescription": "Kunne du tænke dit at blive betjent? Byen søger PT!",
            "description": "Søger du en ny og udfordrende karriere, hvor du har mulighed for at hjælpe borger. Så er det politiets vej du skal gå.",
            "group": "",
            "whitelisted": true,
            "iconName": "police.jpg",
            requirements: ["Gyldigt kørekort til bil og motorcykel", "Du skal være fyldt 18 år", "Være imødekommende"]
        },
        {
            "title": "Læge",
            "shortDescription": "Kunne du tænke dig at hjælpe borgerne i Sky-Universe. Så er det denne vej du skal vælge!",
            "description": "Ønsker du at hjælpe borgerne i Sky-Universe, samtidig med at du har det bedste betalte lovlige job? Så er denne proffision noget for dig!",
            "group": "",
            "whitelisted": true,
            "iconName": "lage.png",
            requirements: ["Gyldigt kørekort til bil", "Du skal være fyldt 16 år", "Være imødekommende"]
        },
        {
            "title": "Mekaniker",
            "shortDescription": "Har du skruet hænderne rigtigt på, og er smilende og udadvendt?!",
            "description": "Sky-Universe søger nu nogle nye personer der ikke er bange for at få snavs under neglene, og har hænderne skruet rigtigt på.",
            "group": "",
            "whitelisted": true,
            "iconName": "tool.png",
            requirements: ["Gyldigt kørekort til bil og lastbil", "Du skal være fyldt 16 år", "Være imødekommende", "Kende til biler og motorer"]
        },        
		{
            "title": "Psykolog",
            "shortDescription": "Er du god med mennesker, og er smilende og udadvendt?",
            "description": "Sky-Universe søger nu nogle nye personer der er gode med mennesker. Der kræves at du er god til at tale og forstå dig på mennesker.",
            "group": "",
            "whitelisted": true,
            "iconName": "psyk.png",
            requirements: ["Gyldigt kørekort til bil", "Du skal være fyldt 16 år", "Være imødekommende"]
        },	
		{
            "title": "Advokat/Dommer",
            "shortDescription": "Er du god til jura og hjælpe mennesker?",
            "description": "Hvis du er god til Jura, og kan sætte dig ind i kompliceret sager, og er du god til at forsvare en sag? Så er advokat sikker noget for dig.",
            "group": "",
            "whitelisted": true,
            "iconName": "judg.png",
            requirements: ["Jura uddanelse", "Du skal være fyldt 16 år", "Være forstående"]
        },
		{
            "title": "Ejendomsmægler",
            "shortDescription": "Er du til salg og udlejning?",
            "description": "Hvis du har sans for salg og udlejning, så er dette det perfekte sted for dig.",
            "group": "",
            "whitelisted": true,
            "iconName": "judg.png",
            requirements: ["Sans for salg og udlejning", "Du skal være fyldt 16 år", "Være forstående"]
        },
		{
            "title": "Lager-Medarbejder",
            "shortDescription": "Har du overblik?",
            "description": "Her kan du leje depotrum ud til folk som de kan benytte.",
            "group": "",
            "whitelisted": true,
            "iconName": "judg.png",
            requirements: ["Overblik og orden.", "Du skal være fyldt 16 år", "Være forstående"]
        },
        // Unwhitelisted jobs
        {
            "title": "Taxi",
            "shortDescription": "Drømmer du om et job med stor personlig frihed og fleksible arbejdstider? Så er jobbet som taxachauffør et oplagt valg for dig.",
            "description": "Du er ansvarlig for andre menneskers sikkerhed, og at bilen fungerer, som den skal. Jobbet er et meget selvstændigt arbejde, hvor du samtidigt er i kontakt med mange andre mennesker",
            "group": "Taxi Chauffør",
            "whitelisted": false,
            "iconName": "taxi.png",
            requirements: ["Du skal være høflig", "Du skal se godt ud", "Gyldigt kørekort til bil"]
        },
        {
            "title": "Kontanthjælp/Civil",
            "shortDescription": "Her har du mulighed for at søge om kontanthjælp",
            "description": "Hvis du ikke kan få dagpenge, så har du her mulighed for at få kontanthjælp. Det er også her du kan gå den kriminelle vej.",
            "group": "Arbejdsløs",
            "whitelisted": false,
            "iconName": "penge.png",
            requirements: ["Du må ikke arbejde imens du modtager kontanthjælp"]
        },
		{
            "title": "Journalist",
            "shortDescription": "Her har du mulighed for at være en del af alt på forsiden!",
            "description": "Dette handler om godt arbejde og teamwork, først fremme til stedet, dokumentere, optaget, noteret og derefter har vi kontorarbejdet!",
            "group": "Journalist",
            "whitelisted": false,
            "iconName": "mail.png",
            requirements: ["Du skal have gyldigt kørekort", "Du skal have interrese for journalistisk", "Det er en god idé at være god til at skrive, og/eller have forstand på redigering af fx. video"]
        },
        {
            "title": "Skraldemand",
            "shortDescription": "Kunne du tænke dig at tjene gode penge, og få tidligt fri?",
            "description": "Hvis du har hvad der skal til, så er jobbet som skraldemand helt sikkert noget for dig. Lønne er tilpas, og du får fri klokken 12.",
            "group": "Skraldemand",
            "whitelisted": false,
            "iconName": "truck.png",
            requirements: ["Du skal kunne håndtere hverdagens skrald", "Du skal være udadvendt", "Kørekort til lastbil"]
        },
        {
            "title": "Lastbilchauffør",
            "shortDescription": "Du skal fragte varer sikkert fra A-B.",
            "description": "Du skal sørge for at byen kører rundt, hvis der ingen varer er så bliver der intet solgt, MEN du har chancen for at sørge for at alle butikker og restauranter får deres vare, samt at hospitaler får deres medicin. Sker dette ikke så kollapser hele byens infrastruktut.",
            "group": "Lastbilchauffør",
            "whitelisted": false,
            "iconName": "truck.png",
            requirements: ["Du skal have et gyldigt kørekort"]
        },
        {
            "title": "Træhugger",
            "shortDescription": "Har du hænderne skruet rigtigt på, og har musklerne til det.",
            "description": "Som træhugger skal du være godt udrustet. Du skal være hård og have massere af gåpå mod! MEN ingen arbejde bliver spildt her, arbejder man hårdt så skal man nok blive betalt gode penge for sit arbejde, er man sløv og doven så kan man ligeså godt opgive drømmen om den fede Audi",
            "group": "Skovhugger",
            "whitelisted": false,
            "iconName": "axe.png",
            requirements: ["Du skal være muskuløs", "Du skal have gåpå mod", "Gyldigt kørekort til lastbil"]
        },
        {
            "title": "Minearbejder",
            "shortDescription": "Du skal ud og mine kul, jern og guld. Dette er byens hårdeste arbejde",
            "description": "Du skal mine, kul, jern og guld, du skal arbejde hårdt, men hårdt arbejde skaffer gode penge. Det er en god ide at være muskuløs.",
            "group": "Miner",
            "whitelisted": false,
            "iconName": "paxe.png",
            requirements: ["Du skal have gyldigt kørekort til lastbil"]
        }
    ]
}