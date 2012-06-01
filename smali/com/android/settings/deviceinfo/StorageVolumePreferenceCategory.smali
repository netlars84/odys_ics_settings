.class public Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;,
        Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;
    }
.end annotation


# static fields
.field static final APPLICATIONS:I = 0x1

.field static final AVAILABLE:I = 0x6

.field static final DCIM:I = 0x2

.field static final DOWNLOADS:I = 0x4

.field static final MISC:I = 0x5

.field private static final MSG_UI_UPDATE_APPROXIMATE:I = 0x1

.field private static final MSG_UI_UPDATE_EXACT:I = 0x2

.field static final MUSIC:I = 0x3

.field static final TOTAL_SIZE:I

.field static final sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

.field static final sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

.field public static final sPathsExcludedForMisc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowFormat:Z

.field public mColors:[I

.field public mFormatPreference:Landroid/preference/Preference;

.field private mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

.field public mMountTogglePreference:Landroid/preference/Preference;

.field public mPreferences:[Landroid/preference/Preference;

.field private mResources:Landroid/content/res/Resources;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field public mTotalSize:J

.field private mUpdateHandler:Landroid/os/Handler;

.field public mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 80
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0b02bf

    invoke-direct {v1, v2, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0b02c1

    const v3, 0x7f0a0004

    invoke-direct {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0b02c4

    const v3, 0x7f0a0006

    invoke-direct {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0b02c5

    const v3, 0x7f0a0007

    invoke-direct {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0b02c3

    const v3, 0x7f0a0005

    invoke-direct {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v3, 0x7f0b02c6

    const v4, 0x7f0a0008

    invoke-direct {v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v3, 0x7f0b02be

    const v4, 0x7f0a0003

    invoke-direct {v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    .line 111
    new-array v0, v6, [Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    new-array v2, v8, [Ljava/lang/String;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v3, v2, v7

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-direct {v1, v6, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;-><init>(I[Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v3, v2, v7

    sget-object v3, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v3, v2, v6

    sget-object v3, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v3, v2, v8

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-direct {v1, v8, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;-><init>(I[Ljava/lang/String;)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    .line 121
    sget-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V
    .locals 1
    .parameter "context"
    .parameter "resources"
    .parameter "storageVolume"
    .parameter "storageManager"
    .parameter "isPrimary"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 134
    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 164
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 165
    iput-object p3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 166
    iput-object p4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 167
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/storage/StorageVolume;->getDescription()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    invoke-static {p1, p3, p5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 170
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mAllowFormat:Z

    .line 179
    return-void

    .line 167
    :cond_0
    const v0, 0x7f0b03af

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    .line 394
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 395
    .local v0, shape:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 396
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 397
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 373
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measure()V

    .line 374
    return-void
.end method

.method private resetPreferences()V
    .locals 4

    .prologue
    .line 222
    sget-object v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    array-length v1, v2

    .line 224
    .local v1, numberOfCategories:I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 226
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 234
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 235
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 238
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_3

    .line 239
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 242
    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 243
    return-void
.end method

.method private updatePreference(JJI)V
    .locals 3
    .parameter "size"
    .parameter "totalSize"
    .parameter "category"

    .prologue
    .line 363
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, p5

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v1, p1

    long-to-float v2, p3

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    aget v2, v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, p5

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 10

    .prologue
    const v9, 0x7f0b05ea

    const v5, 0x7f0b02ca

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x6

    .line 246
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->resetPreferences()V

    .line 248
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, state:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, currentPath:Ljava/lang/String;
    :goto_1
    const-string v1, ""

    .line 253
    .local v1, readOnly:Ljava/lang/String;
    const-string v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    const-string v2, "mounted"

    .line 255
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b02ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 261
    :cond_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, "unmounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 265
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    :cond_2
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 269
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v3, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 272
    const-string v3, "/mnt/usb_storage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 273
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b05eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 313
    :cond_3
    :goto_2
    return-void

    .line 248
    .end local v0           #currentPath:Ljava/lang/String;
    .end local v1           #readOnly:Ljava/lang/String;
    .end local v2           #state:Ljava/lang/String;
    :cond_4
    const-string v2, "mounted"

    goto/16 :goto_0

    .line 251
    .restart local v2       #state:Ljava/lang/String;
    :cond_5
    const-string v0, "null"

    goto/16 :goto_1

    .line 276
    .restart local v0       #currentPath:Ljava/lang/String;
    .restart local v1       #readOnly:Ljava/lang/String;
    :cond_6
    const-string v3, "/mnt/sdcard"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 277
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b05eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 281
    :cond_7
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b02c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b02c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 285
    :cond_8
    const-string v3, "unmounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "nofs"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "unmountable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 287
    :cond_9
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 288
    const-string v3, "/mnt/usb_storage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 289
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b05ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    :goto_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 307
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v3, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 308
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v3, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 309
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    .line 310
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 292
    :cond_a
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b02cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 296
    :cond_b
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 297
    const-string v3, "/mnt/usb_storage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 298
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b05ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b05ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 301
    :cond_c
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b02c9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 8

    .prologue
    .line 182
    new-instance v5, Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    .line 184
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const/high16 v6, 0x7f0c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 185
    .local v4, width:I
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 187
    .local v0, height:I
    sget-object v5, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    array-length v2, v5

    .line 188
    .local v2, numberOfCategories:I
    new-array v5, v2, [Landroid/preference/Preference;

    iput-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    .line 189
    new-array v5, v2, [I

    iput-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    .line 190
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 191
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 192
    .local v3, preference:Landroid/preference/Preference;
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aput-object v3, v5, v1

    .line 193
    sget-object v5, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;->mTitle:I

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 194
    const v5, 0x7f0b02c0

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 195
    if-eqz v1, :cond_0

    .line 197
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    sget-object v7, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    aget-object v7, v7, v1

    iget v7, v7, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;->mColor:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v5, v1

    .line 198
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    aget v5, v5, v1

    invoke-static {v4, v0, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 190
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v3           #preference:Landroid/preference/Preference;
    :cond_1
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 203
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v6, 0x7f0b02c7

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 204
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v6, 0x7f0b02c8

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 205
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    iget-boolean v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mAllowFormat:Z

    if-eqz v5, :cond_2

    .line 207
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 208
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v6, 0x7f0b02cc

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 209
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v6, 0x7f0b02cd

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 211
    :cond_2
    return-void
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 424
    const/4 v1, 0x0

    .line 429
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 430
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/MediaFormat;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 432
    const-string v2, "storage_volume"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 456
    :cond_0
    :goto_0
    return-object v1

    .line 433
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v4

    if-ne p1, v2, :cond_2

    .line 434
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 437
    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    if-ne p1, v2, :cond_3

    .line 438
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 440
    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    if-ne p1, v2, :cond_4

    .line 441
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "audio/mp3"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 443
    :cond_4
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-ne p1, v2, :cond_5

    .line 444
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 447
    const-string v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 448
    :cond_5
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    if-ne p1, v2, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 450
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getMiscSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 451
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "storage_volume"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 387
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 391
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 378
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 379
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 383
    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 5
    .parameter "totalSize"
    .parameter "availSize"

    .prologue
    .line 316
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-direct {p0, p3, p4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 319
    sub-long v0, p1, p3

    .line 321
    .local v0, usedSize:J
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 322
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v3, v0

    long-to-float v4, p1

    div-float/2addr v3, v4

    const v4, -0x777778

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 323
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    .line 325
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 326
    return-void
.end method

.method public updateApproximate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 408
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 409
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 410
    return-void
.end method

.method public updateExact(JJJJJ[J)V
    .locals 20
    .parameter "totalSize"
    .parameter "availSize"
    .parameter "appsSize"
    .parameter "downloadsSize"
    .parameter "miscSize"
    .parameter "mediaSizes"

    .prologue
    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    .line 334
    const-string v3, "11111111111111111111111"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/StorageMeasurement;->isExternalSDCard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    sub-long v18, p1, p3

    .line 338
    .local v18, usedSize:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-wide/from16 v0, v18

    long-to-float v6, v0

    move-wide/from16 v0, p1

    long-to-float v7, v0

    div-float/2addr v6, v7

    const v7, -0x777778

    invoke-virtual {v3, v6, v7}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 341
    .end local v18           #usedSize:J
    :cond_0
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v4, p5

    move-wide/from16 v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 343
    const-wide/16 v16, 0x0

    .line 344
    .local v16, totalMediaSize:J
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    sget-object v3, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    array-length v3, v3

    if-ge v15, v3, :cond_1

    .line 345
    sget-object v3, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    aget-object v3, v3, v15

    iget v8, v3, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->mCategory:I

    .line 346
    .local v8, category:I
    aget-wide v4, p11, v15

    .local v4, size:J
    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    .line 347
    invoke-direct/range {v3 .. v8}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 348
    add-long v16, v16, v4

    .line 344
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 351
    .end local v4           #size:J
    .end local v8           #category:I
    :cond_1
    const/4 v14, 0x4

    move-object/from16 v9, p0

    move-wide/from16 v10, p7

    move-wide/from16 v12, p1

    invoke-direct/range {v9 .. v14}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 355
    const/4 v14, 0x5

    move-object/from16 v9, p0

    move-wide/from16 v10, p9

    move-wide/from16 v12, p1

    invoke-direct/range {v9 .. v14}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 357
    const/4 v14, 0x6

    move-object/from16 v9, p0

    move-wide/from16 v10, p3

    move-wide/from16 v12, p1

    invoke-direct/range {v9 .. v14}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    .line 360
    return-void
.end method

.method public updateExact(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 414
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 415
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 416
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 417
    return-void
.end method
