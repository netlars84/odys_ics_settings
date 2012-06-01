.class Lcom/android/settings/deviceinfo/Memory$3;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$3;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 290
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory$3;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/Memory;->access$100(Lcom/android/settings/deviceinfo/Memory;)[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 291
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-boolean v1, Landroid/os/YiFangProp;->USBHOST:Z

    if-nez v1, :cond_1

    .line 295
    :cond_0
    return-void

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory$3;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/Memory;->access$100(Lcom/android/settings/deviceinfo/Memory;)[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onMediaScannerFinished()V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
