<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <link rel="icon" type="image/svg+xml" href="/vite.svg" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Index | Practicals </title>
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <style>
        @import url("https://fonts.googleapis.com/css2?family=Space+Mono:wght@400;700&display=swap");
        @import url("https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap");

        * {
            padding: 0;
            margin: 0;
            font-family: "Space Mono", monospace;
            font-size: 16px;
            -webkit-tap-highlight-color: transparent;
        }

        *,
        *::before,
        *::after {
            box-sizing: border-box;
        }

        body {
            background-color: #393E46;
            color: #eeeeee;
            height: 100dvh;
            overflow: visible;
        }

        .container {
            display: flex;
            justify-content: center;
            width: 100%;

        }

        .title-container {
            background-color: #222831;
            display: flex;
            align-items: center;
            position: sticky;
            border-radius: 0 0 0.3em 0.3em;
            transition: background-color 0.2s ease-in;
        }

        .title-container .title-text {
            margin: 10px 0px;
            padding: 10px 0;
            color: #eeeeee;
            width: 100%;
            font-weight: bold;
            font-size: 1.8rem;
            line-height: 1.2em;
            text-align: center;
        }

        .index-container {
            margin-top: 3rem;

        }

        thead {
            margin-bottom: 1rem;
        }

        .title {
            font-weight: 700;
        }

        .srno,
        .link {
            text-align: center;
        }

        .link {
            text-decoration: none;
            color: #eeeeee;
            cursor: pointer;
        }

        /* .link::after {
            content: "\25b2";
        } */
        .accordion {
            min-width: 216px;
        }

        .accordion-button {
            padding: 0.8rem 1rem;
            --after-bg-image: url("plus.svg");
        }

        .accordion-button:not(.collapsed) {
            color: inherit;
            background-color: transparent;
            box-shadow: none;

        }

        .accordion-item,
        .accordion-button.collapsed {
            color: #eeeeee;
            background-color: transparent;
            border: none;
        }

        .accordion-button::after {
            background-image: var(--after-bg-image) !important;
            color: #807e7e !important;
            margin-left: 1rem;
            position: absolute;
            left: -1.5rem;
        }


        .accordion-button:focus {
            border-color: none;
            box-shadow: none;
        }
        div.accordion-body a[href="#"] {
            opacity: 0.5;
            pointer-events: none; 
            text-decoration: none;
            color: gray; 
            cursor: not-allowed;  
        }
    </style>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            let buttons = document.querySelectorAll('.accordion-button');
            buttons.forEach(button => {
                button.setAttribute('open','false')
            });
            buttons.forEach(button => {
                button.addEventListener('click', () => {
                    if (button.getAttribute('open')=='true') {
                        button.setAttribute('open','false')
                    } else {
                        button.setAttribute('open','true')
                    }
                    buttons.forEach(butto => {
                        butto.style.setProperty('--after-bg-image', 'url("plus.svg")');
                    })
                    if (button.getAttribute('open')=='true') {
                        button.style.setProperty('--after-bg-image', 'url("dash.svg")');
                    }
                });
            });

        });

    </script>
</head>

<body>
    <div class="container-fluid title-container">
        <h2 class="title-text">PHP Practicals &#x1F4DD;&#xFE0F;&#x200D;&#x1F4BB;</h2>
    </div>
    <br>
    <br>
    <div class="container">
        <div class="accordion" id="tableIndex">
            <div class="accordion-item">
                <h2 class="accordion-header">

                    <button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#practical1">
                        <!-- <img class="accordion-icon" src="plus.svg" alt="Expand"> -->
                        <tr>
                            <td class="title srno">1.</td>
                            <td class="title">Environment Setup</td>
                        </tr>
                    </button>
                </h2>
                <div id="practical1" class="accordion-collapse collapse" data-bs-parent="#tableIndex">
                    <div class="accordion-body d-flex flex-column align-items-start ms-3">
                        <a target="_blank" href="#" class="link">i. installation</a>
                        <a target="_blank" href="http://php-practicals-kavanbhavsar.infinityfreeapp.com/prac1.php" class="link">ii. Hello World!</a>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#practical2">
                        <tr>
                            <td class="title srno">2</td>
                            <td class="title">Form Introduction</td>
                        </tr>
                    </button>
                </h2>
                <div id="practical2" class="accordion-collapse collapse" data-bs-parent="#tableIndex">
                    <div class="accordion-body d-flex flex-column align-items-start ms-3">
                        <a target="_blank" href="http://php-practicals-kavanbhavsar.infinityfreeapp.com/prac2.php" class="link">i. User Details form</a>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#practical3">
                        <tr>
                            <td class="title srno">3</td>
                            <td class="title">Variable, Operators and Expressions</td>
                        </tr>
                    </button>
                </h2>
                <div id="practical3" class="accordion-collapse collapse" data-bs-parent="#tableIndex">
                    <div class="accordion-body d-flex flex-column align-items-start ms-3 ms-3">
                        <a target="_blank" href="http://php-practicals-kavanbhavsar.infinityfreeapp.com/prac3-1.php" class="link">i. Simple Calculator</a>
                        <a target="_blank" href="http://php-practicals-kavanbhavsar.infinityfreeapp.com/prac3-2.php" class="link">ii. Salary Slip</a>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#practical4">
                        <tr>
                            <td class="title srno">4</td>
                            <td class="title">Decision Making statements</td>
                        </tr>
                    </button>
                </h2>
                <div id="practical4" class="accordion-collapse collapse" data-bs-parent="#tableIndex">
                    <div class="accordion-body d-flex flex-column align-items-start ms-3 ms-3">
                        <a target="_blank" href="#" class="link">i. Car Company</a>
                        <a target="_blank" href="http://php-practicals-kavanbhavsar.infinityfreeapp.com/prac4-2.php" class="link">ii. GTU result</a>
                        <a target="_blank" href="http://php-practicals-kavanbhavsar.infinityfreeapp.com/prac4-3.php" class="link">iii. Fibonacci</a>
                        <a target="_blank" href="#" class="link">iv. Multiplication table</a>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#practical5">
                        <tr>
                            <td class="title srno">5</td>
                            <td class="title">Array</td>
                        </tr>
                    </button>
                </h2>
                <div id="practical5" class="accordion-collapse collapse" data-bs-parent="#tableIndex">
                    <div class="accordion-body d-flex flex-column align-items-start ms-3 ms-3">
                        <a target="_blank" href="#" class="link">i. Length of string</a>
                        <a target="_blank" href="#" class="link">ii. Sorting Array</a>
                        <a target="_blank" href="#" class="link">iii. Matrix Multiplication</a>
                        <a target="_blank" href="#" class="link">iv. Morse Code</a>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#practical6">
                        <tr>
                            <td class="title srno">6</td>
                            <td class="title">Function</td>
                        </tr>
                    </button>
                </h2>
                <div id="practical6" class="accordion-collapse collapse" data-bs-parent="#tableIndex">
                    <div class="accordion-body d-flex flex-column align-items-start ms-3 ms-3">
                        <a target="_blank" href="#" class="link">i. Currency calculator </a>
                        <a target="_blank" href="#" class="link">ii. String Functions</a>
                        <a target="_blank" href="#" class="link">iii. Math Functions</a>
                        <a target="_blank" href="#" class="link">iv. Date Functions</a>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#practical7">
                        <tr>
                            <td class="title srno">7</td>
                            <td class="title">OOPs Concepts</td>
                        </tr>
                    </button>
                </h2>
                <div id="practical7" class="accordion-collapse collapse" data-bs-parent="#tableIndex">
                    <div class="accordion-body d-flex flex-column align-items-start ms-3 ms-3">
                        <a target="_blank" href="#" class="link">1. </a>
                        <a target="_blank" href="#" class="link">2. </a>
                        <a target="_blank" href="#" class="link">3. </a>
                        <a target="_blank" href="#" class="link">4. </a>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#practical8">
                        <tr>
                            <td class="title srno">8</td>
                            <td class="title">Form</td>
                        </tr>
                    </button>
                </h2>
                <div id="practical8" class="accordion-collapse collapse" data-bs-parent="#tableIndex">
                    <div class="accordion-body d-flex flex-column align-items-start ms-3 ms-3">
                        <a target="_blank" href="#" class="link">1. </a>
                        <a target="_blank" href="#" class="link">2. </a>
                        <a target="_blank" href="#" class="link">3. </a>
                        <a target="_blank" href="#" class="link">4. </a>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#practical9">
                        <tr>
                            <td class="title srno">9</td>
                            <td class="title">Session, Cookies</td>
                        </tr>
                    </button>
                </h2>
                <div id="practical9" class="accordion-collapse collapse" data-bs-parent="#tableIndex">
                    <div class="accordion-body d-flex flex-column align-items-start ms-3 ms-3">
                        <a target="_blank" href="#" class="link">1. </a>
                        <a target="_blank" href="#" class="link">2. </a>
                        <a target="_blank" href="#" class="link">3. </a>
                        <a target="_blank" href="#" class="link">4. </a>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#practical10">
                        <tr>
                            <td class="title srno">10</td>
                            <td class="title">Database</td>
                        </tr>
                    </button>
                </h2>
                <div id="practical10" class="accordion-collapse collapse" data-bs-parent="#tableIndex">
                    <div class="accordion-body d-flex flex-column align-items-start ms-3 ms-3">
                        <a target="_blank" href="#" class="link">1. </a>
                        <a target="_blank" href="#" class="link">2. </a>
                        <a target="_blank" href="#" class="link">3. </a>
                        <a target="_blank" href="#" class="link">4. </a>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#practical11">
                        <tr>
                            <td class="title srno">11</td>
                            <td class="title">Email, PDF, JSON</td>
                        </tr>
                    </button>
                </h2>
                <div id="practical11" class="accordion-collapse collapse" data-bs-parent="#tableIndex">
                    <div class="accordion-body d-flex flex-column align-items-start ms-3 ms-3">
                        <a target="_blank" href="#" class="link">1. </a>
                        <a target="_blank" href="#" class="link">2. </a>
                        <a target="_blank" href="#" class="link">3. </a>
                        <a target="_blank" href="#" class="link">4. </a>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#practical12">
                        <tr>
                            <td class="title srno">12</td>
                            <td class="title">Simple Web Application</td>
                        </tr>
                    </button>
                </h2>
                <div id="practical12" class="accordion-collapse collapse" data-bs-parent="#tableIndex">
                    <div class="accordion-body d-flex flex-column align-items-start ms-3 ms-3">
                        <a target="_blank" href="#" class="link">1. </a>
                        <a target="_blank" href="#" class="link">2. </a>
                        <a target="_blank" href="#" class="link">3. </a>
                        <a target="_blank" href="#" class="link">4. </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
</body>

</html>