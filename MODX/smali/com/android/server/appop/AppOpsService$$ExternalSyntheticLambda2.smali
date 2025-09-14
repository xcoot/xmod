.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/DecConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 17

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
    check-cast v7, Ljava/lang/Boolean;

    .line 45
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

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
    move-object/from16 v9, p10

    .line 59
    check-cast v9, Ljava/lang/Integer;

    .line 61
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 64
    move-result v9

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 71
    move-result-wide v10

    .line 72
    :try_start_0
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 75
    move-result v12

    .line 76
    const/4 v13, 0x0

    .line 77
    :goto_0
    if-ge v13, v12, :cond_1

    .line 79
    invoke-virtual {v1, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 82
    move-result-object v14

    .line 83
    check-cast v14, Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    iget v15, v14, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallingPid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    move-object/from16 v16, v1

    .line 89
    :try_start_2
    iget v1, v14, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallingUid:I

    .line 91
    invoke-virtual {v0, v2, v15, v1}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_0

    .line 97
    goto :goto_1

    .line 98
    :cond_0
    iget-object v1, v14, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 100
    move-object/from16 p0, v1

    .line 102
    move/from16 p1, v2

    .line 104
    move/from16 p2, v3

    .line 106
    move-object/from16 p3, v4

    .line 108
    move-object/from16 p4, v5

    .line 110
    move/from16 p5, v6

    .line 112
    move/from16 p6, v7

    .line 114
    move/from16 p7, v8

    .line 116
    move/from16 p8, v9

    .line 118
    invoke-interface/range {p0 .. p8}, Lcom/android/internal/app/IAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Ljava/lang/String;IZII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    goto :goto_1

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    goto :goto_2

    .line 124
    :catch_0
    move-object/from16 v16, v1

    .line 126
    :catch_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    .line 128
    move-object/from16 v1, v16

    .line 130
    goto :goto_0

    .line 131
    :cond_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    return-void

    .line 135
    :goto_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    throw v0
.end method
