.class public final Lcom/android/server/powerstats/PowerStatsService$1;
.super Landroid/os/IPowerStatsService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/powerstats/PowerStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/PowerStatsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IPowerStatsService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "PowerStatsService"

    .line 6
    .line 7
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string p0, "PowerStats HAL is not initialized.  No data available."

    .line 21
    .line 22
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    goto/16 :goto_a

    .line 26
    .line 27
    :cond_1
    array-length v0, p3

    .line 28
    const/4 v1, 0x0

    .line 29
    if-lez v0, :cond_4

    .line 30
    .line 31
    const-string v0, "--proto"

    .line 32
    .line 33
    aget-object v2, p3, v1

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    const-string/jumbo p2, "model"

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    aget-object v1, p3, v0

    .line 46
    .line 47
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    const-string v1, "PowerStatsLogger"

    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    .line 63
    .line 64
    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 65
    .line 66
    .line 67
    :try_start_0
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 68
    .line 69
    invoke-interface {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumer;Landroid/util/proto/ProtoOutputStream;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 77
    .line 78
    new-instance p1, Lcom/android/server/powerstats/PowerStatsLogger$1;

    .line 79
    .line 80
    const/4 p3, 0x1

    .line 81
    invoke-direct {p1, p3, p2}, Lcom/android/server/powerstats/PowerStatsLogger$1;-><init>(ILandroid/util/proto/ProtoOutputStream;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsLogger$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception p0

    .line 89
    const-string p1, "Failed to write energy model info to incident report."

    .line 90
    .line 91
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    :goto_0
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_a

    .line 98
    .line 99
    :cond_2
    const-string/jumbo p2, "meter"

    .line 100
    .line 101
    .line 102
    aget-object v2, p3, v0

    .line 103
    .line 104
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-eqz p2, :cond_3

    .line 109
    .line 110
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    .line 118
    .line 119
    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 120
    .line 121
    .line 122
    :try_start_1
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 123
    .line 124
    invoke-interface {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/Channel;Landroid/util/proto/ProtoOutputStream;)V

    .line 129
    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 132
    .line 133
    new-instance p1, Lcom/android/server/powerstats/PowerStatsLogger$1;

    .line 134
    .line 135
    const/4 p3, 0x0

    .line 136
    invoke-direct {p1, p3, p2}, Lcom/android/server/powerstats/PowerStatsLogger$1;-><init>(ILandroid/util/proto/ProtoOutputStream;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsLogger$1;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :catch_1
    move-exception p0

    .line 144
    const-string p1, "Failed to write energy meter info to incident report."

    .line 145
    .line 146
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .line 148
    .line 149
    :goto_1
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_a

    .line 153
    .line 154
    :cond_3
    const-string/jumbo p2, "residency"

    .line 155
    .line 156
    .line 157
    aget-object p3, p3, v0

    .line 158
    .line 159
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-eqz p2, :cond_c

    .line 164
    .line 165
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 166
    .line 167
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    .line 173
    .line 174
    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 175
    .line 176
    .line 177
    :try_start_2
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 178
    .line 179
    invoke-interface {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {p1, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/PowerEntity;Landroid/util/proto/ProtoOutputStream;)V

    .line 184
    .line 185
    .line 186
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 187
    .line 188
    new-instance p1, Lcom/android/server/powerstats/PowerStatsLogger$1;

    .line 189
    .line 190
    const/4 p3, 0x2

    .line 191
    invoke-direct {p1, p3, p2}, Lcom/android/server/powerstats/PowerStatsLogger$1;-><init>(ILandroid/util/proto/ProtoOutputStream;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsLogger$1;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :catch_2
    move-exception p0

    .line 199
    const-string p1, "Failed to write residency data to incident report."

    .line 200
    .line 201
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .line 203
    .line 204
    :goto_2
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_a

    .line 208
    .line 209
    :cond_4
    new-instance p1, Landroid/util/IndentingPrintWriter;

    .line 210
    .line 211
    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 212
    .line 213
    .line 214
    const-string p2, "PowerStatsService dumpsys: available PowerEntities"

    .line 215
    .line 216
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object p2, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 220
    .line 221
    invoke-virtual {p2}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    invoke-interface {p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 230
    .line 231
    .line 232
    if-nez p2, :cond_5

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_5
    move p3, v1

    .line 236
    :goto_3
    array-length v0, p2

    .line 237
    if-ge p3, v0, :cond_7

    .line 238
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v2, "PowerEntityId: "

    .line 242
    .line 243
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    aget-object v2, p2, p3

    .line 247
    .line 248
    iget v2, v2, Landroid/hardware/power/stats/PowerEntity;->id:I

    .line 249
    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v2, ", PowerEntityName: "

    .line 254
    .line 255
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    aget-object v2, p2, p3

    .line 259
    .line 260
    iget-object v2, v2, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    aget-object v0, p2, p3

    .line 273
    .line 274
    iget-object v0, v0, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    .line 275
    .line 276
    if-eqz v0, :cond_6

    .line 277
    .line 278
    move v0, v1

    .line 279
    :goto_4
    aget-object v2, p2, p3

    .line 280
    .line 281
    iget-object v2, v2, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    .line 282
    .line 283
    array-length v2, v2

    .line 284
    if-ge v0, v2, :cond_6

    .line 285
    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    const-string v3, "  StateId: "

    .line 289
    .line 290
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    aget-object v3, p2, p3

    .line 294
    .line 295
    iget-object v3, v3, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    .line 296
    .line 297
    aget-object v3, v3, v0

    .line 298
    .line 299
    iget v3, v3, Landroid/hardware/power/stats/State;->id:I

    .line 300
    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v3, ", StateName: "

    .line 305
    .line 306
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    aget-object v3, p2, p3

    .line 310
    .line 311
    iget-object v3, v3, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    .line 312
    .line 313
    aget-object v3, v3, v0

    .line 314
    .line 315
    iget-object v3, v3, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    add-int/lit8 v0, v0, 0x1

    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_6
    add-int/lit8 p3, p3, 0x1

    .line 331
    .line 332
    goto :goto_3

    .line 333
    :cond_7
    :goto_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 334
    .line 335
    .line 336
    const-string p2, "PowerStatsService dumpsys: available Channels"

    .line 337
    .line 338
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    iget-object p2, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 342
    .line 343
    invoke-virtual {p2}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    invoke-interface {p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 352
    .line 353
    .line 354
    if-nez p2, :cond_8

    .line 355
    .line 356
    goto :goto_7

    .line 357
    :cond_8
    move p3, v1

    .line 358
    :goto_6
    array-length v0, p2

    .line 359
    if-ge p3, v0, :cond_9

    .line 360
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    const-string v2, "ChannelId: "

    .line 364
    .line 365
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    aget-object v2, p2, p3

    .line 369
    .line 370
    iget v2, v2, Landroid/hardware/power/stats/Channel;->id:I

    .line 371
    .line 372
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string v2, ", ChannelName: "

    .line 376
    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    aget-object v2, p2, p3

    .line 381
    .line 382
    iget-object v2, v2, Landroid/hardware/power/stats/Channel;->name:Ljava/lang/String;

    .line 383
    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string v2, ", ChannelSubsystem: "

    .line 388
    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    aget-object v2, p2, p3

    .line 393
    .line 394
    iget-object v2, v2, Landroid/hardware/power/stats/Channel;->subsystem:Ljava/lang/String;

    .line 395
    .line 396
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    add-int/lit8 p3, p3, 0x1

    .line 407
    .line 408
    goto :goto_6

    .line 409
    :cond_9
    :goto_7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 410
    .line 411
    .line 412
    const-string p2, "PowerStatsService dumpsys: available EnergyConsumers"

    .line 413
    .line 414
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    iget-object p2, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 418
    .line 419
    invoke-virtual {p2}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 420
    .line 421
    .line 422
    move-result-object p2

    .line 423
    invoke-interface {p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    .line 424
    .line 425
    .line 426
    move-result-object p2

    .line 427
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 428
    .line 429
    .line 430
    if-nez p2, :cond_a

    .line 431
    .line 432
    goto :goto_9

    .line 433
    :cond_a
    :goto_8
    array-length p3, p2

    .line 434
    if-ge v1, p3, :cond_b

    .line 435
    .line 436
    new-instance p3, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    const-string v0, "EnergyConsumerId: "

    .line 439
    .line 440
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    aget-object v0, p2, v1

    .line 444
    .line 445
    iget v0, v0, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    .line 446
    .line 447
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v0, ", Ordinal: "

    .line 451
    .line 452
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    aget-object v0, p2, v1

    .line 456
    .line 457
    iget v0, v0, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    .line 458
    .line 459
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v0, ", Type: "

    .line 463
    .line 464
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    aget-object v0, p2, v1

    .line 468
    .line 469
    iget-byte v0, v0, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 470
    .line 471
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string v0, ", Name: "

    .line 475
    .line 476
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    aget-object v0, p2, v1

    .line 480
    .line 481
    iget-object v0, v0, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    .line 482
    .line 483
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p3

    .line 490
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    add-int/lit8 v1, v1, 0x1

    .line 494
    .line 495
    goto :goto_8

    .line 496
    :cond_b
    :goto_9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 497
    .line 498
    .line 499
    const-string p2, "PowerStatsService dumpsys: PowerStatsLogger stats"

    .line 500
    .line 501
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 505
    .line 506
    .line 507
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 508
    .line 509
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    .line 510
    .line 511
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    .line 513
    .line 514
    const-string p2, "PowerStats Meter Data:"

    .line 515
    .line 516
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 520
    .line 521
    .line 522
    iget-object p2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 523
    .line 524
    invoke-virtual {p2, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 528
    .line 529
    .line 530
    const-string p2, "PowerStats Model Data:"

    .line 531
    .line 532
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 536
    .line 537
    .line 538
    iget-object p2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 539
    .line 540
    invoke-virtual {p2, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 544
    .line 545
    .line 546
    const-string p2, "PowerStats State Residency Data:"

    .line 547
    .line 548
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 552
    .line 553
    .line 554
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 555
    .line 556
    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 560
    .line 561
    .line 562
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 563
    .line 564
    .line 565
    :cond_c
    :goto_a
    return-void
.end method

.method public final getPowerMonitorReadings([ILandroid/os/ResultReceiver;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetHandler(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/powerstats/PowerStatsService$1;[ILandroid/os/ResultReceiver;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final getSupportedPowerMonitors(Landroid/os/ResultReceiver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetHandler(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/powerstats/PowerStatsService$1;Landroid/os/ResultReceiver;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
