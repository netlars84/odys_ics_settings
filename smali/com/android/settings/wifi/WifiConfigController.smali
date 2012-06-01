.class public Lcom/android/settings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DHCP:I = 0x0

.field private static final KEYSTORE_SPACE:Ljava/lang/String; = "keystore://"

.field public static final MANUAL:I = 0x0

.field public static final PROXY_NONE:I = 0x0

.field public static final PROXY_STATIC:I = 0x1

.field private static final STATIC_IP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiConfigController"

.field public static final WPS_DISPLAY:I = 0x3

.field public static final WPS_KEYPAD:I = 0x2

.field public static final WPS_PBC:I = 0x1


# instance fields
.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private final mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private final mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mNetworkSetupSpinner:Landroid/widget/Spinner;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSsidView:Landroid/widget/TextView;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 18
    .parameter "parent"
    .parameter "view"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    sget-object v14, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 116
    sget-object v14, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 117
    new-instance v14, Landroid/net/LinkProperties;

    invoke-direct {v14}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 138
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 139
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 141
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 142
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 143
    if-nez p3, :cond_2

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 145
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v14}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 148
    .local v5, context:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 150
    .local v10, resources:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v14, :cond_4

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v15, 0x7f0b01bf

    invoke-interface {v14, v15}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f08016d

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f08016e

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 157
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v14, :cond_3

    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f08018f

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f080194

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 162
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v14, 0x7f040082

    const v15, 0x1020014

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f070019

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v5, v14, v15, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 165
    .local v3, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v14, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 169
    .end local v3           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v15, 0x7f0b01fa

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 260
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v15, 0x7f0b01fb

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v14}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 264
    :cond_1
    return-void

    .line 143
    .end local v5           #context:Landroid/content/Context;
    .end local v10           #resources:Landroid/content/res/Resources;
    :cond_2
    move-object/from16 v0, p3

    iget v14, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto/16 :goto_0

    .line 167
    .restart local v5       #context:Landroid/content/Context;
    .restart local v10       #resources:Landroid/content/res/Resources;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f080146

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 171
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v15, v15, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {v14, v15}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f080186

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f08017f

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f08016c

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 180
    .local v6, group:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v14}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    .line 181
    .local v13, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v13, :cond_5

    .line 182
    const v14, 0x7f0b01d1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v15}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v13}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 185
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v14}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v9

    .line 186
    .local v9, level:I
    const/4 v14, -0x1

    if-eq v9, v14, :cond_6

    .line 187
    const v14, 0x7f07001f

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 188
    .local v12, signal:[Ljava/lang/String;
    const v14, 0x7f0b01d0

    aget-object v15, v12, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 191
    .end local v12           #signal:[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v14}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 192
    .local v8, info:Landroid/net/wifi/WifiInfo;
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_7

    .line 193
    const v14, 0x7f0b01d2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Mbps"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 196
    :cond_7
    const v14, 0x7f0b01cf

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 198
    const/4 v11, 0x0

    .line 199
    .local v11, showAdvancedFields:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v14}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 201
    .local v4, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v14, v4, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v15, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v14, v15, :cond_8

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/Spinner;->setSelection(I)V

    .line 203
    const/4 v11, 0x1

    .line 208
    :goto_3
    iget-object v14, v4, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v14}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 209
    .local v2, a:Ljava/net/InetAddress;
    const v14, 0x7f0b01d3

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_4

    .line 205
    .end local v2           #a:Ljava/net/InetAddress;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 213
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_9
    iget-object v14, v4, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v15, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v14, v15, :cond_e

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/Spinner;->setSelection(I)V

    .line 215
    const/4 v11, 0x1

    .line 220
    :goto_5
    iget v14, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    iget v14, v4, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    .line 222
    const v14, 0x7f0b01e3

    const v15, 0x7f0b01e4

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 229
    .end local v4           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v14, v14, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v14, :cond_b

    .line 230
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showNetworkSetupFields()V

    .line 233
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_c

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v14, :cond_d

    .line 234
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 236
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 237
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f080197

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f080198

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    if-eqz v11, :cond_d

    .line 240
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f080198

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f080199

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 245
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v14, :cond_f

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v15, 0x7f0b01fa

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 217
    .restart local v4       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    .line 248
    .end local v4           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_f
    if-nez v13, :cond_10

    const/4 v14, -0x1

    if-eq v9, v14, :cond_10

    .line 249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v15, 0x7f0b01f8

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 253
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    .line 254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v15, 0x7f0b01f9

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 251
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f080185

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04007f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 268
    .local v0, row:Landroid/view/View;
    const v1, 0x7f080070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 269
    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 271
    return-void
.end method

.method private enableSubmitIfAppropriate()V
    .locals 5

    .prologue
    .line 275
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v2

    .line 276
    .local v2, submit:Landroid/widget/Button;
    if-nez v2, :cond_0

    .line 300
    :goto_0
    return-void

    .line 277
    :cond_0
    const/4 v0, 0x0

    .line 279
    .local v0, enabled:Z
    const/4 v1, 0x0

    .line 282
    .local v1, passwordInvalid:Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->chosenNetworkSetupMethod()I

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    .line 285
    :cond_2
    const/4 v1, 0x1

    .line 288
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    :cond_5
    if-eqz v1, :cond_7

    .line 291
    :cond_6
    const/4 v0, 0x0

    .line 299
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 293
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 294
    const/4 v0, 0x1

    goto :goto_1

    .line 296
    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 392
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->clear()V

    .line 393
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_0

    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 397
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v7, v10, :cond_1

    .line 398
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    .line 399
    .local v6, result:I
    if-eqz v6, :cond_1

    move v7, v8

    .line 427
    .end local v6           #result:I
    :goto_1
    return v7

    .line 393
    :cond_0
    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 404
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_3

    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 408
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v7, v10, :cond_2

    .line 409
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, host:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, portStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, exclusionList:Ljava/lang/String;
    const/4 v3, 0x0

    .line 413
    .local v3, port:I
    const/4 v6, 0x0

    .line 415
    .restart local v6       #result:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 416
    invoke-static {v2, v4, v1}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 420
    :goto_3
    if-nez v6, :cond_4

    .line 421
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 422
    .local v5, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .end local v1           #exclusionList:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v4           #portStr:Ljava/lang/String;
    .end local v5           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v6           #result:I
    :cond_2
    move v7, v9

    .line 427
    goto :goto_1

    .line 404
    :cond_3
    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 417
    .restart local v1       #exclusionList:Ljava/lang/String;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #port:I
    .restart local v4       #portStr:Ljava/lang/String;
    .restart local v6       #result:I
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Ljava/lang/NumberFormatException;
    const v6, 0x7f0b00aa

    goto :goto_3

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4
    move v7, v8

    .line 424
    goto :goto_1
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .parameter "spinner"
    .parameter "prefix"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 685
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 686
    .local v3, context:Landroid/content/Context;
    const v5, 0x7f0b01df

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 688
    .local v4, unspecified:Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 689
    .local v2, certs:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-nez v5, :cond_1

    .line 690
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2           #certs:[Ljava/lang/String;
    aput-object v4, v2, v6

    .line 698
    .restart local v2       #certs:[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v0, v3, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 700
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 701
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 702
    return-void

    .line 692
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    .line 693
    .local v1, array:[Ljava/lang/String;
    aput-object v4, v1, v6

    .line 694
    array-length v5, v2

    invoke-static {v2, v6, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 695
    move-object v2, v1

    goto :goto_0
.end method

.method static requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .parameter "config"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    if-nez p0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v5

    .line 126
    :cond_1
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v7, 0x2

    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 128
    .local v4, values:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 129
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v7, "keystore://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 130
    goto :goto_0

    .line 128
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 706
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 709
    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 712
    if-eqz p2, :cond_0

    .line 714
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 715
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 716
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 717
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 722
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 715
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private showIpConfigFields()V
    .locals 11

    .prologue
    const v10, 0x7f080187

    const/4 v9, 0x0

    .line 595
    const/4 v0, 0x0

    .line 597
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f080185

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 600
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 603
    :cond_0
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 604
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 605
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v7, :cond_1

    .line 606
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f080188

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 607
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 608
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f080189

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 609
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 610
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f08018a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 612
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 613
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f08018b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 614
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 615
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f08018c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 616
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 618
    :cond_1
    if-eqz v0, :cond_6

    .line 619
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 620
    .local v5, linkProperties:Landroid/net/LinkProperties;
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 621
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 622
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 623
    .local v4, linkAddress:Landroid/net/LinkAddress;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    .end local v4           #linkAddress:Landroid/net/LinkAddress;
    :cond_2
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 629
    .local v6, route:Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 630
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    .end local v6           #route:Landroid/net/RouteInfo;
    :cond_4
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 636
    .local v1, dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 637
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 640
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    .end local v1           #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v5           #linkProperties:Landroid/net/LinkProperties;
    :cond_6
    :goto_0
    return-void

    .line 644
    :cond_7
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showNetworkSetupFields()V
    .locals 8

    .prologue
    const v7, 0x7f080176

    const v6, 0x7f080174

    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 568
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080172

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080173

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    .line 572
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 578
    .local v0, pos:I
    if-ne v0, v4, :cond_2

    .line 579
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 585
    :goto_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v4, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 587
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 592
    :goto_1
    return-void

    .line 581
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 589
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private showProxyFields()V
    .locals 8

    .prologue
    const v7, 0x7f080181

    const v6, 0x7f080180

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 649
    const/4 v0, 0x0

    .line 651
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f08017e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 653
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 654
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 657
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 658
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 659
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 660
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 661
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f080182

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 662
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 663
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f080183

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 664
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 665
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f080184

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 666
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 668
    :cond_1
    if-eqz v0, :cond_2

    .line 669
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    .line 670
    .local v1, proxyProperties:Landroid/net/ProxyProperties;
    if-eqz v1, :cond_2

    .line 671
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    .end local v1           #proxyProperties:Landroid/net/ProxyProperties;
    :cond_2
    :goto_0
    return-void

    .line 677
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 9

    .prologue
    const v8, 0x7f080177

    const v7, 0x7f080176

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 513
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v1, :cond_2

    .line 521
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 524
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 526
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v1, :cond_3

    .line 527
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f08015a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 528
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 529
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080170

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v4, :cond_3

    .line 532
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v2, 0x7f0b01de

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 536
    :cond_3
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 537
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 540
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 542
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080178

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 544
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080179

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 545
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f08017a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 546
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f08017b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 547
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f08017c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 548
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f08017d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 550
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v4, :cond_0

    .line 554
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 555
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 10
    .parameter "linkProperties"

    .prologue
    const v8, 0x7f0b0208

    .line 431
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 432
    .local v6, ipAddr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 434
    .local v5, inetAddr:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 439
    const/4 v7, -0x1

    .line 441
    .local v7, networkPrefixLength:I
    :try_start_1
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v7

    .line 445
    :goto_0
    if-ltz v7, :cond_0

    const/16 v9, 0x20

    if-le v7, v9, :cond_1

    .line 446
    :cond_0
    const v8, 0x7f0b0209

    .line 476
    .end local v7           #networkPrefixLength:I
    :goto_1
    return v8

    .line 435
    :catch_0
    move-exception v2

    .line 436
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const v8, 0x7f0b0206

    goto :goto_1

    .line 448
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #networkPrefixLength:I
    :cond_1
    new-instance v9, Landroid/net/LinkAddress;

    invoke-direct {v9, v5, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v9}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 450
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, gateway:Ljava/lang/String;
    const/4 v4, 0x0

    .line 453
    .local v4, gatewayAddr:Ljava/net/InetAddress;
    :try_start_2
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 457
    new-instance v9, Landroid/net/RouteInfo;

    invoke-direct {v9, v4}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v9}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 459
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, dns:Ljava/lang/String;
    const/4 v1, 0x0

    .line 462
    .local v1, dnsAddr:Ljava/net/InetAddress;
    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 466
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 467
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 468
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    :try_start_4
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v1

    .line 474
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 476
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 454
    .end local v0           #dns:Ljava/lang/String;
    .end local v1           #dnsAddr:Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 455
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    const v8, 0x7f0b0207

    goto :goto_1

    .line 463
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #dns:Ljava/lang/String;
    .restart local v1       #dnsAddr:Ljava/net/InetAddress;
    :catch_2
    move-exception v2

    .line 464
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 471
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 472
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 442
    .end local v0           #dns:Ljava/lang/String;
    .end local v1           #dnsAddr:Ljava/net/InetAddress;
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #gateway:Ljava/lang/String;
    .end local v4           #gatewayAddr:Ljava/net/InetAddress;
    :catch_4
    move-exception v9

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 730
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 731
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 736
    return-void
.end method

.method chosenNetworkSetupMethod()I
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 483
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/16 v6, 0x22

    const/4 v5, 0x0

    .line 303
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v8, :cond_0

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-nez v4, :cond_0

    move-object v0, v3

    .line 388
    :goto_0
    return-object v0

    .line 307
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 309
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v4, :cond_1

    .line 310
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 313
    iput-boolean v7, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 321
    :goto_1
    iget v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v4, :pswitch_data_0

    move-object v0, v3

    .line 381
    goto :goto_0

    .line 314
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v4, v8, :cond_2

    .line 315
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 318
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 323
    :pswitch_0
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 384
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 385
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 386
    new-instance v3, Landroid/net/LinkProperties;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 327
    :pswitch_1
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 328
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 329
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    .line 330
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 331
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 332
    .local v1, length:I
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, password:Ljava/lang/String;
    const/16 v3, 0xa

    if-eq v1, v3, :cond_4

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_4

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_5

    :cond_4
    const-string v3, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 336
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v3, v5

    goto :goto_2

    .line 338
    :cond_5
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    goto :goto_2

    .line 344
    .end local v1           #length:I
    .end local v2           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    .line 345
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 346
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 347
    .restart local v2       #password:Ljava/lang/String;
    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 348
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 350
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 356
    .end local v2           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 357
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 358
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 360
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_7

    const-string v3, ""

    :goto_3
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 362
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_8

    const-string v3, ""

    :goto_4
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 365
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_9

    const-string v3, ""

    :goto_5
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 368
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_a

    const-string v3, ""

    :goto_6
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 371
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_b

    const-string v3, ""

    :goto_7
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 373
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_c

    const-string v3, ""

    :goto_8
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 375
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 376
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 360
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auth="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 362
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://CACERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 365
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://USRCERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 368
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://USRPKEY_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 371
    :cond_b
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 373
    :cond_c
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getWpsConfig()Landroid/net/wifi/WpsInfo;
    .locals 3

    .prologue
    .line 487
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 488
    .local v0, config:Landroid/net/wifi/WpsInfo;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 499
    const/4 v1, 0x4

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 500
    const-string v1, "WifiConfigController"

    const-string v2, "WPS not selected type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :goto_0
    return-object v0

    .line 490
    :pswitch_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 503
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080175

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 504
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    :goto_2
    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 506
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 507
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 508
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 493
    :pswitch_1
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 496
    :pswitch_2
    const/4 v1, 0x1

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 504
    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const v2, 0x7f080199

    .line 745
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080170

    if-ne v0, v1, :cond_2

    .line 746
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 757
    :cond_0
    :goto_1
    return-void

    .line 746
    :cond_1
    const/16 v0, 0x80

    goto :goto_0

    .line 750
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080198

    if-ne v0, v1, :cond_0

    .line 751
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 752
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 754
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 761
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 762
    iput p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 763
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 771
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 772
    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 765
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showNetworkSetupFields()V

    goto :goto_0

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 767
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 769
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 777
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 741
    return-void
.end method
