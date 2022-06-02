import { createPopper } from '@popperjs/core';

// For Email
const arrowEmail = document.querySelector('#arrowEmail');
const tooltipEmail = document.querySelector('#tooltipEmail');
// targets to display popper tooltip and trigger event
const cloneIconForEmail = document.querySelector('#cloneIconForEmail');


// Create popper for Email clone
const popperInstanceEmail = createPopper(cloneIconForEmail, tooltipEmail, {
  placement: 'left-start',
  modifiers: [
    {
      name: 'arrow',
      options: {
        element: arrowEmail,
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


// Display popper for Email
function show() {
  // Make the tooltip visible
  tooltipEmail.setAttribute('data-show', '');

  // Enable the event listeners
  popperInstanceEmail.setOptions((options) => ({
    ...options,
    modifiers: [
      ...options.modifiers,
      { name: 'eventListeners', enabled: true },
    ],
  }));

  // Update its position
  popperInstanceEmail.update();
}

function hide() {
  // Hide the tooltip
  tooltipEmail.removeAttribute('data-show');

  // Disable the event listeners
  popperInstanceEmail.setOptions((options) => ({
    ...options,
    modifiers: [
      ...options.modifiers,
      { name: 'eventListeners', enabled: false },
    ],
  }));
}


// triggers and Events for Email
const showEvents = ['click'];
const hideEvents = ['mouseleave', 'blur'];

showEvents.forEach((event) => {
  cloneIconForEmail.addEventListener(event, show);
});

hideEvents.forEach((event) => {
  cloneIconForEmail.addEventListener(event, hide);
});
