.class public Lcom/android/settings/HdmiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HdmiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_HDCP:Ljava/lang/String; = "HDCP_Setting"

.field private static final KEY_HDMI:Ljava/lang/String; = "hdmi"

.field private static final KEY_HDMI_MODE:Ljava/lang/String; = "hdmi_mode"

.field private static final KEY_HDMI_RESOLUTION:Ljava/lang/String; = "hdmi_resolution"

.field private static final TAG:Ljava/lang/String; = "HdmiSettings"


# instance fields
.field private HdmiFile:Ljava/io/File;

.field private HdmiState:Ljava/io/File;

.field private IsHdmiDisplayOn:Z

.field private IsHdmiFileThere:Z

.field private IsHdmiPlug:Z

.field private mHdcp:Landroid/preference/CheckBoxPreference;

.field private mHdmi:Landroid/preference/CheckBoxPreference;

.field private mHdmiMode:Landroid/preference/ListPreference;

.field private mHdmiResolution:Landroid/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/HdmiSettings;->IsHdmiFileThere:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/HdmiSettings;->IsHdmiPlug:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/settings/HdmiSettings;->IsHdmiDisplayOn:Z

    .line 84
    iput-object v1, p0, Lcom/android/settings/HdmiSettings;->HdmiFile:Ljava/io/File;

    .line 85
    iput-object v1, p0, Lcom/android/settings/HdmiSettings;->HdmiState:Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected isHdmiConnected(Ljava/io/File;)Z
    .locals 9
    .parameter "file"

    .prologue
    .line 280
    const/4 v3, 0x0

    .line 281
    .local v3, isConnected:Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 283
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 284
    .local v2, fread:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 285
    .local v0, buffer:Ljava/io/BufferedReader;
    const-string v6, "plug=1"

    .line 286
    .local v6, strPlug:Ljava/lang/String;
    const/4 v5, 0x0

    .line 288
    .local v5, str:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 289
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 290
    .local v4, length:I
    const/4 v7, 0x6

    if-ne v4, v7, :cond_1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 291
    const/4 v3, 0x1

    .line 302
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .end local v2           #fread:Ljava/io/FileReader;
    .end local v4           #length:I
    .end local v5           #str:Ljava/lang/String;
    .end local v6           #strPlug:Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 295
    .restart local v0       #buffer:Ljava/io/BufferedReader;
    .restart local v2       #fread:Ljava/io/FileReader;
    .restart local v4       #length:I
    .restart local v5       #str:Ljava/lang/String;
    .restart local v6       #strPlug:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 297
    goto :goto_0

    .line 298
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .end local v2           #fread:Ljava/io/FileReader;
    .end local v4           #length:I
    .end local v5           #str:Ljava/lang/String;
    .end local v6           #strPlug:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 299
    .local v1, e:Ljava/io/IOException;
    const-string v7, "HdmiSettings"

    const-string v8, "IO Exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/HdmiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 93
    .local v2, resolver:Landroid/content/ContentResolver;
    const v4, 0x7f050012

    invoke-virtual {p0, v4}, Lcom/android/settings/HdmiSettings;->addPreferencesFromResource(I)V

    .line 94
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/HdmiSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/HdmiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "HdmiSettings"

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 97
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/hdmi/hdmi-0/enable"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/settings/HdmiSettings;->HdmiFile:Ljava/io/File;

    .line 98
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/hdmi/hdmi-0/state"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/settings/HdmiSettings;->HdmiState:Ljava/io/File;

    .line 101
    const-string v4, "hdmi"

    invoke-virtual {p0, v4}, Lcom/android/settings/HdmiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdmi:Landroid/preference/CheckBoxPreference;

    .line 102
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdmi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 104
    const-string v4, "enable"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 105
    .local v0, enable:I
    if-eqz v0, :cond_0

    .line 106
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdmi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 107
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->HdmiFile:Ljava/io/File;

    invoke-virtual {p0, v4, v7}, Lcom/android/settings/HdmiSettings;->setHdmiConfig(Ljava/io/File;Z)V

    .line 113
    :goto_0
    const-string v4, "HDCP_Setting"

    invoke-virtual {p0, v4}, Lcom/android/settings/HdmiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdcp:Landroid/preference/CheckBoxPreference;

    .line 114
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdcp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 115
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdcp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 117
    const-string v4, "hdmi_resolution"

    invoke-virtual {p0, v4}, Lcom/android/settings/HdmiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdmiResolution:Landroid/preference/ListPreference;

    .line 118
    const-string v4, "resolution"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 119
    .local v1, resolution:I
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdmiResolution:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 121
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdmiResolution:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    const-string v4, "hdmi_mode"

    invoke-virtual {p0, v4}, Lcom/android/settings/HdmiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdmiMode:Landroid/preference/ListPreference;

    .line 123
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdmiMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->HdmiFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->HdmiState:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    iput-boolean v7, p0, Lcom/android/settings/HdmiSettings;->IsHdmiFileThere:Z

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/HdmiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "HDCP_Setting"

    invoke-virtual {p0, v5}, Lcom/android/settings/HdmiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/HdmiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "hdmi_mode"

    invoke-virtual {p0, v5}, Lcom/android/settings/HdmiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 135
    :goto_1
    return-void

    .line 109
    .end local v1           #resolution:I
    :cond_0
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdmi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 110
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->HdmiFile:Ljava/io/File;

    invoke-virtual {p0, v4, v6}, Lcom/android/settings/HdmiSettings;->setHdmiConfig(Ljava/io/File;Z)V

    goto :goto_0

    .line 132
    .restart local v1       #resolution:I
    :cond_1
    iput-boolean v6, p0, Lcom/android/settings/HdmiSettings;->IsHdmiFileThere:Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 318
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 320
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 358
    iget-boolean v8, p0, Lcom/android/settings/HdmiSettings;->IsHdmiFileThere:Z

    if-eqz v8, :cond_2

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/HdmiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "HdmiSettings"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 360
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 362
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v3, key:Ljava/lang/String;
    const-string v8, "hdmi_resolution"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 365
    :try_start_0
    const-string v6, "hdmi_resolution"

    .line 366
    .local v6, strResolution:Ljava/lang/String;
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 368
    .local v7, value:I
    const-string v8, "resolution"

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 369
    iget-object v8, p0, Lcom/android/settings/HdmiSettings;->HdmiState:Ljava/io/File;

    invoke-virtual {p0, v8, v7, v6}, Lcom/android/settings/HdmiSettings;->setHdmiOutputStyle(Ljava/io/File;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v6           #strResolution:Ljava/lang/String;
    .end local v7           #value:I
    :cond_0
    :goto_0
    const-string v8, "hdmi_mode"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 377
    :try_start_1
    const-string v5, "hdmi_mode"

    .line 378
    .local v5, strMode:Ljava/lang/String;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 379
    .restart local v7       #value:I
    const-string v8, "mode"

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 380
    iget-object v8, p0, Lcom/android/settings/HdmiSettings;->HdmiState:Ljava/io/File;

    invoke-virtual {p0, v8, v7, v5}, Lcom/android/settings/HdmiSettings;->setHdmiOutputStyle(Ljava/io/File;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    .end local v5           #strMode:Ljava/lang/String;
    .end local v7           #value:I
    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 387
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_2
    const/4 v8, 0x1

    return v8

    .line 370
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #sharedPrefs:Landroid/content/SharedPreferences;
    .restart local p2
    :catch_0
    move-exception v1

    .line 371
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v8, "HdmiSettings"

    const-string v9, "onPreferenceChanged hdmi_resolution setting error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local p2
    :catch_1
    move-exception v1

    .line 382
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v8, "HdmiSettings"

    const-string v9, "onPreferenceChanged hdmi_mode setting error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 324
    iget-boolean v4, p0, Lcom/android/settings/HdmiSettings;->IsHdmiFileThere:Z

    if-eqz v4, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/HdmiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "HdmiSettings"

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 326
    .local v2, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 327
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->HdmiState:Ljava/io/File;

    invoke-virtual {p0, v4}, Lcom/android/settings/HdmiSettings;->isHdmiConnected(Ljava/io/File;)Z

    move-result v1

    .line 330
    .local v1, isConnected:Z
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdmi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_2

    .line 331
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdmi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 332
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->HdmiFile:Ljava/io/File;

    invoke-virtual {p0, v4, v7}, Lcom/android/settings/HdmiSettings;->setHdmiConfig(Ljava/io/File;Z)V

    .line 333
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdmi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 335
    const-string v4, "enable"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 342
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 354
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #isConnected:Z
    .end local v2           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_1
    return v7

    .line 338
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #isConnected:Z
    .restart local v2       #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->HdmiFile:Ljava/io/File;

    invoke-virtual {p0, v4, v6}, Lcom/android/settings/HdmiSettings;->setHdmiConfig(Ljava/io/File;Z)V

    .line 339
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdmi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 340
    const-string v4, "enable"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 343
    :cond_2
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdcp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_0

    .line 344
    const-string v3, "hdmi_hdcp"

    .line 345
    .local v3, strHdcp:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdcp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 346
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->HdmiState:Ljava/io/File;

    invoke-virtual {p0, v4, v7, v3}, Lcom/android/settings/HdmiSettings;->setHdmiOutputStyle(Ljava/io/File;ILjava/lang/String;)V

    .line 347
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdcp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 349
    :cond_3
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->HdmiState:Ljava/io/File;

    invoke-virtual {p0, v4, v6, v3}, Lcom/android/settings/HdmiSettings;->setHdmiOutputStyle(Ljava/io/File;ILjava/lang/String;)V

    .line 350
    iget-object v4, p0, Lcom/android/settings/HdmiSettings;->mHdcp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 314
    return-void
.end method

.method protected setHdmiConfig(Ljava/io/File;Z)V
    .locals 9
    .parameter "file"
    .parameter "enable"

    .prologue
    .line 138
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/HdmiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "HdmiSettings"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 141
    .local v3, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "1"

    .line 143
    .local v4, strChecked:Ljava/lang/String;
    const-string v5, "0"

    .line 145
    .local v5, strUnChecked:Ljava/lang/String;
    const/4 v1, 0x0

    .line 146
    .local v1, rdf:Ljava/io/RandomAccessFile;
    new-instance v1, Ljava/io/RandomAccessFile;

    .end local v1           #rdf:Ljava/io/RandomAccessFile;
    const-string v6, "rw"

    invoke-direct {v1, p1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .restart local v1       #rdf:Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_0

    .line 149
    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 150
    const-string v6, "enable"

    const/4 v7, 0x1

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 156
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #rdf:Ljava/io/RandomAccessFile;
    .end local v3           #sharedPrefs:Landroid/content/SharedPreferences;
    .end local v4           #strChecked:Ljava/lang/String;
    .end local v5           #strUnChecked:Ljava/lang/String;
    :goto_1
    return-void

    .line 153
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #rdf:Ljava/io/RandomAccessFile;
    .restart local v3       #sharedPrefs:Landroid/content/SharedPreferences;
    .restart local v4       #strChecked:Ljava/lang/String;
    .restart local v5       #strUnChecked:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 154
    const-string v6, "enable"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #rdf:Ljava/io/RandomAccessFile;
    .end local v3           #sharedPrefs:Landroid/content/SharedPreferences;
    .end local v4           #strChecked:Ljava/lang/String;
    .end local v5           #strUnChecked:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 158
    .local v2, re:Ljava/io/IOException;
    const-string v6, "HdmiSettings"

    const-string v7, "IO Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 161
    .end local v2           #re:Ljava/io/IOException;
    :cond_1
    const-string v6, "HdmiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected setHdmiOutputStyle(Ljava/io/File;ILjava/lang/String;)V
    .locals 25
    .parameter "file"
    .parameter "style"
    .parameter "string"

    .prologue
    .line 167
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 169
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 170
    .local v8, fread:Ljava/io/FileReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 171
    .local v3, buffer:Ljava/io/BufferedReader;
    new-instance v20, Ljava/lang/StringBuffer;

    const-string v22, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 172
    .local v20, strbuf:Ljava/lang/StringBuffer;
    const/16 v18, 0x0

    .line 173
    .local v18, str:Ljava/lang/String;
    const/16 v21, 0x0

    .line 174
    .local v21, substr:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/HdmiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const-string v23, "HdmiSettings"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 175
    .local v17, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 177
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const-string v22, "hdmi_resolution"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 178
    const-string v21, "resolution"

    .line 179
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 180
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 181
    const/16 v22, 0x0

    const/16 v23, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 182
    .local v15, res:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 183
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 184
    .local v19, strValue:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 185
    .local v16, s:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string v22, "resolution"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    .end local v3           #buffer:Ljava/io/BufferedReader;
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v8           #fread:Ljava/io/FileReader;
    .end local v15           #res:Ljava/lang/String;
    .end local v16           #s:Ljava/lang/String;
    .end local v17           #sharedPrefs:Landroid/content/SharedPreferences;
    .end local v18           #str:Ljava/lang/String;
    .end local v19           #strValue:Ljava/lang/String;
    .end local v20           #strbuf:Ljava/lang/StringBuffer;
    .end local v21           #substr:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 272
    .local v4, e:Ljava/io/IOException;
    const-string v22, "HdmiSettings"

    const-string v23, "IO Exception"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v4           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 191
    .restart local v3       #buffer:Ljava/io/BufferedReader;
    .restart local v5       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v8       #fread:Ljava/io/FileReader;
    .restart local v15       #res:Ljava/lang/String;
    .restart local v17       #sharedPrefs:Landroid/content/SharedPreferences;
    .restart local v18       #str:Ljava/lang/String;
    .restart local v20       #strbuf:Ljava/lang/StringBuffer;
    .restart local v21       #substr:Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 194
    .end local v15           #res:Ljava/lang/String;
    :cond_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 199
    :cond_2
    const-string v22, "hdmi_mode"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 200
    const/4 v7, 0x0

    .line 201
    .local v7, flag:Z
    const-string v21, "mode"

    .line 203
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 204
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 205
    const/16 v22, 0x0

    const/16 v23, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 206
    .restart local v15       #res:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 207
    const/4 v7, 0x1

    .line 208
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 209
    .restart local v19       #strValue:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 210
    .restart local v16       #s:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    const-string v22, "mode"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 214
    .end local v16           #s:Ljava/lang/String;
    .end local v19           #strValue:Ljava/lang/String;
    :cond_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 217
    .end local v15           #res:Ljava/lang/String;
    :cond_4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 221
    :cond_5
    if-nez v7, :cond_6

    .line 222
    const-string v16, "mode=0"

    .line 223
    .restart local v16       #s:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    const-string v22, "mode"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 225
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    .end local v7           #flag:Z
    .end local v16           #s:Ljava/lang/String;
    :cond_6
    const-string v22, "hdmi_hdcp"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 230
    const-string v21, "hdcp_on"

    .line 231
    :goto_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_9

    .line 233
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 234
    const/16 v22, 0x0

    const/16 v23, 0x7

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 235
    .restart local v15       #res:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 236
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 237
    .restart local v19       #strValue:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 238
    .restart local v16       #s:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    const-string v22, "hdcp_on"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 242
    .end local v16           #s:Ljava/lang/String;
    .end local v19           #strValue:Ljava/lang/String;
    :cond_7
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 245
    .end local v15           #res:Ljava/lang/String;
    :cond_8
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 251
    :cond_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 252
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 255
    new-instance v6, Ljava/io/File;

    const-string v22, "/sys/class/hdmi/hdmi-0/state"

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 256
    .local v6, f:Ljava/io/File;
    const/4 v9, 0x0

    .line 257
    .local v9, output:Ljava/io/OutputStream;
    const/4 v11, 0x0

    .line 258
    .local v11, outputWrite:Ljava/io/OutputStreamWriter;
    const/4 v13, 0x0

    .line 261
    .local v13, print:Ljava/io/PrintWriter;
    :try_start_2
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 262
    .end local v9           #output:Ljava/io/OutputStream;
    .local v10, output:Ljava/io/OutputStream;
    :try_start_3
    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-direct {v12, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 263
    .end local v11           #outputWrite:Ljava/io/OutputStreamWriter;
    .local v12, outputWrite:Ljava/io/OutputStreamWriter;
    :try_start_4
    new-instance v14, Ljava/io/PrintWriter;

    invoke-direct {v14, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 265
    .end local v13           #print:Ljava/io/PrintWriter;
    .local v14, print:Ljava/io/PrintWriter;
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v14}, Ljava/io/PrintWriter;->flush()V

    .line 267
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v13, v14

    .end local v14           #print:Ljava/io/PrintWriter;
    .restart local v13       #print:Ljava/io/PrintWriter;
    move-object v11, v12

    .end local v12           #outputWrite:Ljava/io/OutputStreamWriter;
    .restart local v11       #outputWrite:Ljava/io/OutputStreamWriter;
    move-object v9, v10

    .line 270
    .end local v10           #output:Ljava/io/OutputStream;
    .restart local v9       #output:Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 268
    :catch_1
    move-exception v4

    .line 269
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 275
    .end local v3           #buffer:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/FileNotFoundException;
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #f:Ljava/io/File;
    .end local v8           #fread:Ljava/io/FileReader;
    .end local v9           #output:Ljava/io/OutputStream;
    .end local v11           #outputWrite:Ljava/io/OutputStreamWriter;
    .end local v13           #print:Ljava/io/PrintWriter;
    .end local v17           #sharedPrefs:Landroid/content/SharedPreferences;
    .end local v18           #str:Ljava/lang/String;
    .end local v20           #strbuf:Ljava/lang/StringBuffer;
    .end local v21           #substr:Ljava/lang/String;
    :cond_a
    const-string v22, "HdmiSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "The File "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " is not exists"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 268
    .restart local v3       #buffer:Ljava/io/BufferedReader;
    .restart local v5       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v6       #f:Ljava/io/File;
    .restart local v8       #fread:Ljava/io/FileReader;
    .restart local v10       #output:Ljava/io/OutputStream;
    .restart local v11       #outputWrite:Ljava/io/OutputStreamWriter;
    .restart local v13       #print:Ljava/io/PrintWriter;
    .restart local v17       #sharedPrefs:Landroid/content/SharedPreferences;
    .restart local v18       #str:Ljava/lang/String;
    .restart local v20       #strbuf:Ljava/lang/StringBuffer;
    .restart local v21       #substr:Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v9, v10

    .end local v10           #output:Ljava/io/OutputStream;
    .restart local v9       #output:Ljava/io/OutputStream;
    goto :goto_4

    .end local v9           #output:Ljava/io/OutputStream;
    .end local v11           #outputWrite:Ljava/io/OutputStreamWriter;
    .restart local v10       #output:Ljava/io/OutputStream;
    .restart local v12       #outputWrite:Ljava/io/OutputStreamWriter;
    :catch_3
    move-exception v4

    move-object v11, v12

    .end local v12           #outputWrite:Ljava/io/OutputStreamWriter;
    .restart local v11       #outputWrite:Ljava/io/OutputStreamWriter;
    move-object v9, v10

    .end local v10           #output:Ljava/io/OutputStream;
    .restart local v9       #output:Ljava/io/OutputStream;
    goto :goto_4

    .end local v9           #output:Ljava/io/OutputStream;
    .end local v11           #outputWrite:Ljava/io/OutputStreamWriter;
    .end local v13           #print:Ljava/io/PrintWriter;
    .restart local v10       #output:Ljava/io/OutputStream;
    .restart local v12       #outputWrite:Ljava/io/OutputStreamWriter;
    .restart local v14       #print:Ljava/io/PrintWriter;
    :catch_4
    move-exception v4

    move-object v13, v14

    .end local v14           #print:Ljava/io/PrintWriter;
    .restart local v13       #print:Ljava/io/PrintWriter;
    move-object v11, v12

    .end local v12           #outputWrite:Ljava/io/OutputStreamWriter;
    .restart local v11       #outputWrite:Ljava/io/OutputStreamWriter;
    move-object v9, v10

    .end local v10           #output:Ljava/io/OutputStream;
    .restart local v9       #output:Ljava/io/OutputStream;
    goto :goto_4
.end method
