.class public final Lcom/android/settings/bluetooth/BluetoothSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"


# static fields
.field private static final BTOPP_ACTION_OPEN_RECEIVED_FILES:Ljava/lang/String; = "android.btopp.intent.action.OPEN_RECEIVED_FILES"

.field private static final MENU_ID_RENAME_DEVICE:I = 0x2

.field private static final MENU_ID_SCAN:I = 0x1

.field private static final MENU_ID_SHOW_RECEIVED:I = 0x4

.field private static final MENU_ID_VISIBILITY_TIMEOUT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothSettings"


# instance fields
.field private mActivityStarted:Z

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mMyDevicePreference:Landroid/preference/Preference;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    .line 80
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 345
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 98
    return-void
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .parameter "preferenceGroup"
    .parameter "titleId"
    .parameter "filter"

    .prologue
    .line 223
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 225
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setFilter(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 228
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 229
    return-void
.end method

.method private startScanning()V
    .locals 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 213
    return-void
.end method

.method private updateContent(IZ)V
    .locals 10
    .parameter "bluetoothState"
    .parameter "scanState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 233
    .local v3, preferenceScreen:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 235
    .local v0, messageId:I
    packed-switch p1, :pswitch_data_0

    .line 320
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 322
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 324
    :goto_1
    return-void

    .line 237
    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 238
    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 239
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 242
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-nez v4, :cond_0

    .line 243
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    .line 245
    :cond_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 247
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const v5, 0x7f020037

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    .line 251
    :goto_2
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 252
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 253
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 255
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v4, :cond_1

    .line 256
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Landroid/preference/Preference;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 258
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setDiscoverableEnabler(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 264
    :cond_1
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_5

    .line 265
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 269
    :goto_3
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0b0178

    sget-object v6, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 272
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 274
    .local v2, numberOfPairedDevices:I
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v2}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setNumberOfPairedDevices(I)V

    .line 277
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_6

    .line 278
    new-instance v4, Lcom/android/settings/ProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 282
    :goto_4
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0b0179

    sget-object v6, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 285
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 286
    .local v1, numberOfAvailableDevices:I
    iput-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 288
    if-nez v1, :cond_2

    .line 289
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 290
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 293
    :cond_2
    if-nez v2, :cond_3

    .line 294
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 295
    if-ne p2, v8, :cond_7

    .line 296
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 297
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 304
    :cond_3
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 249
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :cond_4
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const v5, 0x7f02003d

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 267
    :cond_5
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 280
    .restart local v2       #numberOfPairedDevices:I
    :cond_6
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_4

    .line 299
    .restart local v1       #numberOfAvailableDevices:I
    :cond_7
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v4, :cond_3

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 308
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :pswitch_1
    const v0, 0x7f0b0084

    .line 309
    goto/16 :goto_0

    .line 312
    :pswitch_2
    const v0, 0x7f0b0182

    .line 313
    goto/16 :goto_0

    .line 316
    :pswitch_3
    const v0, 0x7f0b0083

    goto/16 :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 111
    const v4, 0x7f050008

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 115
    .local v1, activity:Landroid/app/Activity;
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v4, v1, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 118
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 119
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    .line 120
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 122
    .local v2, padding:I
    invoke-virtual {v0, v6, v6, v2, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 123
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 125
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 132
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {v4, v1, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 134
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 135
    return-void
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 369
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 370
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 372
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 103
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 107
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 329
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 330
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 164
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    move v0, v3

    .line 165
    .local v0, bluetoothIsEnabled:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 166
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_1

    const v2, 0x7f0b0176

    .line 168
    .local v2, textId:I
    :goto_1
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    move v5, v3

    :goto_2
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 171
    const/4 v3, 0x2

    const v5, 0x7f0b0065

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 174
    const/4 v3, 0x3

    const v5, 0x7f0b005d

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 177
    const/4 v3, 0x4

    const v5, 0x7f0b007b

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 179
    return-void

    .end local v0           #bluetoothIsEnabled:Z
    .end local v1           #isDiscovering:Z
    .end local v2           #textId:I
    :cond_0
    move v0, v4

    .line 164
    goto :goto_0

    .line 166
    .restart local v0       #bluetoothIsEnabled:Z
    .restart local v1       #isDiscovering:Z
    :cond_1
    const v2, 0x7f0b0175

    goto :goto_1

    .restart local v2       #textId:I
    :cond_2
    move v5, v4

    .line 168
    goto :goto_2
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 342
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 343
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .parameter "btPreference"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 218
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 219
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 183
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 205
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 185
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    .line 191
    :pswitch_1
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v2}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "rename device"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :pswitch_2
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v2}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "visibility timeout"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 160
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 142
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 150
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 334
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 337
    return-void
.end method
