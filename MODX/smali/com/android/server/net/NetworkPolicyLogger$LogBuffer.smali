.class public final Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sDate:Ljava/util/Date;

.field public static final sFormatter:Ljava/text/SimpleDateFormat;


# instance fields
.field public mCursor:J

.field public final mDataList:Ljava/util/ArrayList;

.field public final mMaxSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss:SSS"

    .line 6
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9
    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 11
    new-instance v0, Ljava/util/Date;

    .line 13
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 16
    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    .line 11
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mMaxSize:I

    .line 13
    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mCursor:J

    .line 17
    return-void
.end method


# virtual methods
.method public final getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mCursor:J

    .line 3
    const-wide/16 v2, 0x1

    .line 5
    add-long/2addr v2, v0

    .line 6
    iput-wide v2, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mCursor:J

    .line 8
    iget v2, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mMaxSize:I

    .line 10
    int-to-long v3, v2

    .line 11
    rem-long/2addr v0, v3

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 15
    move-result-wide v0

    .line 16
    long-to-int v0, v0

    .line 17
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v1

    .line 23
    if-gt v1, v2, :cond_0

    .line 25
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    .line 27
    new-instance v2, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 29
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 43
    return-object p0
.end method

.method public final reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 19
    const-string v1, "NULL"

    .line 21
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 24
    goto/16 :goto_2

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 34
    iget-wide v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 36
    sget-object v3, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    .line 38
    invoke-virtual {v3, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 41
    sget-object v1, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 43
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 50
    const-string v1, " - "

    .line 52
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 63
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 65
    const-string v3, ": "

    .line 67
    const-string v4, " changed to "

    .line 69
    packed-switch v2, :pswitch_data_0

    .line 72
    :pswitch_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    goto/16 :goto_1

    .line 78
    :pswitch_1
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 80
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 82
    const-string v3, "Interfaces of netId="

    .line 84
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    goto/16 :goto_1

    .line 90
    :pswitch_2
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 92
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 94
    const-string v3, "Roaming of netId="

    .line 96
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    goto/16 :goto_1

    .line 102
    :pswitch_3
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 104
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 106
    const-string/jumbo v3, "metered-denylist for "

    .line 109
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    goto/16 :goto_1

    .line 115
    :pswitch_4
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 117
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 119
    const-string/jumbo v3, "metered-allowlist for "

    .line 122
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 126
    goto/16 :goto_1

    .line 128
    :pswitch_5
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 130
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 132
    const-string v4, "App idle whitelist state of uid "

    .line 134
    invoke-static {v2, v4, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 137
    move-result-object v1

    .line 138
    goto/16 :goto_1

    .line 140
    :pswitch_6
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 142
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    const-string v4, "Firewall chain "

    .line 148
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v2, " state: "

    .line 160
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v1

    .line 170
    goto/16 :goto_1

    .line 172
    :pswitch_7
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 174
    iget v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 176
    iget v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 178
    invoke-static {v2, v3, v1}, Lcom/android/server/net/NetworkPolicyLogger;->getUidFirewallRuleChangedLog(III)Ljava/lang/String;

    .line 181
    move-result-object v1

    .line 182
    goto/16 :goto_1

    .line 184
    :pswitch_8
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 186
    iget-boolean v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 188
    iget v4, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 190
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 192
    invoke-static {v2, v4, v1, v3}, Lcom/android/server/net/NetworkPolicyLogger;->getTempPowerSaveWlChangedLog(IILjava/lang/String;Z)Ljava/lang/String;

    .line 195
    move-result-object v1

    .line 196
    goto/16 :goto_1

    .line 198
    :pswitch_9
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    .line 202
    const-string v3, "Parole state: "

    .line 204
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v1

    .line 214
    goto/16 :goto_1

    .line 216
    :pswitch_a
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 218
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 220
    const-string v4, "App idle state of uid "

    .line 222
    invoke-static {v2, v4, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 225
    move-result-object v1

    .line 226
    goto/16 :goto_1

    .line 228
    :pswitch_b
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    .line 232
    const-string v3, "DeviceIdleMode enabled: "

    .line 234
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object v1

    .line 244
    goto/16 :goto_1

    .line 246
    :pswitch_c
    iget-boolean v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 248
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    .line 252
    const-string v4, "Changed restrictBackground: "

    .line 254
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 260
    const-string v2, "->"

    .line 262
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v1

    .line 272
    goto/16 :goto_1

    .line 274
    :pswitch_d
    iget v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 276
    const-string v2, "Remove state for u"

    .line 278
    invoke-static {v1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 281
    move-result-object v1

    .line 282
    goto :goto_1

    .line 283
    :pswitch_e
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 285
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 287
    const-string v3, "Meteredness of netId="

    .line 289
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 292
    move-result-object v1

    .line 293
    goto :goto_1

    .line 294
    :pswitch_f
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 296
    iget v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 298
    iget v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 300
    invoke-static {v2, v3, v1}, Lcom/android/server/net/NetworkPolicyLogger;->getPolicyChangedLog(III)Ljava/lang/String;

    .line 303
    move-result-object v1

    .line 304
    goto :goto_1

    .line 305
    :pswitch_10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 307
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    iget v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    const-string v3, ":"

    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget v4, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 322
    sget v5, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 324
    invoke-static {v4}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 327
    move-result-object v4

    .line 328
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget v4, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 336
    invoke-static {v4}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    .line 339
    move-result-object v4

    .line 340
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-wide v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    .line 348
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    move-result-object v1

    .line 355
    goto :goto_1

    .line 356
    :pswitch_11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 358
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    iget v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 363
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    const-string v3, "-"

    .line 368
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 373
    iget v4, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 375
    iget v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield4:I

    .line 377
    invoke-static {v3, v4, v1}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->toString(III)Ljava/lang/String;

    .line 380
    move-result-object v1

    .line 381
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    move-result-object v1

    .line 388
    goto :goto_1

    .line 389
    :pswitch_12
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 391
    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 394
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 396
    goto/16 :goto_0

    .line 398
    :cond_1
    return-void

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
