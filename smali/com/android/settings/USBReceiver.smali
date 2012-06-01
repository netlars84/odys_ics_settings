.class public Lcom/android/settings/USBReceiver;
.super Landroid/content/BroadcastReceiver;
.source "USBReceiver.java"


# static fields
.field static final ACTION:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field static final ACTION1:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED_DEMO"

.field private static final TAG:Ljava/lang/String; = "USBReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private writeMode(Ljava/lang/String;)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, rdf:Ljava/io/RandomAccessFile;
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/bus/platform/drivers/usb20_otg/force_usb_mode"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    .end local v1           #rdf:Ljava/io/RandomAccessFile;
    .local v2, rdf:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 57
    if-eqz v2, :cond_2

    .line 59
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    const/4 v1, 0x0

    .line 65
    .end local v2           #rdf:Ljava/io/RandomAccessFile;
    .restart local v1       #rdf:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 61
    .end local v1           #rdf:Ljava/io/RandomAccessFile;
    .restart local v2       #rdf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 62
    .end local v2           #rdf:Ljava/io/RandomAccessFile;
    .restart local v1       #rdf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 55
    :catch_1
    move-exception v3

    .line 57
    :goto_1
    if-eqz v1, :cond_0

    .line 59
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 60
    const/4 v1, 0x0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 59
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 60
    const/4 v1, 0x0

    .line 62
    :cond_1
    :goto_3
    throw v3

    .line 61
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_3

    .line 57
    .end local v1           #rdf:Ljava/io/RandomAccessFile;
    .restart local v2       #rdf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #rdf:Ljava/io/RandomAccessFile;
    .restart local v1       #rdf:Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 55
    .end local v1           #rdf:Ljava/io/RandomAccessFile;
    .restart local v2       #rdf:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2           #rdf:Ljava/io/RandomAccessFile;
    .restart local v1       #rdf:Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v1           #rdf:Ljava/io/RandomAccessFile;
    .restart local v2       #rdf:Ljava/io/RandomAccessFile;
    :cond_2
    move-object v1, v2

    .end local v2           #rdf:Ljava/io/RandomAccessFile;
    .restart local v1       #rdf:Ljava/io/RandomAccessFile;
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    const-string v2, "USBReceiver"

    const-string v3, "===============USBReceiver0============="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    const-string v2, "USBReceiver"

    const-string v3, "===============USBReceiver1============="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-boolean v2, Landroid/os/YiFangProp;->USB_HOST:Z

    if-eqz v2, :cond_0

    .line 41
    const-string v2, "USBHost"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 42
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "usbmode"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, mode:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/USBReceiver;->writeMode(Ljava/lang/String;)V

    .line 46
    .end local v0           #mode:I
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
