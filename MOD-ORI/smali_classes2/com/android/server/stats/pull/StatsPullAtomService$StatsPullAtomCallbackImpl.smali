.class public final Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method public constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 5

    .line 1
    const-string v0, "Unknown tagId="

    .line 2
    .line 3
    const-wide/32 v1, 0x80000

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "StatsPull-"

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/16 v3, 0x2716

    .line 30
    .line 31
    if-eq p1, v3, :cond_15

    .line 32
    .line 33
    const/16 v3, 0x2717

    .line 34
    .line 35
    if-eq p1, v3, :cond_14

    .line 36
    .line 37
    const/16 v3, 0x2744

    .line 38
    .line 39
    if-eq p1, v3, :cond_13

    .line 40
    .line 41
    const/16 v3, 0x2745

    .line 42
    .line 43
    if-eq p1, v3, :cond_12

    .line 44
    .line 45
    const/16 v3, 0x2752

    .line 46
    .line 47
    if-eq p1, v3, :cond_11

    .line 48
    .line 49
    const/16 v3, 0x2753

    .line 50
    .line 51
    if-eq p1, v3, :cond_10

    .line 52
    .line 53
    const/16 v3, 0x2755

    .line 54
    .line 55
    if-eq p1, v3, :cond_f

    .line 56
    .line 57
    const/16 v3, 0x2756

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    if-eq p1, v3, :cond_e

    .line 61
    .line 62
    const/16 v3, 0x2762

    .line 63
    .line 64
    if-eq p1, v3, :cond_d

    .line 65
    .line 66
    const/16 v3, 0x2763

    .line 67
    .line 68
    if-eq p1, v3, :cond_d

    .line 69
    .line 70
    packed-switch p1, :pswitch_data_0

    .line 71
    .line 72
    .line 73
    packed-switch p1, :pswitch_data_1

    .line 74
    .line 75
    .line 76
    const/16 v3, 0x276f

    .line 77
    .line 78
    if-eq p1, v3, :cond_c

    .line 79
    .line 80
    const/16 v3, 0x2770

    .line 81
    .line 82
    if-eq p1, v3, :cond_b

    .line 83
    .line 84
    const/16 v3, 0x2776

    .line 85
    .line 86
    if-eq p1, v3, :cond_a

    .line 87
    .line 88
    const/16 v3, 0x2777

    .line 89
    .line 90
    if-eq p1, v3, :cond_9

    .line 91
    .line 92
    const/16 v3, 0x278f

    .line 93
    .line 94
    if-eq p1, v3, :cond_8

    .line 95
    .line 96
    const/16 v3, 0x2790

    .line 97
    .line 98
    if-eq p1, v3, :cond_7

    .line 99
    .line 100
    const/16 v3, 0x27a6

    .line 101
    .line 102
    if-eq p1, v3, :cond_6

    .line 103
    .line 104
    const/16 v3, 0x27a7

    .line 105
    .line 106
    if-eq p1, v3, :cond_5

    .line 107
    .line 108
    const/16 v3, 0x27bb

    .line 109
    .line 110
    if-eq p1, v3, :cond_4

    .line 111
    .line 112
    const/16 v3, 0x27bc

    .line 113
    .line 114
    if-eq p1, v3, :cond_3

    .line 115
    .line 116
    const/16 v3, 0x27cc

    .line 117
    .line 118
    if-eq p1, v3, :cond_2

    .line 119
    .line 120
    const/16 v3, 0x27cd

    .line 121
    .line 122
    if-eq p1, v3, :cond_1

    .line 123
    .line 124
    packed-switch p1, :pswitch_data_2

    .line 125
    .line 126
    .line 127
    sparse-switch p1, :sswitch_data_0

    .line 128
    .line 129
    .line 130
    packed-switch p1, :pswitch_data_3

    .line 131
    .line 132
    .line 133
    packed-switch p1, :pswitch_data_4

    .line 134
    .line 135
    .line 136
    packed-switch p1, :pswitch_data_5

    .line 137
    .line 138
    .line 139
    :try_start_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 140
    .line 141
    new-instance p2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :catchall_0
    move-exception p0

    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 161
    .line 162
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :try_start_1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)V

    .line 173
    .line 174
    .line 175
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 177
    .line 178
    .line 179
    return v4

    .line 180
    :catchall_1
    move-exception p0

    .line 181
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 182
    :try_start_3
    throw p0

    .line 183
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 184
    .line 185
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    :try_start_4
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 191
    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppOpsLocked(ILjava/util/List;)I

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 197
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 198
    .line 199
    .line 200
    return p0

    .line 201
    :catchall_2
    move-exception p0

    .line 202
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 203
    :try_start_6
    throw p0

    .line 204
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    .line 206
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCooldownDeviceLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 211
    :try_start_7
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 212
    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCooldownDeviceLocked(ILjava/util/List;)I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 218
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 219
    .line 220
    .line 221
    return p0

    .line 222
    :catchall_3
    move-exception p0

    .line 223
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 224
    :try_start_9
    throw p0

    .line 225
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 226
    .line 227
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmFaceSettingsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    monitor-enter v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 232
    :try_start_a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 233
    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullFaceSettingsLocked(ILjava/util/List;)I

    .line 235
    .line 236
    .line 237
    move-result p0

    .line 238
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 239
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 240
    .line 241
    .line 242
    return p0

    .line 243
    :catchall_4
    move-exception p0

    .line 244
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 245
    :try_start_c
    throw p0

    .line 246
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 247
    .line 248
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppsOnExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    monitor-enter v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 253
    :try_start_d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 254
    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I

    .line 256
    .line 257
    .line 258
    move-result p0

    .line 259
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 260
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 261
    .line 262
    .line 263
    return p0

    .line 264
    :catchall_5
    move-exception p0

    .line 265
    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 266
    :try_start_f
    throw p0

    .line 267
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 268
    .line 269
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    monitor-enter v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 274
    :try_start_10
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 275
    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemIonHeapSizeLocked(ILjava/util/List;)V

    .line 280
    .line 281
    .line 282
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 283
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 284
    .line 285
    .line 286
    return v4

    .line 287
    :catchall_6
    move-exception p0

    .line 288
    :try_start_11
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 289
    :try_start_12
    throw p0

    .line 290
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 291
    .line 292
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmRoleHolderLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    monitor-enter v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 297
    :try_start_13
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 298
    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRoleHolderLocked(ILjava/util/List;)I

    .line 300
    .line 301
    .line 302
    move-result p0

    .line 303
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 304
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 305
    .line 306
    .line 307
    return p0

    .line 308
    :catchall_7
    move-exception p0

    .line 309
    :try_start_14
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 310
    :try_start_15
    throw p0

    .line 311
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 312
    .line 313
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    .line 314
    .line 315
    monitor-enter v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 316
    :try_start_16
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 317
    .line 318
    const/4 v3, 0x4

    .line 319
    invoke-static {p0, v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    .line 320
    .line 321
    .line 322
    move-result p0

    .line 323
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 324
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 325
    .line 326
    .line 327
    return p0

    .line 328
    :catchall_8
    move-exception p0

    .line 329
    :try_start_17
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 330
    :try_start_18
    throw p0

    .line 331
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 332
    .line 333
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDebugFailingElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    monitor-enter v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 338
    :try_start_19
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 339
    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugFailingElapsedClockLocked(ILjava/util/List;)I

    .line 341
    .line 342
    .line 343
    move-result p0

    .line 344
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 345
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 346
    .line 347
    .line 348
    return p0

    .line 349
    :catchall_9
    move-exception p0

    .line 350
    :try_start_1a
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    .line 351
    :try_start_1b
    throw p0

    .line 352
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 353
    .line 354
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDebugElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    monitor-enter v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 359
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 360
    .line 361
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugElapsedClockLocked(ILjava/util/List;)V

    .line 362
    .line 363
    .line 364
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    .line 365
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 366
    .line 367
    .line 368
    return v4

    .line 369
    :catchall_a
    move-exception p0

    .line 370
    :try_start_1d
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    .line 371
    :try_start_1e
    throw p0

    .line 372
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 373
    .line 374
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBuildInformationLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    monitor-enter v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 379
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 380
    .line 381
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBuildInformationLocked(ILjava/util/List;)V

    .line 385
    .line 386
    .line 387
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    .line 388
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 389
    .line 390
    .line 391
    return v4

    .line 392
    :catchall_b
    move-exception p0

    .line 393
    :try_start_20
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    .line 394
    :try_start_21
    throw p0

    .line 395
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 396
    .line 397
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessMemoryHighWaterMarkLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    monitor-enter v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 402
    :try_start_22
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 403
    .line 404
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)V

    .line 408
    .line 409
    .line 410
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    .line 411
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 412
    .line 413
    .line 414
    return v4

    .line 415
    :catchall_c
    move-exception p0

    .line 416
    :try_start_23
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    .line 417
    :try_start_24
    throw p0

    .line 418
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 419
    .line 420
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullVmStat(ILjava/util/List;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 424
    .line 425
    .line 426
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 427
    .line 428
    .line 429
    return v4

    .line 430
    :sswitch_0
    :try_start_25
    sget-boolean v0, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    .line 431
    .line 432
    if-eqz v0, :cond_d

    .line 433
    .line 434
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 435
    .line 436
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAggregatedMobileDataStatsPuller:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    .line 437
    .line 438
    if-eqz v0, :cond_d

    .line 439
    .line 440
    invoke-virtual {v0, p2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->pullDataBytesTransfer(Ljava/util/List;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 441
    .line 442
    .line 443
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 444
    .line 445
    .line 446
    return v4

    .line 447
    :sswitch_1
    :try_start_26
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 448
    .line 449
    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullHdrCapabilities(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 450
    .line 451
    .line 452
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 453
    .line 454
    .line 455
    return v4

    .line 456
    :sswitch_2
    :try_start_27
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 457
    .line 458
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullMediaCapabilitiesStats(ILjava/util/List;)I

    .line 459
    .line 460
    .line 461
    move-result p0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 462
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 463
    .line 464
    .line 465
    return p0

    .line 466
    :sswitch_3
    :try_start_28
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 467
    .line 468
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmInstalledIncrementalPackagesLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    monitor-enter v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 473
    :try_start_29
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 474
    .line 475
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullInstalledIncrementalPackagesLocked(ILjava/util/List;)I

    .line 476
    .line 477
    .line 478
    move-result p0

    .line 479
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    .line 480
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 481
    .line 482
    .line 483
    return p0

    .line 484
    :catchall_d
    move-exception p0

    .line 485
    :try_start_2a
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    .line 486
    :try_start_2b
    throw p0

    .line 487
    :sswitch_4
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 488
    .line 489
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    .line 491
    .line 492
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessDmabufMemory(ILjava/util/List;)I

    .line 493
    .line 494
    .line 495
    move-result p0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    .line 496
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 497
    .line 498
    .line 499
    return p0

    .line 500
    :sswitch_5
    :try_start_2c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 501
    .line 502
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuCyclesPerThreadGroupCluster(ILjava/util/List;)I

    .line 503
    .line 504
    .line 505
    move-result p0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 506
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 507
    .line 508
    .line 509
    return p0

    .line 510
    :sswitch_6
    :try_start_2d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 511
    .line 512
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemMemory(ILjava/util/List;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    .line 516
    .line 517
    .line 518
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 519
    .line 520
    .line 521
    return v4

    .line 522
    :sswitch_7
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 523
    .line 524
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSettingsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    monitor-enter v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    .line 529
    :try_start_2f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 530
    .line 531
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSettingsStatsLocked(ILjava/util/List;)I

    .line 532
    .line 533
    .line 534
    move-result p0

    .line 535
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_e

    .line 536
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 537
    .line 538
    .line 539
    return p0

    .line 540
    :catchall_e
    move-exception p0

    .line 541
    :try_start_30
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_e

    .line 542
    :try_start_31
    throw p0

    .line 543
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 544
    .line 545
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    .line 546
    .line 547
    monitor-enter v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    .line 548
    :try_start_32
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 549
    .line 550
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAttributedAppOpsLocked(ILjava/util/List;)I

    .line 551
    .line 552
    .line 553
    move-result p0

    .line 554
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_f

    .line 555
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 556
    .line 557
    .line 558
    return p0

    .line 559
    :catchall_f
    move-exception p0

    .line 560
    :try_start_33
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_f

    .line 561
    :try_start_34
    throw p0

    .line 562
    :sswitch_9
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 563
    .line 564
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemorySnapshot(ILjava/util/List;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    .line 568
    .line 569
    .line 570
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 571
    .line 572
    .line 573
    return v4

    .line 574
    :sswitch_a
    :try_start_35
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 575
    .line 576
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDeviceCalculatedPowerUseLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    monitor-enter v0
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    .line 581
    :try_start_36
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 582
    .line 583
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I

    .line 584
    .line 585
    .line 586
    move-result p0

    .line 587
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_10

    .line 588
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 589
    .line 590
    .line 591
    return p0

    .line 592
    :catchall_10
    move-exception p0

    .line 593
    :try_start_37
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_10

    .line 594
    :try_start_38
    throw p0

    .line 595
    :sswitch_b
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 596
    .line 597
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerThreadFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    monitor-enter v0
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    .line 602
    :try_start_39
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 603
    .line 604
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I

    .line 605
    .line 606
    .line 607
    move-result p0

    .line 608
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_11

    .line 609
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 610
    .line 611
    .line 612
    return p0

    .line 613
    :catchall_11
    move-exception p0

    .line 614
    :try_start_3a
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_11

    .line 615
    :try_start_3b
    throw p0

    .line 616
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 617
    .line 618
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessCpuTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    monitor-enter v0
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0

    .line 623
    :try_start_3c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 624
    .line 625
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessCpuTimeLocked(ILjava/util/List;)V

    .line 626
    .line 627
    .line 628
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_12

    .line 629
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 630
    .line 631
    .line 632
    return v4

    .line 633
    :catchall_12
    move-exception p0

    .line 634
    :try_start_3d
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_12

    .line 635
    :try_start_3e
    throw p0

    .line 636
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 637
    .line 638
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    .line 639
    .line 640
    monitor-enter v0
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0

    .line 641
    :try_start_3f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 642
    .line 643
    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    .line 644
    .line 645
    .line 646
    move-result p0

    .line 647
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_13

    .line 648
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 649
    .line 650
    .line 651
    return p0

    .line 652
    :catchall_13
    move-exception p0

    .line 653
    :try_start_40
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_13

    .line 654
    :try_start_41
    throw p0

    .line 655
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 656
    .line 657
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmPowerProfileLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    monitor-enter v0
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_0

    .line 662
    :try_start_42
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 663
    .line 664
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPowerProfileLocked(ILjava/util/List;)V

    .line 665
    .line 666
    .line 667
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_14

    .line 668
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 669
    .line 670
    .line 671
    return v4

    .line 672
    :catchall_14
    move-exception p0

    .line 673
    :try_start_43
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_14

    .line 674
    :try_start_44
    throw p0

    .line 675
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 676
    .line 677
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDiskIoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    monitor-enter v0
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_0

    .line 682
    :try_start_45
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 683
    .line 684
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskIOLocked(ILjava/util/List;)V

    .line 685
    .line 686
    .line 687
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_15

    .line 688
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 689
    .line 690
    .line 691
    return v4

    .line 692
    :catchall_15
    move-exception p0

    .line 693
    :try_start_46
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_15

    .line 694
    :try_start_47
    throw p0

    .line 695
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 696
    .line 697
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    .line 698
    .line 699
    monitor-enter v0
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_0

    .line 700
    :try_start_48
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 701
    .line 702
    const/4 v3, 0x1

    .line 703
    invoke-static {p0, v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    .line 704
    .line 705
    .line 706
    move-result p0

    .line 707
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_16

    .line 708
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 709
    .line 710
    .line 711
    return p0

    .line 712
    :catchall_16
    move-exception p0

    .line 713
    :try_start_49
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_16

    .line 714
    :try_start_4a
    throw p0

    .line 715
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 716
    .line 717
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    .line 718
    .line 719
    monitor-enter v0
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_0

    .line 720
    :try_start_4b
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 721
    .line 722
    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    .line 723
    .line 724
    .line 725
    move-result p0

    .line 726
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_17

    .line 727
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 728
    .line 729
    .line 730
    return p0

    .line 731
    :catchall_17
    move-exception p0

    .line 732
    :try_start_4c
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_17

    .line 733
    :try_start_4d
    throw p0

    .line 734
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 735
    .line 736
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCategorySizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    monitor-enter v0
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_0

    .line 741
    :try_start_4e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 742
    .line 743
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 744
    .line 745
    .line 746
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCategorySizeLocked(ILjava/util/List;)I

    .line 747
    .line 748
    .line 749
    move-result p0

    .line 750
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_18

    .line 751
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 752
    .line 753
    .line 754
    return p0

    .line 755
    :catchall_18
    move-exception p0

    .line 756
    :try_start_4f
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_18

    .line 757
    :try_start_50
    throw p0

    .line 758
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 759
    .line 760
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    monitor-enter v0
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_0

    .line 765
    :try_start_51
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 766
    .line 767
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 768
    .line 769
    .line 770
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppSizeLocked(ILjava/util/List;)I

    .line 771
    .line 772
    .line 773
    move-result p0

    .line 774
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_19

    .line 775
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 776
    .line 777
    .line 778
    return p0

    .line 779
    :catchall_19
    move-exception p0

    .line 780
    :try_start_52
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_19

    .line 781
    :try_start_53
    throw p0

    .line 782
    :pswitch_15
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 783
    .line 784
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDirectoryUsageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    monitor-enter v0
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_0

    .line 789
    :try_start_54
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 790
    .line 791
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    .line 793
    .line 794
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDirectoryUsageLocked(ILjava/util/List;)V

    .line 795
    .line 796
    .line 797
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_1a

    .line 798
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 799
    .line 800
    .line 801
    return v4

    .line 802
    :catchall_1a
    move-exception p0

    .line 803
    :try_start_55
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_1a

    .line 804
    :try_start_56
    throw p0

    .line 805
    :pswitch_16
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 806
    .line 807
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDiskStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    monitor-enter v0
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_0

    .line 812
    :try_start_57
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 813
    .line 814
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskStatsLocked(ILjava/util/List;)I

    .line 815
    .line 816
    .line 817
    move-result p0

    .line 818
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_1b

    .line 819
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 820
    .line 821
    .line 822
    return p0

    .line 823
    :catchall_1b
    move-exception p0

    .line 824
    :try_start_58
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_1b

    .line 825
    :try_start_59
    throw p0

    .line 826
    :pswitch_17
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 827
    .line 828
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmLooperStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    monitor-enter v0
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_0

    .line 833
    :try_start_5a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 834
    .line 835
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 836
    .line 837
    .line 838
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullLooperStatsLocked(ILjava/util/List;)I

    .line 839
    .line 840
    .line 841
    move-result p0

    .line 842
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_1c

    .line 843
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 844
    .line 845
    .line 846
    return p0

    .line 847
    :catchall_1c
    move-exception p0

    .line 848
    :try_start_5b
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_1c

    .line 849
    :try_start_5c
    throw p0

    .line 850
    :pswitch_18
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 851
    .line 852
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBinderCallsStatsExceptionsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    monitor-enter v0
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_0

    .line 857
    :try_start_5d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 858
    .line 859
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 860
    .line 861
    .line 862
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I

    .line 863
    .line 864
    .line 865
    move-result p0

    .line 866
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_1d

    .line 867
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 868
    .line 869
    .line 870
    return p0

    .line 871
    :catchall_1d
    move-exception p0

    .line 872
    :try_start_5e
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_1d

    .line 873
    :try_start_5f
    throw p0

    .line 874
    :pswitch_19
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 875
    .line 876
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBinderCallsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    monitor-enter v0
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_0

    .line 881
    :try_start_60
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 882
    .line 883
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 884
    .line 885
    .line 886
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsLocked(ILjava/util/List;)I

    .line 887
    .line 888
    .line 889
    move-result p0

    .line 890
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_1e

    .line 891
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 892
    .line 893
    .line 894
    return p0

    .line 895
    :catchall_1e
    move-exception p0

    .line 896
    :try_start_61
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_1e

    .line 897
    :try_start_62
    throw p0

    .line 898
    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 899
    .line 900
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTemperatureLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object v0

    .line 904
    monitor-enter v0
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_0

    .line 905
    :try_start_63
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 906
    .line 907
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTemperatureLocked(ILjava/util/List;)I

    .line 908
    .line 909
    .line 910
    move-result p0

    .line 911
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_1f

    .line 912
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 913
    .line 914
    .line 915
    return p0

    .line 916
    :catchall_1f
    move-exception p0

    .line 917
    :try_start_64
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_1f

    .line 918
    :try_start_65
    throw p0

    .line 919
    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 920
    .line 921
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmHealthHalLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object v0

    .line 925
    monitor-enter v0
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_0

    .line 926
    :try_start_66
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 927
    .line 928
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullHealthHalLocked(ILjava/util/List;)I

    .line 929
    .line 930
    .line 931
    move-result p0

    .line 932
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_20

    .line 933
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 934
    .line 935
    .line 936
    return p0

    .line 937
    :catchall_20
    move-exception p0

    .line 938
    :try_start_67
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_20

    .line 939
    :try_start_68
    throw p0

    .line 940
    :cond_1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 941
    .line 942
    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullCachedAppsHighWatermark(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)V
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_0

    .line 943
    .line 944
    .line 945
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 946
    .line 947
    .line 948
    return v4

    .line 949
    :cond_2
    :try_start_69
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 950
    .line 951
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmUwbActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    monitor-enter v0
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_0

    .line 956
    :try_start_6a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 957
    .line 958
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullUwbActivityInfoLocked(ILjava/util/List;)I

    .line 959
    .line 960
    .line 961
    move-result p0

    .line 962
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_21

    .line 963
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 964
    .line 965
    .line 966
    return p0

    .line 967
    :catchall_21
    move-exception p0

    .line 968
    :try_start_6b
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_21

    .line 969
    :try_start_6c
    throw p0

    .line 970
    :cond_3
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 971
    .line 972
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    .line 973
    .line 974
    monitor-enter v0
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_0

    .line 975
    :try_start_6d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 976
    .line 977
    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcessAssociationLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    .line 978
    .line 979
    .line 980
    move-result p0

    .line 981
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_22

    .line 982
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 983
    .line 984
    .line 985
    return p0

    .line 986
    :catchall_22
    move-exception p0

    .line 987
    :try_start_6e
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_22

    .line 988
    :try_start_6f
    throw p0

    .line 989
    :cond_4
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 990
    .line 991
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    .line 992
    .line 993
    monitor-enter v0
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_0

    .line 994
    :try_start_70
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 995
    .line 996
    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcessStateLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    .line 997
    .line 998
    .line 999
    move-result p0

    .line 1000
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_23

    .line 1001
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1002
    .line 1003
    .line 1004
    return p0

    .line 1005
    :catchall_23
    move-exception p0

    .line 1006
    :try_start_71
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_23

    .line 1007
    :try_start_72
    throw p0

    .line 1008
    :cond_5
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1009
    .line 1010
    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullPendingIntentsPerPackage(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)V
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_0

    .line 1011
    .line 1012
    .line 1013
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1014
    .line 1015
    .line 1016
    return v4

    .line 1017
    :cond_6
    :try_start_73
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1018
    .line 1019
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1020
    .line 1021
    .line 1022
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemServerPinnerStats(ILjava/util/List;)V
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_0

    .line 1023
    .line 1024
    .line 1025
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1026
    .line 1027
    .line 1028
    return v4

    .line 1029
    :cond_7
    :try_start_74
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1030
    .line 1031
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAccessibilityFloatingMenuStatsLocked(ILjava/util/List;)I

    .line 1032
    .line 1033
    .line 1034
    move-result p0
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_0

    .line 1035
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1036
    .line 1037
    .line 1038
    return p0

    .line 1039
    :cond_8
    :try_start_75
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1040
    .line 1041
    invoke-virtual {p0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAccessibilityShortcutStatsLocked(Ljava/util/List;)I

    .line 1042
    .line 1043
    .line 1044
    move-result p0
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_0

    .line 1045
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1046
    .line 1047
    .line 1048
    return p0

    .line 1049
    :cond_9
    :pswitch_1c
    :try_start_76
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1050
    .line 1051
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKeystoreAtoms(ILjava/util/List;)I

    .line 1052
    .line 1053
    .line 1054
    move-result p0
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_0

    .line 1055
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1056
    .line 1057
    .line 1058
    return p0

    .line 1059
    :cond_a
    :try_start_77
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1060
    .line 1061
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTimeZoneDetectionInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    monitor-enter v0
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_0

    .line 1066
    :try_start_78
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1067
    .line 1068
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1069
    .line 1070
    .line 1071
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDetectorStateLocked(ILjava/util/List;)I

    .line 1072
    .line 1073
    .line 1074
    move-result p0

    .line 1075
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_24

    .line 1076
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1077
    .line 1078
    .line 1079
    return p0

    .line 1080
    :catchall_24
    move-exception p0

    .line 1081
    :try_start_79
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_24

    .line 1082
    :try_start_7a
    throw p0

    .line 1083
    :cond_b
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1084
    .line 1085
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    .line 1086
    .line 1087
    monitor-enter v0
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_0

    .line 1088
    :try_start_7b
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1089
    .line 1090
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuCyclesPerUidClusterLocked(ILjava/util/List;)V

    .line 1091
    .line 1092
    .line 1093
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_25

    .line 1094
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1095
    .line 1096
    .line 1097
    return v4

    .line 1098
    :catchall_25
    move-exception p0

    .line 1099
    :try_start_7c
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_25

    .line 1100
    :try_start_7d
    throw p0

    .line 1101
    :cond_c
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1102
    .line 1103
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerClusterFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v0

    .line 1107
    monitor-enter v0
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_0

    .line 1108
    :try_start_7e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1109
    .line 1110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1111
    .line 1112
    .line 1113
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerClusterFreqLocked(ILjava/util/List;)I

    .line 1114
    .line 1115
    .line 1116
    move-result p0

    .line 1117
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_26

    .line 1118
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1119
    .line 1120
    .line 1121
    return p0

    .line 1122
    :catchall_26
    move-exception p0

    .line 1123
    :try_start_7f
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_26

    .line 1124
    :try_start_80
    throw p0

    .line 1125
    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1126
    .line 1127
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuClusterTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v0

    .line 1131
    monitor-enter v0
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_0

    .line 1132
    :try_start_81
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1133
    .line 1134
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuClusterTimeLocked(ILjava/util/List;)V

    .line 1135
    .line 1136
    .line 1137
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_27

    .line 1138
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1139
    .line 1140
    .line 1141
    return v4

    .line 1142
    :catchall_27
    move-exception p0

    .line 1143
    :try_start_82
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_27

    .line 1144
    :try_start_83
    throw p0

    .line 1145
    :pswitch_1e
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1146
    .line 1147
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuActiveTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v0

    .line 1151
    monitor-enter v0
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_0

    .line 1152
    :try_start_84
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1153
    .line 1154
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuActiveTimeLocked(ILjava/util/List;)V

    .line 1155
    .line 1156
    .line 1157
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_28

    .line 1158
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1159
    .line 1160
    .line 1161
    return v4

    .line 1162
    :catchall_28
    move-exception p0

    .line 1163
    :try_start_85
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_28

    .line 1164
    :try_start_86
    throw p0

    .line 1165
    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1166
    .line 1167
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemUptimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v0

    .line 1171
    monitor-enter v0
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_0

    .line 1172
    :try_start_87
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1173
    .line 1174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1175
    .line 1176
    .line 1177
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemUptimeLocked(ILjava/util/List;)V

    .line 1178
    .line 1179
    .line 1180
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_29

    .line 1181
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1182
    .line 1183
    .line 1184
    return v4

    .line 1185
    :catchall_29
    move-exception p0

    .line 1186
    :try_start_88
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_29

    .line 1187
    :try_start_89
    throw p0

    .line 1188
    :pswitch_20
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1189
    .line 1190
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemElapsedRealtimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v0

    .line 1194
    monitor-enter v0
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_0

    .line 1195
    :try_start_8a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1196
    .line 1197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1198
    .line 1199
    .line 1200
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemElapsedRealtimeLocked(ILjava/util/List;)V

    .line 1201
    .line 1202
    .line 1203
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_2a

    .line 1204
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1205
    .line 1206
    .line 1207
    return v4

    .line 1208
    :catchall_2a
    move-exception p0

    .line 1209
    :try_start_8b
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_2a

    .line 1210
    :try_start_8c
    throw p0

    .line 1211
    :pswitch_21
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1212
    .line 1213
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessMemoryStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v0

    .line 1217
    monitor-enter v0
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_0

    .line 1218
    :try_start_8d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1219
    .line 1220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1221
    .line 1222
    .line 1223
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryStateLocked(ILjava/util/List;)V

    .line 1224
    .line 1225
    .line 1226
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_2b

    .line 1227
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1228
    .line 1229
    .line 1230
    return v4

    .line 1231
    :catchall_2b
    move-exception p0

    .line 1232
    :try_start_8e
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_2b

    .line 1233
    :try_start_8f
    throw p0

    .line 1234
    :pswitch_22
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1235
    .line 1236
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmModemActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v0

    .line 1240
    monitor-enter v0
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_0

    .line 1241
    :try_start_90
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1242
    .line 1243
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullModemActivityInfoLocked(ILjava/util/List;)I

    .line 1244
    .line 1245
    .line 1246
    move-result p0

    .line 1247
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_2c

    .line 1248
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1249
    .line 1250
    .line 1251
    return p0

    .line 1252
    :catchall_2c
    move-exception p0

    .line 1253
    :try_start_91
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_2c

    .line 1254
    :try_start_92
    throw p0

    .line 1255
    :pswitch_23
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1256
    .line 1257
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmWifiActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v0

    .line 1261
    monitor-enter v0
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_0

    .line 1262
    :try_start_93
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1263
    .line 1264
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullWifiActivityInfoLocked(ILjava/util/List;)I

    .line 1265
    .line 1266
    .line 1267
    move-result p0

    .line 1268
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_2d

    .line 1269
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1270
    .line 1271
    .line 1272
    return p0

    .line 1273
    :catchall_2d
    move-exception p0

    .line 1274
    :try_start_94
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_2d

    .line 1275
    :try_start_95
    throw p0

    .line 1276
    :pswitch_24
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1277
    .line 1278
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    .line 1279
    .line 1280
    monitor-enter v0
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_0

    .line 1281
    :try_start_96
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1282
    .line 1283
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidFreqLocked(ILjava/util/List;)V

    .line 1284
    .line 1285
    .line 1286
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_2e

    .line 1287
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1288
    .line 1289
    .line 1290
    return v4

    .line 1291
    :catchall_2e
    move-exception p0

    .line 1292
    :try_start_97
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_2e

    .line 1293
    :try_start_98
    throw p0

    .line 1294
    :pswitch_25
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1295
    .line 1296
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v0

    .line 1300
    monitor-enter v0
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_0

    .line 1301
    :try_start_99
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1302
    .line 1303
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidLocked(ILjava/util/List;)V

    .line 1304
    .line 1305
    .line 1306
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_2f

    .line 1307
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1308
    .line 1309
    .line 1310
    return v4

    .line 1311
    :catchall_2f
    move-exception p0

    .line 1312
    :try_start_9a
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_2f

    .line 1313
    :try_start_9b
    throw p0

    .line 1314
    :pswitch_26
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1315
    .line 1316
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmKernelWakelockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v0

    .line 1320
    monitor-enter v0
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_0

    .line 1321
    :try_start_9c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1322
    .line 1323
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKernelWakelockLocked(ILjava/util/List;)V

    .line 1324
    .line 1325
    .line 1326
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_30

    .line 1327
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1328
    .line 1329
    .line 1330
    return v4

    .line 1331
    :catchall_30
    move-exception p0

    .line 1332
    :try_start_9d
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_30

    .line 1333
    :try_start_9e
    throw p0

    .line 1334
    :cond_d
    :pswitch_27
    :sswitch_c
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1335
    .line 1336
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    .line 1337
    .line 1338
    monitor-enter v0
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_0

    .line 1339
    :try_start_9f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1340
    .line 1341
    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullDataBytesTransferLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    .line 1342
    .line 1343
    .line 1344
    move-result p0

    .line 1345
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_31

    .line 1346
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1347
    .line 1348
    .line 1349
    return p0

    .line 1350
    :catchall_31
    move-exception p0

    .line 1351
    :try_start_a0
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_31

    .line 1352
    :try_start_a1
    throw p0

    .line 1353
    :cond_e
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1354
    .line 1355
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v0

    .line 1359
    monitor-enter v0
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_0

    .line 1360
    :try_start_a2
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1361
    .line 1362
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1363
    .line 1364
    .line 1365
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullIonHeapSizeLocked(ILjava/util/List;)V

    .line 1366
    .line 1367
    .line 1368
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_32

    .line 1369
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1370
    .line 1371
    .line 1372
    return v4

    .line 1373
    :catchall_32
    move-exception p0

    .line 1374
    :try_start_a3
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_32

    .line 1375
    :try_start_a4
    throw p0

    .line 1376
    :cond_f
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1377
    .line 1378
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmRuntimeAppOpAccessMessageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v0

    .line 1382
    monitor-enter v0
    :try_end_a4
    .catchall {:try_start_a4 .. :try_end_a4} :catchall_0

    .line 1383
    :try_start_a5
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1384
    .line 1385
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I

    .line 1386
    .line 1387
    .line 1388
    move-result p0

    .line 1389
    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_33

    .line 1390
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1391
    .line 1392
    .line 1393
    return p0

    .line 1394
    :catchall_33
    move-exception p0

    .line 1395
    :try_start_a6
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_33

    .line 1396
    :try_start_a7
    throw p0

    .line 1397
    :cond_10
    :pswitch_28
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1398
    .line 1399
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDangerousPermissionStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v0

    .line 1403
    monitor-enter v0
    :try_end_a7
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_0

    .line 1404
    :try_start_a8
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1405
    .line 1406
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDangerousPermissionStateLocked(ILjava/util/List;)I

    .line 1407
    .line 1408
    .line 1409
    move-result p0

    .line 1410
    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_a8 .. :try_end_a8} :catchall_34

    .line 1411
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1412
    .line 1413
    .line 1414
    return p0

    .line 1415
    :catchall_34
    move-exception p0

    .line 1416
    :try_start_a9
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_a9 .. :try_end_a9} :catchall_34

    .line 1417
    :try_start_aa
    throw p0

    .line 1418
    :cond_11
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1419
    .line 1420
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNotificationRemoteViewsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v0

    .line 1424
    monitor-enter v0
    :try_end_aa
    .catchall {:try_start_aa .. :try_end_aa} :catchall_0

    .line 1425
    :try_start_ab
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1426
    .line 1427
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNotificationRemoteViewsLocked(ILjava/util/List;)I

    .line 1428
    .line 1429
    .line 1430
    move-result p0

    .line 1431
    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_ab .. :try_end_ab} :catchall_35

    .line 1432
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1433
    .line 1434
    .line 1435
    return p0

    .line 1436
    :catchall_35
    move-exception p0

    .line 1437
    :try_start_ac
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_ac .. :try_end_ac} :catchall_35

    .line 1438
    :try_start_ad
    throw p0

    .line 1439
    :cond_12
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1440
    .line 1441
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v0

    .line 1445
    monitor-enter v0
    :try_end_ad
    .catchall {:try_start_ad .. :try_end_ad} :catchall_0

    .line 1446
    :try_start_ae
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1447
    .line 1448
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullExternalStorageInfoLocked(ILjava/util/List;)I

    .line 1449
    .line 1450
    .line 1451
    move-result p0

    .line 1452
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_ae .. :try_end_ae} :catchall_36

    .line 1453
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1454
    .line 1455
    .line 1456
    return p0

    .line 1457
    :catchall_36
    move-exception p0

    .line 1458
    :try_start_af
    monitor-exit v0
    :try_end_af
    .catchall {:try_start_af .. :try_end_af} :catchall_36

    .line 1459
    :try_start_b0
    throw p0

    .line 1460
    :cond_13
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1461
    .line 1462
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTimeZoneDataInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v0

    .line 1466
    monitor-enter v0
    :try_end_b0
    .catchall {:try_start_b0 .. :try_end_b0} :catchall_0

    .line 1467
    :try_start_b1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1468
    .line 1469
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1470
    .line 1471
    .line 1472
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDataInfoLocked(ILjava/util/List;)I

    .line 1473
    .line 1474
    .line 1475
    move-result p0

    .line 1476
    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_b1 .. :try_end_b1} :catchall_37

    .line 1477
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1478
    .line 1479
    .line 1480
    return p0

    .line 1481
    :catchall_37
    move-exception p0

    .line 1482
    :try_start_b2
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_b2 .. :try_end_b2} :catchall_37

    .line 1483
    :try_start_b3
    throw p0

    .line 1484
    :cond_14
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1485
    .line 1486
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBluetoothActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v0

    .line 1490
    monitor-enter v0
    :try_end_b3
    .catchall {:try_start_b3 .. :try_end_b3} :catchall_0

    .line 1491
    :try_start_b4
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1492
    .line 1493
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1494
    .line 1495
    .line 1496
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothActivityInfoLocked(ILjava/util/List;)I

    .line 1497
    .line 1498
    .line 1499
    move-result p0

    .line 1500
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_b4 .. :try_end_b4} :catchall_38

    .line 1501
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1502
    .line 1503
    .line 1504
    return p0

    .line 1505
    :catchall_38
    move-exception p0

    .line 1506
    :try_start_b5
    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_b5 .. :try_end_b5} :catchall_38

    .line 1507
    :try_start_b6
    throw p0

    .line 1508
    :cond_15
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1509
    .line 1510
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBluetoothBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v0

    .line 1514
    monitor-enter v0
    :try_end_b6
    .catchall {:try_start_b6 .. :try_end_b6} :catchall_0

    .line 1515
    :try_start_b7
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1516
    .line 1517
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1518
    .line 1519
    .line 1520
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothBytesTransferLocked(ILjava/util/List;)I

    .line 1521
    .line 1522
    .line 1523
    move-result p0

    .line 1524
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b7 .. :try_end_b7} :catchall_39

    .line 1525
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1526
    .line 1527
    .line 1528
    return p0

    .line 1529
    :catchall_39
    move-exception p0

    .line 1530
    :try_start_b8
    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_b8 .. :try_end_b8} :catchall_39

    .line 1531
    :try_start_b9
    throw p0
    :try_end_b9
    .catchall {:try_start_b9 .. :try_end_b9} :catchall_0

    .line 1532
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1533
    .line 1534
    .line 1535
    throw p0

    .line 1536
    nop

    .line 1537
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_26
    .end packed-switch

    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    :pswitch_data_1
    .packed-switch 0x2719
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    :pswitch_data_2
    .packed-switch 0x2723
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_1b
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    :sswitch_data_0
    .sparse-switch
        0x2735 -> :sswitch_b
        0x2737 -> :sswitch_a
        0x2750 -> :sswitch_9
        0x275b -> :sswitch_8
        0x2760 -> :sswitch_7
        0x276c -> :sswitch_6
        0x2772 -> :sswitch_5
        0x2774 -> :sswitch_c
        0x2779 -> :sswitch_4
        0x2782 -> :sswitch_3
        0x2792 -> :sswitch_2
        0x27bf -> :sswitch_1
        0x27d8 -> :sswitch_c
        0x27dc -> :sswitch_0
    .end sparse-switch

    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    :pswitch_data_3
    .packed-switch 0x2785
        :pswitch_c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    :pswitch_data_4
    .packed-switch 0x273a
        :pswitch_b
        :pswitch_1b
        :pswitch_a
        :pswitch_1b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_28
    .end packed-switch

    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    :pswitch_data_5
    .packed-switch 0x2748
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
