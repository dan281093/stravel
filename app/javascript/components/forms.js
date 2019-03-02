const toggleBtn = (span) => {
  const input = span.querySelector('input');
  const isCheckbox = span.classList.contains('checkbox');
  input.checked = !input.checked;

  if (!isCheckbox && !input.checked) return

  span.classList.toggle('is-selected');
};

const clearSelections = (spans) => {
  spans.forEach(span => span.classList.remove('is-selected'));
};

const handleSubmitBtn = () => {
  const button = document.querySelector('input[type="submit"]');
  const inputs = document.querySelectorAll('span input');
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
    const spans = document.querySelectorAll('.radio.btn.cards');

    spans.forEach(span => span.addEventListener('click', () => {
      clearSelections(spans);
      toggleBtn(span);
      handleSubmitBtn();
    }));

    const labels = document.querySelectorAll('label');
    labels.forEach(label => label.addEventListener('click', (e) => {
      e.preventDefault();
    }));
  }
};

function setupSelectActivitiesForm () {
  const form = document.querySelector('.search_activity');

  if (form) {
    const spans = document.querySelectorAll('.checkbox.btn.cards');

    spans.forEach(span => span.addEventListener('click', () => {
      toggleBtn(span);
    }));

    const labels = document.querySelectorAll('label');
    labels.forEach(label => label.addEventListener('click', (e) => {
      e.preventDefault();
    }));
  }
}

export { setupAddActivityForm, setupSelectActivitiesForm };

