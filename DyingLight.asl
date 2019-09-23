state("DyingLightGame")
{
    string255 quest: "gamedll_x64_rwdi.dll", 0x01D6D488, 0x0, 0x90, 0x50, 0x18, 0x0;
    // from the official load remover:
    // https://github.com/shadow2hel/Autosplitters/blob/master/DyingLight/autostartnloadless.asl
    int loading: "rd3d11_x64_rwdi.dll", 0x7D108;
    // qte counter which goes up during the final fight.
    int final_qte : "gamedll_x64_rwdi.dll", 0x01D5E5E0, 0x0, 0x48, 0x8, 0xDC;
}

startup
{
    vars.prevTimerPhase = null;

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
    settings.Add("rais_antennas", false, "Split after finishing antenna quests", "rais");
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
    settings.Add("mayhem_detonator", false, "Split when picking up the detonator", "mayhem");
    settings.Add("mayhem_end", true, "Split when exiting sewers (End)", "mayhem");

    settings.Add("meeting_with_jade", false, "Split when receiving the quest to meet Jade (Rendezvous)", "quests");

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
    settings.Add("clinic_end", true, "Split after exiting the clinic and talking to Camden", "clinic");

    settings.Add("final", true, "Extraction (Doesn't split automatically after the last QTE)", "quests");
    settings.Add("final_enter", false, "Split when entering the construction site", "final");
    settings.Add("final_sewer", false, "Split when entering the sewer", "final");
    settings.Add("final_tower_top_section", false, "Split when reaching the last tower section", "final");
    settings.Add("final_qte", false, "Split when reaching the QTE section", "final");
    settings.Add("final_end", true, "Split after last QTE (End)", "final");

    // Note: splits must happen in the order in which they are defined here by their setting.
    var transitions = new List<Tuple<string, string>>() {
        new Tuple<string, string>("Looting_02", "awakening_13th"),
        new Tuple<string, string>("Q_Start01", "awakening_tutorial"),
        new Tuple<string, string>("Blackout", "awakening_end"),

        new Tuple<string, string>("Blackout1_5b", "blackout_car_traps"),
        new Tuple<string, string>("Blackout1_5c", "blackout_reset"),
        new Tuple<string, string>("Blackout1_6", "blackout_sleep"),
        new Tuple<string, string>("AirDrop01", "blackout_end"),

        new Tuple<string, string>("AirDrop02", "airdrop_sunset"),
        new Tuple<string, string>("AirDrop03", "airdrop_elevator"),
        new Tuple<string, string>("PactWithRais00", "airdrop_end"),

        new Tuple<string, string>("Q_Antennas03", "rais_first_antenna"),
        new Tuple<string, string>("Q_Antennas04", "rais_second_antenna"),
        new Tuple<string, string>("Courier01", "rais_antennas"),
        new Tuple<string, string>("Courier02b", "rais_bomber"),
        new Tuple<string, string>("Courier02c", "rais_first_village"),
        new Tuple<string, string>("Courier02d", "rais_blueprints"),
        new Tuple<string, string>("SaveTheTower01", "rais_payment"),
        new Tuple<string, string>("SaveTheTower02", "rais_antizin_drop"),
        new Tuple<string, string>("SaveTheTower03", "rais_end"),

        new Tuple<string, string>("Q_Explosives01", "siblings_rahim"),
        new Tuple<string, string>("Q_Explosives02", "siblings_warp"),
        new Tuple<string, string>("Q_Explosives03", "siblings_school"),
        new Tuple<string, string>("Q_Explosives03_B", "siblings_basement_door"),
        new Tuple<string, string>("Q_Explosives04", "siblings_outside"),
        new Tuple<string, string>("Q_Explosives05", "siblings_end"),

        new Tuple<string, string>("PrimeHunting02", "bolters"),

        new Tuple<string, string>("Q_Demoliton02", "demolition_omar"),
        new Tuple<string, string>("Q_Demoliton02b", "demolition_door"),
        new Tuple<string, string>("Q_Demoliton02c", "demolition_rahim_is_a_zombie"),
        // splits when exiting the trainyard door.
        new Tuple<string, string>("Q_Demolition05", "demolition_end"),

        new Tuple<string, string>("Q_Intruders01", "pit_brecken"),
        new Tuple<string, string>("Q_Warehouse01", "pit_warehouse"),
        new Tuple<string, string>("Q_Warehouse02", "pit_inside"),
        new Tuple<string, string>("Q_Arena01", "pit_arena"),
        new Tuple<string, string>("Q_Run01", "pit_escape"),
        new Tuple<string, string>("Q_Run02", "pit_escape_outside"),
        new Tuple<string, string>("Q_AnotherDay_02", "pit_end"),

        new Tuple<string, string>("Saviors", "saviors_setup"),
        new Tuple<string, string>("Saviors02", "saviors_sewer"),
        new Tuple<string, string>("Saviors04", "saviors_pipe"),
        new Tuple<string, string>("Saviors05", "saviors_sewer_exit"),
        new Tuple<string, string>("Saviors06", "saviors_end"),

        new Tuple<string, string>("FindTheEmbers", "embers"),

        new Tuple<string, string>("University03", "university"),

        new Tuple<string, string>("ProjectMayhem01", "mayhem_enter"),
        new Tuple<string, string>("ProjectMayhem03", "mayhem_elevator"),
        new Tuple<string, string>("ProjectMayhem05", "mayhem_last_bomb"),
        new Tuple<string, string>("ProjectMayhem06", "mayhem_detonator"),
        new Tuple<string, string>("ProjectMayhem07", "mayhem_end"),

        new Tuple<string, string>("MeetingWithJade", "meeting_with_jade"),

        new Tuple<string, string>("Museum01", "museum_custodian"),
        new Tuple<string, string>("Museum02", "museum_enter"),
        new Tuple<string, string>("Museum03", "museum_dream"),
        new Tuple<string, string>("Museum03b", "museum_dream_end"),
        // exiting the museum
        new Tuple<string, string>("Museum05", "museum_end"),

        new Tuple<string, string>("Contact_02", "contact_sewer"),
        new Tuple<string, string>("Contact_03", "contact_savvy"),
        // when exiting the last door
        new Tuple<string, string>("Contact_05", "contact_end"),

        new Tuple<string, string>("Clinic02", "clinic_enter"),
        new Tuple<string, string>("ContactGRE", "clinic_end"),

        new Tuple<string, string>("Final_End_01_Start", "final_enter"),
        new Tuple<string, string>("Final_End_02_Sewer", "final_sewer"),
        new Tuple<string, string>("Final_End_03_Rais_Tower_2", "final_tower_top_section"),
        new Tuple<string, string>("Final_End_03_Rais_Tower", "final_qte"),
    };

    // calculate the allowed split order.
    vars.splits = new Dictionary<string, string>();
    // legal and known quest names
    vars.order = new Dictionary<string, int>();

    var currentOrder = 1;
    var orderBySetting = new Dictionary<string, int>();

    foreach (Tuple<string, string> entry in transitions) {
        int order;

        if (!orderBySetting.TryGetValue(entry.Item2, out order)) {
            order = currentOrder++;
            orderBySetting.Add(entry.Item2, order);
        }

        vars.splits.Add(entry.Item1, entry.Item2);
        vars.order.Add(entry.Item1, order);
    }
}

init
{
    vars.prevOrder = 0;
    vars.prevQuest = "";
    vars.split = false;
}

update
{
    vars.isLoading = false; 
    vars.isLoading = (current.loading == 240) ? true : false;

    if (timer.CurrentPhase != vars.prevTimerPhase) {
        if (timer.CurrentPhase != TimerPhase.Paused) {
            vars.prevOrder = 0;
            vars.prevQuest = "";
        }

        vars.prevTimerPhase = timer.CurrentPhase;
    }

    // Values goes a bit all over the place when loading. This helps.
    if (!vars.isLoading && current.quest != null && current.quest != "") {
        if (current.quest != vars.prevQuest) {
            int order = 0;

            if (vars.order.TryGetValue(current.quest, out order)) {
                // only split if mission order has strictly increased.
                if (vars.prevOrder < order) {
                    string split = "";

                    // need to test that previous quest is set to avoid splitting when resetting.
                    if (vars.prevQuest != "" && vars.splits.TryGetValue(current.quest, out split)) {
                        print("Testing split: " + split);
                        vars.split = settings[split];
                    }

                    vars.prevOrder = order;
                }
            }

            print("Quest: " + current.quest);
            // update to avoid rechecking vars.order too frequently
            vars.prevQuest = current.quest;
        }

        if (old.final_qte == 23 && current.final_qte == 24 && current.quest == "Final_End_03_Rais_Tower") {
            vars.split = settings["final_end"];
        }
    }

}

split
{
    if (vars.split) {
        vars.split = false;
        return true;
    }

    return false;
}

isLoading
{
    return vars.isLoading;
}
