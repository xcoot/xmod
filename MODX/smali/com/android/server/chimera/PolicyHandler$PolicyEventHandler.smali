.class public final Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/PolicyHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/PolicyHandler;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;->this$0:Lcom/android/server/chimera/PolicyHandler;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p1, Landroid/os/Message;->what:I

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v2, v3, :cond_0

    .line 8
    goto/16 :goto_8

    .line 10
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 14
    if-eqz p1, :cond_8

    .line 16
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;->this$0:Lcom/android/server/chimera/PolicyHandler;

    .line 18
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance v4, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    const/4 v5, 0x0

    .line 29
    :try_start_0
    iget-object v6, v2, Lcom/android/server/chimera/SystemRepository;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 31
    invoke-virtual {v6, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 34
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-object p1, v5

    .line 37
    :goto_0
    const-string v6, "/"

    .line 39
    if-nez p1, :cond_1

    .line 41
    :goto_1
    move-object v4, v5

    .line 42
    goto :goto_3

    .line 43
    :cond_1
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 45
    if-eqz p1, :cond_4

    .line 47
    new-instance v7, Ljava/io/File;

    .line 49
    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 55
    move-result v8

    .line 56
    if-eqz v8, :cond_4

    .line 58
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 61
    move-result-object v7

    .line 62
    if-nez v7, :cond_2

    .line 64
    const-string v2, "AppSourceDir seems not correct : "

    .line 66
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    const-string v2, "SystemRepositoryDefault"

    .line 72
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    iget-object v2, v2, Lcom/android/server/chimera/SystemRepository;->fileCacheReclaimTarget:[Ljava/lang/String;

    .line 97
    array-length v5, v2

    .line 98
    move v7, v1

    .line 99
    :goto_2
    if-ge v7, v5, :cond_4

    .line 101
    aget-object v8, v2, v7

    .line 103
    invoke-static {p1, v8}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v8

    .line 107
    invoke-static {v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 110
    move-result v9

    .line 111
    if-eqz v9, :cond_3

    .line 113
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_3
    add-int/2addr v7, v3

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    :goto_3
    if-eqz v4, :cond_8

    .line 120
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 123
    move-result-object p1

    .line 124
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_8

    .line 130
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Ljava/lang/String;

    .line 136
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 138
    const-string v4, "/proc/proc_caches_reclaim"

    .line 140
    :try_start_1
    new-instance v5, Ljava/io/BufferedWriter;

    .line 142
    new-instance v7, Ljava/io/FileWriter;

    .line 144
    invoke-direct {v7, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 147
    const/16 v4, 0x800

    .line 149
    invoke-direct {v5, v7, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 154
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v7, "\u0000"

    .line 162
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v5, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 175
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 178
    move-result-object v2

    .line 179
    array-length v4, v2

    .line 180
    sub-int/2addr v4, v3

    .line 181
    aget-object v2, v2, v4

    .line 183
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mAppFileCacheRecliamCnt:[J

    .line 188
    const-wide/16 v7, 0x1

    .line 190
    const/4 v5, -0x1

    .line 191
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 194
    move-result v9

    .line 195
    sparse-switch v9, :sswitch_data_0

    .line 198
    goto :goto_5

    .line 199
    :sswitch_0
    const-string v9, "base.apk"

    .line 201
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    move-result v2

    .line 205
    if-nez v2, :cond_5

    .line 207
    goto :goto_5

    .line 208
    :cond_5
    move v5, v0

    .line 209
    goto :goto_5

    .line 210
    :sswitch_1
    const-string v9, "base.vdex"

    .line 212
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    move-result v2

    .line 216
    if-nez v2, :cond_6

    .line 218
    goto :goto_5

    .line 219
    :cond_6
    move v5, v3

    .line 220
    goto :goto_5

    .line 221
    :sswitch_2
    const-string v9, "base.odex"

    .line 223
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    move-result v2

    .line 227
    if-nez v2, :cond_7

    .line 229
    goto :goto_5

    .line 230
    :cond_7
    move v5, v1

    .line 231
    :goto_5
    packed-switch v5, :pswitch_data_0

    .line 234
    const/4 v2, 0x3

    .line 235
    aget-wide v9, v4, v2

    .line 237
    add-long/2addr v9, v7

    .line 238
    aput-wide v9, v4, v2

    .line 240
    goto :goto_4

    .line 241
    :pswitch_0
    aget-wide v9, v4, v1

    .line 243
    add-long/2addr v9, v7

    .line 244
    aput-wide v9, v4, v1

    .line 246
    goto :goto_4

    .line 247
    :pswitch_1
    aget-wide v9, v4, v0

    .line 249
    add-long/2addr v9, v7

    .line 250
    aput-wide v9, v4, v0

    .line 252
    goto/16 :goto_4

    .line 254
    :pswitch_2
    aget-wide v9, v4, v3

    .line 256
    add-long/2addr v9, v7

    .line 257
    aput-wide v9, v4, v3

    .line 259
    goto/16 :goto_4

    .line 261
    :catch_1
    move-exception v2

    .line 262
    goto :goto_7

    .line 263
    :catchall_0
    move-exception v2

    .line 264
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 267
    goto :goto_6

    .line 268
    :catchall_1
    move-exception v4

    .line 269
    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 272
    :goto_6
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 273
    :goto_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 276
    const-string v2, "PolicyHandler"

    .line 278
    const-string v4, "Chimera AppFileCacheReclaim doReclaimPageCacheByFilePath failed."

    .line 280
    invoke-static {v2, v4}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    goto/16 :goto_4

    .line 285
    :cond_8
    sget-object p0, Lcom/android/server/chimera/ChimeraCommonUtil;->mAppLaunchInfoMap:Ljava/util/Map;

    .line 287
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 289
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 292
    :goto_8
    return-void

    .line 293
    :sswitch_data_0
    .sparse-switch
        -0x6ef939bb -> :sswitch_2
        -0x6ef60b22 -> :sswitch_1
        -0x66ad6681 -> :sswitch_0
    .end sparse-switch

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
