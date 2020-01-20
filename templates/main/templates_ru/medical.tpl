<div class="main_container med-banner">
    <div class="block_top" style="width:100%">
        <div class="block_title" style="width:100%">
            <div class="icon"><img src="//www.meteonova.ru/images/icon.png" width="26" height="26" alt="Прогноз погоды в Москве для метеозависимых" ></div>
            <div class="title" style="padding-left: 13px;"><b>ПОГОДА ДЛЯ МЕТЕОЗАВИСИМЫХ</b></div>
        </div>
    </div>
    <div class="block_content">
        <style>
            .medical-notif-text {
                padding: 16px 220px 16px 114px;
                background: url('/images/medical_bg.jpg') 77px -36px no-repeat;
                color:#3b55c5;
                font-size: 15px;
            }
            .med-banner::after {
                background: url('/images/barometr.png') 0px 8px no-repeat;
                margin-top: 0;
                content: '';
                width: 208px;
                height: 100%;
                position: absolute;
                right: 8px;
                top: -8px;
                opacity: 0.7;
                z-index: 1;
            }
            .medical-notif-text .value-pressure {
                width: 68px;
                height: 68px;
                position: absolute;
                font-size: 32px;
                color: #f1fdff;
                top: 50%;
                left: 8px;
                margin-top: -34px;
                background-color: rgba(255,0,0, 0.6);
                border-radius: 100%;
                text-align: center;
                padding-top: 21px;
                box-sizing: border-box;
            }

            .medical-notif-text .value-pressure p {
                font-size: 16px;
                margin-top: 4px;
            }

            .medical-notif-text b {
                position: relative;
                z-index: 2;
            }

            .medical-notif-text em {
                white-space: nowrap;
                font-weight: bold;
            }
        </style>
        <div class="medical-notif-text">
            <div class="value-pressure">768<p>мм</p></div>
            <b>Нормальное атмосферное давление для пункта Москва составялет <em>745 мм рт.ст.</em></b>
        </div>
    </div>
    <div class="block_bottom"></div>
</div>