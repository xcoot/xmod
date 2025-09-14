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

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 4
    iget v1, v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 9
    move-object/from16 v0, p1

    .line 11
    check-cast v0, Lcom/android/server/appop/AppOpsService;

    .line 13
    move-object/from16 v1, p2

    .line 15
    check-cast v1, Ljava/lang/Integer;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v1

    .line 21
    move-object/from16 v2, p3

    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result v2

    .line 29
    move-object/from16 v3, p4

    .line 31
    check-cast v3, Ljava/lang/Boolean;

    .line 33
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    move-result v3

    .line 37
    move-object/from16 v4, p5

    .line 39
    check-cast v4, Ljava/lang/String;

    .line 41
    sget-boolean v5, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 43
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IILjava/lang/String;Z)V

    .line 46
    return-void

    .line 47
    :pswitch_0
    move-object/from16 v1, p1

    .line 49
    check-cast v1, Lcom/android/server/appop/AppOpsService;

    .line 51
    move-object/from16 v2, p2

    .line 53
    check-cast v2, Ljava/lang/String;

    .line 55
    move-object/from16 v3, p3

    .line 57
    check-cast v3, Ljava/lang/Integer;

    .line 59
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 62
    move-result v4

    .line 63
    move-object/from16 v5, p4

    .line 65
    check-cast v5, Ljava/lang/Integer;

    .line 67
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 70
    move-result v5

    .line 71
    move-object/from16 v6, p5

    .line 73
    check-cast v6, Ljava/lang/Integer;

    .line 75
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 78
    move-result v6

    .line 79
    sget-boolean v7, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 81
    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 84
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v7

    .line 88
    check-cast v7, Landroid/util/ArraySet;

    .line 90
    const/4 v13, 0x0

    .line 91
    if-eqz v7, :cond_0

    .line 93
    new-instance v8, Landroid/util/ArraySet;

    .line 95
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 98
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    goto/16 :goto_3

    .line 105
    :cond_0
    move-object v8, v13

    .line 106
    :goto_0
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 108
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Landroid/util/ArraySet;

    .line 114
    if-eqz v7, :cond_2

    .line 116
    if-nez v8, :cond_1

    .line 118
    new-instance v8, Landroid/util/ArraySet;

    .line 120
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 123
    :cond_1
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 126
    :cond_2
    move-object v14, v8

    .line 127
    if-eqz v14, :cond_3

    .line 129
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 131
    if-eqz v7, :cond_3

    .line 133
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 135
    invoke-interface {v7}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    .line 138
    move-result-object v7

    .line 139
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {v14, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 146
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 149
    move-result-object v7

    .line 150
    const-wide/32 v8, 0x402000

    .line 153
    invoke-virtual {v7, v2, v8, v9, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

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

    .line 166
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    .line 169
    move-result-object v6

    .line 170
    if-nez v6, :cond_4

    .line 172
    goto :goto_1

    .line 173
    :cond_4
    move/from16 v7, p0

    .line 175
    invoke-virtual {v1, v6, v4, v15, v7}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    .line 178
    move-result-object v13

    .line 179
    :goto_1
    if-eqz v13, :cond_5

    .line 181
    iget v6, v13, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 183
    invoke-static {v6}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 186
    move-result v6

    .line 187
    if-ne v5, v6, :cond_5

    .line 189
    invoke-virtual {v1, v13, v15, v2}, Lcom/android/server/appop/AppOpsService;->pruneOpLocked(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V

    .line 192
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 195
    const/4 v6, 0x2

    .line 196
    if-eq v5, v6, :cond_7

    .line 198
    if-ne v5, v0, :cond_6

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

    .line 206
    :cond_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    if-eqz v14, :cond_8

    .line 209
    const/4 v4, -0x1

    .line 210
    if-eq v15, v4, :cond_8

    .line 212
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 214
    new-instance v6, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;

    .line 216
    invoke-direct {v6, v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;-><init>(I)V

    .line 219
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    move-result-object v10

    .line 223
    const-string/jumbo v12, "default:0"

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

    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

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

    .line 242
    check-cast v0, Lcom/android/server/appop/AppOpsService;

    .line 244
    move-object/from16 v1, p2

    .line 246
    check-cast v1, Ljava/lang/Integer;

    .line 248
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 251
    move-result v1

    .line 252
    move-object/from16 v2, p3

    .line 254
    check-cast v2, Ljava/lang/Integer;

    .line 256
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 259
    move-result v2

    .line 260
    move-object/from16 v3, p4

    .line 262
    check-cast v3, Ljava/lang/Boolean;

    .line 264
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 267
    move-result v3

    .line 268
    move-object/from16 v4, p5

    .line 270
    check-cast v4, Ljava/lang/String;

    .line 272
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IILjava/lang/String;Z)V

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
