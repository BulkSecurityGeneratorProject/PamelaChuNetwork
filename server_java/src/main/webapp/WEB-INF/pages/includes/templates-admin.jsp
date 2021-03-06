<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/template" id="accountProfile" >
     <h2>
        <fmt:message key="pamelaChu.account.update.title"/>
    </h2>
             </br>
    <fieldset class="form-horizontal row-fluid">
    <@ if (!ie || ie>9){ @>
    <div class="control-group dashed">
        <label class="control-label">

        </label>

          <div class="controls">
            <div id="updateAvatar" class="dropzone well">
                <img class="nomargin avatar" src="<@= avatar @>" alt=""/>
                <p class=little-padding-top><fmt:message key="pamelaChu.user.picture.button" /></p>
                <input id="avatarFile" type="file" name="uploadFile" data-url="/pamelaChu/rest/fileupload/avatar"/>
            </div>
            <div class="attachmentBar progress progress-striped active" style="display: none;">
                <div class="bar progress-bar progress-bar-info" style="width: 0%;"></div>
            </div>
        </div>
    </div>
    <@ } else { @>
         <label class="control-label">

        </label>
          <div class="controlsIE">
            <p><fmt:message key="pamelaChu.user.picture.buttonIE" /></p>
            <input id="avatarFile" type="file" name="uploadFile" data-url="/pamelaChu/rest/fileupload/avatarIE" class="filestyle" data-classButton="btn btn-blue" data-input="false" data-buttonText="Photo" data-icon="false"/>
            <span class="glyphicon glyphicon-search"></span>
            <span class="upload-ok"><fmt:message key="pamelaChu.user.picture.buttonIE-ok" /></span>
            <span class="upload-ko"><fmt:message key="pamelaChu.user.picture.buttonIE-ko" /></span>
          </div>
    <@ } @>

    </fieldset>

    <fieldset class="form-horizontal row-fluid">
        <legend>
            <fmt:message key="pamelaChu.account.update.legend"/>
        </legend>

        <div class="control-group">
            <label class="control-label">
                <fmt:message key="pamelaChu.user.email"/>
            </label>

            <div class="controls">
                <input name="login" type="text" disabled="true" class="col-span-12" value="<@= login @>"/>
            </div>
        </div>


        <div class="control-group">
            <label class="control-label" for="firstName">
                <fmt:message key="pamelaChu.user.firstName"/>
            </label>

            <div class="controls">
                <input name="firstName" type="text" size="15" maxlength="40" class="input-xlarge col-span-12" value="<@= firstName @>"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="lastName">
                <fmt:message key="pamelaChu.user.lastName"/>
            </label>

            <div class="controls">
                <input name="lastName" type="text" id="lastName" size="15" maxlength="40" class="input-xlarge col-span-12" value="<@= lastName @>"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="jobTitle">
                <fmt:message key="pamelaChu.user.jobTitle"/>
            </label>

            <div class="controls">
                <input name="jobTitle" type="text" size="15" maxlength="100" class="input-xlarge col-span-12" value="<@= jobTitle @>"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="phoneNumber">
                <fmt:message key="pamelaChu.user.phoneNumber"/>
            </label>

            <div class="controls">
                <input name="phoneNumber" type="text" size="10" maxlength="20" class="input-xlarge col-span-12" value="<@= phoneNumber @> "/>
            </div>
        </div>

        <div class="return"/>

        <div class="form-actions">
            <button type="submit" class="input-xlarge btn btn-blue btn-block">
                <fmt:message key="pamelaChu.form.save"/>
            </button>
        </div>
    </fieldset>
</script>

<script type="text/template" id="accountDestroy">
    <fieldset class="form-horizontal row-fluid">
        <legend><fmt:message key="pamelaChu.user.suppress"/></legend>
        <div class="return"/>
        <div class="form-actions">
            <button type="submit" class="input-xlarge btn btn-red btn-block" onclick="return(confirm('<fmt:message key="pamelaChu.user.suppress.confirmation"/>'));">
                <fmt:message key="pamelaChu.user.suppress"/>
            </button>
        </div>
    </fieldset>
</script>

<script type="text/template" id="accountPreferences">
    <h2>
        <fmt:message key="pamelaChu.menu.preferences"/>
    </h2>

        <legend>
            <fmt:message key="pamelaChu.preferences.notifications"/>
        </legend>

        <div class="control-group">
            <div class="controls">
                <label class="checkbox">
                    <input name="mentionEmail" type="checkbox" <@   if(mentionEmail){ @> checked="true" <@ } @>/> <fmt:message key="pamelaChu.preferences.notifications.email.mention"/>
                </label>
            </div>
            <div class="controls">
                <label class="checkbox">
                    <input name="dailyDigest" type="checkbox" <@ if(dailyDigest){ @> checked="true" <@ } @>/> <fmt:message key="pamelaChu.preferences.notifications.email.dailyDigest"/>
                </label>
            </div>
            <div class="controls">
                <label class="checkbox">
                    <input name="weeklyDigest" type="checkbox" <@ if(weeklyDigest){ @> checked="true" <@ } @>/> <fmt:message key="pamelaChu.preferences.notifications.email.weeklyDigest"/>
                </label>
            </div>
            <div class="controls">
                <label class="checkbox">
                    <input name="rssUidActive" type="checkbox" <@ if (rssUidActive) {@> checked="true" <@ } @>/>  <fmt:message key="pamelaChu.preferences.notifications.rss.timeline"/>
                </label>
                <@ if (rssUidActive) { @> <a href="/pamelaChu/syndic/<@=rssUid@>" ><fmt:message key="pamelaChu.preferences.notifications.rss.timeline.link"/> </a><@ } @>
            </div>
        </div>
    </fieldset>

    <fieldset>
        <div class="return"/>
        <div class="form-actions">
            <button type="submit" class="input-xlarge btn btn-blue btn-block">
                <fmt:message key="pamelaChu.form.save"/>
            </button>
        </div>
    </fieldset>

</script>

<script type="text/template" id="accountNewPasswordConfirmation">
    <fmt:message key="pamelaChu.user.new.password.confirmation.error"/>
</script>

<script type="text/template" id="accountPassword">
    <h2>
        <fmt:message key="pamelaChu.menu.password"/>
    </h2>

    <fieldset>
        <legend>
            <fmt:message key="pamelaChu.user.password.legend"/>
        </legend>

        <div class="control-group">
            <label class="control-label" for="oldPassword">
                <fmt:message key="pamelaChu.user.old.password"/>
            </label>

            <div class="controls">
                <input name="oldPassword" type="password" required="required" size="15" maxlength="40" class="input-xlarge col-span-12" />
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="newPassword">
                <fmt:message key="pamelaChu.user.new.password"/>
            </label>

            <div class="controls">
                <input name="newPassword" type="password" required="required" ize="15" maxlength="40" class="input-xlarge col-span-12"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="newPasswordConfirmation">
                <fmt:message key="pamelaChu.user.new.password.confirmation"/>
            </label>

            <div class="controls">
                <input name="newPasswordConfirmation" type="password" required="required" size="15" maxlength="40" class="input-xlarge col-span-12"/>
            </div>
        </div>
        <div class="return"/>
        <div class="form-actions">
            <button type="submit" class="btn btn-blue btn-block">
                <fmt:message key="pamelaChu.form.save"/>
            </button>
        </div>
    </fieldset>

</script>

<script type="text/template" id="form-ldap">
    <fmt:message key="pamelaChu.user.password.ldap"/>
</script>

<script type="text/template" id="users-menu">
    <ul class="nav nav-tabs">
        <li>
            <a href ="#users">
                <fmt:message key="pamelaChu.account.users.myfriends"/>
            </a>
        </li>
        <li>
            <a href ="#users/recommended">
                <fmt:message key="pamelaChu.account.users.recommended"/>
            </a>
        </li>
        <li>
            <a href ="#users/search">
                <fmt:message key="pamelaChu.search.placeholder"/>
            </a>
        </li>
    </ul>
</script>

<script type="text/template" id="groups-menu">
    <ul class="nav nav-tabs">
        <li>
            <a href ="#groups">
                <fmt:message key="pamelaChu.account.groups.mygroups"/>
            </a>
        </li>
        <li>
            <a href ="#groups/recommended">
                <fmt:message key="pamelaChu.trends.title"/>
            </a>
        </li>
        <li>
            <a href ="#groups/search">
                <fmt:message key="pamelaChu.search.placeholder"/>
            </a>
        </li>
    </ul>
</script>

<script type="text/template" id="groups-form">
    <h2>
        <fmt:message key="pamelaChu.group.name"/>
    </h2>
    <@ if (typeof groupId === 'undefined') { @>
        <button class="show btn btn-xlarge btn-block btn-blue" type="button">
            <fmt:message key="pamelaChu.group.add"/>
        </button>
    <@ } @>
    <fieldset <@ if (typeof groupId === 'undefined') { @>class="hide" <@ } @>>
        <legend>
            <@ if (typeof groupId === 'undefined') { @>
                <fmt:message key="pamelaChu.group.add"/>
            <@ } else { @>
                <fmt:message key="pamelaChu.group.edit.details"/>
            <@ } @>
        </legend>
        <div class="control-group">
            <label class="control-label" for="name">
                <fmt:message key="pamelaChu.group.add.title"/>
            </label>

            <div class="controls">
                <input name="name" type="text" required="required" size="30" maxlength="50" class="input-xlarge col-span-12" value="<@= name @>" />
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="description">
                <fmt:message key="pamelaChu.group.add.description"/>
            </label>

            <div class="controls">
                <textarea name="description" class="input-xlarge col-span-12"><@= description @></textarea>
            </div>
        </div>

        <@ if (typeof groupId === 'undefined') { @>
            <div class="control-group">
                <label class="control-label" for="publicGroup">
                    <fmt:message key="pamelaChu.group.add.access"/>
                </label>

                <div class="controls">
                    <label class="radio">
                    <input type="radio" name="publicGroup" value="public" <@ if (publicGroup) { @> checked<@ } @> required>
                    <fmt:message key="pamelaChu.group.add.public"/>
                    </label>
                    <label class="radio">
                    <input type="radio" name="publicGroup" value="private" <@ if (!publicGroup) { @> checked<@ } @> required>
                    <fmt:message key="pamelaChu.group.add.private"/>
                    </label>
                </div>
            </div>

            <div class="alertColor">
                <i class="glyphicon glyphicon-warning-sign"></i>
                <fmt:message key="pamelaChu.group.add.public.alert"/>
            </div>
        <@ } else { @>
            <div class="control-group">
                <label class="control-label" for="archivedGroup">
                    <fmt:message key="pamelaChu.group.archive"/>
                </label>

                <div class="controls">
                    <label class="radio">
                        <input type="radio" name="archivedGroup" value="true" <@ if (archivedGroup) { @> checked<@ } @> required>
                        <fmt:message key="pamelaChu.group.archive.true"/>
                    </label>
                    <label class="radio">
                        <input type="radio" name="archivedGroup" value="false" <@ if (!archivedGroup) { @> checked<@ } @> required>
                        <fmt:message key="pamelaChu.group.archive.false"/>
                    </label>
                </div>
            </div>

            <div class="">
                <i class="icon-warning-sign"></i>
                <fmt:message key="pamelaChu.group.archive.alert"/>
            </div>
        <@ } @>

        <br/>
        <div class="return"/>
        <br/>
        <div class="form-actions">
            <@ if (typeof groupId === 'undefined') { @>
                <button type="submit" class="btn btn-blue col-span-7 little-marge-right">
                    <fmt:message key="pamelaChu.form.save"/>
                </button>
                <button type="reset" class="btn btn-red col-span-4">
                    <fmt:message key="pamelaChu.form.cancel"/>
                </button>
            <@ } else { @>
                <button type="submit" class="btn btn-blue col-span-12">
                    <fmt:message key="pamelaChu.form.save"/>
                </button>
            <@ } @>
        </div>

    </fieldset>



</script>

<script type="text/template" id="groups-form-adduser">
    <fieldset>
        <legend>
                <fmt:message key="pamelaChu.group.edit.member.add"/>
        </legend>
        <div class="control-group">
            <label class="control-label" for="username">
                <fmt:message key="pamelaChu.username"/>
            </label>

            <div class="controls">
                <input name="username" type="text" autocomplete="off" required="required" class="input-xlarge col-span-12"/>
            </div>
        </div>
        <br/>
        <div class="return"/>
        <br/>
        <div class="form-actions">
            <button type="submit" class="btn btn-blue col-span-12">
                <fmt:message key="pamelaChu.form.save"/>
            </button>
        </div>

    </fieldset>


</script>


<script type="text/template" id="groups-item">
    <@ if(name) { @><!-- Afin que les groupes privés dont le nom est caché n apparaissent pas -->
    <td>
        <a href="/pamelaChu/home/groups/<@= groupId @>" title="<@= description @>"><@= name @></a>
    </td>
    <td>
        <@ if(publicGroup && !archivedGroup) { @>
            <span class=""><fmt:message key="pamelaChu.group.add.public"/></span>
        <@ } else if(publicGroup && archivedGroup || !publicGroup && archivedGroup) { @>
            <span class="text-blue"><fmt:message key="pamelaChu.group.add.archived"/></span>
        <@ } else {@>
            <span class="text-red"><fmt:message key="pamelaChu.group.add.private"/></span>
        <@ } @>
    </td>
    <td>
        <@= counter  @>
    </td>
      <td>
          <@ if(publicGroup && !administrator) { @>
          <a class="btn-blue toggleGroup pull-right label labelSizeNormal <@= (member)?'label-info':'' @>">
              <@ if(member) { @>
              <span class="glyphicon glyphicon-minus"> <span class="hidden-phone"><fmt:message key="pamelaChu.user.followed"/></span></span>
              <@ } else { @>
              <span class="glyphicon glyphicon-plus"> <span class="hidden-phone"><fmt:message key="pamelaChu.user.follow"/></span></span>
              <@ } @>
          </a>
          <@ } else if(administrator) { @>
          <a href="/pamelaChu/account/#/groups/<@= groupId @>"  class="btn-blue toggleTag pull-right label labelSizeNormal label-info hidden-phone">
              <span class="glyphicon glyphicon-th-large"> <span><fmt:message key="pamelaChu.group.edit.link"/></span></span>
          </a>
          <@ } @>
      </td>
    <@ } @>
</script>

<script type="text/template" id="usergroup-item">
    <td style="text-align: left">
        <div class='pull-left background-image-fffix little-marge-right'>

            <img class="img-rounded img-medium" style="background-image: url(<@= avatarURL @>);"></img>
        </div>
        <h4>
            <@  if(!activated) { @>
            <span>
                <span class="glyphicon glyphicon-off">
                   <fmt:message key="pamelaChu.user.desactivate.msg"/>
                </span>
            </span>
            <@ } @>
            <a href="/pamelaChu/home/#/users/<@= username @>">
                <strong>
                    <@= fullName @>
                </strong>
            </a>
            <br>
            <a href="/pamelaChu/home/#/users/<@= username @>">
                <small>
                    @<@= username @>
                </small>
            </a>
        </h4>

    </td>

    <td>
        <@ if(role === 'ADMIN'){ @>
        <fmt:message key="pamelaChu.group.role.admin"/>
        <@ } else { @>
        <fmt:message key="pamelaChu.group.role.member"/>
        <@ } @>
    </td>
    <td>
       
            <@ if (window.username !== username) { @>
                <button type="button" class="btn btn-blue input-block-level delete">
                    <fmt:message key="pamelaChu.group.edit.member.delete"/>
                </button>
            <@ } @>
       
    </td>
</script>

<script type="text/template" id="tags-menu">
    <ul class="nav nav-tabs">
        <li>
            <a href ="#tags">
                <fmt:message key="pamelaChu.account.tags.mytags"/>
            </a>
        </li>
        <li>
            <a href ="#tags/recommended">
                <fmt:message key="pamelaChu.trends.title"/>
            </a>
        </li>
        <li>
            <a href ="#tags/search">
                <fmt:message key="pamelaChu.search.placeholder"/>
            </a>
        </li>
    </ul>
</script>

<script type="text/template" id="tags-item">
    <td>
        <a href="/pamelaChu/home/#/tags/<@= name @>" title="<@= name @>">#<@= name @></a>
    </td>
    <td class="follow">
        <a class="btn-blue toggleTag pull-right label labelSizeNormal <@= (followed)?'label-info':'' @> ">
            <@ if(followed) { @>
            <span class="glyphicon glyphicon-minus"> <span class="hidden-phone"><fmt:message key="pamelaChu.user.followed"/></span></span>
            <@ } else { @>
            <span class="glyphicon glyphicon-plus"> <span class="hidden-phone"><fmt:message key="pamelaChu.user.follow"/></span></span>
            <@ } @>
        </a>
    </td>


</script>

<script type="text/template" id="files-quota">

    <div class="progress">
        <@ if(quota < 50){@>
        <div class="progress-bar progress-bar-success" style="width: <@= quota @>%;">
        <@ }else if(quota > 50 && quota < 80) {@>
        <div class="progress-bar progress-bar-warning" style="width: <@= quota @>%;">
        <@ }else{@>
        <div class="progress-bar progress-bar-danger" style="width: <@= quota @>%;">
        <@ }@>
        <span class="quota"><@=  quota @>%</span>
    </div>          </div>
</script>

<script type="text/template" id="files-menu">
    <h2><fmt:message key="pamelaChu.menu.files"/></h2>
    <span class="file-infos"></span>
</script>

<script type="text/template" id="FilesListTemplate">
    <table class="table noCollapse">
        <tr>
            <th style="border-top :0">  </th>
            <th style="border-top :0"><b><fmt:message key="pamelaChu.user.file.name"/></b></th>
            <th style="border-top :0"><b><fmt:message key="pamelaChu.user.file.size"/></b></th>
            <th style="border-top :0"><b><fmt:message key="pamelaChu.user.file.creation.date"/></b></th>
            <th style="border-top :0">  </th>
        </tr>
        <tbody class="items">
        </tbody>
    </table>

</script>

<script type="text/template" id="FileItemTemplate">
    <td><@ if(hasThumbnail) { @>
			<a href="/pamelaChu/file/<@= attachmentId @>/<@= filename @>" target="_blank"><img src="/pamelaChu/thumbnail/<@= attachmentId @>/<@= filename @>" /></a>
		<@ } else { @>
			<a href="/pamelaChu/file/<@= attachmentId @>/<@= filename @>" target="_blank"><img src="/img/document_icon.png" /></a>
		<@ } @>
	</td>
    <td><a href="/pamelaChu/file/<@= attachmentId @>/<@= filename @>" target="_blank"><@= filename @></a></td>
    <td><@= (size/1000) @> kb</td>
    <td><@= prettyPrintCreationDate @> </td>
    <td>
        <span class="btn btn-blue btn-block">
            <fmt:message key="pamelaChu.user.status.delete"/>
        </span>
    </td>
</script>

<script type="text/template" id="search-filter">
    <input id="block_filter" type="text" class="search-query col-span-12" name="result_filter" autocomplete="off" placeholder="<fmt:message key="pamelaChu.search.filter"/>">
</script>


<script type="text/template" id="form-success-label">
    <fmt:message key="pamelaChu.form.success"/>
</script>

<script type="text/template" id="form-error-label">
    <fmt:message key="pamelaChu.form.error"/>
</script>

<script type="text/template" id="groups-form-adduser-success-label">
    <fmt:message key="pamelaChu.group.edit.member.add.success"/>
</script>

<script type="text/template" id="groups-form-adduser-error-label">
    <fmt:message key="pamelaChu.group.edit.member.add.error"/>
</script>

<script type="text/template" id="delete-file-success-label">
    <fmt:message key="pamelaChu.user.file.delete.success"/>
</script>

<script type="text/template" id="delete-file-error-label">
    <fmt:message key="pamelaChu.user.file.delete.error"/>
</script>