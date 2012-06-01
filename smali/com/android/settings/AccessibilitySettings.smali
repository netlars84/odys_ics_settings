.class public Lcom/android/settings/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;,
        Lcom/android/settings/AccessibilitySettings$ToggleTouchExplorationFragment;,
        Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServiceFragment;,
        Lcom/android/settings/AccessibilitySettings$ToggleSwitch;,
        Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCREENREADER_MARKET_LINK:Ljava/lang/String; = "market://search?q=pname:com.google.android.marvin.talkback"

.field private static final DELAY_UPDATE_SERVICES_MILLIS:J = 0x3e8L

.field private static final DIALOG_ID_NO_ACCESSIBILITY_SERVICES:I = 0x1

.field private static final ENABLED_ACCESSIBILITY_SERVICES_SEPARATOR:C = ':'

.field private static final EXTRA_CHECKED:Ljava/lang/String; = "checked"

.field private static final EXTRA_DISABLE_WARNING_MESSAGE:Ljava/lang/String; = "disable_warning_message"

.field private static final EXTRA_DISABLE_WARNING_TITLE:Ljava/lang/String; = "disable_warning_title"

.field private static final EXTRA_ENABLE_WARNING_MESSAGE:Ljava/lang/String; = "enable_warning_message"

.field private static final EXTRA_ENABLE_WARNING_TITLE:Ljava/lang/String; = "enable_warning_title"

.field private static final EXTRA_PREFERENCE_KEY:Ljava/lang/String; = "preference_key"

.field private static final EXTRA_SETTINGS_COMPONENT_NAME:Ljava/lang/String; = "settings_component_name"

.field private static final EXTRA_SETTINGS_TITLE:Ljava/lang/String; = "settings_title"

.field private static final EXTRA_SUMMARY:Ljava/lang/String; = "summary"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_ACCESSIBILITY_TUTORIAL_LAUNCHED_ONCE:Ljava/lang/String; = "key_accessibility_tutorial_launched_once"

.field private static final KEY_INSTALL_ACCESSIBILITY_SERVICE_OFFERED_ONCE:Ljava/lang/String; = "key_install_accessibility_service_offered_once"

.field private static final LARGE_FONT_SCALE:F = 1.3f

.field private static final SELECT_LONG_PRESS_TIMEOUT_PREFERENCE:Ljava/lang/String; = "select_long_press_timeout_preference"

.field private static final SERVICES_CATEGORY:Ljava/lang/String; = "services_category"

.field private static final SYSTEM_CATEGORY:Ljava/lang/String; = "system_category"

.field private static final SYSTEM_PROPERTY_MARKET_URL:Ljava/lang/String; = "ro.screenreader.market"

.field private static final TAG:Ljava/lang/String; = "AccessibilitySettings"

.field private static final TOGGLE_AUTO_ROTATE_SCREEN_PREFERENCE:Ljava/lang/String; = "toggle_auto_rotate_screen_preference"

.field private static final TOGGLE_LARGE_TEXT_PREFERENCE:Ljava/lang/String; = "toggle_large_text_preference"

.field private static final TOGGLE_POWER_BUTTON_ENDS_CALL_PREFERENCE:Ljava/lang/String; = "toggle_power_button_ends_call_preference"

.field private static final TOGGLE_SCRIPT_INJECTION_PREFERENCE:Ljava/lang/String; = "toggle_script_injection_preference"

.field private static final TOGGLE_SPEAK_PASSWORD_PREFERENCE:Ljava/lang/String; = "toggle_speak_password_preference"

.field private static final TOGGLE_TOUCH_EXPLORATION_PREFERENCE:Ljava/lang/String; = "toggle_touch_exploration_preference"

.field private static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private final mCurConfig:Landroid/content/res/Configuration;

.field private final mHandler:Landroid/os/Handler;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoServicesMessagePreference:Landroid/preference/Preference;

.field private mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private mServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSystemsCategory:Landroid/preference/PreferenceCategory;

.field private mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleScriptInjectionPreference:Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

.field private mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleTouchExplorationPreference:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 145
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 147
    new-instance v0, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;-><init>(Lcom/android/settings/AccessibilitySettings;Lcom/android/settings/AccessibilitySettings$1;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 149
    new-instance v0, Lcom/android/settings/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessibilitySettings$1;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 707
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/settings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Set;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/settings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/Activity;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/settings/AccessibilitySettings;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    move-result-object v0

    return-object v0
.end method

.method private static createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
    .locals 7
    .parameter "activity"

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 593
    new-instance v1, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 594
    .local v1, toggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 596
    .local v0, padding:I
    invoke-virtual {v1, v4, v4, v0, v4}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setPadding(IIII)V

    .line 597
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 599
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 603
    return-object v1
.end method

.method private static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 548
    .local v4, enabledServicesSetting:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 549
    const-string v4, ""

    .line 551
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 552
    .local v3, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    sget-object v0, Lcom/android/settings/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 553
    .local v0, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 554
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 555
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, componentNameString:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 558
    .local v2, enabledService:Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 559
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 562
    .end local v1           #componentNameString:Ljava/lang/String;
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :cond_2
    return-object v3
.end method

.method private handleToggleAutoRotateScreenPreferenceClick()V
    .locals 4

    .prologue
    .line 245
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 247
    .local v1, wm:Landroid/view/IWindowManager;
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V

    .line 255
    .end local v1           #wm:Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 250
    .restart local v1       #wm:Landroid/view/IWindowManager;
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v1           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 253
    .local v0, exc:Landroid/os/RemoteException;
    const-string v2, "AccessibilitySettings"

    const-string v3, "Unable to save auto-rotate setting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleToggleLargeTextPreferenceClick()V
    .locals 2

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fa66666

    :goto_0
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 229
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_1
    return-void

    .line 228
    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleToggleSpeakPasswordPreferenceClick()V
    .locals 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 7

    .prologue
    .line 264
    const-string v4, "services_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    .line 265
    const-string v4, "system_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    .line 272
    const-string v4, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    .line 274
    const/16 v4, 0x1a

    invoke-static {v4}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 276
    :cond_0
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 284
    :cond_1
    const-string v4, "toggle_speak_password_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    .line 288
    const-string v4, "toggle_touch_exploration_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    .line 291
    const-string v4, "select_long_press_timeout_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 293
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 294
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, timeoutValues:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, timeoutTitles:[Ljava/lang/String;
    array-length v2, v3

    .line 301
    .local v2, timeoutValueCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 302
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v5, v3, v0

    aget-object v6, v1, v0

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    .end local v0           #i:I
    .end local v1           #timeoutTitles:[Ljava/lang/String;
    .end local v2           #timeoutValueCount:I
    .end local v3           #timeoutValues:[Ljava/lang/String;
    :cond_2
    const-string v4, "toggle_script_injection_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mToggleScriptInjectionPreference:Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

    .line 309
    return-void
.end method

.method private isMarketInstalled()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 929
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 930
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 931
    .local v1, packageInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 932
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 933
    .local v3, pak:Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.android.vending"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 934
    const/4 v4, 0x1

    .line 937
    .end local v3           #pak:Landroid/content/pm/PackageInfo;
    :cond_0
    return v4

    .line 931
    .restart local v3       #pak:Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadInstalledServices()V
    .locals 8

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 533
    .local v3, installedServiceInfos:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    sget-object v4, Lcom/android/settings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 534
    .local v4, installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 535
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 536
    .local v2, installedServiceInfoCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 537
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 538
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .local v1, installedService:Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    .end local v1           #installedService:Landroid/content/ComponentName;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method private offerInstallAccessibilitySerivceOnce()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 485
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-eq v3, v4, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 489
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v3, "key_install_accessibility_service_offered_once"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    .line 491
    .local v0, offerInstallService:Z
    :cond_2
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->isMarketInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "key_install_accessibility_service_offered_once"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 496
    invoke-virtual {p0, v2}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    goto :goto_0
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateServicesPreferences()V

    .line 313
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateSystemPreferences()V

    .line 314
    return-void
.end method

.method private updateServicesPreferences()V
    .locals 23

    .prologue
    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 326
    .local v4, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v13

    .line 328
    .local v13, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 330
    .local v9, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "accessibility_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/4 v3, 0x1

    .line 333
    .local v3, accessibilityEnabled:Z
    :goto_0
    const/4 v11, 0x0

    .local v11, i:I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    .local v7, count:I
    :goto_1
    if-ge v11, v7, :cond_5

    .line 334
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 336
    .local v12, info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v14

    .line 338
    .local v14, preference:Landroid/preference/PreferenceScreen;
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 340
    .local v18, title:Ljava/lang/String;
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    .line 341
    .local v16, serviceInfo:Landroid/content/pm/ServiceInfo;
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .local v6, componentName:Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    if-eqz v3, :cond_3

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const/4 v15, 0x1

    .line 349
    .local v15, serviceEnabled:Z
    :goto_2
    if-eqz v15, :cond_4

    .line 350
    const v19, 0x7f0b0456

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 355
    :goto_3
    invoke-virtual {v14, v11}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 356
    const-class v19, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServiceFragment;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 357
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 359
    invoke-virtual {v14}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 360
    .local v10, extras:Landroid/os/Bundle;
    const-string v19, "preference_key"

    invoke-virtual {v14}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v19, "checked"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 362
    const-string v19, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v8

    .line 365
    .local v8, description:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 366
    const v19, 0x7f0b0466

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 368
    :cond_0
    const-string v19, "summary"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 372
    .local v5, applicationLabel:Ljava/lang/CharSequence;
    const-string v19, "enable_warning_title"

    const v20, 0x7f0b045c

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v19, "enable_warning_message"

    const v20, 0x7f0b045d

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v19, "disable_warning_title"

    const v20, 0x7f0b045e

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v19, "disable_warning_message"

    const v20, 0x7f0b045f

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v17

    .line 385
    .local v17, settingsClassName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 386
    const-string v19, "settings_title"

    const v20, 0x7f0b0454

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v19, "settings_component_name"

    new-instance v20, Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 333
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 330
    .end local v3           #accessibilityEnabled:Z
    .end local v5           #applicationLabel:Ljava/lang/CharSequence;
    .end local v6           #componentName:Landroid/content/ComponentName;
    .end local v7           #count:I
    .end local v8           #description:Ljava/lang/String;
    .end local v10           #extras:Landroid/os/Bundle;
    .end local v11           #i:I
    .end local v12           #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v14           #preference:Landroid/preference/PreferenceScreen;
    .end local v15           #serviceEnabled:Z
    .end local v16           #serviceInfo:Landroid/content/pm/ServiceInfo;
    .end local v17           #settingsClassName:Ljava/lang/String;
    .end local v18           #title:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 347
    .restart local v3       #accessibilityEnabled:Z
    .restart local v6       #componentName:Landroid/content/ComponentName;
    .restart local v7       #count:I
    .restart local v11       #i:I
    .restart local v12       #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v14       #preference:Landroid/preference/PreferenceScreen;
    .restart local v16       #serviceInfo:Landroid/content/pm/ServiceInfo;
    .restart local v18       #title:Ljava/lang/String;
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 352
    .restart local v15       #serviceEnabled:Z
    :cond_4
    const v19, 0x7f0b0457

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 396
    .end local v6           #componentName:Landroid/content/ComponentName;
    .end local v12           #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v14           #preference:Landroid/preference/PreferenceScreen;
    .end local v15           #serviceEnabled:Z
    .end local v16           #serviceInfo:Landroid/content/pm/ServiceInfo;
    .end local v18           #title:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v19

    if-nez v19, :cond_7

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    .line 398
    new-instance v19, Lcom/android/settings/AccessibilitySettings$2;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/AccessibilitySettings$2;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f040069

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 417
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 419
    :cond_7
    return-void
.end method

.method private updateSystemPreferences()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 424
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    const/16 v8, 0x1a

    invoke-static {v8}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "incall_power_button_behavior"

    invoke-static {v8, v11, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 436
    .local v1, incallPowerBehavior:I
    const/4 v8, 0x2

    if-ne v1, v8, :cond_1

    move v3, v9

    .line 438
    .local v3, powerButtonEndsCall:Z
    :goto_1
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 442
    .end local v1           #incallPowerBehavior:I
    .end local v3           #powerButtonEndsCall:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "accelerometer_rotation"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_2

    move v0, v9

    .line 447
    .local v0, autoRotationEnabled:Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "speak_password"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    move v5, v9

    .line 449
    .local v5, speakPasswordEnabled:Z
    :goto_3
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 453
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "touch_exploration_enabled"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_4

    move v6, v9

    .line 456
    .local v6, touchExplorationEnabled:Z
    :goto_4
    if-eqz v6, :cond_5

    .line 457
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    const v11, 0x7f0b0456

    invoke-virtual {p0, v11}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v11, "checked"

    invoke-virtual {v8, v11, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 471
    .end local v6           #touchExplorationEnabled:Z
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "long_press_timeout"

    iget v12, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v8, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 473
    .local v2, longPressTimeout:I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 474
    .local v7, value:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 475
    iget-object v11, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v11, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "accessibility_script_injection"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_7

    move v4, v9

    .line 480
    .local v4, scriptInjectionAllowed:Z
    :goto_6
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mToggleScriptInjectionPreference:Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

    invoke-virtual {v8, v4}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    .line 481
    return-void

    .end local v0           #autoRotationEnabled:Z
    .end local v2           #longPressTimeout:I
    .end local v4           #scriptInjectionAllowed:Z
    .end local v5           #speakPasswordEnabled:Z
    .end local v7           #value:Ljava/lang/String;
    .restart local v1       #incallPowerBehavior:I
    :cond_1
    move v3, v10

    .line 436
    goto/16 :goto_1

    .end local v1           #incallPowerBehavior:I
    :cond_2
    move v0, v10

    .line 442
    goto/16 :goto_2

    .restart local v0       #autoRotationEnabled:Z
    :cond_3
    move v5, v10

    .line 447
    goto :goto_3

    .restart local v5       #speakPasswordEnabled:Z
    :cond_4
    move v6, v10

    .line 454
    goto :goto_4

    .line 461
    .restart local v6       #touchExplorationEnabled:Z
    :cond_5
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    const v11, 0x7f0b0457

    invoke-virtual {p0, v11}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v11, "checked"

    invoke-virtual {v8, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5

    .line 467
    .end local v6           #touchExplorationEnabled:Z
    :cond_6
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .restart local v2       #longPressTimeout:I
    .restart local v7       #value:Ljava/lang/String;
    :cond_7
    move v4, v10

    .line 478
    goto :goto_6

    .line 425
    .end local v0           #autoRotationEnabled:Z
    .end local v2           #longPressTimeout:I
    .end local v5           #speakPasswordEnabled:Z
    .end local v7           #value:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->initializeAllPreferences()V

    .line 178
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    const/4 v0, 0x0

    .line 502
    packed-switch p1, :pswitch_data_0

    .line 525
    :goto_0
    return-object v0

    .line 504
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0461

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0462

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/AccessibilitySettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/AccessibilitySettings$3;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 194
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 195
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 199
    check-cast v0, Ljava/lang/String;

    .line 200
    .local v0, stringValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "long_press_timeout"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    const/4 v1, 0x1

    .line 206
    .end local v0           #stringValue:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 211
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleToggleLargeTextPreferenceClick()V

    .line 223
    :goto_0
    return v0

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_1

    .line 215
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_2

    .line 218
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleToggleAutoRotateScreenPreferenceClick()V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_3

    .line 221
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleToggleSpeakPasswordPreferenceClick()V

    .line 223
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->loadInstalledServices()V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateAllPreferences()V

    .line 185
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-ne v0, v1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->offerInstallAccessibilitySerivceOnce()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Z)V

    .line 189
    return-void
.end method
