const toggleRadio = (span) => {
  const input = span.querySelector('input');
  input.checked = !input.checked;

  if (!input.checked) return

  span.classList.toggle('is-selected');
};

const clearSelections = (spans) => {
  spans.forEach(span => span.classList.remove('is-selected'));
};

const handleSubmitBtn = () => {
  const button = document.querySelector('input[type="submit"]');
  const inputs = document.querySelectorAll('input[name="event[activity_id]"]');
  let selected;

  inputs.forEach((input) => {
    if (input.checked) selected = input;
  });

  if (selected) {
    button.disabled = false;
  } else {
    button.disabled = true;
  };
};

function setupAddActivityForm () {
  const form = document.querySelector('.edit_event');

  if (form) {
    const spans = document.querySelectorAll('.radio.btn.btn-primary.cards');

    spans.forEach(span => span.addEventListener('click', () => {
      clearSelections(spans);
      toggleRadio(span);
      handleSubmitBtn(spans);
    }));
  }
};

export { setupAddActivityForm };

