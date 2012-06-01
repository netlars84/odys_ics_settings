.class public Lcom/android/settings/SoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FALLBACK_EMERGENCY_TONE_VALUE:I = 0x0

.field private static final KEY_CATEGORY_CALLS:Ljava/lang/String; = "category_calls"

.field private static final KEY_DTMF_TONE:Ljava/lang/String; = "dtmf_tone"

.field private static final KEY_EMERGENCY_TONE:Ljava/lang/String; = "emergency_tone"

.field private static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "haptic_feedback"

.field private static final KEY_LOCK_SOUNDS:Ljava/lang/String; = "lock_sounds"

.field private static final KEY_MUSICFX:Ljava/lang/String; = "musicfx"

.field private static final KEY_NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"

.field private static final KEY_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final KEY_SILENT_MODE:Ljava/lang/String; = "silent_mode"

.field private static final KEY_SOUND_EFFECTS:Ljava/lang/String; = "sound_effects"

.field private static final KEY_SOUND_SETTINGS:Ljava/lang/String; = "sound_settings"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate_on_ring"

.field private static final MSG_UPDATE_NOTIFICATION_SUMMARY:I = 0x2

.field private static final MSG_UPDATE_RINGTONE_SUMMARY:I = 0x1

.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String; = null

.field private static final SILENT_MODE_MUTE:Ljava/lang/String; = "mute"

.field private static final SILENT_MODE_OFF:Ljava/lang/String; = "off"

.field private static final SILENT_MODE_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final TAG:Ljava/lang/String; = "SoundSettings"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMusicFx:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mSilentMode:Landroid/preference/ListPreference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mVibrateOnRing:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_calls"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 98
    new-instance v0, Lcom/android/settings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$1;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance v0, Lcom/android/settings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$2;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SoundSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SoundSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 269
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 262
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 264
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 266
    :pswitch_2
    const-string v0, "mute"

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 312
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 313
    return-void
.end method

.method private setPhoneSilentSettingValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 250
    const/4 v0, 0x2

    .line 251
    .local v0, ringerMode:I
    const-string v1, "mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    const/4 v0, 0x0

    .line 256
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 257
    return-void

    .line 253
    :cond_1
    const-string v1, "vibrate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setPhoneVibrateSettingValue(Z)V
    .locals 4
    .parameter "vibeOnRing"

    .prologue
    const/4 v1, 0x1

    .line 243
    if-eqz p1, :cond_0

    move v0, v1

    .line 245
    .local v0, vibrateMode:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 246
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 247
    return-void

    .line 243
    .end local v0           #vibrateMode:I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 9
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 285
    if-nez p2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 287
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 288
    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 289
    .local v1, ringtoneUri:Landroid/net/Uri;
    const v0, 0x10403d7

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 291
    .local v8, summary:Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 292
    const v0, 0x10403d5

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 308
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 296
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 298
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 299
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 302
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 304
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateState(Z)V
    .locals 4
    .parameter "force"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 282
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 278
    .local v0, vibrateMode:I
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mVibrateOnRing:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 278
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 126
    .local v9, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 128
    .local v0, activePhoneType:I
    const-string v11, "audio"

    invoke-virtual {p0, v11}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioManager;

    iput-object v11, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 130
    const v11, 0x7f050027

    invoke-virtual {p0, v11}, Lcom/android/settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 132
    const/4 v11, 0x2

    if-eq v11, v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "emergency_tone"

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 137
    :cond_0
    const-string v11, "silent_mode"

    invoke-virtual {p0, v11}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_5

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 140
    const-string v11, "ring_volume"

    invoke-virtual {p0, v11}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 145
    :goto_0
    const-string v11, "vibrate_on_ring"

    invoke-virtual {p0, v11}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/SoundSettings;->mVibrateOnRing:Landroid/preference/CheckBoxPreference;

    .line 146
    iget-object v11, p0, Lcom/android/settings/SoundSettings;->mVibrateOnRing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    const-string v11, "dtmf_tone"

    invoke-virtual {p0, v11}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 149
    iget-object v11, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 150
    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v11, "dtmf_tone"

    const/4 v13, 0x1

    invoke-static {v9, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    const-string v11, "sound_effects"

    invoke-virtual {p0, v11}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 153
    iget-object v11, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 154
    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const-string v11, "sound_effects_enabled"

    const/4 v13, 0x1

    invoke-static {v9, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 156
    const-string v11, "haptic_feedback"

    invoke-virtual {p0, v11}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 157
    iget-object v11, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 158
    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const-string v11, "haptic_feedback_enabled"

    const/4 v13, 0x1

    invoke-static {v9, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 160
    const-string v11, "lock_sounds"

    invoke-virtual {p0, v11}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 161
    iget-object v11, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 162
    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const-string v11, "lockscreen_sounds_enabled"

    const/4 v13, 0x1

    invoke-static {v9, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    const-string v11, "ringtone"

    invoke-virtual {p0, v11}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 166
    const-string v11, "notification_sound"

    invoke-virtual {p0, v11}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 168
    const-string v11, "vibrator"

    invoke-virtual {p0, v11}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Vibrator;

    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v11

    if-nez v11, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mVibrateOnRing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    :cond_1
    const/4 v11, 0x2

    if-ne v11, v0, :cond_2

    .line 174
    const-string v11, "emergency_tone"

    invoke-virtual {p0, v11}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 176
    .local v2, emergencyTonePreference:Landroid/preference/ListPreference;
    const-string v11, "emergency_tone"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    .end local v2           #emergencyTonePreference:Landroid/preference/ListPreference;
    :cond_2
    const-string v11, "sound_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceGroup;

    iput-object v11, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 183
    iget-object v11, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    const-string v12, "musicfx"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    .line 184
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 186
    .local v6, p:Landroid/content/pm/PackageManager;
    const/16 v11, 0x200

    invoke-virtual {v6, v3, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 187
    .local v10, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    if-gt v11, v12, :cond_3

    .line 193
    iget-object v11, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 197
    sget-object v1, Lcom/android/settings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_5
    if-ge v4, v5, :cond_a

    aget-object v8, v1, v4

    .line 198
    .local v8, prefKey:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 199
    .local v7, pref:Landroid/preference/Preference;
    if-eqz v7, :cond_4

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 142
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #p:Landroid/content/pm/PackageManager;
    .end local v7           #pref:Landroid/preference/Preference;
    .end local v8           #prefKey:Ljava/lang/String;
    .end local v10           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    iget-object v11, p0, Lcom/android/settings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 150
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 154
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 158
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 162
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 205
    .restart local v3       #i:Landroid/content/Intent;
    .restart local v6       #p:Landroid/content/pm/PackageManager;
    .restart local v10       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_a
    new-instance v11, Lcom/android/settings/SoundSettings$3;

    invoke-direct {v11, p0}, Lcom/android/settings/SoundSettings$3;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v11, p0, Lcom/android/settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 217
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, key:Ljava/lang/String;
    const-string v3, "emergency_tone"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 351
    .local v2, value:I
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_tone"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v2           #value:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "SoundSettings"

    const-string v4, "could not persist emergency tone setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 356
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mVibrateOnRing:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_2

    .line 357
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->setPhoneVibrateSettingValue(Z)V

    goto :goto_0

    .line 358
    .restart local p2
    :cond_2
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 359
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->setPhoneSilentSettingValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 317
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    move v0, v1

    .line 343
    :goto_1
    return v0

    .line 321
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 322
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 323
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 327
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 325
    :cond_4
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_2

    .line 330
    :cond_5
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 334
    :cond_7
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 338
    :cond_9
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 221
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 223
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    .line 224
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->lookupRingtoneNames()V

    .line 226
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    return-void
.end method
