import { createPopper } from '@popperjs/core';

// Variables
const arrowPen = document.querySelector('#arrowPen');
const tooltipPen = document.querySelector('#tooltipPen');
// targets to display popper tooltip and trigger event
const penIcon = document.querySelector('#penEditIcon');

if (penIcon) {
  // Create popper
  const popperInstancePen = createPopper(penIcon, tooltipPen, {
    placement: 'top',
    modifiers: [
      {
        name: 'arrow',
        options: {
          element: arrowPen,
        },
      },
      {
        name: 'offset',
        options: {
          offset: [0, 10],
        },
      },
      {
        name: 'flip',
        options: {
          fallbackPlacements: ['right', 'left'],
        },
      },
    ],
  });


  // Display popper for EditPen
  function show() {
    // Make the tooltip visible
    tooltipPen.setAttribute('data-show', '');

    // Enable the event listeners
    popperInstancePen.setOptions((options) => ({
      ...options,
      modifiers: [
        ...options.modifiers,
        { name: 'eventListeners', enabled: true },
      ],
    }));

    // Update its position
    popperInstancePen.update();
  }

  function hide() {
    // Hide the tooltip
    tooltipPen.removeAttribute('data-show');

    // Disable the event listeners
    popperInstancePen.setOptions((options) => ({
      ...options,
      modifiers: [
        ...options.modifiers,
        { name: 'eventListeners', enabled: false },
      ],
    }));
  }


  // triggers and Events on pen icon
  const showEvents = ['mouseenter', 'focus', 'click'];
  const hideEvents = ['mouseleave', 'blur'];

  showEvents.forEach((event) => {
    penIcon.addEventListener(event, show);
  });

  hideEvents.forEach((event) => {
    penIcon.addEventListener(event, hide);
  });
}
