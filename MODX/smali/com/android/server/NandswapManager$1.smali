.class public final Lcom/android/server/NandswapManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    const-string/jumbo p0, "support ramExpandSwitch: "

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    move-result-object p2

    .line 8
    const-string/jumbo v0, "received action: "

    .line 11
    const-string v1, "NandswapManager"

    .line 13
    invoke-static {v0, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :try_start_0
    const-string/jumbo v0, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    sget-object p0, Lcom/android/server/NandswapManager;->mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    .line 27
    if-eqz p0, :cond_b

    .line 29
    invoke-static {}, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->-$$Nest$smuploadBigdataToHQM()V

    .line 32
    goto/16 :goto_4

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto/16 :goto_3

    .line 37
    :cond_0
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v3, 0x1

    .line 45
    const-string/jumbo v4, "ram_expand_size"

    .line 48
    const/4 v5, -0x1

    .line 49
    if-nez v0, :cond_6

    .line 51
    :try_start_1
    const-string v0, "android.intent.action.REBOOT"

    .line 53
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 59
    goto/16 :goto_2

    .line 61
    :cond_1
    const-string/jumbo v0, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 64
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result p2

    .line 68
    if-eqz p2, :cond_b

    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    sget-boolean p0, Lcom/android/server/NandswapManager;->SUPPORT_RAM_EXPAND_SWITCH:Z

    .line 77
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    const-string p0, " for "

    .line 82
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    sget p0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 87
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 104
    move-result p0

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 108
    move-result-object p2

    .line 109
    const-string/jumbo v0, "ram_expand_size_list"

    .line 112
    invoke-static {p2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object p2

    .line 116
    if-ne p0, v5, :cond_2

    .line 118
    const-string/jumbo p0, "ram_expand_size was not set"

    .line 121
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    move p0, v3

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    move p0, v2

    .line 127
    :goto_0
    if-nez p2, :cond_3

    .line 129
    const-string/jumbo p0, "ram_expand_size_list was not set"

    .line 132
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    move p0, v3

    .line 136
    :cond_3
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smisBackingDevSet()Z

    .line 139
    move-result p2

    .line 140
    if-nez p2, :cond_4

    .line 142
    const-string/jumbo p0, "zram backing_dev is not set"

    .line 145
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    move p0, v2

    .line 149
    :cond_4
    if-ne p0, v3, :cond_5

    .line 151
    new-instance p0, Ljava/io/File;

    .line 153
    const-string p2, "/data/per_boot/zram_swap"

    .line 155
    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 161
    move-result-wide v3

    .line 162
    const-wide/16 v5, 0x400

    .line 164
    div-long/2addr v3, v5

    .line 165
    div-long/2addr v3, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 166
    const-wide/16 v5, 0x4

    .line 168
    mul-long/2addr v3, v5

    .line 169
    long-to-int p0, v3

    .line 170
    goto :goto_1

    .line 171
    :catch_1
    :try_start_3
    const-string/jumbo p0, "error on file length"

    .line 174
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    move p0, v2

    .line 178
    :goto_1
    invoke-static {p1, p0}, Lcom/android/server/NandswapManager;->-$$Nest$smsetExpandSizeAndList(Landroid/content/Context;I)V

    .line 181
    :cond_5
    const-string/jumbo p0, "ro.sys.kernelmemory.gmr.enabled"

    .line 184
    invoke-static {p0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 187
    move-result p0

    .line 188
    if-eqz p0, :cond_b

    .line 190
    const-string/jumbo p0, "kgsl"

    .line 193
    const-string/jumbo p1, "ro.sys.kernelmemory.gmr.vendor_plugin"

    .line 196
    const-string p2, ""

    .line 198
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    move-result p0

    .line 206
    if-eqz p0, :cond_b

    .line 208
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSizePersistProp()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 211
    :try_start_4
    new-instance p0, Ljava/io/File;

    .line 213
    const-string p1, "/sys/class/kgsl/kgsl/max_reclaim_limit"

    .line 215
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    const p1, 0x1f400

    .line 221
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 224
    move-result-object p1

    .line 225
    invoke-static {p0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    const-string p0, "GMR: Success write max reclaim limit: 128000"

    .line 230
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 233
    goto :goto_4

    .line 234
    :catch_2
    :try_start_5
    const-string p0, "GMR: Failed to write max recaim limit to /sys/class/kgsl/kgsl/max_reclaim_limit"

    .line 236
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    goto :goto_4

    .line 240
    :cond_6
    :goto_2
    sget-object p0, Lcom/android/server/NandswapManager;->sNandswapManager:Landroid/content/ComponentName;

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 245
    move-result-object p0

    .line 246
    invoke-static {p0, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 249
    move-result p0

    .line 250
    if-ne p0, v5, :cond_7

    .line 252
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smisBackingDevSet()Z

    .line 255
    move-result p0

    .line 256
    if-ne p0, v3, :cond_7

    .line 258
    invoke-static {}, Lcom/android/server/NandswapManager;->getDefaultRamExpandSize()I

    .line 261
    move-result p0

    .line 262
    invoke-static {p1, p0}, Lcom/android/server/NandswapManager;->putRamExpandSize(Landroid/content/Context;I)V

    .line 265
    :cond_7
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSizePersistProp()I

    .line 268
    move-result p0

    .line 269
    if-eq p0, v5, :cond_a

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 274
    move-result-object p1

    .line 275
    invoke-static {p1, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 278
    move-result p1

    .line 279
    if-eq p0, p1, :cond_a

    .line 281
    sget-object p0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 283
    iget p1, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    .line 285
    if-ne p1, v3, :cond_8

    .line 287
    move v2, v3

    .line 288
    :cond_8
    if-eqz v2, :cond_9

    .line 290
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->initBigdataInfoProp()V

    .line 293
    :cond_9
    const-string p0, "Ramplus Option is changed. clear bigdata\'s info."

    .line 295
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    goto :goto_4

    .line 299
    :cond_a
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smsaveClientsBigdataInfoInReboot()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 302
    goto :goto_4

    .line 303
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 305
    const-string/jumbo p2, "intent exception msg : "

    .line 308
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-static {p0, p1, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 314
    :cond_b
    :goto_4
    return-void
.end method
