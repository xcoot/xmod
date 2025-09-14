.class public final Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;
.super Landroid/permission/IPermissionChecker$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/permission/IPermissionChecker$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-class p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 15
    .line 16
    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .locals 27

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move/from16 v11, p7

    .line 9
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    const/4 v10, 0x2

    const/4 v9, 0x0

    if-nez v1, :cond_1

    .line 10
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v13, v9}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 11
    const-string v2, "android"

    iget-object v3, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12
    invoke-static {v14, v13}, Landroid/health/connect/HealthConnectManager;->isHealthPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    :cond_0
    invoke-virtual {v0, v13, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v10

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->isAppOp()Z

    move-result v0

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-string v7, "PermissionManagerService"

    const-string v6, " with no app op defined!"

    if-eqz v0, :cond_10

    .line 15
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v16

    if-gez v16, :cond_2

    .line 16
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Appop permission "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_2
    move-object v3, v12

    :goto_1
    if-nez v11, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v17, v9

    goto :goto_3

    :cond_4
    :goto_2
    move/from16 v17, v8

    .line 17
    :goto_3
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v7

    if-eqz v11, :cond_5

    .line 18
    invoke-virtual {v3, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    if-eqz v7, :cond_6

    .line 19
    invoke-virtual {v3, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_a

    :cond_6
    if-eqz v11, :cond_7

    .line 20
    invoke-virtual {v3, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v7, :cond_7

    .line 21
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_7

    move/from16 v18, v8

    goto :goto_4

    :cond_7
    move/from16 v18, v9

    :goto_4
    if-nez v18, :cond_9

    if-nez v7, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v19, v9

    goto :goto_6

    :cond_9
    :goto_5
    move/from16 v19, v8

    .line 22
    :goto_6
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/4 v6, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v16

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v24, v7

    move/from16 v7, v17

    move/from16 v8, v19

    move/from16 v9, v18

    move/from16 v10, v22

    move/from16 v11, v23

    move/from16 v12, v20

    move/from16 v13, v21

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v0

    const/4 v13, 0x1

    const/4 v12, 0x2

    if-eq v0, v13, :cond_b

    if-eq v0, v12, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    move-object/from16 v11, p2

    move-object/from16 v0, v24

    goto :goto_8

    :cond_a
    if-nez v17, :cond_c

    .line 23
    invoke-static/range {p0 .. p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    :goto_7
    move v10, v12

    goto :goto_a

    :cond_c
    move-object/from16 v0, v24

    move-object/from16 v11, p2

    if-eqz v0, :cond_d

    .line 24
    invoke-static {v14, v15, v11, v0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_7

    :cond_d
    :goto_8
    if-eqz v0, :cond_f

    .line 25
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_9

    :cond_e
    move-object v2, v0

    move-object v3, v2

    move v10, v12

    move v8, v13

    const/4 v9, 0x0

    move-object/from16 v12, p3

    move-object v13, v11

    move/from16 v11, p7

    goto/16 :goto_1

    :cond_f
    :goto_9
    const/4 v10, 0x0

    :goto_a
    return v10

    :cond_10
    move v12, v10

    move-object v11, v13

    move v13, v8

    .line 26
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 27
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v10

    const/4 v0, -0x1

    move-object/from16 v9, p3

    if-eqz v9, :cond_11

    .line 28
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-eqz v1, :cond_11

    if-nez p6, :cond_12

    :cond_11
    const/4 v8, 0x0

    goto :goto_b

    .line 29
    :cond_12
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    const/4 v8, 0x0

    if-gez v3, :cond_13

    .line 30
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move v3, v8

    :cond_13
    move v5, v3

    goto :goto_c

    :goto_b
    move v5, v0

    :goto_c
    if-eq v5, v0, :cond_14

    move/from16 v16, v13

    goto :goto_d

    :cond_14
    move/from16 v16, v8

    :goto_d
    if-eqz v16, :cond_16

    .line 31
    const-string v0, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {v14, v15, v0, v9}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_e

    :cond_15
    move/from16 v17, v8

    goto :goto_f

    :cond_16
    :goto_e
    move/from16 v17, v13

    :goto_f
    move/from16 v3, p7

    move-object v4, v9

    :goto_10
    if-nez v3, :cond_18

    if-eqz v2, :cond_17

    goto :goto_11

    :cond_17
    move/from16 v18, v8

    goto :goto_12

    :cond_18
    :goto_11
    move/from16 v18, v13

    .line 32
    :goto_12
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-eqz v3, :cond_19

    .line 33
    invoke-virtual {v4, v9}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_14

    :cond_19
    if-eqz v2, :cond_1a

    .line 34
    invoke-virtual {v4, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    :goto_13
    move v10, v12

    goto/16 :goto_1e

    :cond_1a
    :goto_14
    if-nez v18, :cond_1b

    .line 35
    invoke-static {v14, v15, v11, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_13

    :cond_1b
    if-eqz v2, :cond_1c

    .line 36
    invoke-static {v14, v15, v11, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_13

    :cond_1c
    if-gez v10, :cond_1f

    .line 37
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 38
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 39
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 40
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Platform runtime permission "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-nez v2, :cond_1e

    move v10, v8

    goto/16 :goto_1e

    :cond_1e
    move-object/from16 v23, v2

    move v2, v3

    move/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v20, v7

    move/from16 v18, v8

    move v15, v10

    move v3, v12

    move-object v1, v14

    move v14, v13

    goto/16 :goto_1c

    :cond_1f
    if-eqz v3, :cond_20

    .line 41
    invoke-virtual {v4, v9}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz v2, :cond_20

    .line 42
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_20

    move/from16 v19, v13

    goto :goto_15

    :cond_20
    move/from16 v19, v8

    :goto_15
    if-nez v19, :cond_22

    if-nez v2, :cond_21

    goto :goto_16

    :cond_21
    move/from16 v20, v8

    goto :goto_17

    :cond_22
    :goto_16
    move/from16 v20, v13

    :goto_17
    if-eqz v17, :cond_25

    .line 43
    invoke-virtual {v4, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {v4, v9}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_23
    if-eqz v2, :cond_24

    .line 44
    invoke-virtual {v2, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    move/from16 v21, v13

    goto :goto_18

    :cond_25
    move/from16 v21, v8

    :goto_18
    if-nez v18, :cond_26

    if-eqz v16, :cond_26

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move-object v1, v4

    move-object/from16 v23, v2

    move/from16 v2, p7

    move/from16 v3, p6

    move-object/from16 v24, v4

    move/from16 v4, v20

    move/from16 v25, v5

    move/from16 v5, v21

    move-object/from16 v26, v6

    move/from16 v6, v22

    .line 45
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result v0

    move/from16 v22, v0

    goto :goto_19

    :cond_26
    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move/from16 v25, v5

    move-object/from16 v26, v6

    move/from16 v22, v8

    :goto_19
    if-eqz v16, :cond_27

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move/from16 v2, p7

    move/from16 v3, p6

    move/from16 v4, v20

    move/from16 v5, v21

    .line 46
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result v0

    move/from16 v21, v0

    goto :goto_1a

    :cond_27
    move/from16 v21, v8

    .line 47
    :goto_1a
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    move-object/from16 v0, p0

    move v2, v10

    move-object/from16 v3, v24

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v15, v7

    move/from16 v7, v18

    move/from16 v18, v8

    move/from16 v8, v20

    move-object/from16 v20, v15

    move-object v15, v9

    move/from16 v9, v19

    move v15, v10

    move/from16 v10, p8

    move/from16 v11, v22

    move v14, v12

    move/from16 v12, v21

    move v14, v13

    move/from16 v13, v25

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v0

    if-eq v0, v14, :cond_2d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    if-eqz p6, :cond_28

    .line 48
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    move/from16 v2, p7

    move v3, v1

    move-object/from16 v9, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15, v9, v2}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;-><init>(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V

    .line 49
    sget-object v4, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_28
    move/from16 v2, p7

    move v3, v1

    move-object/from16 v1, p0

    :goto_1b
    if-eqz v23, :cond_2a

    .line 50
    invoke-virtual/range {v23 .. v23}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_29

    goto :goto_1d

    :cond_29
    :goto_1c
    move-object/from16 v11, p2

    move-object/from16 v9, p3

    move v12, v3

    move v13, v14

    move v10, v15

    move/from16 v8, v18

    move-object/from16 v7, v20

    move-object/from16 v4, v23

    move/from16 v5, v25

    move-object/from16 v6, v26

    move-object/from16 v15, p1

    move-object v14, v1

    move v3, v2

    move-object v2, v4

    goto/16 :goto_10

    :cond_2a
    :goto_1d
    move/from16 v10, v18

    goto :goto_1e

    :cond_2b
    move v3, v1

    move-object/from16 v9, v24

    .line 51
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    move-object/from16 v4, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 52
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BLUETOOTH_CONNECT permission hard denied as op mode is MODE_ERRORED. Permission check was requested for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, p3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and op transaction was invoked for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    move v10, v3

    goto :goto_1e

    :cond_2d
    move v10, v14

    :goto_1e
    return v10

    :cond_2e
    move-object/from16 v5, p3

    move/from16 v2, p7

    move-object v4, v11

    move v3, v12

    move-object v1, v14

    const/16 v18, 0x0

    if-nez v2, :cond_2f

    .line 53
    invoke-static/range {p0 .. p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v0

    if-nez v0, :cond_2f

    return v3

    .line 54
    :cond_2f
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p8

    .line 56
    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v0

    return v0

    :cond_30
    return v18
.end method

.method public static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;)Z
    .locals 6

    .line 57
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 58
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v1

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object p0

    :goto_0
    const/4 v1, -0x1

    .line 61
    invoke-virtual {p0, p2, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    if-nez v2, :cond_4

    .line 62
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "android.permission.RECORD_AUDIO"

    .line 63
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.permission.CAPTURE_AUDIO_OUTPUT"

    .line 64
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.permission.CAMERA"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 65
    :cond_2
    iget-object p1, p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 66
    iget-object p1, p1, Lcom/android/server/pm/permission/PermissionManagerService;->mHotwordDetectionServiceProvider:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_3

    .line 67
    iget p1, p1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2$$ExternalSyntheticLambda0;->f$0:I

    if-ne v0, p1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    move v2, v3

    .line 68
    :cond_4
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object p1

    if-eqz v2, :cond_5

    .line 69
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "android.permission.RENOUNCE_PERMISSIONS"

    .line 70
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_5

    return v4

    :cond_5
    return v2
.end method

.method public static finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V
    .locals 7

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Landroid/content/AttributionSource;

    invoke-direct {v1, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v3

    .line 5
    :goto_2
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    if-eqz p3, :cond_3

    .line 6
    invoke-virtual {v1}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v6

    if-eq v6, p2, :cond_4

    :cond_3
    if-eqz v5, :cond_4

    .line 7
    invoke-virtual {v1, p0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    return-void

    :cond_4
    if-eqz p3, :cond_5

    .line 8
    invoke-virtual {v1}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v6

    if-ne v6, p2, :cond_5

    if-eqz v5, :cond_5

    .line 9
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    if-nez v6, :cond_5

    move v6, v3

    goto :goto_3

    :cond_5
    move v6, v4

    :goto_3
    if-nez v6, :cond_7

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    :cond_7
    :goto_4
    if-nez v6, :cond_8

    move-object v4, v1

    goto :goto_5

    :cond_8
    move-object v4, v5

    :goto_5
    if-eqz v3, :cond_a

    .line 10
    invoke-static {p0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    return-void

    .line 11
    :cond_9
    invoke-virtual {v4, v2}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v2

    .line 12
    iget-object v3, p2, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v3, p1, v2}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;ILandroid/content/AttributionSource;)V

    goto :goto_7

    .line 13
    :cond_a
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    goto :goto_6

    .line 14
    :cond_b
    invoke-static {p0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v4

    .line 15
    :goto_6
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    return-void

    .line 16
    :cond_c
    iget-object v3, p2, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 17
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {v0, v3, v6, v4, v2}, Landroid/app/AppOpsManager;->finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V

    .line 19
    :goto_7
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    if-eqz v1, :cond_d

    .line 21
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    :cond_d
    if-eqz v5, :cond_f

    .line 22
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_8

    :cond_e
    move-object v1, v5

    move-object v2, v1

    goto/16 :goto_0

    :cond_f
    :goto_8
    if-eqz v5, :cond_10

    .line 23
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    if-eqz p0, :cond_10

    .line 24
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    :cond_10
    return-void
.end method

.method public static performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v12, p4

    move/from16 v13, p7

    move/from16 v2, p10

    .line 1
    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/app/AppOpsManager;

    if-nez p9, :cond_0

    move-object v4, v3

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    :goto_0
    const/4 v5, 0x2

    if-nez p5, :cond_4

    .line 3
    invoke-static {v0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v5

    .line 4
    :cond_1
    invoke-virtual {v4, v2}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v2

    .line 5
    invoke-virtual {v14, v1, v2}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I

    move-result v2

    .line 6
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    if-nez p8, :cond_3

    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    .line 7
    invoke-static {v0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return v5

    .line 8
    :cond_2
    invoke-virtual {v3, v0}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 9
    invoke-virtual {v14, v1, v0}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I

    move-result v0

    return v0

    :cond_3
    return v2

    .line 10
    :cond_4
    const-string v15, " with source "

    const-string v11, "Security exception for op "

    const-string v10, " while not having android.permission.UPDATE_APP_OPS_STATS"

    const-string v9, " protecting data with platform defined runtime permission "

    const-string v8, "Datasource "

    const-string v6, ", "

    move-object/from16 p9, v8

    const-string v8, "PermissionManagerService"

    const-string v5, ":"

    if-eqz p6, :cond_b

    .line 11
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_5

    move-object v0, v4

    goto :goto_1

    .line 12
    :cond_5
    invoke-static {v0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 13
    :goto_1
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    const/4 v4, 0x2

    return v4

    :cond_6
    const/4 v4, 0x2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_8

    if-eq v2, v1, :cond_8

    .line 14
    invoke-virtual {v14, v1, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(ILandroid/content/AttributionSource;)I

    move-result v7

    if-ne v7, v4, :cond_7

    return v7

    :cond_7
    move v4, v7

    move v7, v2

    goto :goto_2

    :cond_8
    move v7, v1

    const/4 v4, 0x0

    :goto_2
    if-eqz p8, :cond_9

    const/4 v11, 0x0

    move v15, v4

    move-object v4, v14

    move-object/from16 v5, p1

    move v6, v7

    move-object v7, v0

    move-object/from16 v0, p9

    move-object v13, v8

    move v8, v11

    move-object v11, v9

    move-object/from16 v9, p4

    move-object/from16 v17, v10

    move/from16 v10, p11

    move-object v12, v11

    move/from16 v11, p13

    .line 15
    :try_start_0
    invoke-virtual/range {v4 .. v11}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLjava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v1, v15

    goto :goto_4

    .line 16
    :catch_0
    sget-object v4, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v17

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v14

    move-object/from16 v1, p1

    move/from16 v2, p10

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p7

    move/from16 v6, p11

    move/from16 v7, p12

    move/from16 v8, p13

    .line 19
    invoke-virtual/range {v0 .. v8}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v0

    goto :goto_3

    :cond_9
    move v1, v4

    move-object v4, v14

    move-object v2, v5

    move-object/from16 v5, p1

    move-object v13, v6

    move v6, v7

    move v14, v7

    move-object v7, v0

    move-object/from16 v8, p4

    move/from16 v9, p7

    move/from16 v10, p11

    move-object v12, v11

    move/from16 v11, p12

    move-object v3, v12

    move/from16 v12, p13

    .line 20
    :try_start_1
    invoke-virtual/range {v4 .. v12}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 21
    :goto_4
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 22
    invoke-static {v14, v3, v15}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 23
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 28
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    .line 29
    invoke-static {v0, v13}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    :cond_a
    new-instance v3, Ljava/lang/SecurityException;

    .line 32
    invoke-static {v0, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 33
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    move-object v7, v6

    move-object v13, v8

    move-object v12, v9

    move-object v3, v11

    move-object/from16 v6, p9

    move-object v8, v5

    move-object v5, v10

    .line 34
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    goto :goto_5

    .line 35
    :cond_c
    invoke-static {v0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v4

    .line 36
    :goto_5
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v0, 0x2

    return v0

    :cond_d
    const/4 v0, 0x2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_e

    if-eq v2, v1, :cond_e

    .line 37
    invoke-virtual {v14, v1, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(ILandroid/content/AttributionSource;)I

    move-result v9

    if-ne v9, v0, :cond_f

    return v9

    :cond_e
    move v2, v1

    const/4 v9, 0x0

    :cond_f
    if-eqz p8, :cond_10

    move-object/from16 v0, p4

    move-object v10, v12

    .line 38
    :try_start_2
    invoke-virtual {v14, v2, v4, v0}, Landroid/app/AppOpsManager;->noteOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v13

    goto :goto_6

    .line 39
    :catch_2
    sget-object v3, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, p3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v3, p7

    move-object v5, v13

    .line 42
    invoke-virtual {v14, v2, v6, v0, v3}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    goto :goto_6

    :cond_10
    move-object/from16 v6, p3

    move-object/from16 v0, p4

    move-object v10, v3

    move-object v5, v13

    move/from16 v3, p7

    .line 43
    :try_start_3
    invoke-virtual {v14, v2, v4, v0, v3}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 44
    :goto_6
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v3, 0x6f

    if-ne v1, v3, :cond_12

    const/4 v3, 0x2

    if-ne v0, v3, :cond_12

    .line 45
    const-string v3, " returned MODE_ERRORED"

    const-string v6, " and op "

    if-ne v0, v9, :cond_11

    .line 46
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "BLUETOOTH_CONNECT permission hard denied as checkOp for resolvedAttributionSource "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 47
    :cond_11
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "BLUETOOTH_CONNECT permission hard denied as noteOp for resolvedAttributionSource "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_7
    return v0

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 48
    invoke-static {v2, v10, v15}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    .line 55
    invoke-static {v0, v7}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_13
    new-instance v2, Ljava/lang/SecurityException;

    .line 58
    invoke-static {v0, v8}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_8

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    if-eqz p5, :cond_1

    .line 8
    .line 9
    const/16 p3, 0x8

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    move p3, v0

    .line 13
    :goto_0
    if-eqz p6, :cond_3

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    or-int/lit8 p0, p3, 0x1

    .line 18
    .line 19
    return p0

    .line 20
    :cond_2
    if-nez p2, :cond_6

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    if-eqz p4, :cond_6

    .line 27
    .line 28
    or-int/lit8 p0, p3, 0x1

    .line 29
    .line 30
    return p0

    .line 31
    :cond_3
    if-eqz p4, :cond_4

    .line 32
    .line 33
    or-int/lit8 p0, p3, 0x4

    .line 34
    .line 35
    return p0

    .line 36
    :cond_4
    if-eqz p2, :cond_5

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    invoke-virtual {p1, p4}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    if-eqz p4, :cond_5

    .line 47
    .line 48
    or-int/lit8 p0, p3, 0x1

    .line 49
    .line 50
    return p0

    .line 51
    :cond_5
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    .line 52
    .line 53
    .line 54
    move-result-object p4

    .line 55
    if-nez p4, :cond_6

    .line 56
    .line 57
    or-int/lit8 p0, p3, 0x4

    .line 58
    .line 59
    return p0

    .line 60
    :cond_6
    if-eqz p2, :cond_7

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_7

    .line 67
    .line 68
    return v0

    .line 69
    :cond_7
    or-int/lit8 p0, p3, 0x2

    .line 70
    .line 71
    return p0

    .line 72
    :cond_8
    :goto_1
    return v0
.end method

.method public static resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    aget-object p0, p0, p1

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method


# virtual methods
.method public final checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v15, p1

    .line 4
    .line 5
    move-object/from16 v14, p2

    .line 6
    .line 7
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 10
    .line 11
    new-instance v12, Landroid/content/AttributionSource;

    .line 12
    .line 13
    invoke-direct {v12, v14}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 14
    .line 15
    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v10, 0x2

    .line 18
    if-ltz v15, :cond_0

    .line 19
    .line 20
    invoke-virtual {v12}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    :cond_0
    move v0, v10

    .line 27
    goto/16 :goto_c

    .line 28
    .line 29
    :cond_1
    invoke-virtual {v12}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, -0x1

    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    if-nez p5, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-gez v4, :cond_3

    .line 46
    .line 47
    invoke-virtual {v2, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 48
    .line 49
    .line 50
    move v4, v11

    .line 51
    :cond_3
    move v9, v4

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    :goto_0
    move v9, v3

    .line 54
    :goto_1
    const/4 v8, 0x1

    .line 55
    if-eq v9, v3, :cond_5

    .line 56
    .line 57
    move/from16 v16, v8

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_5
    move/from16 v16, v11

    .line 61
    .line 62
    :goto_2
    if-eqz v16, :cond_7

    .line 63
    .line 64
    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    .line 65
    .line 66
    invoke-static {v13, v1, v2, v12}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_6

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_6
    move/from16 v17, v11

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_7
    :goto_3
    move/from16 v17, v8

    .line 77
    .line 78
    :goto_4
    const/4 v1, 0x0

    .line 79
    move-object v7, v12

    .line 80
    :goto_5
    if-eqz v1, :cond_8

    .line 81
    .line 82
    move/from16 v18, v8

    .line 83
    .line 84
    goto :goto_6

    .line 85
    :cond_8
    move/from16 v18, v11

    .line 86
    .line 87
    :goto_6
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    if-eqz v6, :cond_9

    .line 92
    .line 93
    invoke-virtual {v7, v13}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_9

    .line 98
    .line 99
    move v11, v10

    .line 100
    goto/16 :goto_d

    .line 101
    .line 102
    :cond_9
    if-nez v6, :cond_a

    .line 103
    .line 104
    move/from16 v19, v8

    .line 105
    .line 106
    goto :goto_7

    .line 107
    :cond_a
    move/from16 v19, v11

    .line 108
    .line 109
    :goto_7
    if-eqz v17, :cond_d

    .line 110
    .line 111
    invoke-virtual {v7, v13}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_b

    .line 116
    .line 117
    invoke-virtual {v7, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_d

    .line 122
    .line 123
    :cond_b
    if-eqz v6, :cond_c

    .line 124
    .line 125
    invoke-virtual {v6, v13}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_d

    .line 130
    .line 131
    :cond_c
    move/from16 v20, v8

    .line 132
    .line 133
    goto :goto_8

    .line 134
    :cond_d
    move/from16 v20, v11

    .line 135
    .line 136
    :goto_8
    if-nez v18, :cond_e

    .line 137
    .line 138
    if-eqz v16, :cond_e

    .line 139
    .line 140
    const/16 v21, 0x1

    .line 141
    .line 142
    const/4 v3, 0x0

    .line 143
    move-object v1, v12

    .line 144
    move-object v2, v7

    .line 145
    move/from16 v4, p5

    .line 146
    .line 147
    move/from16 v5, v19

    .line 148
    .line 149
    move-object/from16 v22, v6

    .line 150
    .line 151
    move/from16 v6, v20

    .line 152
    .line 153
    move-object/from16 v23, v7

    .line 154
    .line 155
    move/from16 v7, v21

    .line 156
    .line 157
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    move/from16 v21, v1

    .line 162
    .line 163
    goto :goto_9

    .line 164
    :cond_e
    move-object/from16 v22, v6

    .line 165
    .line 166
    move-object/from16 v23, v7

    .line 167
    .line 168
    move/from16 v21, v11

    .line 169
    .line 170
    :goto_9
    if-eqz v16, :cond_f

    .line 171
    .line 172
    const/4 v7, 0x0

    .line 173
    const/4 v3, 0x0

    .line 174
    move-object v1, v12

    .line 175
    move-object/from16 v2, v22

    .line 176
    .line 177
    move/from16 v4, p5

    .line 178
    .line 179
    move/from16 v5, v19

    .line 180
    .line 181
    move/from16 v6, v20

    .line 182
    .line 183
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    move/from16 v20, v1

    .line 188
    .line 189
    goto :goto_a

    .line 190
    :cond_f
    move/from16 v20, v11

    .line 191
    .line 192
    :goto_a
    invoke-virtual/range {v23 .. v23}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    const/16 v24, 0x0

    .line 197
    .line 198
    const/16 v25, -0x1

    .line 199
    .line 200
    move-object v1, v13

    .line 201
    move/from16 v3, p1

    .line 202
    .line 203
    move-object/from16 v4, v23

    .line 204
    .line 205
    move-object/from16 v5, p3

    .line 206
    .line 207
    move/from16 v6, p4

    .line 208
    .line 209
    move/from16 v7, p5

    .line 210
    .line 211
    move/from16 v8, v18

    .line 212
    .line 213
    move/from16 v18, v9

    .line 214
    .line 215
    move/from16 v9, v19

    .line 216
    .line 217
    move v0, v10

    .line 218
    move/from16 v10, v24

    .line 219
    .line 220
    move/from16 v11, v25

    .line 221
    .line 222
    move-object/from16 v19, v12

    .line 223
    .line 224
    move/from16 v12, v21

    .line 225
    .line 226
    move-object/from16 v21, v13

    .line 227
    .line 228
    move/from16 v13, v20

    .line 229
    .line 230
    move/from16 v14, v18

    .line 231
    .line 232
    invoke-static/range {v1 .. v14}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    const/4 v2, 0x1

    .line 237
    if-eq v1, v2, :cond_13

    .line 238
    .line 239
    if-eq v1, v0, :cond_12

    .line 240
    .line 241
    if-eqz v22, :cond_11

    .line 242
    .line 243
    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    if-nez v1, :cond_10

    .line 248
    .line 249
    goto :goto_b

    .line 250
    :cond_10
    const/4 v11, 0x0

    .line 251
    move-object/from16 v14, p2

    .line 252
    .line 253
    move v10, v0

    .line 254
    move v8, v2

    .line 255
    move/from16 v9, v18

    .line 256
    .line 257
    move-object/from16 v12, v19

    .line 258
    .line 259
    move-object/from16 v13, v21

    .line 260
    .line 261
    move-object/from16 v1, v22

    .line 262
    .line 263
    move-object v7, v1

    .line 264
    move-object/from16 v0, p0

    .line 265
    .line 266
    goto/16 :goto_5

    .line 267
    .line 268
    :cond_11
    :goto_b
    const/4 v11, 0x0

    .line 269
    goto :goto_d

    .line 270
    :cond_12
    :goto_c
    move v11, v0

    .line 271
    goto :goto_d

    .line 272
    :cond_13
    move v11, v2

    .line 273
    :goto_d
    if-eqz v11, :cond_14

    .line 274
    .line 275
    if-eqz p5, :cond_14

    .line 276
    .line 277
    const/4 v2, 0x0

    .line 278
    move-object/from16 v0, p0

    .line 279
    .line 280
    move-object/from16 v1, p2

    .line 281
    .line 282
    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    .line 283
    .line 284
    .line 285
    :cond_14
    return v11
.end method

.method public final checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I
    .locals 13

    move-object v0, p0

    move/from16 v10, p6

    move/from16 v11, p7

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v12, Landroid/content/AttributionSource;

    move-object v1, p2

    invoke-direct {v12, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 4
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    move-object v3, p1

    move-object v4, v12

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v1

    if-eqz p5, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, -0x1

    if-ne v11, v2, :cond_0

    .line 5
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    .line 6
    invoke-virtual {v12}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    .line 7
    invoke-virtual {p0, v2, v3, v10}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v12}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    invoke-virtual {p0, v11, v2, v10}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    :cond_1
    :goto_0
    return v1
.end method

.method public final finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    return-void
.end method
