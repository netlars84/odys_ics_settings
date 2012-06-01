.class public final Lcom/android/settings/bluetooth/DockEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DockEventReceiver.java"


# static fields
.field public static final ACTION_DOCK_SHOW_UI:Ljava/lang/String; = "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

.field private static final DEBUG:Z = false

.field private static final EXTRA_INVALID:I = -0x4d2

.field private static final TAG:Ljava/lang/String; = "DockEventReceiver"

.field private static sStartingService:Landroid/os/PowerManager$WakeLock;

.field private static final sStartingServiceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/DockEventReceiver;->sStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 122
    sget-object v2, Lcom/android/settings/bluetooth/DockEventReceiver;->sStartingServiceSync:Ljava/lang/Object;

    monitor-enter v2

    .line 123
    :try_start_0
    sget-object v1, Lcom/android/settings/bluetooth/DockEventReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 124
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 125
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "StartingDockService"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/settings/bluetooth/DockEventReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    .line 129
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/android/settings/bluetooth/DockEventReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 131
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 132
    const-string v1, "DockEventReceiver"

    const-string v3, "Can\'t start DockService"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_1
    monitor-exit v2

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 3
    .parameter "service"
    .parameter "startId"

    .prologue
    .line 142
    sget-object v1, Lcom/android/settings/bluetooth/DockEventReceiver;->sStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    sget-object v0, Lcom/android/settings/bluetooth/DockEventReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "DockEventReceiver"

    const-string v2, "finishStartingService: stopping service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v0, Lcom/android/settings/bluetooth/DockEventReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 150
    :cond_0
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 48
    if-nez p2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v6, "android.intent.extra.DOCK_STATE"

    const-string v7, "android.bluetooth.adapter.extra.STATE"

    const/16 v8, -0x4d2

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 53
    .local v5, state:I
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 60
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 62
    :cond_2
    if-eqz v1, :cond_0

    .line 67
    packed-switch v5, :pswitch_data_0

    .line 78
    const-string v6, "DockEventReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 74
    .local v2, i:Landroid/content/Intent;
    const-class v6, Lcom/android/settings/bluetooth/DockService;

    invoke-virtual {v2, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    invoke-static {p1, v2}, Lcom/android/settings/bluetooth/DockEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    .end local v2           #i:Landroid/content/Intent;
    :cond_3
    const-string v6, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 83
    :cond_4
    const-string v6, "android.bluetooth.profile.extra.STATE"

    const/4 v7, 0x2

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 85
    .local v3, newState:I
    const-string v6, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 94
    .local v4, oldState:I
    if-eqz v1, :cond_0

    .line 99
    if-nez v3, :cond_0

    const/4 v6, 0x3

    if-eq v4, v6, :cond_0

    .line 102
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 103
    .restart local v2       #i:Landroid/content/Intent;
    const-class v6, Lcom/android/settings/bluetooth/DockService;

    invoke-virtual {v2, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 104
    invoke-static {p1, v2}, Lcom/android/settings/bluetooth/DockEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 107
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #newState:I
    .end local v4           #oldState:I
    :cond_5
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 108
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x8000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 109
    .local v0, btState:I
    const/16 v6, 0xb

    if-eq v0, v6, :cond_0

    .line 110
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 111
    .restart local v2       #i:Landroid/content/Intent;
    const-class v6, Lcom/android/settings/bluetooth/DockService;

    invoke-virtual {v2, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    invoke-static {p1, v2}, Lcom/android/settings/bluetooth/DockEventReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
