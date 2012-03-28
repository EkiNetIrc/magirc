{extends file="_main.tpl"}

{block name="title" append}User: {$target}{/block}

{block name="content"}
<div id="tabs">
	<ul>
		<li><a href="index.php/user/{$mode}:{$target|escape:'url'}/info">User info</a></li>
		<li><a href="index.php/user/{$mode}:{$target|escape:'url'}/activity">User activity</a></li>
	</ul>
</div>
{/block}

{block name="js" append}
<script type="text/javascript">
$(function() {
	$( "#tabs" ).tabs({
		cache: true,
		spinner: 'Loading...',
		ajaxOptions: {
			error: function( xhr, status, index, anchor ) {
				$( anchor.hash ).html("Unable to load contents");
			}
		}
	});
});
</script>
{/block}