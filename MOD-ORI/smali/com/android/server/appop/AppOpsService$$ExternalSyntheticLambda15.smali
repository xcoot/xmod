.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 16

    .line 1
    const/4 v0, 0x1

    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    iget v1, v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    move-object/from16 v0, p1

    .line 10
    .line 11
    check-cast v0, Lcom/android/server/appop/AppOpsService;

    .line 12
    .line 13
    move-object/from16 v1, p2

    .line 14
    .line 15
    check-cast v1, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    move-object/from16 v2, p3

    .line 22
    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    move-object/from16 v3, p4

    .line 30
    .line 31
    check-cast v3, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    move-object/from16 v4, p5

    .line 38
    .line 39
    check-cast v4, Ljava/lang/String;

    .line 40
    .line 41
    sget-boolean v5, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IILjava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_0
    move-object/from16 v1, p1

    .line 48
    .line 49
    check-cast v1, Lcom/android/server/appop/AppOpsService;

    .line 50
    .line 51
    move-object/from16 v2, p2

    .line 52
    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    move-object/from16 v3, p3

    .line 56
    .line 57
    check-cast v3, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    move-object/from16 v5, p4

    .line 64
    .line 65
    check-cast v5, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    move-object/from16 v6, p5

    .line 72
    .line 73
    check-cast v6, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    sget-boolean v7, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 80
    .line 81
    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 83
    .line 84
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    check-cast v7, Landroid/util/ArraySet;

    .line 89
    .line 90
    const/4 v13, 0x0

    .line 91
    if-eqz v7, :cond_0

    .line 92
    .line 93
    new-instance v8, Landroid/util/ArraySet;

    .line 94
    .line 95
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    goto/16 :goto_3

    .line 104
    .line 105
    :cond_0
    move-object v8, v13

    .line 106
    :goto_0
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 107
    .line 108
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Landroid/util/ArraySet;

    .line 113
    .line 114
    if-eqz v7, :cond_2

    .line 115
    .line 116
    if-nez v8, :cond_1

    .line 117
    .line 118
    new-instance v8, Landroid/util/ArraySet;

    .line 119
    .line 120
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 121
    .line 122
    .line 123
    :cond_1
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 124
    .line 125
    .line 126
    :cond_2
    move-object v14, v8

    .line 127
    if-eqz v14, :cond_3

    .line 128
    .line 129
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 130
    .line 131
    if-eqz v7, :cond_3

    .line 132
    .line 133
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 134
    .line 135
    invoke-interface {v7}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {v14, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    const-wide/32 v8, 0x402000

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v2, v8, v9, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 154
    .line 155
    .line 156
    move-result v15

    .line 157
    const/4 v9, 0x0

    .line 158
    const/4 v10, 0x0

    .line 159
    const/4 v11, 0x0

    .line 160
    const/4 v12, 0x0

    .line 161
    move-object v6, v1

    .line 162
    move v7, v15

    .line 163
    move-object v8, v2

    .line 164
    move/from16 p0, v12

    .line 165
    .line 166
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    if-nez v6, :cond_4

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_4
    move/from16 v7, p0

    .line 174
    .line 175
    invoke-virtual {v1, v6, v4, v15, v7}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    :goto_1
    if-eqz v13, :cond_5

    .line 180
    .line 181
    iget v6, v13, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 182
    .line 183
    invoke-static {v6}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-ne v5, v6, :cond_5

    .line 188
    .line 189
    invoke-virtual {v1, v13, v15, v2}, Lcom/android/server/appop/AppOpsService;->pruneOpLocked(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 193
    .line 194
    .line 195
    const/4 v6, 0x2

    .line 196
    if-eq v5, v6, :cond_7

    .line 197
    .line 198
    if-ne v5, v0, :cond_6

    .line 199
    .line 200
    move v5, v0

    .line 201
    goto :goto_2

    .line 202
    :cond_6
    const/4 v5, 0x0

    .line 203
    :goto_2
    invoke-virtual {v1, v4, v15, v5}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUidForDefaultDeviceLocked(IIZ)V

    .line 204
    .line 205
    .line 206
    :cond_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    if-eqz v14, :cond_8

    .line 208
    .line 209
    const/4 v4, -0x1

    .line 210
    if-eq v15, v4, :cond_8

    .line 211
    .line 212
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 213
    .line 214
    new-instance v6, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;

    .line 215
    .line 216
    invoke-direct {v6, v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;-><init>(I)V

    .line 217
    .line 218
    .line 219
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    const-string/jumbo v12, "default:0"

    .line 224
    .line 225
    .line 226
    move-object v7, v1

    .line 227
    move-object v8, v14

    .line 228
    move-object v9, v3

    .line 229
    move-object v11, v2

    .line 230
    invoke-static/range {v6 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    .line 236
    .line 237
    :cond_8
    return-void

    .line 238
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    throw v0

    .line 240
    :pswitch_1
    move-object/from16 v0, p1

    .line 241
    .line 242
    check-cast v0, Lcom/android/server/appop/AppOpsService;

    .line 243
    .line 244
    move-object/from16 v1, p2

    .line 245
    .line 246
    check-cast v1, Ljava/lang/Integer;

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    move-object/from16 v2, p3

    .line 253
    .line 254
    check-cast v2, Ljava/lang/Integer;

    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    move-object/from16 v3, p4

    .line 261
    .line 262
    check-cast v3, Ljava/lang/Boolean;

    .line 263
    .line 264
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    move-object/from16 v4, p5

    .line 269
    .line 270
    check-cast v4, Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IILjava/lang/String;Z)V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    nop

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
