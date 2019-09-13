state("DyingLightGame")
{
    string255 mission: "gamedll_x64_rwdi.dll", 0x01D6D488, 0x0, 0x90, 0x50, 0x18, 0x0;
	// from the official load remover:
	// https://github.com/shadow2hel/Autosplitters/blob/master/DyingLight/autostartnloadless.asl
    int loading: "rd3d11_x64_rwdi.dll", 0x7D108;
}

startup
{
    settings.Add("quests", true, "Quests");

    settings.Add("awakening", true, "Awakening", "quests");
    settings.Add("awakening_13th", false, "Split after the 13th floor", "awakening");
    settings.Add("awakening_tutorial", false, "Split after Tutorial", "awakening");
    settings.Add("awakening_end", true, "Split after talking to Brecken (End)", "awakening");

    settings.Add("blackout", true, "First Assignment", "quests");
    settings.Add("blackout_car_traps", false, "Split after arming car traps", "blackout");
    settings.Add("blackout_reset", false, "Split after resetting the power", "blackout");
    settings.Add("blackout_sleep", false, "Aplit after going to sleep", "blackout");
    settings.Add("blackout_elevator", false, "Split when going up the elevator to see Brecken", "blackout");
    settings.Add("blackout_end", true, "Split when going down the elevator or quest warping (End)", "blackout");

    settings.Add("airdrop", true, "Airdrop", "quests");
    settings.Add("airdrop_sunset", false, "Split at scripted sunset", "airdrop");
    settings.Add("airdrop_elevator", false, "Split when going up the elevator to see Brecken", "airdrop");
    settings.Add("airdrop_end", true, "Split after talking to Brecken (End)", "airdrop");

    settings.Add("rais", true, "Pact with Rais", "quests");
    settings.Add("rais_first_antenna", false, "Split after doing the first antenna", "rais");
    settings.Add("rais_second_antenna", false, "Split after doing the second antenna", "rais");
    settings.Add("rais_antennas", false, "Split after finishing antenna missions", "rais");
    settings.Add("rais_bomber", false, "Split after encountering the bomber", "rais");
    settings.Add("rais_first_village", false, "Split after first village", "rais");
    settings.Add("rais_blueprints", false, "Split after picking up blueprints", "rais");
    settings.Add("rais_payment", false, "Split after receiving payment", "rais");
    settings.Add("rais_antizin_drop", false, "Split after dropping off Antizin", "rais");
    settings.Add("rais_end", true, "Split after finishing the quest (End)", "rais");

    settings.Add("siblings", true, "Siblings", "quests");
    settings.Add("siblings_rahim", false, "Split when talking to rahim", "siblings");
    settings.Add("siblings_warp", false, "Split when going outside/warping to Jade", "siblings");
    settings.Add("siblings_school", false, "Split when going inside the School", "siblings");
    settings.Add("siblings_basement_door", false, "Split when interacting with the basement door", "siblings");
    settings.Add("siblings_outside", false, "Split when getting out of the School", "siblings");
    settings.Add("siblings_end", true, "Split when talking to Rahim (End)", "siblings");

    settings.Add("bolters", true, "Bolters", "quests");

    settings.Add("demolition", true, "Demolition", "quests");
    settings.Add("demolition_omar", false, "Split when finding Omar", "demolition");
    settings.Add("demolition_door", false, "Split when going into the trainyard", "demolition");
    settings.Add("demolition_rahim_is_a_zombie", false, "Split when finding Rahim :(", "demolition");
    settings.Add("demolition_end", true, "Split when exiting the trainyard (End)", "demolition");

    settings.Add("pit", true, "The Pit", "quests");
    settings.Add("pit_brecken", false, "Split after talking to Brecken", "pit");
    settings.Add("pit_warehouse", false, "Split when getting to Rais' warehouse", "pit");
    settings.Add("pit_inside", false, "Split when getting inside Rais' warehouse", "pit");
    settings.Add("pit_arena", false, "Split when getting to the Arena", "pit");
    settings.Add("pit_escape", false, "Split after arena during the escape", "pit");
    settings.Add("pit_escape_outside", false, "Split after leaving the construction site", "pit");
    settings.Add("pit_end", true, "Split at the end of the quest (End)", "pit");

    settings.Add("saviors", true, "The Saviors", "quests");
    settings.Add("saviors_setup", false, "Split after finding The Saviors", "saviors");
    settings.Add("saviors_sewer", false, "Split after entering the sewers", "saviors");
    settings.Add("saviors_pipe", false, "Split after triggering the checkpoint on the pipe", "saviors");
    settings.Add("saviors_sewer_exit", false, "Split when exiting the sewers", "saviors");
    settings.Add("saviors_end", true, "Split when entering Old Town/Sector 0 (End)", "saviors");

    settings.Add("embers", false, "Find the Embers", "quests");
    settings.Add("university", false, "Higher Education", "quests");

    settings.Add("mayhem", true, "Public Face", "quests");
    settings.Add("mayhem_enter", false, "Split when entering the sewers", "mayhem");
    settings.Add("mayhem_elevator", false, "Split when entering the elevator", "mayhem");
    settings.Add("mayhem_last_bomb", false, "Split after planting the last bomb", "mayhem");
    settings.Add("mayhem_end", true, "Split when exiting the sewers (End)", "mayhem");

    settings.Add("meeting_with_jade", false, "Rendezvous", "quests");

    settings.Add("museum", true, "Museum", "quests");
    settings.Add("museum_custodian", false, "Split after talking to the custodian", "museum");
    settings.Add("museum_enter", false, "Split when entering the museum", "museum");
    settings.Add("museum_dream", false, "Split when the dream sequence starts", "museum");
    settings.Add("museum_dream_end", false, "Split when the dream sequence ends", "museum");
    settings.Add("museum_end", true, "Split when exiting the museum (End)", "museum");

    settings.Add("contact", true, "Broadcast", "quests");
    settings.Add("contact_sewer", false, "Split when entering sewers", "contact");
    settings.Add("contact_savvy", false, "Split when contacting Savvy", "contact");
    settings.Add("contact_end", true, "Split when exiting the sewer doors (End)", "contact");

    settings.Add("clinic", true, "The Clinic", "quests");
    settings.Add("clinic_enter", false, "Split when entering the clinic", "clinic");
    settings.Add("clinic_end", true, "Split after exiting the clinic (End)", "clinic");

    settings.Add("final", true, "Extraction (Doesn't split automatically after the last QTE)", "quests");
    settings.Add("final_enter", false, "Split when entering the construction site", "final");
    settings.Add("final_sewer", false, "Split when entering the sewer", "final");
    settings.Add("final_tower_top_section", false, "Split when reaching the last tower section", "final");
    settings.Add("final_qte", false, "Split when reaching the QTE section", "final");

    vars.transitions = new Dictionary<string, string> {
        {"Looting/Looting_02", "awakening_13th"},
        {"SchoolOfLife/Q_Start01", "awakening_tutorial"},
        {"Q_Start02/Blackout", "awakening_end"},

        {"Blackout1_5/Blackout1_5b", "blackout_car_traps"},
        {"Blackout1_5b/Blackout1_5c", "blackout_reset"},
        {"Blackout1_5c/Blackout1_6", "blackout_sleep"},
        // If you're really fast, or you quest warp, livesplit might miss the transition
        // from Blackout1_6 -> Blackout_2, so we put both here.
        {"Blackout1_6/AirDrop01", "blackout_end"},
        {"Blackout1_6/Blackout_2", "blackout_end"},

        {"AirDrop01/AirDrop02", "airdrop_sunset"},
        {"AirDrop02_2/AirDrop03", "airdrop_elevator"},
        {"AirDrop03/PactWithRais00", "airdrop_end"},

        {"Q_Antennas02/Q_Antennas03", "rais_first_antenna"},
        {"Q_Antennas03/Q_Antennas04", "rais_second_antenna"},
        {"Antennas05/Courier01", "rais_antennas"},
        {"Courier02/Courier02b", "rais_bomber"},
        {"Courier02b/Courier02c", "rais_first_village"},
        {"Courier02c/Courier02d", "rais_blueprints"},
        {"Courier02d/SaveTheTower01", "rais_payment"},
        {"SaveTheTower01/SaveTheTower02", "rais_antizin_drop"},
        {"SaveTheTower02/SaveTheTower03", "rais_end"},

        {"SaveTheTower03/Q_Explosives01", "siblings_rahim"},
        {"Q_Explosives01/Q_Explosives02", "siblings_warp"},
        {"Q_Explosives02/Q_Explosives03", "siblings_school"},
        {"Q_Explosives03/Q_Explosives03_B", "siblings_basement_door"},
        {"Q_Explosives03_B/Q_Explosives04", "siblings_outside"},
        {"Q_Explosives04b/Q_Explosives05", "siblings_end"},

        {"PrimeHunting01/PrimeHunting02", "bolters"},

        {"Q_Demoliton01/Q_Demoliton02", "demolition_omar"},
        {"Q_Demoliton02/Q_Demoliton02b", "demolition_door"},
        {"Q_Demoliton02b/Q_Demoliton02c", "demolition_rahim_is_a_zombie"},
        // splits when exiting the trainyard door.
        {"Q_Demoliton02c/Q_Demolition05", "demolition_end"},

        {"Q_Demolition05/Q_Intruders01", "pit_brecken"},
        {"Q_Intruders01/Q_Warehouse01", "pit_warehouse"},
        {"Q_Warehouse01/Q_Warehouse02", "pit_inside"},
        {"Q_Warehouse02/Q_Arena01", "pit_arena"},
        {"Q_Arena01/Q_Run01", "pit_escape"},
        {"Q_Run01/Q_Run02", "pit_escape_outside"},
        {"Q_Run02/Q_AnotherDay_02", "pit_end"},

        {"Q_AnotherDay_02/Saviors", "saviors_setup"},
        {"Saviors/Saviors02", "saviors_sewer"},
        {"Saviors03/Saviors04", "saviors_pipe"},
        {"Saviors04/Saviors05", "saviors_sewer_exit"},
        {"Saviors05/Saviors06", "saviors_end"},

        {"Saviors06/FindTheEmbers", "embers"},

        {"University02/University03", "university"},

        {"University03/ProjectMayhem01", "mayhem_enter"},
        {"ProjectMayhem02/ProjectMayhem03", "mayhem_elevator"},
        {"ProjectMayhem04/ProjectMayhem05", "mayhem_last_bomb"},
        {"ProjectMayhem05/ProjectMayhem06", "mayhem_end"},

        {"ProjectMayhem07/MeetingWithJade", "meeting_with_jade"},

        {"MeetingWithJade/Museum01", "museum_custodian"},
        {"Museum01a/Museum02", "museum_enter"},
        {"Museum02/Museum03", "museum_dream"},
        {"Museum03/Museum03b", "museum_dream_end"},
        // exiting the museum
        {"Museum04/Museum05", "museum_end"},

        {"Contact_01/Contact_02", "contact_sewer"},
        {"Contact_02/Contact_03", "contact_savvy"},
        // when exiting the last door
        {"Contact_04/Contact_05", "contact_end"},

        {"Clinic01/Clinic02", "clinic_enter"},
        {"Clinic02/ContactGRE", "clinic_end"},

        {"Final/Final_End_01_Start", "final_enter"},
        {"Final_End_01_Start/Final_End_02_Sewer", "final_sewer"},
        {"Final_End_03_Rais_Tower_1/Final_End_03_Rais_Tower_2", "final_tower_top_section"},
        {"Final_End_03_Rais_Tower_2/Final_End_03_Rais_Tower", "final_qte"},
    };
}

init
{
    vars.mission = "";
    vars.lastMission = "";
    vars.key = "";
}

update
{
    vars.isLoading = false; 
    vars.isLoading = (current.loading == 240) ? true : false;

    // Values goes a bit all over the place when loading. This helps.
    if (!vars.isLoading) {
        if (current.mission != "" && current.mission != null && vars.mission != current.mission) {
            vars.mission = current.mission;
        }

        if (vars.lastMission != vars.mission) {
            vars.key = vars.lastMission + "/" + vars.mission;
            print("Test split: " + vars.key);

            if (vars.lastMission != vars.mission) {
                vars.lastMission = vars.mission;
            }
        } else {
            vars.key = "";
        }
    }
}

split
{
    if (vars.key != "") {
        string split = "";

        if (vars.transitions.TryGetValue(vars.key, out split)) {
            if (settings[split]) {
                return true;
            }
        }
    }

    return false;
}

isLoading
{
    return vars.isLoading;
}