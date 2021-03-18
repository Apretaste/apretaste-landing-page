{% layout %}
{{body

<div style="margin:auto; width: 400px; border-radius: 10px; border: 1px solid green;">
    <img src="https://manage.apretaste.org/shared/profile/{$profile.picture}" />
    <p>@{$profile.username}</p>
    <p>{$profile.aboutMe}</p>
</div>

body}}