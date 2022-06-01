import { createPopper } from '@popperjs/core';

const arrow = document.querySelector('#arrow');
const copy = document.querySelector('#copy');
const tooltip = document.querySelector('#tooltip');

const popperInstance = createPopper(copy, tooltip, {
  placement: 'left-start',
  modifiers: [
    {
      name: 'arrow',
      options: {
        element: arrow,
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

function show() {
  // Make the tooltip visible
  tooltip.setAttribute('data-show', '');

  // Enable the event listeners
  popperInstance.setOptions((options) => ({
    ...options,
    modifiers: [
      ...options.modifiers,
      { name: 'eventListeners', enabled: true },
    ],
  }));

  // Update its position
  popperInstance.update();
}

function hide() {
  // Hide the tooltip
  tooltip.removeAttribute('data-show');

  // Disable the event listeners
  popperInstance.setOptions((options) => ({
    ...options,
    modifiers: [
      ...options.modifiers,
      { name: 'eventListeners', enabled: false },
    ],
  }));
}

const showEvents = ['click'];
const hideEvents = ['mouseleave', 'blur'];

showEvents.forEach((event) => {
  copy.addEventListener(event, show);
});

hideEvents.forEach((event) => {
  copy.addEventListener(event, hide);
});
