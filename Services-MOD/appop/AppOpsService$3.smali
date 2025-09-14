.class public final Lcom/android/server/appop/AppOpsService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/AppOpsService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/appop/AppOpsService$3;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    iget v2, v0, Lcom/android/server/appop/AppOpsService$3;->$r8$classId:I

    .line 7
    packed-switch v2, :pswitch_data_0

    .line 10
    const-string v2, "android.intent.extra.changed_uid_list"

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 15
    move-result-object v2

    .line 16
    const-string v3, "android.intent.extra.changed_package_list"

    .line 18
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    sget-object v3, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    .line 24
    array-length v4, v3

    .line 25
    const/4 v5, 0x0

    .line 26
    move v6, v5

    .line 27
    :goto_0
    if-ge v6, v4, :cond_4

    .line 29
    aget v13, v3, v6

    .line 31
    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 33
    monitor-enter v7

    .line 34
    :try_start_0
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 36
    iget-object v8, v8, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 38
    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v8

    .line 42
    check-cast v8, Landroid/util/ArraySet;

    .line 44
    if-nez v8, :cond_0

    .line 46
    monitor-exit v7

    .line 47
    goto :goto_3

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    goto :goto_4

    .line 50
    :cond_0
    new-instance v14, Landroid/util/ArraySet;

    .line 52
    invoke-direct {v14, v8}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 55
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    move v15, v5

    .line 57
    :goto_1
    array-length v7, v2

    .line 58
    if-ge v15, v7, :cond_3

    .line 60
    aget v16, v2, v15

    .line 62
    aget-object v17, v1, v15

    .line 64
    new-instance v7, Landroid/util/ArraySet;

    .line 66
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 69
    const-string/jumbo v8, "default:0"

    .line 72
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 77
    iget-object v8, v8, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 79
    if-eqz v8, :cond_1

    .line 81
    invoke-virtual {v8}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getAllPersistentDeviceIds()Ljava/util/Set;

    .line 84
    move-result-object v8

    .line 85
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 88
    :cond_1
    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object v18

    .line 92
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_2

    .line 98
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object v7

    .line 102
    move-object v12, v7

    .line 103
    check-cast v12, Ljava/lang/String;

    .line 105
    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 107
    move-object v8, v14

    .line 108
    move v9, v13

    .line 109
    move/from16 v10, v16

    .line 111
    move-object/from16 v11, v17

    .line 113
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    add-int/lit8 v15, v15, 0x1

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 122
    goto :goto_0

    .line 123
    :goto_4
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    throw v0

    .line 125
    :cond_4
    return-void

    .line 126
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 129
    move-result-object v2

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    .line 137
    move-result-object v3

    .line 138
    const-string v4, "android.intent.extra.UID"

    .line 140
    const/4 v5, -0x1

    .line 141
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 144
    move-result v10

    .line 145
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    .line 147
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_8

    .line 153
    const-string v4, "android.intent.extra.REPLACING"

    .line 155
    const/4 v5, 0x0

    .line 156
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 159
    move-result v4

    .line 160
    if-nez v4, :cond_8

    .line 162
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 164
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 167
    move-result-object v4

    .line 168
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 171
    move-result v5

    .line 172
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 175
    move-result v6

    .line 176
    const-wide/16 v7, 0x1000

    .line 178
    move-object v9, v3

    .line 179
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(IIJLjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 182
    move-result-object v1

    .line 183
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 185
    invoke-virtual {v2, v1}, Lcom/android/server/appop/AppOpsService;->isSamplingTarget(Landroid/content/pm/PackageInfo;)Z

    .line 188
    move-result v1

    .line 189
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 191
    monitor-enter v4

    .line 192
    if-eqz v1, :cond_5

    .line 194
    :try_start_2
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 196
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    .line 198
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 201
    goto :goto_5

    .line 202
    :catchall_1
    move-exception v0

    .line 203
    goto :goto_7

    .line 204
    :cond_5
    :goto_5
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 206
    const/4 v2, 0x1

    .line 207
    invoke-virtual {v1, v10, v2}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    .line 210
    move-result-object v1

    .line 211
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 213
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 216
    move-result v5

    .line 217
    if-nez v5, :cond_6

    .line 219
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 221
    new-instance v6, Lcom/android/server/appop/AppOpsService$Ops;

    .line 223
    invoke-direct {v6, v3, v1}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 226
    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_6
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    .line 237
    move-result v1

    .line 238
    const/16 v3, 0x2710

    .line 240
    if-ge v1, v3, :cond_7

    .line 242
    goto :goto_6

    .line 243
    :cond_7
    invoke-static {v10}, Landroid/os/Process;->toSdkSandboxUid(I)I

    .line 246
    move-result v1

    .line 247
    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    .line 250
    :goto_6
    monitor-exit v4

    .line 251
    goto :goto_8

    .line 252
    :goto_7
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    throw v0

    .line 254
    :cond_8
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    .line 256
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    move-result v4

    .line 260
    if-eqz v4, :cond_9

    .line 262
    const-string v4, "android.intent.extra.REPLACING"

    .line 264
    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 267
    move-result v1

    .line 268
    if-nez v1, :cond_9

    .line 270
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 272
    monitor-enter v1

    .line 273
    :try_start_3
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 275
    invoke-virtual {v0, v10, v3}, Lcom/android/server/appop/AppOpsService;->packageRemovedLocked(ILjava/lang/String;)V

    .line 278
    monitor-exit v1

    .line 279
    goto :goto_8

    .line 280
    :catchall_2
    move-exception v0

    .line 281
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 282
    throw v0

    .line 283
    :cond_9
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 285
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    move-result v1

    .line 289
    if-eqz v1, :cond_b

    .line 291
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 293
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 300
    move-result-object v1

    .line 301
    if-nez v1, :cond_a

    .line 303
    goto :goto_8

    .line 304
    :cond_a
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 306
    monitor-enter v2

    .line 307
    :try_start_4
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 309
    invoke-virtual {v0, v1, v10}, Lcom/android/server/appop/AppOpsService;->refreshAttributionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 312
    monitor-exit v2

    .line 313
    goto :goto_8

    .line 314
    :catchall_3
    move-exception v0

    .line 315
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 316
    throw v0

    .line 317
    :cond_b
    :goto_8
    return-void

    .line 318
    nop

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
