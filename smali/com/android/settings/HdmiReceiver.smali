.class public Lcom/android/settings/HdmiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HdmiReceiver.java"


# static fields
.field static final ACTION:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final TAG:Ljava/lang/String; = "HdmiReceiver"


# instance fields
.field private HdmiState:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/hdmi/hdmi-0/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/HdmiReceiver;->HdmiState:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const-string v3, "HdmiSettings"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "scale_set"

    const/16 v4, 0x64

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 61
    .local v2, scale:I
    const-string v3, "resolution"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 62
    .local v1, resol:I
    iget-object v3, p0, Lcom/android/settings/HdmiReceiver;->HdmiState:Ljava/io/File;

    const-string v4, "hdmi_scale"

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/settings/HdmiReceiver;->restoreHdmiValue(Ljava/io/File;ILjava/lang/String;)V

    .line 63
    iget-object v3, p0, Lcom/android/settings/HdmiReceiver;->HdmiState:Ljava/io/File;

    const-string v4, "hdmi_resolution"

    invoke-virtual {p0, v3, v1, v4}, Lcom/android/settings/HdmiReceiver;->restoreHdmiValue(Ljava/io/File;ILjava/lang/String;)V

    .line 65
    .end local v0           #preferences:Landroid/content/SharedPreferences;
    .end local v1           #resol:I
    .end local v2           #scale:I
    :cond_0
    return-void
.end method

.method protected restoreHdmiValue(Ljava/io/File;ILjava/lang/String;)V
    .locals 22
    .parameter "file"
    .parameter "value"
    .parameter "style"

    .prologue
    .line 68
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 70
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 71
    .local v5, fread:Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 72
    .local v2, buffer:Ljava/io/BufferedReader;
    new-instance v17, Ljava/lang/StringBuffer;

    const-string v19, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 73
    .local v17, strbuf:Ljava/lang/StringBuffer;
    const/16 v18, 0x0

    .line 74
    .local v18, substr:Ljava/lang/String;
    const/4 v15, 0x0

    .line 75
    .local v15, str:Ljava/lang/String;
    const/4 v6, 0x0

    .line 77
    .local v6, length:I
    const-string v19, "hdmi_scale"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 78
    const-string v18, "scale_set"

    .line 79
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 80
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    .line 81
    const/16 v19, 0xd

    move/from16 v0, v19

    if-eq v6, v0, :cond_0

    const/16 v19, 0xc

    move/from16 v0, v19

    if-ne v6, v0, :cond_2

    .line 82
    :cond_0
    const/16 v19, 0x0

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 83
    .local v13, res:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 84
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 85
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

    .line 86
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

    .line 136
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

    .line 137
    .local v3, e:Ljava/io/IOException;
    const-string v19, "HdmiReceiver"

    const-string v20, "IO Exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 89
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

    .line 92
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

    .line 97
    :cond_3
    const-string v19, "hdmi_resolution"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 98
    const-string v18, "resolution"

    .line 99
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 100
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 101
    const/16 v19, 0x0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 102
    .restart local v13       #res:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 103
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 104
    .restart local v16       #strValue:Ljava/lang/String;
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

    .line 105
    .restart local v14       #s:Ljava/lang/String;
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

    goto :goto_2

    .line 107
    .end local v14           #s:Ljava/lang/String;
    .end local v16           #strValue:Ljava/lang/String;
    :cond_4
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

    goto/16 :goto_2

    .line 112
    .end local v13           #res:Ljava/lang/String;
    :cond_5
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

    goto/16 :goto_2

    .line 117
    :cond_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 118
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 120
    new-instance v4, Ljava/io/File;

    const-string v19, "/sys/class/hdmi/hdmi-0/state"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    .local v4, f:Ljava/io/File;
    const/4 v7, 0x0

    .line 122
    .local v7, output:Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 123
    .local v9, outputWrite:Ljava/io/OutputStreamWriter;
    const/4 v11, 0x0

    .line 126
    .local v11, print:Ljava/io/PrintWriter;
    :try_start_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    .end local v7           #output:Ljava/io/OutputStream;
    .local v8, output:Ljava/io/OutputStream;
    :try_start_3
    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-direct {v10, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 128
    .end local v9           #outputWrite:Ljava/io/OutputStreamWriter;
    .local v10, outputWrite:Ljava/io/OutputStreamWriter;
    :try_start_4
    new-instance v12, Ljava/io/PrintWriter;

    invoke-direct {v12, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 130
    .end local v11           #print:Ljava/io/PrintWriter;
    .local v12, print:Ljava/io/PrintWriter;
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    .line 132
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

    .line 135
    .end local v8           #output:Ljava/io/OutputStream;
    .restart local v7       #output:Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 133
    :catch_1
    move-exception v3

    .line 134
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 141
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
    :cond_7
    const-string v19, "HdmiReceiver"

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

    .line 133
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
    goto :goto_3

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
    goto :goto_3

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
    goto :goto_3
.end method
