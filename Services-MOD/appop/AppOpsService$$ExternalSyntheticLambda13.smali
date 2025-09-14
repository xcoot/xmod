.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/NonaConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 3
    check-cast v0, Lcom/android/server/appop/AppOpsService;

    .line 5
    move-object/from16 v1, p2

    .line 7
    check-cast v1, Landroid/util/ArraySet;

    .line 9
    move-object/from16 v2, p3

    .line 11
    check-cast v2, Ljava/lang/Integer;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result v2

    .line 17
    move-object/from16 v3, p4

    .line 19
    check-cast v3, Ljava/lang/Integer;

    .line 21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v3

    .line 25
    move-object/from16 v4, p5

    .line 27
    check-cast v4, Ljava/lang/String;

    .line 29
    move-object/from16 v5, p6

    .line 31
    check-cast v5, Ljava/lang/String;

    .line 33
    move-object/from16 v6, p7

    .line 35
    check-cast v6, Ljava/lang/Integer;

    .line 37
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result v6

    .line 41
    move-object/from16 v7, p8

    .line 43
    check-cast v7, Ljava/lang/Integer;

    .line 45
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result v7

    .line 49
    move-object/from16 v8, p9

    .line 51
    check-cast v8, Ljava/lang/Integer;

    .line 53
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 56
    move-result v8

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 63
    move-result-wide v9

    .line 64
    :try_start_0
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 67
    move-result v11

    .line 68
    const/4 v12, 0x0

    .line 69
    :goto_0
    if-ge v12, v11, :cond_1

    .line 71
    invoke-virtual {v1, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 74
    move-result-object v13

    .line 75
    check-cast v13, Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    iget v14, v13, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallingPid:I

    .line 79
    iget v15, v13, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallingUid:I

    .line 81
    invoke-virtual {v0, v2, v14, v15}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    .line 84
    move-result v14

    .line 85
    if-eqz v14, :cond_0

    .line 87
    goto :goto_1

    .line 88
    :cond_0
    iget-object v13, v13, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallback:Lcom/android/internal/app/IAppOpsNotedCallback;

    .line 90
    move-object/from16 p0, v13

    .line 92
    move/from16 p1, v2

    .line 94
    move/from16 p2, v3

    .line 96
    move-object/from16 p3, v4

    .line 98
    move-object/from16 p4, v5

    .line 100
    move/from16 p5, v6

    .line 102
    move/from16 p6, v7

    .line 104
    move/from16 p7, v8

    .line 106
    invoke-interface/range {p0 .. p7}, Lcom/android/internal/app/IAppOpsNotedCallback;->opNoted(IILjava/lang/String;Ljava/lang/String;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    goto :goto_1

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    goto :goto_2

    .line 112
    :catch_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    return-void

    .line 119
    :goto_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    throw v0
.end method
