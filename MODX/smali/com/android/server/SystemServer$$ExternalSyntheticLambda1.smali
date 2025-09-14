.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;


# virtual methods
.method public final handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .locals 13

    .line 1
    move-object/from16 v0, p4

    .line 3
    sget-object v1, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 8
    move-result v6

    .line 9
    const/16 v1, 0x3e8

    .line 11
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    move-result v1

    .line 15
    const-string/jumbo v9, "system_server"

    .line 18
    iget-object v12, v0, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v7

    .line 24
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v8

    .line 28
    const/4 v1, -0x1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v10

    .line 33
    move-object v11, p2

    .line 34
    filled-new-array/range {v7 .. v12}, [Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    const/16 v2, 0x7558

    .line 40
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 43
    const-string/jumbo v5, "system_server"

    .line 46
    const/4 v7, 0x3

    .line 47
    const/16 v2, 0x50

    .line 49
    const/16 v3, 0x3e8

    .line 51
    move-object v4, p2

    .line 52
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    .line 55
    const-class v1, Lcom/android/server/SystemServer;

    .line 57
    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 60
    if-nez v2, :cond_0

    .line 62
    new-instance v2, Ljava/util/LinkedList;

    .line 64
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 67
    sput-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 74
    new-instance v3, Landroid/util/Pair;

    .line 76
    move-object v4, p2

    .line 77
    invoke-direct {v3, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 83
    monitor-exit v1

    .line 84
    const/4 v0, 0x0

    .line 85
    return v0

    .line 86
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw v0
.end method
