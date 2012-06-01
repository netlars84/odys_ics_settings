.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# static fields
.field public static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final KEY_ANDROID_BEAM_SETTINGS:Ljava/lang/String; = "android_beam_settings"

.field private static final KEY_MOBILE_NETWORK_SETTINGS:Ljava/lang/String; = "mobile_network_settings"

.field private static final KEY_PROXY_SETTINGS:Ljava/lang/String; = "proxy_settings"

.field private static final KEY_TETHER_SETTINGS:Ljava/lang/String; = "tether_settings"

.field private static final KEY_TOGGLE_AIRPLANE:Ljava/lang/String; = "toggle_airplane"

.field private static final KEY_TOGGLE_NFC:Ljava/lang/String; = "toggle_nfc"

.field private static final KEY_TOGGLE_WIFI_P2P:Ljava/lang/String; = "toggle_wifi_p2p"

.field private static final KEY_VPN_SETTINGS:Ljava/lang/String; = "vpn_settings"

.field private static final KEY_WIFI_P2P_SETTINGS:Ljava/lang/String; = "wifi_p2p_settings"

.field private static final KEY_WIMAX_SETTINGS:Ljava/lang/String; = "wimax_settings"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x1


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mHasAirplane:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 88
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 233
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 234
    iget-boolean v1, p0, Lcom/android/settings/WirelessSettings;->mHasAirplane:Z

    if-eqz v1, :cond_0

    .line 235
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 237
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 242
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1110025

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/settings/WirelessSettings;->mHasAirplane:Z

    .line 104
    const v13, 0x7f050038

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 107
    .local v0, activity:Landroid/app/Activity;
    const-string v13, "toggle_airplane"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    iput-object v13, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 108
    iget-boolean v13, p0, Lcom/android/settings/WirelessSettings;->mHasAirplane:Z

    if-eqz v13, :cond_a

    .line 109
    const-string v13, "mobile_network_settings"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    const-string v14, "toggle_airplane"

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 113
    :goto_0
    const-string v13, "toggle_nfc"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 114
    .local v6, nfc:Landroid/preference/CheckBoxPreference;
    const-string v13, "android_beam_settings"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 116
    .local v1, androidBeam:Landroid/preference/PreferenceScreen;
    const-string v13, "toggle_wifi_p2p"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    .line 118
    .local v12, wifiP2p:Landroid/preference/CheckBoxPreference;
    iget-boolean v13, p0, Lcom/android/settings/WirelessSettings;->mHasAirplane:Z

    if-eqz v13, :cond_0

    .line 119
    new-instance v13, Lcom/android/settings/AirplaneModeEnabler;

    iget-object v14, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {v13, v0, v14}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v13, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 121
    :cond_0
    new-instance v13, Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct {v13, v0, v6, v1}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    iput-object v13, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 123
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "airplane_mode_toggleable_radios"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 127
    .local v11, toggleable:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1110032

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 129
    .local v3, isWimaxEnabled:Z
    if-nez v3, :cond_b

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 131
    .local v10, root:Landroid/preference/PreferenceScreen;
    const-string v13, "wimax_settings"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 132
    .local v9, ps:Landroid/preference/Preference;
    if-eqz v9, :cond_1

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    .end local v9           #ps:Landroid/preference/Preference;
    .end local v10           #root:Landroid/preference/PreferenceScreen;
    :cond_1
    :goto_1
    if-eqz v11, :cond_2

    const-string v13, "wifi"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 142
    :cond_2
    const-string v13, "vpn_settings"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    const-string v14, "toggle_airplane"

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 146
    :cond_3
    if-eqz v11, :cond_4

    const-string v13, "bluetooth"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 151
    :cond_4
    if-eqz v11, :cond_5

    const-string v13, "nfc"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 152
    :cond_5
    const-string v13, "toggle_nfc"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    const-string v14, "toggle_airplane"

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 153
    const-string v13, "android_beam_settings"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    const-string v14, "toggle_airplane"

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 157
    :cond_6
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v13

    iput-object v13, p0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 158
    iget-object v13, p0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v13, :cond_7

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 161
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 165
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_8

    sget-boolean v13, Landroid/os/YiFangProp;->MOBILE_DONGLE:Z

    if-eqz v13, :cond_8

    .line 169
    :cond_8
    const-string v13, "wifip2p"

    invoke-virtual {v0, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 171
    .local v8, p2p:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "android.hardware.wifi.direct"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    const-string v14, "wifi_p2p_settings"

    invoke-virtual {p0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    const-string v13, "proxy_settings"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 180
    .local v5, mGlobalProxy:Landroid/preference/Preference;
    const-string v13, "device_policy"

    invoke-virtual {v0, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 183
    .local v4, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v13

    if-nez v13, :cond_e

    const/4 v13, 0x1

    :goto_3
    invoke-virtual {v5, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 187
    const-string v13, "connectivity"

    invoke-virtual {v0, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 189
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v13

    if-eqz v13, :cond_9

    sget-boolean v13, Landroid/os/YiFangProp;->HOTPOINT:Z

    if-nez v13, :cond_f

    .line 190
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    const-string v14, "tether_settings"

    invoke-virtual {p0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 195
    :goto_4
    return-void

    .line 111
    .end local v1           #androidBeam:Landroid/preference/PreferenceScreen;
    .end local v2           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #isWimaxEnabled:Z
    .end local v4           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v5           #mGlobalProxy:Landroid/preference/Preference;
    .end local v6           #nfc:Landroid/preference/CheckBoxPreference;
    .end local v8           #p2p:Landroid/net/wifi/p2p/WifiP2pManager;
    .end local v11           #toggleable:Ljava/lang/String;
    .end local v12           #wifiP2p:Landroid/preference/CheckBoxPreference;
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    iget-object v14, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 134
    .restart local v1       #androidBeam:Landroid/preference/PreferenceScreen;
    .restart local v3       #isWimaxEnabled:Z
    .restart local v6       #nfc:Landroid/preference/CheckBoxPreference;
    .restart local v11       #toggleable:Ljava/lang/String;
    .restart local v12       #wifiP2p:Landroid/preference/CheckBoxPreference;
    :cond_b
    if-eqz v11, :cond_c

    const-string v13, "wimax"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    if-eqz v3, :cond_1

    .line 136
    :cond_c
    const-string v13, "wimax_settings"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 137
    .restart local v9       #ps:Landroid/preference/Preference;
    const-string v13, "toggle_airplane"

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 174
    .end local v9           #ps:Landroid/preference/Preference;
    .restart local v8       #p2p:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_d
    new-instance v13, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    invoke-direct {v13, v0, v12}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v13, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    goto :goto_2

    .line 184
    .restart local v4       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v5       #mGlobalProxy:Landroid/preference/Preference;
    :cond_e
    const/4 v13, 0x0

    goto :goto_3

    .line 192
    .restart local v2       #cm:Landroid/net/ConnectivityManager;
    :cond_f
    const-string v13, "tether_settings"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 193
    .local v7, p:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_4
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 218
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->pause()V

    .line 229
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 75
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 84
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 201
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->resume()V

    .line 212
    :cond_2
    return-void
.end method
