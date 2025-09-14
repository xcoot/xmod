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

    .line 2
    .line 3
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss:SSS"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 10
    .line 11
    new-instance v0, Ljava/util/Date;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mMaxSize:I

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mCursor:J

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mCursor:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long/2addr v2, v0

    .line 6
    iput-wide v2, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mCursor:J

    .line 7
    .line 8
    iget v2, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mMaxSize:I

    .line 9
    .line 10
    int-to-long v3, v2

    .line 11
    rem-long/2addr v0, v3

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    long-to-int v0, v0

    .line 17
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-gt v1, v2, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v2, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 42
    .line 43
    return-object p0
.end method

.method public final reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string v1, "NULL"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 33
    .line 34
    iget-wide v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 35
    .line 36
    sget-object v3, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    .line 37
    .line 38
    invoke-virtual {v3, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 39
    .line 40
    .line 41
    sget-object v1, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, " - "

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 62
    .line 63
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 64
    .line 65
    const-string v3, ": "

    .line 66
    .line 67
    const-string v4, " changed to "

    .line 68
    .line 69
    packed-switch v2, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    :pswitch_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :pswitch_1
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 79
    .line 80
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 81
    .line 82
    const-string v3, "Interfaces of netId="

    .line 83
    .line 84
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :pswitch_2
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 91
    .line 92
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 93
    .line 94
    const-string v3, "Roaming of netId="

    .line 95
    .line 96
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :pswitch_3
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 103
    .line 104
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 105
    .line 106
    const-string/jumbo v3, "metered-denylist for "

    .line 107
    .line 108
    .line 109
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :pswitch_4
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 116
    .line 117
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 118
    .line 119
    const-string/jumbo v3, "metered-allowlist for "

    .line 120
    .line 121
    .line 122
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    goto/16 :goto_1

    .line 127
    .line 128
    :pswitch_5
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 129
    .line 130
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 131
    .line 132
    const-string v4, "App idle whitelist state of uid "

    .line 133
    .line 134
    invoke-static {v2, v4, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    goto/16 :goto_1

    .line 139
    .line 140
    :pswitch_6
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 141
    .line 142
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 143
    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v4, "Firewall chain "

    .line 147
    .line 148
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v2, " state: "

    .line 159
    .line 160
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    goto/16 :goto_1

    .line 171
    .line 172
    :pswitch_7
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 173
    .line 174
    iget v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 175
    .line 176
    iget v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 177
    .line 178
    invoke-static {v2, v3, v1}, Lcom/android/server/net/NetworkPolicyLogger;->getUidFirewallRuleChangedLog(III)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :pswitch_8
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 185
    .line 186
    iget-boolean v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 187
    .line 188
    iget v4, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 189
    .line 190
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {v2, v4, v1, v3}, Lcom/android/server/net/NetworkPolicyLogger;->getTempPowerSaveWlChangedLog(IILjava/lang/String;Z)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    goto/16 :goto_1

    .line 197
    .line 198
    :pswitch_9
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 199
    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v3, "Parole state: "

    .line 203
    .line 204
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    :pswitch_a
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 217
    .line 218
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 219
    .line 220
    const-string v4, "App idle state of uid "

    .line 221
    .line 222
    invoke-static {v2, v4, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    goto/16 :goto_1

    .line 227
    .line 228
    :pswitch_b
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 229
    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v3, "DeviceIdleMode enabled: "

    .line 233
    .line 234
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    goto/16 :goto_1

    .line 245
    .line 246
    :pswitch_c
    iget-boolean v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 247
    .line 248
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    .line 249
    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v4, "Changed restrictBackground: "

    .line 253
    .line 254
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v2, "->"

    .line 261
    .line 262
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    goto/16 :goto_1

    .line 273
    .line 274
    :pswitch_d
    iget v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 275
    .line 276
    const-string v2, "Remove state for u"

    .line 277
    .line 278
    invoke-static {v1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    goto :goto_1

    .line 283
    :pswitch_e
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 284
    .line 285
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 286
    .line 287
    const-string v3, "Meteredness of netId="

    .line 288
    .line 289
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    goto :goto_1

    .line 294
    :pswitch_f
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 295
    .line 296
    iget v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 297
    .line 298
    iget v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 299
    .line 300
    invoke-static {v2, v3, v1}, Lcom/android/server/net/NetworkPolicyLogger;->getPolicyChangedLog(III)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    goto :goto_1

    .line 305
    :pswitch_10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    iget v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 311
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v3, ":"

    .line 316
    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    iget v4, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 321
    .line 322
    sget v5, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 323
    .line 324
    invoke-static {v4}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    iget v4, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 335
    .line 336
    invoke-static {v4}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    iget-wide v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    .line 347
    .line 348
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    goto :goto_1

    .line 356
    :pswitch_11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    iget v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 362
    .line 363
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v3, "-"

    .line 367
    .line 368
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    iget v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 372
    .line 373
    iget v4, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 374
    .line 375
    iget v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield4:I

    .line 376
    .line 377
    invoke-static {v3, v4, v1}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->toString(III)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    goto :goto_1

    .line 389
    :pswitch_12
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 390
    .line 391
    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 395
    .line 396
    goto/16 :goto_0

    .line 397
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
