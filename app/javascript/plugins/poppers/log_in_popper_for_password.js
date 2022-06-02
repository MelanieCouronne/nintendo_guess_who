import { createPopper } from '@popperjs/core';

// For Password
const arrowPassword = document.querySelector('#arrowPassword');
const tooltipPassword = document.querySelector('#tooltipPassword');
// targets to display popper tooltip and trigger event
const cloneIconForPassword = document.querySelector('#cloneIconForPassword');

// Create popper for Password clone
const popperInstancePassword = createPopper(cloneIconForPassword, tooltipPassword, {
  placement: 'left-start',
  modifiers: [
    {
      name: 'arrow',
      options: {
        element: arrowPassword,
      },
    },
    {
      name: 'offset',
      options: {
        offset: [0, 5],
      },
    },
    {
      name: 'flip',
      options: {
        fallbackPlacements: ['top', 'right'],
      },
    },
  ],
});


// Display popper for Password
function show() {
  // Make the tooltip visible
  tooltipPassword.setAttribute('data-show', '');

  // Enable the event listeners
  popperInstancePassword.setOptions((options) => ({
    ...options,
    modifiers: [
      ...options.modifiers,
      { name: 'eventListeners', enabled: true },
    ],
  }));

  // Update its position
  popperInstancePassword.update();
}

function hide() {
  // Hide the tooltip
  tooltipPassword.removeAttribute('data-show');

  // Disable the event listeners
  popperInstancePassword.setOptions((options) => ({
    ...options,
    modifiers: [
      ...options.modifiers,
      { name: 'eventListeners', enabled: false },
    ],
  }));
}


// triggers and Events for Password
const showEvents = ['click'];
const hideEvents = ['mouseleave', 'blur'];

showEvents.forEach((event) => {
  cloneIconForPassword.addEventListener(event, show);
});

hideEvents.forEach((event) => {
  cloneIconForPassword.addEventListener(event, hide);
});
