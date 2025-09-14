.class public final Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final caller:Lcom/android/server/DeviceIdleController$TargetPkg;

.field public final target:Lcom/android/server/DeviceIdleController$TargetPkg;

.field public final time:J

.field public final type:I


# direct methods
.method public constructor <init>(ILcom/android/server/DeviceIdleController$TargetPkg;Lcom/android/server/DeviceIdleController$TargetPkg;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;->time:J

    .line 10
    iput p1, p0, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;->type:I

    .line 12
    iput-object p2, p0, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;->caller:Lcom/android/server/DeviceIdleController$TargetPkg;

    .line 14
    iput-object p3, p0, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;->target:Lcom/android/server/DeviceIdleController$TargetPkg;

    .line 16
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 3
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;->time:J

    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 8
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 10
    const-string/jumbo v2, "yyyy-MM-dd hh:mm:ss"

    .line 13
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    const-string v4, "["

    .line 25
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v0, "]"

    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;->target:Lcom/android/server/DeviceIdleController$TargetPkg;

    .line 54
    iget-object v3, v1, Lcom/android/server/DeviceIdleController$TargetPkg;->pkgName:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v3, "(appid="

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget v1, v1, Lcom/android/server/DeviceIdleController$TargetPkg;->uid:I

    .line 66
    const-string v3, ") by "

    .line 68
    invoke-static {v1, v0, v3}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    iget v1, p0, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;->type:I

    .line 74
    const-string v3, "[restore] "

    .line 76
    const-string/jumbo v4, "deviceidle.xml"

    .line 79
    const-string v5, "[add    ] "

    .line 81
    const-string v6, "[remove ] "

    .line 83
    const-string v7, "[removes] "

    .line 85
    const-string/jumbo v8, "null"

    .line 88
    const-string v9, ")"

    .line 90
    const-string v10, "(pid "

    .line 92
    const-string/jumbo v11, "dumpsys"

    .line 95
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;->caller:Lcom/android/server/DeviceIdleController$TargetPkg;

    .line 97
    packed-switch v1, :pswitch_data_0

    .line 100
    const-string p0, "DeviceIdleController"

    .line 102
    const-string v0, "Unknown type of allowlist"

    .line 104
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    goto/16 :goto_0

    .line 109
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    goto/16 :goto_0

    .line 129
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    goto/16 :goto_0

    .line 149
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    if-eqz p0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$TargetPkg;->pkgName:Ljava/lang/String;

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget p0, p0, Lcom/android/server/DeviceIdleController$TargetPkg;->uid:I

    .line 181
    invoke-static {p0, v0, v9}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    move-result-object v8

    .line 185
    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    goto/16 :goto_0

    .line 190
    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 192
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object p0

    .line 205
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    goto/16 :goto_0

    .line 210
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 212
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    if-eqz p0, :cond_1

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$TargetPkg;->pkgName:Ljava/lang/String;

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget p0, p0, Lcom/android/server/DeviceIdleController$TargetPkg;->uid:I

    .line 242
    invoke-static {p0, v0, v9}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    move-result-object v8

    .line 246
    :cond_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    goto/16 :goto_0

    .line 251
    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 253
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string/jumbo v0, "package removed"

    .line 262
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    move-result-object p0

    .line 269
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    goto/16 :goto_0

    .line 274
    :pswitch_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 276
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    move-result-object p0

    .line 289
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    goto/16 :goto_0

    .line 294
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 296
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    if-eqz p0, :cond_2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    .line 313
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$TargetPkg;->pkgName:Ljava/lang/String;

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget p0, p0, Lcom/android/server/DeviceIdleController$TargetPkg;->uid:I

    .line 326
    invoke-static {p0, v0, v9}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    move-result-object v8

    .line 330
    :cond_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    goto :goto_0

    .line 334
    :pswitch_8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 336
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    move-result-object p0

    .line 349
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    goto :goto_0

    .line 353
    :pswitch_9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 355
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    move-result-object p0

    .line 368
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    goto :goto_0

    .line 372
    :pswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 374
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    if-eqz p0, :cond_3

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    .line 391
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$TargetPkg;->pkgName:Ljava/lang/String;

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget p0, p0, Lcom/android/server/DeviceIdleController$TargetPkg;->uid:I

    .line 404
    invoke-static {p0, v0, v9}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 407
    move-result-object v8

    .line 408
    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    move-result-object p0

    .line 415
    return-object p0

    .line 416
    nop

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
