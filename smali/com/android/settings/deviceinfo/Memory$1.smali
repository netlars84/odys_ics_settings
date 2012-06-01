.class Lcom/android/settings/deviceinfo/Memory$1;
.super Landroid/os/Handler;
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
    .line 78
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 81
    sget-object v2, Landroid/os/YiFangProp;->DEVICENAME:Ljava/lang/String;

    const-string v3, "Next8P12"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/YiFangProp;->DEVICENAME:Ljava/lang/String;

    const-string v3, "Next7S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    const-string v3, "total_space"

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, "4GB"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mTotal:F
    invoke-static {v3}, Lcom/android/settings/deviceinfo/Memory;->access$000(Lcom/android/settings/deviceinfo/Memory;)F

    move-result v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/Memory;->access$100(Lcom/android/settings/deviceinfo/Memory;)[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-wide v4, v4, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v4, v4

    add-float/2addr v3, v4

    #setter for: Lcom/android/settings/deviceinfo/Memory;->mTotal:F
    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/Memory;->access$002(Lcom/android/settings/deviceinfo/Memory;F)F

    .line 85
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mTotal:F
    invoke-static {v3}, Lcom/android/settings/deviceinfo/Memory;->access$000(Lcom/android/settings/deviceinfo/Memory;)F

    move-result v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/Memory;->access$100(Lcom/android/settings/deviceinfo/Memory;)[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget-wide v4, v4, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v4, v4

    add-float/2addr v3, v4

    #setter for: Lcom/android/settings/deviceinfo/Memory;->mTotal:F
    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/Memory;->access$002(Lcom/android/settings/deviceinfo/Memory;F)F

    .line 87
    const-wide/high16 v0, 0x3ff0

    .line 88
    .local v0, flag:D
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mTotal:F
    invoke-static {v2}, Lcom/android/settings/deviceinfo/Memory;->access$000(Lcom/android/settings/deviceinfo/Memory;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 89
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mTotal:F
    invoke-static {v2}, Lcom/android/settings/deviceinfo/Memory;->access$000(Lcom/android/settings/deviceinfo/Memory;)F

    move-result v2

    const/high16 v3, 0x4e80

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3ff5eb851eb851ecL

    add-double v0, v2, v4

    .line 90
    :cond_3
    const-string v2, "111111111111111"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-wide/high16 v2, 0x4008

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    .line 92
    const-wide/high16 v2, 0x4014

    cmpg-double v2, v0, v2

    if-gez v2, :cond_4

    .line 93
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    const-string v3, "total_space"

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, "4GB"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :cond_4
    const-wide/high16 v2, 0x4024

    cmpg-double v2, v0, v2

    if-gez v2, :cond_5

    .line 95
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    const-string v3, "total_space"

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, "8GB"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 96
    :cond_5
    const-wide/high16 v2, 0x4034

    cmpg-double v2, v0, v2

    if-gez v2, :cond_6

    .line 97
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    const-string v3, "total_space"

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, "16GB"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 99
    :cond_6
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    const-string v3, "total_space"

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, "32GB"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
