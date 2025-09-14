.class public abstract Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;
.super Lcom/samsung/android/continuity/ISemContinuityManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCurrentUserId:I

.field public final mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/continuity/ISemContinuityManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, -0x2710

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mCurrentUserId:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    .line 10
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 13
    .line 14
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v8, Lcom/samsung/android/server/continuity/common/ExecutorUtil$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    const/16 v3, 0x40

    .line 23
    .line 24
    const-wide/16 v4, 0x3c

    .line 25
    .line 26
    const/16 v2, 0x40

    .line 27
    .line 28
    move-object v1, v0

    .line 29
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Landroid/os/Handler;

    .line 39
    .line 40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->sHandler:Landroid/os/Handler;

    .line 48
    .line 49
    const-string/jumbo v0, "user"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroid/os/UserManager;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 59
    .line 60
    iput-object p2, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final getNearbyDeviceCount(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, -0x2710

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v1, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :goto_0
    const/4 v1, 0x0

    .line 17
    if-eq v0, p2, :cond_1

    .line 18
    .line 19
    const-string p0, "getNearbyDeviceCount - invalid user "

    .line 20
    .line 21
    const-string p1, "[MCF_DS_SYS]_SemContinuityServiceImpl"

    .line 22
    .line 23
    invoke-static {p2, p0, p1}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const-string p2, "[MCF_DS_SYS]_McfDsManager"

    .line 33
    .line 34
    const-string v0, "getNearbyDeviceCount"

    .line 35
    .line 36
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    if-ne p1, p2, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 p2, 0x2

    .line 44
    if-ne p1, p2, :cond_3

    .line 45
    .line 46
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const-string p1, "[MCF_DS_LIB]_DeviceSyncManager"

    .line 52
    .line 53
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    new-instance p1, Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v0, "KEY_INPUT"

    .line 62
    .line 63
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    const/16 v0, 0x3e8

    .line 76
    .line 77
    iput v0, p2, Landroid/os/Message;->what:I

    .line 78
    .line 79
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    .line 81
    invoke-virtual {p0, p2}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->sendMessage(Landroid/os/Message;)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    :cond_3
    return v1
.end method

.method public abstract setCurrentUserHandle(Landroid/os/UserHandle;)V
.end method
