
{% layout %}

{{head
<meta property="og:title" content="@{$profile.username} - {$profile.fullName}">
<meta property="twitter:title" content="@{$profile.username} - {$profile.fullName}">
<meta property="og:description" content="{$note.text}">
?$note.image
<meta property="og:image" content="https://manage.apretaste.org/shared/content/pizarra/{$note.image}">
<meta property="twitter:image" content="https://manage.apretaste.org/shared/content/pizarra/{$note.image}">
$note.image?
<meta property="og:url" content="https://shared.apretaste.org/note/{$note.hash}">
<meta property="twitter:site" content="@apretaste">
<meta name="twitter:card" content="summary">
<meta name="twitter:site" content="@apretaste">
<meta property="fb:app_id" content="285099284865702"/>
<meta name="twitter:description" content="{$note.text}

https://manage.apretaste.org/shared/content/pizarra/{$note.image}
">

head}}

{{body

<div style="margin: auto;width: 400px; margin-bottom: 100px;">
    ?$profile.picture
    <a href ="/{$profile.username}">
        <img src="https://manage.apretaste.org/shared/profile/{$profile.picture}" style="float:left;display: inline-block;vertical-align: top;width: 36px;height: 36px;border-radius: 18px;">
    </a>
    $profile.picture?
    <div style="margin-left: 32px; border-radius: 10px;border: 1px solid green;padding: 20px;text-align: center;">
        ?$note.image
        <img src="https://manage.apretaste.org/shared/content/pizarra/{$note.image}" style="width: 100%;
border-top-left-radius: 10px;
border-top-right-radius: 10px;" />
        $note.image?
        <p><a href ="/{$profile.username}">@{$profile.username}</a></p>
        <p>{$note.text}</p>

    </div>
</div>


body}}