.class public final Lcom/android/settings/bluetooth/BluetoothPairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingRequest.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x1080080


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, action:Ljava/lang/String;
    const-string v13, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 47
    const-string v13, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 49
    .local v3, device:Landroid/bluetooth/BluetoothDevice;
    const-string v13, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v14, -0x8000

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 51
    .local v12, type:I
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v7, pairingIntent:Landroid/content/Intent;
    const-class v13, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 53
    const-string v13, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v7, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    const-string v13, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v7, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    const/4 v13, 0x2

    if-eq v12, v13, :cond_0

    const/4 v13, 0x4

    if-eq v12, v13, :cond_0

    const/4 v13, 0x5

    if-ne v12, v13, :cond_1

    .line 58
    :cond_0
    const-string v13, "android.bluetooth.device.extra.PAIRING_KEY"

    const/high16 v14, -0x8000

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 60
    .local v8, pairingKey:I
    const-string v13, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v7, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    .end local v8           #pairingKey:I
    :cond_1
    const-string v13, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const/high16 v13, 0x1000

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    const-string v13, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 67
    .local v10, powerManager:Landroid/os/PowerManager;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, deviceAddress:Ljava/lang/String;
    :goto_0
    invoke-virtual {v10}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 72
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 107
    .end local v3           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #deviceAddress:Ljava/lang/String;
    .end local v7           #pairingIntent:Landroid/content/Intent;
    .end local v10           #powerManager:Landroid/os/PowerManager;
    .end local v12           #type:I
    :cond_2
    :goto_1
    return-void

    .line 67
    .restart local v3       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v7       #pairingIntent:Landroid/content/Intent;
    .restart local v10       #powerManager:Landroid/os/PowerManager;
    .restart local v12       #type:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 75
    .restart local v4       #deviceAddress:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 76
    .local v11, res:Landroid/content/res/Resources;
    new-instance v13, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x1080080

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v13

    const v14, 0x7f0b0078

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 80
    .local v2, builder:Landroid/app/Notification$Builder;
    const/4 v13, 0x0

    const/high16 v14, 0x4000

    move-object/from16 v0, p1

    invoke-static {v0, v13, v7, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 83
    .local v9, pending:Landroid/app/PendingIntent;
    const-string v13, "android.bluetooth.device.extra.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, name:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 85
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v6

    .line 89
    :cond_5
    :goto_2
    const v13, 0x7f0b0079

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    const v14, 0x7f0b007a

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    invoke-virtual {v11, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 95
    const-string v13, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 97
    .local v5, manager:Landroid/app/NotificationManager;
    const v13, 0x1080080

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 85
    .end local v5           #manager:Landroid/app/NotificationManager;
    :cond_6
    const v13, 0x104000e

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 100
    .end local v2           #builder:Landroid/app/Notification$Builder;
    .end local v3           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #deviceAddress:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #pairingIntent:Landroid/content/Intent;
    .end local v9           #pending:Landroid/app/PendingIntent;
    .end local v10           #powerManager:Landroid/os/PowerManager;
    .end local v11           #res:Landroid/content/res/Resources;
    .end local v12           #type:I
    :cond_7
    const-string v13, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 103
    const-string v13, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 105
    .restart local v5       #manager:Landroid/app/NotificationManager;
    const v13, 0x1080080

    invoke-virtual {v5, v13}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1
.end method
