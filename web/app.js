'use strict';
(() => {
  const transcript = document.getElementById('transcript');
  const choicesNode = document.getElementById('choices');
  const continueButton = document.getElementById('continue');
  const revealButton = document.getElementById('read-to-choice');
  const restartButton = document.getElementById('restart');
  const stateNode = document.getElementById('state');
  const messageNode = document.getElementById('message');
  let story;
  let storyText;

  const speakerPattern = /^(Eli|Peacekeeper representative|Bastion representative|Peacekeeper radio contact|Bastion radio contact):\s*(.*)$/;
  function addLine(raw) {
    const text = raw.trim();
    if (!text) return;
    const match = text.match(speakerPattern);
    const line = document.createElement('div');
    line.className = 'line ' + (match ? 'speech' : 'narration');
    if (match) {
      const speaker = match[1];
      line.classList.add(speaker === 'Eli' ? 'eli' : speaker.startsWith('Peacekeeper') ? 'pk' : 'bastion');
      const label = document.createElement('span');
      label.className = 'speaker';
      label.textContent = speaker;
      const body = document.createElement('span');
      body.className = 'utterance';
      body.textContent = match[2];
      line.append(label, body);
    } else {
      line.textContent = text;
    }
    transcript.append(line);
  }
  function currentValue(key) {
    try { return story.variablesState.$(key); } catch (_) { return undefined; }
  }
  function refreshState() {
    if (!story) return;
    const claimant = currentValue('initial_claimant');
    const items = [
      ['Initial claimant', claimant === 'PK' ? 'Peacekeepers' : claimant === 'BASTION' ? 'Bastion' : 'Not selected'],
      ['Brief complete', currentValue('brief_complete') ? 'Yes' : 'No'],
      ['Library entered', currentValue('entered') ? 'Yes' : 'No'],
      ['Entrance key', currentValue('key_obtained') ? 'Held' : 'Not held'],
      ['Door secured', currentValue('entrance_secured') ? 'Yes' : 'No'],
      ['Rival contact', currentValue('radio_call_complete') ? 'Heard' : 'Pending'],
      ['Main floor', currentValue('main_floor_cleared') ? 'Clear' : 'Not clear'],
      ['Basement', currentValue('basement_cleared') ? 'Clear' : 'Not clear'],
      ['Kitchen threat', currentValue('boss_defeated') ? 'Defeated' : 'Active'],
      ['Atrium deadbolt', currentValue('atrium_door_unlocked') ? 'Released' : 'Blocked'],
      ['Qualified atrium', currentValue('atrium_reached') ? 'Reached' : 'Pending'],
      ['Security', currentValue('secured') ? 'Secured' : 'Unresolved'],
      ['Ownership', currentValue('ownership') === 'PK' ? 'Peacekeepers' : currentValue('ownership') === 'BASTION' ? 'Bastion' : 'Undecided'],
      ['Successful report', currentValue('report_complete') ? 'Complete' : 'Pending'],
      ['Key handover', currentValue('key_transferred') ? 'Transferred' : 'Not transferred'],
      ['Losing response', currentValue('losing_response_pending') ? 'Pending' : currentValue('losing_consequence_resolved') ? 'Resolved' : 'Not yet due'],
      ['Relationship effect', currentValue('pk_reputation_effect_recorded') ? 'Peacekeepers: recorded' : currentValue('bastion_reputation_effect_recorded') ? 'Bastion: recorded' : 'Not recorded'],
      ['Future world-state', currentValue('enduring_path_available') ? 'Owner path available' : 'Not yet available']
    ];
    stateNode.replaceChildren();
    for (const [name, value] of items) {
      const wrapper = document.createElement('div');
      const dt = document.createElement('dt');
      const dd = document.createElement('dd');
      dt.textContent = name;
      dd.textContent = value;
      wrapper.append(dt, dd);
      stateNode.append(wrapper);
    }
  }
  function drawChoices() {
    choicesNode.replaceChildren();
    for (const choice of story.currentChoices) {
      const button = document.createElement('button');
      button.type = 'button';
      button.textContent = choice.text.trim();
      button.addEventListener('click', () => {
        story.ChooseChoiceIndex(choice.index);
        advance(5);
      });
      choicesNode.append(button);
    }
  }
  function advance(limit) {
    if (!story) return;
    let count = 0;
    while (story.canContinue && count < limit) {
      addLine(story.Continue());
      count += 1;
    }
    drawChoices();
    refreshState();
    continueButton.hidden = !story.canContinue;
    revealButton.hidden = !story.canContinue;
    if (!story.canContinue && story.currentChoices.length === 0) {
      const owner = currentValue('ownership');
      messageNode.textContent = owner === 'PK' || owner === 'BASTION'
        ? 'Wards Point belongs to ' + (owner === 'PK' ? 'the Peacekeepers' : 'Bastion') + '. ' + (currentValue('losing_response_pending') ? 'The other faction has not yet responded.' : 'The losing faction has responded.') + ' Restart to explore another outcome.'
        : currentValue('secured')
          ? 'Wards Point is secured but ownership is undecided. Restart to explore another route.'
          : 'This run ended before the library was handed over. Restart to try another route.';
    } else {
      messageNode.textContent = '';
    }
    const last = transcript.lastElementChild;
    if (last) last.scrollIntoView({ behavior: 'smooth', block: 'nearest' });
    else if (choicesNode.firstElementChild) choicesNode.firstElementChild.focus();
  }
  function reset() {
    if (!storyText || !window.inkjs?.Story) return;
    story = new window.inkjs.Story(storyText);
    transcript.replaceChildren();
    choicesNode.replaceChildren();
    messageNode.textContent = '';
    advance(5);
  }
  async function init() {
    try {
      if (!window.inkjs?.Story) throw new Error('The Ink runtime did not load.');
      const response = await fetch('./story.json', { cache: 'no-store' });
      if (!response.ok) throw new Error('Compiled Ink story is missing (' + response.status + ').');
      storyText = (await response.text()).replace(/^\uFEFF/, '');
      reset();
    } catch (error) {
      messageNode.textContent = error.message + ' Run npm install, npm run build, and serve the web/ folder with a local web server.';
      continueButton.hidden = true;
      revealButton.hidden = true;
    }
  }
  continueButton.addEventListener('click', () => advance(5));
  revealButton.addEventListener('click', () => advance(2000));
  restartButton.addEventListener('click', reset);
  init();
})();
