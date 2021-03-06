{{*
 *	AUTOMATICALLY GENERATED TEMPLATE
 *	DO NOT EDIT THIS FILE, CHANGES WILL BE OVERWRITTEN
 *
 *}}
<br />
<form id="profile-jot-form" action="{{$action}}" method="post">
	<div id="jot">
		<div>
			<p id="character-counter" class="grey jothidden text-info pull-left"></p>
			<p id="profile-jot-desc" class="jothidden pull-right">&nbsp;</p>
		</div>
		<input name="title" id="jot-title" type="text" placeholder="{{$placeholdertitle}}" title="{{$placeholdertitle}}" value="{{$title}}" class="jothidden form-control" style="display:block;" />
		{{if $placeholdercategory}}
		<input name="category" id="jot-category" type="text" placeholder="{{$placeholdercategory}}" title="{{$placeholdercategory}}" value="{{$category}}" class="jothidden" style="display:none;" />
		{{/if}}


		<input type="hidden" name="type" value="{{$ptyp}}" />
		<input type="hidden" name="profile_uid" value="{{$profile_uid}}" />
		<input type="hidden" name="return" value="{{$return_path}}" />
		<input type="hidden" name="location" id="jot-location" value="{{$defloc}}" />
		<input type="hidden" name="coord" id="jot-coord" value="" />
		<input type="hidden" name="post_id" value="{{$post_id}}" />
		<input type="hidden" name="preview" id="jot-preview" value="0" />
		<input type="hidden" name="post_id_random" value="{{$rand_num}}" />

		<textarea rows="2" cols="64" class="profile-jot-text form-control" id="profile-jot-text" name="body" style="min-width:100%; max-width:100%;">{{if $content}}{{$content}}{{else}}{{$share}}{{/if}}</textarea>

		<ul id="jot-tools" class="jothidden nav nav-pills" style="display:none;">
			<li><a id="profile-location" onclick="jotGetLocation();return false;" title="{{$setloc}}"><i class="fa fa-map-marker"></i></a></li>
			<li><a href="#" onclick="return false;" id="wall-image-upload" title="{{$upload}}"><i class="fa fa-picture-o"></i></a></li>
			<li><a href="#" onclick="return false;" id="wall-file-upload"  title="{{$attach}}"><i class="fa fa-paperclip"></i></a></li>
			<li><a id="profile-link"  ondragenter="return linkdropper(event);" ondragover="return linkdropper(event);" ondrop="linkdrop(event);" onclick="jotGetLink(); return false;" title="{{$weblink}}"><i class="fa fa-link"></i></a></li>
			<li><a id="profile-video" onclick="jotVideoURL();return false;" title="{{$video}}"><i class="fa fa-film"></i></a></li>
			<li><a id="profile-audio" onclick="jotAudioURL();return false;" title="{{$audio}}"><i class="fa fa-music"></i></a></li>
			<!-- TODO: waiting for a better placement 
			<li><a id="profile-nolocation" onclick="jotClearLocation();return false;" title="{{$noloc}}">{{$shortnoloc}}</a></li>
			-->
			<li class="perms"><a id="jot-perms-icon" href="#profile-jot-acl-wrapper" title="{{$permset}}" ><i class="fa fa-lock"></i></a></li>
			<li><button  type="button" id="jot-preview-link" onclick="preview_post(); return false;" title="{{$preview}}" class="btn btn-warning"><i class="fa fa-eye fa-fw"></i> {{$preview}}</button></li>
			<li><button type="submit" id="profile-jot-submit" name="submit" class="btn btn-primary"><i class="fa fa-slideshare fa-fw"></i> {{$share}}</button></li>
			<div id="profile-rotator-wrapper" style="display: {{$visitor}};" >
				<img id="profile-rotator" src="images/rotator.gif" alt="{{$wait}}" title="{{$wait}}" style="display: none;" />
			</div> 
			<div id="profile-jot-plugin-wrapper">
				{{$jotplugins}}
			</div>
		</ul>
	</div>
	
	<div id="jot-preview-content" style="display:none;"></div>

	<div style="display: none;">
		<div id="profile-jot-acl-wrapper" style="width:auto;height:auto;overflow:auto;">
			{{$acl}}
			<hr style="clear:both"/>
			<div id="profile-jot-email-label">{{$emailcc}}</div><input type="text" name="emailcc" id="profile-jot-email" title="{{$emtitle}}" />
			<div id="profile-jot-email-end"></div>
			{{$jotnets}}
		</div>
	</div>

</form>

{{if $content}}<script>initEditor();</script>{{/if}}