import $ from "jquery";
// import 'core-js/es6/promise';
// import 'core-js/es6/set';
// import 'core-js/es6/map';
import * as yup from 'yup';
import {setLocale} from 'yup';

$(document).ready(function () {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var form = document.querySelectorAll('.feedback-form');
    var successfullyText = document.querySelectorAll('.feedback-send')[0];
    var errorText = document.querySelectorAll('.feedback-error')[0];
    var errorTextEmpty = document.querySelectorAll('.feedback-error-empty')[0];
    const name = document.getElementById('exampleInputName');
    const email = document.getElementById('exampleInputEmail');
    const textarea = document.getElementById('exampleFormControlTextarea');
    // Loop over them and prevent submission
    Array.prototype.slice.call(form)
        .forEach(function (form) {
            form.addEventListener('submit', async function (event) {
                const nameText = name.value;
                const emailText = email.value;
                const textArea = textarea.value;
                if (nameText && emailText && textArea) {
                    event.preventDefault()
                    event.stopPropagation()
                    errorTextEmpty.style.display = 'none';
                } else {
                    event.preventDefault()
                    event.stopPropagation();
                    errorTextEmpty.style.display = 'block';
                    return null;
                }
                form.classList.add('was-validated');
                try {
                    const response = await sendFeedBack({nameText, emailText, textArea});
                    if (response.ok) {
                        form.style.display = 'none';
                        successfullyText.style.display = 'block';
                    } else {
                        form.style.display = 'none';
                        errorText.style.display = 'block';
                    }
                } catch (e) {
                    console.log(e);
                }
            }, false);
        });
});

function sendFeedBack(data) {
    return fetch('/feedback', {
        method: 'POST', // *GET, POST, PUT, DELETE, etc.
        mode: 'cors', // no-cors, *cors, same-origin
        cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
        credentials: 'same-origin', // include, *same-origin, omit
        headers: {
            "Content-Type": "application/json",
            "Accept": "application/json",
            "X-Requested-With": "XMLHttpRequest",
            "X-CSRF-Token": $('.feedback-form input[name="_token"]').val()
        },
        redirect: 'follow', // manual, *follow, error
        referrerPolicy: 'no-referrer', // no-referrer, *client
        body: JSON.stringify(data) // body data type must match "Content-Type" header
    });
}
