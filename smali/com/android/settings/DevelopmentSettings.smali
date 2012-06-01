.class public Lcom/android/settings/DevelopmentSettings;
.super Landroid/preference/PreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ALLOW_MOCK_LOCATION:Ljava/lang/String; = "allow_mock_location"

.field private static final APP_PROCESS_LIMIT_KEY:Ljava/lang/String; = "app_process_limit"

.field private static final ENABLE_ADB:Ljava/lang/String; = "enable_adb"

.field private static final FORCE_HARDWARE_UI_KEY:Ljava/lang/String; = "force_hw_ui"

.field private static final HARDWARE_UI_PROPERTY:Ljava/lang/String; = "persist.sys.ui.hw"

.field private static final HDCP_CHECKING_KEY:Ljava/lang/String; = "hdcp_checking"

.field private static final HDCP_CHECKING_PROPERTY:Ljava/lang/String; = "persist.sys.hdcp_checking"

.field private static final IMMEDIATELY_DESTROY_ACTIVITIES_KEY:Ljava/lang/String; = "immediately_destroy_activities"

.field private static final KEEP_SCREEN_ON:Ljava/lang/String; = "keep_screen_on"

.field private static final LOCAL_BACKUP_PASSWORD:Ljava/lang/String; = "local_backup_password"

.field private static final POINTER_LOCATION_KEY:Ljava/lang/String; = "pointer_location"

.field private static final SHOW_ALL_ANRS_KEY:Ljava/lang/String; = "show_all_anrs"

.field private static final SHOW_CPU_USAGE_KEY:Ljava/lang/String; = "show_cpu_usage"

.field private static final SHOW_SCREEN_UPDATES_KEY:Ljava/lang/String; = "show_screen_updates"

.field private static final SHOW_TOUCHES_KEY:Ljava/lang/String; = "show_touches"

.field private static final STRICT_MODE_KEY:Ljava/lang/String; = "strict_mode"

.field private static final TRANSITION_ANIMATION_SCALE_KEY:Ljava/lang/String; = "transition_animation_scale"

.field private static final VERIFIER_DEVICE_IDENTIFIER:Ljava/lang/String; = "verifier_device_identifier"

.field private static final WINDOW_ANIMATION_SCALE_KEY:Ljava/lang/String; = "window_animation_scale"


# instance fields
.field private mAllowMockLocation:Landroid/preference/CheckBoxPreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mEnableAdb:Landroid/preference/CheckBoxPreference;

.field private mForceHardwareUi:Landroid/preference/CheckBoxPreference;

.field private mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

.field private mKeepScreenOn:Landroid/preference/CheckBoxPreference;

.field private mOkClicked:Z

.field private mOkDialog:Landroid/app/Dialog;

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/preference/CheckBoxPreference;

.field private mShowAllANRs:Landroid/preference/CheckBoxPreference;

.field private mShowCpuUsage:Landroid/preference/CheckBoxPreference;

.field private mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowTouches:Landroid/preference/CheckBoxPreference;

.field private mStrictMode:Landroid/preference/CheckBoxPreference;

.field private mTransitionAnimationScale:Landroid/preference/ListPreference;

.field private mWindowAnimationScale:Landroid/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 223
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    :goto_0
    return v1

    .line 226
    :cond_0
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 227
    .local v0, enabled:Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private removeHdcpOptionsForProduction()V
    .locals 3

    .prologue
    .line 152
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "hdcp_checking"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 154
    .local v0, hdcpChecking:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    .end local v0           #hdcpChecking:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 360
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 361
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 362
    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    .locals 6
    .parameter "which"
    .parameter "pref"

    .prologue
    .line 343
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 344
    .local v1, scale:F
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 345
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 346
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 347
    .local v2, val:F
    cmpg-float v4, v1, v2

    if-gtz v4, :cond_0

    .line 348
    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 349
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    .end local v0           #i:I
    .end local v1           #scale:F
    .end local v2           #val:F
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 345
    .restart local v0       #i:I
    .restart local v1       #scale:F
    .restart local v2       #val:F
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    .end local v2           #val:F
    :cond_1
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 354
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 355
    .end local v0           #i:I
    .end local v1           #scale:F
    .end local v3           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 7

    .prologue
    .line 375
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 376
    .local v1, limit:I
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 377
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 378
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 379
    .local v2, val:I
    if-lt v2, v1, :cond_0

    .line 380
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 381
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 389
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v2           #val:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 377
    .restart local v0       #i:I
    .restart local v1       #limit:I
    .restart local v2       #val:I
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    .end local v2           #val:I
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 386
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 387
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 311
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 313
    return-void
.end method

.method private updateFlingerOptions()V
    .locals 9

    .prologue
    .line 265
    :try_start_0
    const-string v7, "SurfaceFlinger"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 266
    .local v2, flinger:Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 268
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 269
    .local v3, reply:Landroid/os/Parcel;
    const-string v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 270
    const/16 v7, 0x3f2

    const/4 v8, 0x0

    invoke-interface {v2, v7, v0, v3, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 272
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 274
    .local v5, showCpu:I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 275
    .local v1, enableGL:I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 278
    .local v6, showUpdates:I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 279
    .local v4, showBackground:I
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #enableGL:I
    .end local v2           #flinger:Landroid/os/IBinder;
    .end local v3           #reply:Landroid/os/Parcel;
    .end local v4           #showBackground:I
    .end local v5           #showCpu:I
    .end local v6           #showUpdates:I
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 304
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 187
    const/4 v3, 0x1

    .line 188
    .local v3, index:I
    const-string v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 189
    .local v1, hdcpChecking:Landroid/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 190
    const-string v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, currentValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07003c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, summaries:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 194
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 195
    move v3, v2

    .line 199
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 200
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 203
    .end local v0           #currentValue:Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #summaries:[Ljava/lang/String;
    .end local v5           #values:[Ljava/lang/String;
    :cond_1
    return-void

    .line 193
    .restart local v0       #currentValue:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v4       #summaries:[Ljava/lang/String;
    .restart local v5       #values:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 337
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 339
    return-void
.end method

.method private updatePasswordSummary()V
    .locals 2

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b0501

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 215
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b0500

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 248
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 250
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 407
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 409
    return-void
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 258
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 260
    return-void
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 239
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 240
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2
    .parameter "which"
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 366
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 367
    .local v0, scale:F
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 368
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v0           #scale:F
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 393
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 394
    .local v0, limit:I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 395
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v0           #limit:I
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    .prologue
    .line 316
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 317
    .local v1, value:Z
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.LoadAverageService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 321
    .local v0, service:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 326
    :goto_1
    return-void

    .line 317
    .end local v0           #service:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 324
    .restart local v0       #service:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 307
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void

    .line 307
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 2

    .prologue
    .line 330
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    return-void

    .line 401
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 2

    .prologue
    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 236
    :goto_1
    return-void

    .line 232
    :cond_0
    const-string v0, "0"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 490
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 491
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mOkClicked:Z

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 498
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 112
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 115
    const v3, 0x7f05000a

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 117
    const-string v3, "enable_adb"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    .line 118
    const-string v3, "keep_screen_on"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    .line 119
    const-string v3, "allow_mock_location"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    .line 120
    const-string v3, "local_backup_password"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    .line 122
    const-string v3, "strict_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    .line 123
    const-string v3, "pointer_location"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    .line 124
    const-string v3, "show_touches"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    .line 126
    const-string v3, "show_cpu_usage"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    .line 127
    const-string v3, "force_hw_ui"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    .line 128
    const-string v3, "window_animation_scale"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    .line 129
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    const-string v3, "transition_animation_scale"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    .line 131
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    const-string v3, "immediately_destroy_activities"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    .line 135
    const-string v3, "app_process_limit"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    .line 136
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    const-string v3, "show_all_anrs"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    .line 141
    const-string v3, "verifier_device_identifier"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 142
    .local v1, verifierDeviceIdentifier:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 143
    .local v0, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v2

    .line 144
    .local v2, verifierIndentity:Landroid/content/pm/VerifierDeviceIdentity;
    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {v2}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->removeHdcpOptionsForProduction()V

    .line 149
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialog()V

    .line 510
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 511
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 505
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 466
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 480
    :goto_0
    return v0

    .line 470
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 471
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 473
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 474
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 476
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 477
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 480
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 414
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v1

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 419
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 420
    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mOkClicked:Z

    .line 421
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialog()V

    .line 422
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b043c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b043b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040013

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040009

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    .line 429
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 431
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 434
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "stay_on_while_plugged_in"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 439
    :cond_6
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    .line 443
    :cond_8
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_9

    .line 444
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 445
    :cond_9
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 446
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 447
    :cond_a
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_b

    .line 448
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 451
    :cond_b
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_c

    .line 452
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    .line 453
    :cond_c
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_d

    .line 454
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 455
    :cond_d
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_e

    .line 456
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 457
    :cond_e
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 163
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 166
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 168
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    const-string v4, "mock_location"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 173
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePasswordSummary()V

    .line 174
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 175
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 176
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V

    .line 178
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 179
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 181
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 182
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 184
    return-void

    :cond_0
    move v1, v3

    .line 166
    goto :goto_0

    :cond_1
    move v1, v3

    .line 168
    goto :goto_1

    :cond_2
    move v2, v3

    .line 170
    goto :goto_2
.end method
