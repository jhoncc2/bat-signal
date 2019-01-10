# BatSignal
This tool is created aiming to help new developers get into the community of Pharo, to help him contact with experts in the area, and so to shorten the time they spend looking for information. The users might find more reliable, updated and useful answers from experts.

## Conceptual Expert recommendation bot
This bot run in a Test server in Discord. For testing purpose the bot is recommends scientific experts; where the data was collected from Wikipedia (https://en.wikipedia.org/wiki/List_of_people_considered_father_or_mother_of_a_scientific_field). You can test the bot by joining to the test server (https://discord.gg/f865cgx).

## Installation
Run the script below in the workspace of Pharo (tested on Pharo 6.1, Pharo 7 comming soon)

```Smalltalk
Metacello new
    baseline: #BatSignal;
    repository: 'github://jhoncc2/bat-signal:dev';
    load.
```

### ChatBot (BTBot package)
This package contains the chatbot behavior. Uses expertise information from `data` folder, and serves this information in a discord chat server.

In order to start the chatbot, you must use your own configuration, and then run the code

```
    inst := BTQueryBot instance.

    inst token: 'bot_token_goes_here'.
    inst serverTarget: 'some_server'.
    inst channelsToListen: {'channel1'. 'channel2'}.
    "inst channelsToOmit: {'channel1'. 'channel2'}."

    inst newLogName.
    inst startListening.
```

To stop the server just execute `BTqueryBot instance disconnect`. Note that `BTqueryBot instance` is a singleton.

### Data (BTExpertiseCoverage package)
The classes contained in this packages are used to collect data about code-expertise (authorship) using direct authorship, and usageExpertise. 

In order to run the process, execute:

```Smalltalk

inst := BTContributorsPharo new.
inst runWithUsageExpertise; 
    build;
    saveExtendedData.
```

Note that this takes a lot of time running, it will process the data and save it in `data/methods.json`, `data/classes.json` and `data/package.json`.

