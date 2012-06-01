.class public Lcom/android/settings/USBHost;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "USBHost.java"


# static fields
.field private static final DEVICE:Ljava/lang/String; = "2"

.field private static final HOST:Ljava/lang/String; = "1"

.field private static final KEY_DEVICE:Ljava/lang/String; = "usbhost_device"

.field private static final KEY_HOST:Ljava/lang/String; = "usbhost_host"

.field private static final TAG:Ljava/lang/String; = "USBHost"

.field private static final USBDEVICE:I = 0x2

.field private static final USBHOST:I = 0x1


# instance fields
.field private mdevice:Landroid/preference/CheckBoxPreference;

.field private mhost:Landroid/preference/CheckBoxPreference;

.field sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/USBHost;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/USBHost;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 58
    .local v1, root:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 61
    :cond_0
    const v2, 0x7f050030

    invoke-virtual {p0, v2}, Lcom/android/settings/USBHost;->addPreferencesFromResource(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/USBHost;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 64
    const-string v2, "usbhost_host"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/USBHost;->mhost:Landroid/preference/CheckBoxPreference;

    .line 65
    const-string v2, "usbhost_device"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/USBHost;->mdevice:Landroid/preference/CheckBoxPreference;

    .line 66
    iget-object v2, p0, Lcom/android/settings/USBHost;->mhost:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 67
    iget-object v2, p0, Lcom/android/settings/USBHost;->mdevice:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/USBHost;->readMode()I

    move-result v0

    .line 69
    .local v0, j:I
    if-ne v0, v4, :cond_2

    .line 70
    invoke-direct {p0, v4}, Lcom/android/settings/USBHost;->updateToggles(I)V

    .line 75
    :cond_1
    :goto_0
    return-object v1

    .line 72
    :cond_2
    if-ne v0, v5, :cond_1

    .line 73
    invoke-direct {p0, v5}, Lcom/android/settings/USBHost;->updateToggles(I)V

    goto :goto_0
.end method

.method private readMode()I
    .locals 8

    .prologue
    .line 172
    new-instance v2, Ljava/io/File;

    const-string v6, "/sys/bus/platform/drivers/usb20_otg/force_usb_mode"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v2, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 174
    .local v5, str:Ljava/lang/String;
    const/4 v4, 0x1

    .line 175
    .local v4, i:I
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 177
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 178
    .local v3, fread:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 180
    .local v0, buffer:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 181
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 183
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .end local v3           #fread:Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 184
    .local v1, e:Ljava/io/IOException;
    const-string v6, "USBHost"

    const-string v7, "IO Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    return v4
.end method

.method private updateToggles(I)V
    .locals 3
    .parameter "function"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    if-ne v1, p1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/settings/USBHost;->mhost:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/USBHost;->mdevice:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/USBHost;->mhost:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/USBHost;->mdevice:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private writeMode(Ljava/lang/String;)V
    .locals 8
    .parameter "mode"

    .prologue
    .line 149
    const/4 v3, 0x0

    .line 150
    .local v3, rdf:Ljava/io/RandomAccessFile;
    new-instance v2, Ljava/io/File;

    const-string v5, "/sys/bus/platform/drivers/usb20_otg/force_usb_mode"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, file:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    .end local v3           #rdf:Ljava/io/RandomAccessFile;
    .local v4, rdf:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/USBHost;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "USBHost"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/USBHost;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 155
    iget-object v5, p0, Lcom/android/settings/USBHost;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 156
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "usbmode"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 161
    if-eqz v4, :cond_2

    .line 163
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    const/4 v3, 0x0

    .line 169
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #rdf:Ljava/io/RandomAccessFile;
    .restart local v3       #rdf:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 165
    .end local v3           #rdf:Ljava/io/RandomAccessFile;
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v4       #rdf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 166
    .end local v4           #rdf:Ljava/io/RandomAccessFile;
    .restart local v3       #rdf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 158
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :catch_1
    move-exception v1

    .line 159
    .local v1, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "USBHost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==============="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    if-eqz v3, :cond_0

    .line 163
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 164
    const/4 v3, 0x0

    goto :goto_0

    .line 161
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_1

    .line 163
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 164
    const/4 v3, 0x0

    .line 166
    :cond_1
    :goto_3
    throw v5

    .line 165
    .restart local v1       #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    goto :goto_3

    .line 161
    .end local v3           #rdf:Ljava/io/RandomAccessFile;
    .restart local v4       #rdf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #rdf:Ljava/io/RandomAccessFile;
    .restart local v3       #rdf:Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 158
    .end local v3           #rdf:Ljava/io/RandomAccessFile;
    .restart local v4       #rdf:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #rdf:Ljava/io/RandomAccessFile;
    .restart local v3       #rdf:Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v3           #rdf:Ljava/io/RandomAccessFile;
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v4       #rdf:Ljava/io/RandomAccessFile;
    :cond_2
    move-object v3, v4

    .end local v4           #rdf:Ljava/io/RandomAccessFile;
    .restart local v3       #rdf:Ljava/io/RandomAccessFile;
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/USBHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "USBHost"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/USBHost;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 84
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 89
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 123
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v2

    .line 128
    :cond_1
    instance-of v1, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    move-object v0, p2

    .line 129
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 130
    .local v0, checkBox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 131
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 135
    .end local v0           #checkBox:Landroid/preference/CheckBoxPreference;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/USBHost;->mhost:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 136
    invoke-direct {p0, v2}, Lcom/android/settings/USBHost;->updateToggles(I)V

    .line 137
    const-string v1, "1"

    invoke-direct {p0, v1}, Lcom/android/settings/USBHost;->writeMode(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/android/settings/USBHost;->mdevice:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 140
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/USBHost;->updateToggles(I)V

    .line 141
    const-string v1, "2"

    invoke-direct {p0, v1}, Lcom/android/settings/USBHost;->writeMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/USBHost;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 100
    return-void
.end method
