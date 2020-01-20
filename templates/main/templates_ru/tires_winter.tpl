<div class="main_container">
    <div class="block_top" style="width: 100%">
        <div class="block_title" style="width: 100%">
            <div class="icon"><img src="//www.meteonova.ru/images/icon.png" width="26" height="26" alt="Прогноз погоды в Москве для автомобилистов" ></div>
            <div class="title" style="padding-left: 13px;"><b>КОГДА НУЖНО МЕНЯТЬ РЕЗИНУ</b></div>
        </div>
    </div>
    <div class="block_content">
        <style>
            .tires-notif-text {
                padding: 16px 8px;
                color:#3b55c5;
                font-size:15px;
                background: url('/images/tires_back.png') no-repeat;
                position: relative;
            }
            .tires-notif-text.w-s {
                background: url('/images/tires_back_w_s.jpg') no-repeat;
            }
            .tires-notif-text.s {
                background: url('/images/tires_back_s.jpg') no-repeat;
            }
            .tires-notif-text::after {
                background: url(/images/tires.svg) no-repeat;
                background-size: 36px auto;
                background-position: 0;
                margin-top: 0;
                content: '';
                width: 36px;
                height: 42px;
                position: absolute;
                right: 8px;
                top: 50%;
                margin-top: -21px;
            }
            .tires-notif-text .flake-sun {
                position: absolute;
                right: 35px;
                top: 25px;
                width: 20px;
                height: 20px;
            }

            .tires-notif-text.w-s .flake-sun svg #_flake {
                animation-name: flake;
                animation-duration: 4s;
                animation-iteration-count: infinite;
            }
            .tires-notif-text.w-s .flake-sun svg #_sun {
                display: block;
                opacity: 0;
                animation-name: sun;
                animation-duration: 4s;
                animation-iteration-count: infinite;
            }


            .tires-notif-text .flake-sun svg #_sun {
                display: none;
            }

            .tires-notif-text.s .flake-sun svg #_flake {
                display: none;
            }

            .tires-notif-text.s .flake-sun svg #_sun {
                display: block;
            }

            @keyframes flake{
                0% {opacity: 1}
                25% {opacity: 0}
            }

            @keyframes sun {
                0% {opacity: 0}
                25% {opacity: 1}
            }

        </style>
        <div class="tires-notif-text w-s"><b>Сейчас переходный сезон: у вас могут быть как зимние, так и летние шины</b>
            <div class="flake-sun">
                <svg viewBox="0 0 110 110">
                    <g fill="none">
                        <path id="_sun" fill="#F7AD02" d="M54.3678161,32.8735632 C42.5017994,32.8735632 32.8735632,42.5021693 32.8735632,54.3661645 C32.8735632,66.2433722 42.5017994,75.862069 54.3678161,75.862069 C66.2420902,75.862069 75.862069,66.2433722 75.862069,54.3661645 C75.862069,42.5021693 66.2420902,32.8735632 54.3678161,32.8735632 Z M104.629921,60.3569607 L86.3089614,60.3569607 C85.4923135,65.1422594 83.6445444,69.5472748 80.9471316,73.3591805 L93.8897638,86.2995321 C95.9850019,88.3972763 95.9850019,91.7934277 93.8897638,93.891172 C91.7945257,95.9856166 88.3959505,95.9856166 86.3007124,93.891172 L73.3580802,80.9475208 C69.5470566,83.6449741 65.1421072,85.4944206 60.3577053,86.309431 L60.3577053,104.631491 C60.3577053,107.599514 57.9572553,110 54.9958755,110 C52.0262467,110 49.6257968,107.599514 49.6257968,104.631491 L49.6257968,86.309431 C44.8496438,85.4944206 40.4446944,83.6449741 36.6419198,80.9475208 L23.6992876,93.891172 C21.6040495,95.9856166 18.2054743,95.9856166 16.1102362,93.891172 C14.0149981,91.7934277 14.0149981,88.3972763 16.1102362,86.2995321 L29.0528684,73.3591805 C26.3554556,69.5563488 24.4994376,65.1422594 23.6827897,60.3569607 L5.36182977,60.3569607 C2.40044994,60.3569607 0,57.9564748 0,54.9950505 C0,52.0336263 2.40044994,49.6331404 5.36182977,49.6331404 L23.6827897,49.6331404 C24.5076865,44.8478417 26.3554556,40.4428263 29.0528684,36.6408195 L16.1102362,23.7004679 C14.0149981,21.6027237 14.0149981,18.2057474 16.1102362,16.1080031 C17.1578553,15.0611933 18.5354331,14.5423253 19.9047619,14.5423253 C21.2740907,14.5423253 22.6516685,15.0611933 23.6992876,16.1080031 L36.6419198,29.0524792 C40.4446944,26.3550259 44.8496438,24.5055794 49.6257968,23.6806701 L49.6257968,5.36191019 C49.6257968,2.40048595 52.0262467,0 54.9958755,0 C57.9572553,0 60.3577053,2.40048595 60.3577053,5.36191019 L60.3577053,23.6806701 C65.1421072,24.4989801 69.5553056,26.3550259 73.3580802,29.0524792 L86.3007124,16.1080031 C87.3483315,15.0611933 88.7259093,14.5423253 90.0952381,14.5423253 C91.4645669,14.5423253 92.8421447,15.0611933 93.8897638,16.1080031 C95.9850019,18.2057474 95.9850019,21.6027237 93.8897638,23.7004679 L80.9471316,36.6408195 C83.6445444,40.4428263 85.4923135,44.8478417 86.3089614,49.6331404 L104.629921,49.6331404 C107.59955,49.6331404 110,52.0336263 110,54.9950505 C110,57.9564748 107.59955,60.3569607 104.629921,60.3569607 L104.629921,60.3569607 Z" transform="matrix(1 0 0 -1 0 110)"/>
                        <g fill="#4974CB" transform="translate(9 3)" id="_flake">
                            <path d="M45.9979196,7 L29.2115935,26.6754792 C27.3994157,28.7882563 27.647872,31.9749053 29.7706201,33.7931835 C31.8902626,35.6021371 35.0813727,35.3472674 36.8826805,33.2313822 L45.9979196,22.5563798 L55.1131586,33.2313822 C56.9222307,35.3472674 60.1055766,35.6021371 62.2329833,33.7931835 C64.3526257,31.9749053 64.601082,28.7882563 62.7842456,26.6754792 L45.9979196,7" transform="matrix(1 0 0 -1 0 42)"/>
                            <path d="M58.9564664,70 C57.5278429,70 56.1147479,70.6127985 55.1131586,71.7778148 L45.9979196,82.44781 L36.8826805,71.7778148 C35.0736084,69.6660287 31.8902626,69.4081718 29.7706201,71.2193837 C27.647872,73.0282655 27.3994157,76.2134199 29.2115935,78.3345261 L45.9979196,98 L62.7842456,78.3345261 C64.601082,76.2134199 64.3526257,73.0282655 62.2329833,71.2193837 C61.2779795,70.4038723 60.1133408,70 58.9564664,70" transform="matrix(1 0 0 -1 0 168)"/>
                            <path d="M46,0 C43.2384615,0 41,2.24720341 41,5.02570439 L41,99.9804735 C41,102.752797 43.2384615,105 46,105 C48.7615385,105 51,102.752797 51,99.9804735 L51,5.02570439 C51,2.24720341 48.7615385,0 46,0" transform="matrix(1 0 0 -1 0 105)"/>
                            <path d="M4.97952903,16 C2.62218831,16 0.530949494,17.674399 0.0846344991,20.0637785 C-0.418428451,22.7617608 1.37296644,25.3482183 4.08076412,25.8470242 L17.707175,28.3685529 L13.0791493,41.3841022 C12.1627465,43.9652126 13.5223968,46.8052743 16.1166986,47.7158052 C18.7171353,48.6255721 21.566036,47.2796365 22.4793713,44.698526 L31,20.7115387 L5.8897969,16.092428 C5.58765238,16.0297909 5.28167354,16 4.97952903,16" transform="matrix(1 0 0 -1 0 64)"/>
                            <path d="M74.2269689,57 C72.1719964,57 70.2550443,58.2734443 69.5266026,60.3133982 L61,84.2843839 L86.1044036,88.904055 C88.7421296,89.4468721 91.4105268,87.6275569 91.9166021,84.9348482 C92.4150096,82.2390857 90.6284104,79.6410456 87.9216741,79.1554877 L74.2883114,76.6353201 L78.9196674,63.6267965 C79.8398044,61.0440254 78.4826024,58.2047333 75.8832155,57.2893498 C75.3388011,57.0984858 74.7713833,57 74.2269689,57" transform="matrix(1 0 0 -1 0 146)"/>
                            <path d="M86.9893949,24 C86.1424341,24 85.2800741,24.2120006 84.4870108,24.6727382 L2.5019788,71.7177284 C0.110469587,73.0899919 -0.710312391,76.1268808 0.670233655,78.5155224 C2.05693942,80.8804384 5.11215788,81.7146644 7.50982681,80.3278593 L89.4994786,33.2828692 C91.8863681,31.913667 92.7102299,28.8668287 91.3319937,26.4873712 C90.4003369,24.8939229 88.7218146,24 86.9893949,24" transform="matrix(1 0 0 -1 0 105)"/>
                            <path d="M87.0245406,16 C86.7178283,16 86.4111159,16.0297899 86.1044036,16.0924252 L61,20.7113951 L69.5266026,44.6976517 C70.4467395,47.2878496 73.3144998,48.6245781 75.8832155,47.7148389 C78.4826024,46.8043358 79.8398044,43.9643606 78.9196674,41.3833288 L74.2883114,28.3681761 L87.9216741,25.8467242 C90.6284104,25.3479335 92.4150096,22.7615548 91.9166021,20.0636547 C91.4718693,17.6743479 89.3785577,16 87.0245406,16" transform="matrix(1 0 0 -1 0 64)"/>
                            <path d="M17.7792603,57 C17.2278849,57 16.668074,57.0985135 16.1166986,57.2894311 C13.5223968,58.2050721 12.1627465,61.0451628 13.0791493,63.6286602 L17.707175,76.6408423 L4.08076412,79.1617188 C1.37296644,79.6474132 -0.418428451,82.246184 0.0846344991,84.9427047 C0.587697449,87.6361706 3.20270455,89.4231597 5.8897969,88.9130278 L31,84.2920574 L22.4793713,60.3143301 C21.757752,58.2738024 19.831389,57 17.7792603,57" transform="matrix(1 0 0 -1 0 146)"/>
                            <path d="M5.00744273,24 C3.27733288,24 1.5995806,24.8939229 0.670233655,26.4873712 C-0.710312391,28.8668287 0.110469587,31.913667 2.5019788,33.2828692 L84.4870108,80.3278593 C86.8815999,81.7146644 89.9460579,80.8804384 91.3319937,78.5155224 C92.7102299,76.1268808 91.8863681,73.0899919 89.4994786,71.7177284 L7.50982681,24.6727382 C6.71830348,24.2120006 5.85825332,24 5.00744273,24" transform="matrix(1 0 0 -1 0 105)"/>
                        </g>
                    </g>
                </svg>

            </div>
        </div>
    </div>
    <div class="block_bottom"></div>
</div>