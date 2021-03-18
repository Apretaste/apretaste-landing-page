
{% layout %}

{{head
<meta property="og:title" content="@{$profile.username} - {$profile.fullName}">
<meta property="twitter:title" content="@{$profile.username} - {$profile.fullName}">
<meta property="twitter:site" content="@apretaste">
<meta property="og:description" content="{$profile.aboutMe}">
?$profile.picture
<meta property="og:image" content="https://manage.apretaste.org/shared/profile/{$profile.picture}">
<meta property="twitter:image" content="https://manage.apretaste.org/shared/profile/{$profile.picture}">
$profile.picture?
<meta property="og:url" content="https://shared.apretaste.org/profile/">
<meta name="twitter:card" content="summary">
<meta name="twitter:site" content="@apretaste">
<meta property="fb:app_id" content="285099284865702"/>
<meta name="twitter:description" content="{$profile.aboutMe}

{$note.text}
">

head}}

{{body
<div style="margin: auto; width: 400px; border-radius: 10px; border: 1px solid green; padding: 20px; text-align: center; margin-bottom: 100px;">
    ?$profile.picture
    <img src="https://manage.apretaste.org/shared/profile/{$profile.picture}" style="width: 100%;border-top-left-radius: 10px;border-top-right-radius: 10px;">
    $profile.picture?

    <p>@{$profile.username}</p>
    <p>{$profile.aboutMe}</p>
</div>
body}}