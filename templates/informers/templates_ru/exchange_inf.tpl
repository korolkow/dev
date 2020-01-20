					<div class="title2"><b>Информеры в шапку сайта с курсами валют</b></div>
                	<?php
						foreach ($exchange_htmlinf as $line) {
							echo('<div style="margin-bottom: 30px;">');
							foreach($line as $inftype => $infSettings) {
								foreach ($infSettings['types'] as $type) {
										echo('<div style="float: left; text-align: center;">');
										echo('<a href="html.php?type='.$type.'" style="width:'.($infSettings['width']+20).'px; margin: 0 auto; padding-right: 30px; display: block;">');
										echo('<div style="width: '.$infSettings['width'].'px; height: '.$infSettings['height'].'px; margin: 10px auto"><div id="meteonova_inf_'.$type.'_'.$index.'"></div></div>');
										echo('<div>Получить код</div>');
										echo('</a>');
										echo('</div>');
								}
							}
							echo('<div style="clear: both"></div>');
							echo('</div>');
						}
					?>