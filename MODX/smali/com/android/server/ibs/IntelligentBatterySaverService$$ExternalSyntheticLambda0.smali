.class public final synthetic Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    .line 5
    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    .line 8
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    .line 10
    check-cast p1, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    array-length v1, p0

    .line 16
    const/4 v2, 0x3

    .line 17
    if-ne v1, v2, :cond_1

    .line 19
    const/4 v1, 0x0

    .line 20
    aget-object v2, p0, v1

    .line 22
    const-string/jumbo v3, "dexopt"

    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 31
    const-string v2, ""

    .line 33
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    const-string/jumbo v2, "do dexopt"

    .line 39
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    const/4 v2, 0x1

    .line 43
    aget-object v3, p0, v2

    .line 45
    const-string v4, "1"

    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x2

    .line 52
    if-eqz v3, :cond_0

    .line 54
    aget-object p0, p0, v4

    .line 56
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p1, p0}, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;->dexoptPackages(Ljava/util/List;)Ljava/util/List;

    .line 63
    move-result-object p0

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v2, "result is "

    .line 69
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    check-cast p0, Ljava/util/ArrayList;

    .line 74
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    const-string v1, "2"

    .line 91
    aget-object v2, p0, v2

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_1

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    .line 101
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    aget-object p0, p0, v4

    .line 106
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p1, v1}, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;->dexoptPackages(Ljava/util/List;)Ljava/util/List;

    .line 112
    move-result-object p0

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v1, "results are "

    .line 118
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    .line 134
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    .line 136
    check-cast p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    const-string v1, ""

    .line 143
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    const-string v1, "SleepModePolicy "

    .line 148
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    const-string/jumbo v2, "get current state :"

    .line 156
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    iget-boolean v2, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    .line 161
    invoke-static {v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 164
    iget-boolean v1, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    .line 166
    if-eqz v1, :cond_3

    .line 168
    iget-object v1, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 170
    invoke-virtual {v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->toString()Ljava/lang/String;

    .line 173
    move-result-object v1

    .line 174
    invoke-static {v1}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->getTime(Ljava/lang/String;)J

    .line 177
    move-result-wide v1

    .line 178
    iget-object v3, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 180
    invoke-virtual {v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->toString()Ljava/lang/String;

    .line 183
    move-result-object v3

    .line 184
    invoke-static {v3}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->getTime(Ljava/lang/String;)J

    .line 187
    move-result-wide v3

    .line 188
    cmp-long v1, v1, v3

    .line 190
    const-string v2, "Set time from "

    .line 192
    if-lez v1, :cond_2

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    iget-object v2, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    const-string v2, " to next day "

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v2, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    goto :goto_1

    .line 222
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 224
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    iget-object v2, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    const-string v2, " to "

    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v2, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    :cond_3
    :goto_1
    array-length v1, p0

    .line 250
    const-string/jumbo v2, "set new state :"

    .line 253
    const-string/jumbo v3, "sleepMode"

    .line 256
    const/4 v4, 0x2

    .line 257
    const/4 v5, 0x0

    .line 258
    const/4 v6, 0x1

    .line 259
    if-ne v1, v4, :cond_4

    .line 261
    aget-object v1, p0, v5

    .line 263
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_4

    .line 269
    aget-object p0, p0, v6

    .line 271
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 274
    move-result p0

    .line 275
    invoke-static {v0, v2, p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 278
    if-nez p0, :cond_7

    .line 280
    invoke-virtual {p1, v5}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setSleepModeEnable(Z)V

    .line 283
    const-string/jumbo p0, "diable sleep mode"

    .line 286
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    goto/16 :goto_2

    .line 291
    :cond_4
    array-length v1, p0

    .line 292
    const/4 v7, 0x4

    .line 293
    if-ne v1, v7, :cond_5

    .line 295
    aget-object v1, p0, v5

    .line 297
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    move-result v1

    .line 301
    if-eqz v1, :cond_5

    .line 303
    aget-object v1, p0, v6

    .line 305
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 308
    move-result v1

    .line 309
    invoke-static {v0, v2, v1}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 312
    if-ne v1, v6, :cond_7

    .line 314
    invoke-virtual {p1, v6}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setSleepModeEnable(Z)V

    .line 317
    const-string/jumbo v1, "enable sleep mode"

    .line 320
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    aget-object v1, p0, v4

    .line 325
    invoke-static {v1}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->getTime(Ljava/lang/String;)J

    .line 328
    move-result-wide v1

    .line 329
    const/4 v3, 0x3

    .line 330
    aget-object p0, p0, v3

    .line 332
    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->getTime(Ljava/lang/String;)J

    .line 335
    move-result-wide v3

    .line 336
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setSleepTime(JJ)V

    .line 339
    const-string/jumbo p0, "set sleep time"

    .line 342
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    goto :goto_2

    .line 346
    :cond_5
    array-length v1, p0

    .line 347
    if-ne v1, v6, :cond_6

    .line 349
    const-string/jumbo v1, "getSleepTime"

    .line 352
    aget-object v2, p0, v5

    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_6

    .line 360
    const-string/jumbo p0, "get sleep time"

    .line 363
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->getSleepTime()Landroid/os/Bundle;

    .line 369
    move-result-object p0

    .line 370
    if-eqz p0, :cond_7

    .line 372
    new-instance p1, Ljava/lang/StringBuilder;

    .line 374
    const-string/jumbo v1, "start time is: "

    .line 377
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    const-string/jumbo v1, "bundle_start_sleep_time_key"

    .line 383
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 386
    move-result-wide v1

    .line 387
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    move-result-object p1

    .line 394
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    new-instance p1, Ljava/lang/StringBuilder;

    .line 399
    const-string/jumbo v1, "end time is: "

    .line 402
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    const-string/jumbo v1, "bundle_end_sleep_time_key"

    .line 408
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 411
    move-result-wide v1

    .line 412
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    move-result-object p0

    .line 419
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    goto :goto_2

    .line 423
    :cond_6
    array-length v1, p0

    .line 424
    if-ne v1, v4, :cond_7

    .line 426
    const-string/jumbo v1, "rubinEvent"

    .line 429
    aget-object v2, p0, v5

    .line 431
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    move-result v1

    .line 435
    if-eqz v1, :cond_7

    .line 437
    aget-object p0, p0, v6

    .line 439
    invoke-virtual {p1, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setRubinEvent(Ljava/lang/String;)V

    .line 442
    const-string/jumbo p0, "set runbin event"

    .line 445
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    :cond_7
    :goto_2
    return-void

    .line 449
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
