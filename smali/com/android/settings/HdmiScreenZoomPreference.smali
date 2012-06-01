.class public Lcom/android/settings/HdmiScreenZoomPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "HdmiScreenZoomPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final MAXIMUN_SCREEN_SCALE:I = 0x14

.field private static final MINIMUN_SCREEN_SCALE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HdmiScreenZoomPreference"


# instance fields
.field private HdmiState:Ljava/io/File;

.field private context:Landroid/content/Context;

.field private mFlag:Z

.field private mOldScale:I

.field private mRestoreValue:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/hdmi/hdmi-0/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/HdmiScreenZoomPreference;->HdmiState:Ljava/io/File;

    .line 67
    iput v2, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mOldScale:I

    .line 68
    iput v2, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mValue:I

    .line 69
    iput v2, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mRestoreValue:I

    .line 70
    iput-boolean v2, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mFlag:Z

    .line 76
    iput-object p1, p0, Lcom/android/settings/HdmiScreenZoomPreference;->context:Landroid/content/Context;

    .line 77
    const v0, 0x7f04004b

    invoke-virtual {p0, v0}, Lcom/android/settings/HdmiScreenZoomPreference;->setDialogLayoutResource(I)V

    .line 78
    const v0, 0x7f020063

    invoke-virtual {p0, v0}, Lcom/android/settings/HdmiScreenZoomPreference;->setDialogIcon(I)V

    .line 79
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 138
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 140
    iput-boolean v4, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mFlag:Z

    .line 141
    invoke-static {p1}, Lcom/android/settings/HdmiScreenZoomPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 143
    iget-object v1, p0, Lcom/android/settings/HdmiScreenZoomPreference;->context:Landroid/content/Context;

    const-string v2, "HdmiSettings"

    iget-object v3, p0, Lcom/android/settings/HdmiScreenZoomPreference;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 144
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "scale_set"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mOldScale:I

    .line 145
    iget v1, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mOldScale:I

    add-int/lit8 v1, v1, -0x50

    iput v1, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mOldScale:I

    .line 146
    const-string v1, "HdmiScreenZoomPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===================mOldScale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mOldScale:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mOldScale:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 149
    const-string v1, "HdmiScreenZoomPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===================onBindDialogView finish"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mOldScale:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 173
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 7
    .parameter "positiveResult"

    .prologue
    const/16 v6, 0x64

    .line 178
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 180
    iget-object v3, p0, Lcom/android/settings/HdmiScreenZoomPreference;->context:Landroid/content/Context;

    const-string v4, "HdmiSettings"

    iget-object v5, p0, Lcom/android/settings/HdmiScreenZoomPreference;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 181
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 183
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 184
    iget-object v3, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v2, v3, 0x50

    .line 185
    .local v2, value:I
    iget-object v3, p0, Lcom/android/settings/HdmiScreenZoomPreference;->HdmiState:Ljava/io/File;

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/HdmiScreenZoomPreference;->setHdmiScreenScale(Ljava/io/File;I)V

    .line 186
    const-string v3, "scale_set"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 202
    .end local v2           #value:I
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    return-void

    .line 188
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mFlag:Z

    if-eqz v3, :cond_2

    .line 189
    iget v3, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mRestoreValue:I

    add-int/lit8 v3, v3, 0x50

    iput v3, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mRestoreValue:I

    .line 190
    iget v3, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mRestoreValue:I

    if-le v3, v6, :cond_1

    .line 191
    iput v6, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mRestoreValue:I

    .line 193
    :cond_1
    iget-object v3, p0, Lcom/android/settings/HdmiScreenZoomPreference;->HdmiState:Ljava/io/File;

    iget v4, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mRestoreValue:I

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/HdmiScreenZoomPreference;->setHdmiScreenScale(Ljava/io/File;I)V

    .line 194
    const-string v3, "scale_set"

    iget v4, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mRestoreValue:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 197
    :cond_2
    iget-object v3, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v2, v3, 0x50

    .line 198
    .restart local v2       #value:I
    iget-object v3, p0, Lcom/android/settings/HdmiScreenZoomPreference;->HdmiState:Ljava/io/File;

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/HdmiScreenZoomPreference;->setHdmiScreenScale(Ljava/io/File;I)V

    .line 199
    const-string v3, "scale_set"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/16 v1, 0x64

    .line 154
    add-int/lit8 v0, p2, 0x50

    iput v0, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mValue:I

    .line 155
    iget v0, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mValue:I

    if-le v0, v1, :cond_0

    .line 156
    iput v1, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mValue:I

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/settings/HdmiScreenZoomPreference;->HdmiState:Ljava/io/File;

    iget v1, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mValue:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/HdmiScreenZoomPreference;->setHdmiScreenScale(Ljava/io/File;I)V

    .line 159
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mFlag:Z

    .line 164
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mRestoreValue:I

    .line 165
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/HdmiScreenZoomPreference;->HdmiState:Ljava/io/File;

    iget v1, p0, Lcom/android/settings/HdmiScreenZoomPreference;->mValue:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/HdmiScreenZoomPreference;->setHdmiScreenScale(Ljava/io/File;I)V

    .line 169
    return-void
.end method

.method protected setHdmiScreenScale(Ljava/io/File;I)V
    .locals 22
    .parameter "file"
    .parameter "value"

    .prologue
    .line 82
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 84
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 85
    .local v5, fread:Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 86
    .local v2, buffer:Ljava/io/BufferedReader;
    new-instance v17, Ljava/lang/StringBuffer;

    const-string v19, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 87
    .local v17, strbuf:Ljava/lang/StringBuffer;
    const-string v18, "scale_set"

    .line 88
    .local v18, substr:Ljava/lang/String;
    const/4 v15, 0x0

    .line 89
    .local v15, str:Ljava/lang/String;
    const/4 v6, 0x0

    .line 91
    .local v6, length:I
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 92
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    .line 93
    const/16 v19, 0xd

    move/from16 v0, v19

    if-eq v6, v0, :cond_0

    const/16 v19, 0xc

    move/from16 v0, v19

    if-ne v6, v0, :cond_2

    .line 94
    :cond_0
    const/16 v19, 0x0

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 95
    .local v13, res:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 96
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 97
    .local v16, strValue:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 98
    .local v14, s:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v2           #buffer:Ljava/io/BufferedReader;
    .end local v5           #fread:Ljava/io/FileReader;
    .end local v6           #length:I
    .end local v13           #res:Ljava/lang/String;
    .end local v14           #s:Ljava/lang/String;
    .end local v15           #str:Ljava/lang/String;
    .end local v16           #strValue:Ljava/lang/String;
    .end local v17           #strbuf:Ljava/lang/StringBuffer;
    .end local v18           #substr:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 128
    .local v3, e:Ljava/io/IOException;
    const-string v19, "HdmiScreenZoomPreference"

    const-string v20, "IO Exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 100
    .restart local v2       #buffer:Ljava/io/BufferedReader;
    .restart local v5       #fread:Ljava/io/FileReader;
    .restart local v6       #length:I
    .restart local v13       #res:Ljava/lang/String;
    .restart local v15       #str:Ljava/lang/String;
    .restart local v17       #strbuf:Ljava/lang/StringBuffer;
    .restart local v18       #substr:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 104
    .end local v13           #res:Ljava/lang/String;
    :cond_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 108
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 109
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 111
    new-instance v4, Ljava/io/File;

    const-string v19, "/sys/class/hdmi/hdmi-0/state"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .local v4, f:Ljava/io/File;
    const/4 v7, 0x0

    .line 113
    .local v7, output:Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 114
    .local v9, outputWrite:Ljava/io/OutputStreamWriter;
    const/4 v11, 0x0

    .line 117
    .local v11, print:Ljava/io/PrintWriter;
    :try_start_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    .end local v7           #output:Ljava/io/OutputStream;
    .local v8, output:Ljava/io/OutputStream;
    :try_start_3
    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-direct {v10, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 119
    .end local v9           #outputWrite:Ljava/io/OutputStreamWriter;
    .local v10, outputWrite:Ljava/io/OutputStreamWriter;
    :try_start_4
    new-instance v12, Ljava/io/PrintWriter;

    invoke-direct {v12, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 121
    .end local v11           #print:Ljava/io/PrintWriter;
    .local v12, print:Ljava/io/PrintWriter;
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    .line 123
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v11, v12

    .end local v12           #print:Ljava/io/PrintWriter;
    .restart local v11       #print:Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10           #outputWrite:Ljava/io/OutputStreamWriter;
    .restart local v9       #outputWrite:Ljava/io/OutputStreamWriter;
    move-object v7, v8

    .line 126
    .end local v8           #output:Ljava/io/OutputStream;
    .restart local v7       #output:Ljava/io/OutputStream;
    goto :goto_1

    .line 124
    :catch_1
    move-exception v3

    .line 125
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 131
    .end local v2           #buffer:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .end local v4           #f:Ljava/io/File;
    .end local v5           #fread:Ljava/io/FileReader;
    .end local v6           #length:I
    .end local v7           #output:Ljava/io/OutputStream;
    .end local v9           #outputWrite:Ljava/io/OutputStreamWriter;
    .end local v11           #print:Ljava/io/PrintWriter;
    .end local v15           #str:Ljava/lang/String;
    .end local v17           #strbuf:Ljava/lang/StringBuffer;
    .end local v18           #substr:Ljava/lang/String;
    :cond_4
    const-string v19, "HdmiScreenZoomPreference"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "File:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "not exists"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 124
    .restart local v2       #buffer:Ljava/io/BufferedReader;
    .restart local v4       #f:Ljava/io/File;
    .restart local v5       #fread:Ljava/io/FileReader;
    .restart local v6       #length:I
    .restart local v8       #output:Ljava/io/OutputStream;
    .restart local v9       #outputWrite:Ljava/io/OutputStreamWriter;
    .restart local v11       #print:Ljava/io/PrintWriter;
    .restart local v15       #str:Ljava/lang/String;
    .restart local v17       #strbuf:Ljava/lang/StringBuffer;
    .restart local v18       #substr:Ljava/lang/String;
    :catch_2
    move-exception v3

    move-object v7, v8

    .end local v8           #output:Ljava/io/OutputStream;
    .restart local v7       #output:Ljava/io/OutputStream;
    goto :goto_2

    .end local v7           #output:Ljava/io/OutputStream;
    .end local v9           #outputWrite:Ljava/io/OutputStreamWriter;
    .restart local v8       #output:Ljava/io/OutputStream;
    .restart local v10       #outputWrite:Ljava/io/OutputStreamWriter;
    :catch_3
    move-exception v3

    move-object v9, v10

    .end local v10           #outputWrite:Ljava/io/OutputStreamWriter;
    .restart local v9       #outputWrite:Ljava/io/OutputStreamWriter;
    move-object v7, v8

    .end local v8           #output:Ljava/io/OutputStream;
    .restart local v7       #output:Ljava/io/OutputStream;
    goto :goto_2

    .end local v7           #output:Ljava/io/OutputStream;
    .end local v9           #outputWrite:Ljava/io/OutputStreamWriter;
    .end local v11           #print:Ljava/io/PrintWriter;
    .restart local v8       #output:Ljava/io/OutputStream;
    .restart local v10       #outputWrite:Ljava/io/OutputStreamWriter;
    .restart local v12       #print:Ljava/io/PrintWriter;
    :catch_4
    move-exception v3

    move-object v11, v12

    .end local v12           #print:Ljava/io/PrintWriter;
    .restart local v11       #print:Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10           #outputWrite:Ljava/io/OutputStreamWriter;
    .restart local v9       #outputWrite:Ljava/io/OutputStreamWriter;
    move-object v7, v8

    .end local v8           #output:Ljava/io/OutputStream;
    .restart local v7       #output:Ljava/io/OutputStream;
    goto :goto_2
.end method
