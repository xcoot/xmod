.class public final Lcom/android/server/chimera/heimdall/HeimdallReportManager$BroadcastManager;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/heimdall/HeimdallReportManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/heimdall/HeimdallReportManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BroadcastManager;->this$0:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_5

    .line 13
    const-string p2, "android.intent.action.REBOOT"

    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_0

    .line 21
    goto/16 :goto_1

    .line 23
    :cond_0
    const-string/jumbo p2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_a

    .line 32
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BroadcastManager;->this$0:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 34
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mBigdataManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;

    .line 36
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;->mBigdataInfoList:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object p1

    .line 42
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_4

    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;

    .line 54
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 56
    if-nez v0, :cond_1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {p2}, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->-$$Nest$mtoJsonData(Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;)Ljava/lang/String;

    .line 62
    move-result-object v9

    .line 63
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 66
    move-result v0

    .line 67
    const/16 v1, 0x400

    .line 69
    if-lt v0, v1, :cond_2

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 74
    const-string v6, "0.0"

    .line 76
    const-string/jumbo v7, "sec"

    .line 79
    const/4 v2, 0x0

    .line 80
    const-string v3, "AP"

    .line 82
    const-string v4, "HDMM"

    .line 84
    const-string/jumbo v5, "sm"

    .line 87
    const-string v8, ""

    .line 89
    const-string v10, ""

    .line 91
    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    const-string v1, "Successful to send data to HQM. "

    .line 101
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-static {p2}, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->-$$Nest$mtoJsonData(Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;)Ljava/lang/String;

    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p2

    .line 115
    invoke-static {p2}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 118
    goto :goto_0

    .line 119
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "Failed to send data to HQM."

    .line 123
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-static {p2}, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->-$$Nest$mtoJsonData(Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;)Ljava/lang/String;

    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p2

    .line 137
    invoke-static {p2}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 140
    goto :goto_0

    .line 141
    :cond_4
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;->mBigdataInfoList:Ljava/util/ArrayList;

    .line 143
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 146
    goto/16 :goto_a

    .line 148
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BroadcastManager;->this$0:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 150
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mBigdataManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;

    .line 152
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;->mBigdataInfoList:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 157
    move-result p1

    .line 158
    if-nez p1, :cond_6

    .line 160
    goto/16 :goto_a

    .line 162
    :cond_6
    new-instance p1, Ljava/io/File;

    .line 164
    const-string p2, "/data/misc/pageboost/heimdall_last_bigdata_string"

    .line 166
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_8

    .line 175
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_7

    .line 181
    const-string p1, "Big data backup file is deleted during exporting."

    .line 183
    invoke-static {p1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 186
    goto :goto_2

    .line 187
    :catch_0
    move-exception p0

    .line 188
    goto :goto_9

    .line 189
    :cond_7
    const-string p1, "Big data backup file is NOT deleted during exporting."

    .line 191
    invoke-static {p1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_8
    :goto_2
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    .line 196
    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    :try_start_2
    new-instance p2, Ljava/io/OutputStreamWriter;

    .line 201
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 203
    invoke-direct {p2, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 206
    :try_start_3
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;->mBigdataInfoList:Ljava/util/ArrayList;

    .line 208
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 211
    move-result-object p0

    .line 212
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_9

    .line 218
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    move-result-object v0

    .line 222
    check-cast v0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    invoke-virtual {v0}, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->toString()Ljava/lang/String;

    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v0, "\n"

    .line 238
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {p2, v0}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 248
    goto :goto_3

    .line 249
    :catchall_0
    move-exception p0

    .line 250
    goto :goto_4

    .line 251
    :cond_9
    const-string p0, "Export BigdataInfoList"

    .line 253
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 259
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 262
    goto :goto_a

    .line 263
    :catch_1
    move-exception p0

    .line 264
    goto :goto_8

    .line 265
    :catchall_1
    move-exception p0

    .line 266
    goto :goto_6

    .line 267
    :goto_4
    :try_start_6
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 270
    goto :goto_5

    .line 271
    :catchall_2
    move-exception p2

    .line 272
    :try_start_7
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 275
    :goto_5
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 276
    :goto_6
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 279
    goto :goto_7

    .line 280
    :catchall_3
    move-exception p1

    .line 281
    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 284
    :goto_7
    throw p0
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 285
    :goto_8
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 288
    move-result-object p0

    .line 289
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 292
    goto :goto_a

    .line 293
    :goto_9
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 296
    move-result-object p0

    .line 297
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 300
    :cond_a
    :goto_a
    return-void
.end method
