.class public Lcom/android/settings/LocationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_ASSISTED_GPS:Ljava/lang/String; = "assisted_gps"

.field private static final KEY_LOCATION_GPS:Ljava/lang/String; = "location_gps"

.field private static final KEY_LOCATION_NETWORK:Ljava/lang/String; = "location_network"

.field private static final KEY_USE_LOCATION:Ljava/lang/String; = "location_use_for_services"


# instance fields
.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mUseLocation:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateLocationToggles()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 80
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 83
    :cond_0
    const v2, 0x7f050015

    invoke-virtual {p0, v2}, Lcom/android/settings/LocationSettings;->addPreferencesFromResource(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 86
    const-string v2, "location_network"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 87
    const-string v2, "location_gps"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "android.hardware.location.gps"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 92
    :cond_1
    const-string v2, "assisted_gps"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/GoogleLocationSettingHelper;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 96
    .local v1, useLocation:Landroid/preference/CheckBoxPreference;
    const-string v2, "location_use_for_services"

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 97
    const v2, 0x7f0b0341

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 98
    const v2, 0x7f0b0342

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/GoogleLocationSettingHelper;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 102
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 103
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 105
    iput-object v1, p0, Lcom/android/settings/LocationSettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    .line 109
    .end local v1           #useLocation:Landroid/preference/CheckBoxPreference;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0b033b

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 113
    :cond_3
    return-object v0

    .restart local v1       #useLocation:Landroid/preference/CheckBoxPreference;
    :cond_4
    move v2, v4

    .line 99
    goto :goto_0
.end method

.method private updateLocationToggles()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 164
    .local v1, res:Landroid/content/ContentResolver;
    const-string v3, "gps"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 166
    .local v0, gpsEnabled:Z
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v4, "network"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.location.gps"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 171
    :cond_0
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 172
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v4, "assisted_gps_enabled"

    const/4 v5, 0x2

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 176
    :cond_1
    return-void

    .line 172
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 185
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_1

    .line 189
    if-nez p2, :cond_0

    move v0, v1

    .line 190
    .end local p2
    .local v0, newValue:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/GoogleLocationSettingHelper;->setUseLocationForServices(Landroid/content/Context;Z)V

    .line 197
    .end local v0           #newValue:Z
    :goto_1
    return v1

    .line 189
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 197
    .restart local p2
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 138
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "network"

    iget-object v4, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 156
    :cond_0
    :goto_0
    return v2

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 143
    .local v0, enabled:Z
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "gps"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 145
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 148
    .end local v0           #enabled:Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_gps_enabled"

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 153
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 123
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateLocationToggles()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/android/settings/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LocationSettings$1;-><init>(Lcom/android/settings/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    .line 131
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 133
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 67
    .local v6, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 68
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 73
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 76
    :cond_0
    return-void
.end method
