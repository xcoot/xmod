.class public final Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$IpSecTransformStateReceiver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$IpSecTransformStateReceiver;->this$0:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$IpSecTransformStateReceiver;->this$0:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$IpSecTransformStateReceiver;->this$0:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "TransformStateReceiver#onError "

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->getClassName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->getLogPrefix()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, "[WARN ] "

    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->getClassName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->getLogPrefix()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroid/net/IpSecTransformState;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$IpSecTransformStateReceiver;->this$0:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$IpSecTransformStateReceiver;->this$0:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 15
    .line 16
    iget-boolean v2, v0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsStarted:Z

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :cond_0
    iget-object v2, v0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mLastIpSecTransformState:Landroid/net/IpSecTransformState;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    iput-object v1, v0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mLastIpSecTransformState:Landroid/net/IpSecTransformState;

    .line 27
    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :cond_1
    iget-object v3, v0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mPacketLossCalculator:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculator;

    .line 31
    .line 32
    iget v4, v0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mMaxSeqNumIncreasePerSecond:I

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->getLogPrefix()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/net/IpSecTransformState;->getRxHighestSequenceNumber()J

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/net/IpSecTransformState;->getPacketCount()J

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/net/IpSecTransformState;->getReplayBitmap()[B

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v3}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/net/IpSecTransformState;->getRxHighestSequenceNumber()J

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/net/IpSecTransformState;->getPacketCount()J

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/net/IpSecTransformState;->getReplayBitmap()[B

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/net/IpSecTransformState;->getReplayBitmap()[B

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    array-length v3, v3

    .line 79
    mul-int/lit8 v3, v3, 0x8

    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/net/IpSecTransformState;->getRxHighestSequenceNumber()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    int-to-long v7, v3

    .line 86
    sub-long v9, v5, v7

    .line 87
    .line 88
    const-wide/16 v11, 0x1

    .line 89
    .line 90
    add-long/2addr v9, v11

    .line 91
    const-wide/16 v13, 0x0

    .line 92
    .line 93
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 94
    .line 95
    .line 96
    move-result-wide v9

    .line 97
    invoke-virtual {v1}, Landroid/net/IpSecTransformState;->getRxHighestSequenceNumber()J

    .line 98
    .line 99
    .line 100
    move-result-wide v15

    .line 101
    sub-long v17, v15, v7

    .line 102
    .line 103
    add-long v11, v17, v11

    .line 104
    .line 105
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 106
    .line 107
    .line 108
    move-result-wide v11

    .line 109
    cmp-long v3, v5, v15

    .line 110
    .line 111
    const/4 v13, -0x1

    .line 112
    const/4 v14, 0x0

    .line 113
    if-eqz v3, :cond_2

    .line 114
    .line 115
    cmp-long v3, v15, v7

    .line 116
    .line 117
    if-gez v3, :cond_3

    .line 118
    .line 119
    :cond_2
    const/4 v3, 0x1

    .line 120
    goto/16 :goto_4

    .line 121
    .line 122
    :cond_3
    invoke-static {}, Landroid/net/vcn/Flags;->handleSeqNumLeap()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_4

    .line 127
    .line 128
    if-eq v4, v13, :cond_4

    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/net/IpSecTransformState;->getTimestampMillis()J

    .line 131
    .line 132
    .line 133
    move-result-wide v7

    .line 134
    invoke-virtual {v2}, Landroid/net/IpSecTransformState;->getTimestampMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v18

    .line 138
    sub-long v7, v7, v18

    .line 139
    .line 140
    int-to-long v3, v4

    .line 141
    mul-long/2addr v7, v3

    .line 142
    const-wide/16 v3, 0x3e8

    .line 143
    .line 144
    div-long/2addr v7, v3

    .line 145
    const-wide/16 v3, 0x0

    .line 146
    .line 147
    cmp-long v18, v7, v3

    .line 148
    .line 149
    if-ltz v18, :cond_4

    .line 150
    .line 151
    sub-long/2addr v15, v5

    .line 152
    cmp-long v3, v15, v7

    .line 153
    .line 154
    if-ltz v3, :cond_4

    .line 155
    .line 156
    const/4 v3, 0x1

    .line 157
    goto :goto_0

    .line 158
    :cond_4
    move v3, v14

    .line 159
    :goto_0
    invoke-virtual {v1}, Landroid/net/IpSecTransformState;->getReplayBitmap()[B

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-static {v4}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    int-to-long v4, v4

    .line 172
    add-long/2addr v4, v11

    .line 173
    invoke-virtual {v2}, Landroid/net/IpSecTransformState;->getReplayBitmap()[B

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-static {v6}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    int-to-long v6, v6

    .line 186
    add-long/2addr v6, v9

    .line 187
    sub-long/2addr v4, v6

    .line 188
    invoke-virtual {v1}, Landroid/net/IpSecTransformState;->getPacketCount()J

    .line 189
    .line 190
    .line 191
    move-result-wide v6

    .line 192
    invoke-virtual {v2}, Landroid/net/IpSecTransformState;->getPacketCount()J

    .line 193
    .line 194
    .line 195
    move-result-wide v8

    .line 196
    sub-long/2addr v6, v8

    .line 197
    invoke-static {}, Landroid/net/vcn/Flags;->handleSeqNumLeap()Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_5

    .line 202
    .line 203
    const-wide/16 v8, 0xa

    .line 204
    .line 205
    cmp-long v2, v4, v8

    .line 206
    .line 207
    if-gez v2, :cond_5

    .line 208
    .line 209
    new-instance v2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;

    .line 210
    .line 211
    const/4 v3, 0x1

    .line 212
    invoke-direct {v2, v3, v13}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;-><init>(II)V

    .line 213
    .line 214
    .line 215
    :goto_1
    const/4 v3, 0x1

    .line 216
    goto :goto_5

    .line 217
    :cond_5
    const-wide/16 v8, 0x0

    .line 218
    .line 219
    cmp-long v2, v4, v8

    .line 220
    .line 221
    if-ltz v2, :cond_8

    .line 222
    .line 223
    if-eqz v2, :cond_8

    .line 224
    .line 225
    cmp-long v2, v6, v8

    .line 226
    .line 227
    if-ltz v2, :cond_8

    .line 228
    .line 229
    cmp-long v2, v6, v4

    .line 230
    .line 231
    if-lez v2, :cond_6

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_6
    const-wide/16 v8, 0x64

    .line 235
    .line 236
    mul-long/2addr v6, v8

    .line 237
    div-long/2addr v6, v4

    .line 238
    long-to-int v2, v6

    .line 239
    rsub-int/lit8 v2, v2, 0x64

    .line 240
    .line 241
    if-eqz v3, :cond_7

    .line 242
    .line 243
    new-instance v3, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;

    .line 244
    .line 245
    const/4 v4, 0x2

    .line 246
    invoke-direct {v3, v4, v2}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;-><init>(II)V

    .line 247
    .line 248
    .line 249
    :goto_2
    move-object v2, v3

    .line 250
    goto :goto_1

    .line 251
    :cond_7
    new-instance v3, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;

    .line 252
    .line 253
    invoke-direct {v3, v14, v2}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;-><init>(II)V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_8
    :goto_3
    const-string v2, "IpSecPacketLossDetector"

    .line 258
    .line 259
    const-string v3, "Impossible values for expectedPktCntDiff or actualPktCntDiff"

    .line 260
    .line 261
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    sget-object v2, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 265
    .line 266
    const-string v3, "[WTF ] IpSecPacketLossDetectorImpossible values for expectedPktCntDiff or actualPktCntDiff"

    .line 267
    .line 268
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    new-instance v2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;

    .line 272
    .line 273
    const/4 v3, 0x1

    .line 274
    invoke-direct {v2, v3, v13}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;-><init>(II)V

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :goto_4
    new-instance v2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;

    .line 279
    .line 280
    invoke-direct {v2, v3, v13}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;-><init>(II)V

    .line 281
    .line 282
    .line 283
    :goto_5
    iget v4, v2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;->mResultType:I

    .line 284
    .line 285
    if-ne v4, v3, :cond_9

    .line 286
    .line 287
    goto/16 :goto_6

    .line 288
    .line 289
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    const-string v5, "calculateResult: "

    .line 292
    .line 293
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string v5, "% in the past "

    .line 300
    .line 301
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1}, Landroid/net/IpSecTransformState;->getTimestampMillis()J

    .line 305
    .line 306
    .line 307
    move-result-wide v5

    .line 308
    iget-object v7, v0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mLastIpSecTransformState:Landroid/net/IpSecTransformState;

    .line 309
    .line 310
    invoke-virtual {v7}, Landroid/net/IpSecTransformState;->getTimestampMillis()J

    .line 311
    .line 312
    .line 313
    move-result-wide v7

    .line 314
    sub-long/2addr v5, v7

    .line 315
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string/jumbo v5, "ms"

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    iput-object v1, v0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mLastIpSecTransformState:Landroid/net/IpSecTransformState;

    .line 329
    .line 330
    iget v1, v0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mPacketLossRatePercentThreshold:I

    .line 331
    .line 332
    iget v2, v2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculationResult;->mPacketLossRatePercent:I

    .line 333
    .line 334
    if-ge v2, v1, :cond_a

    .line 335
    .line 336
    invoke-virtual {v0, v14}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->onValidationResultReceivedInternal(Z)V

    .line 337
    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->getClassName()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->getLogPrefix()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 367
    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    const-string v5, "[INFO ] "

    .line 371
    .line 372
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->getClassName()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->getLogPrefix()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    if-nez v4, :cond_b

    .line 400
    .line 401
    const/4 v1, 0x1

    .line 402
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->onValidationResultReceivedInternal(Z)V

    .line 403
    .line 404
    .line 405
    :cond_b
    invoke-static {}, Landroid/net/vcn/Flags;->validateNetworkOnIpsecLoss()Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-eqz v1, :cond_c

    .line 410
    .line 411
    iget-object v1, v0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 412
    .line 413
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mNetwork:Landroid/net/Network;

    .line 414
    .line 415
    invoke-virtual {v1, v0, v14}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 416
    .line 417
    .line 418
    :cond_c
    :goto_6
    return-void
.end method
