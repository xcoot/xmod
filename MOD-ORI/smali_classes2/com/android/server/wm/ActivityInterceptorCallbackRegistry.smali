.class public Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final sInstance:Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;->sInstance:Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;

    .line 7
    .line 8
    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;->sInstance:Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public getCallingUid()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public registerActivityInterceptorCallback(ILcom/android/server/wm/ActivityInterceptorCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x3e8

    .line 6
    .line 7
    if-ne p0, v0, :cond_2

    .line 8
    .line 9
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback;->isValidMainlineOrderId(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string p1, "The passed ActivityInterceptorCallback can not be null"

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string p1, "id is not in the mainline modules range, please useActivityTaskManagerInternal.registerActivityStartInterceptor(OrderedId, ActivityInterceptorCallback) instead."

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 46
    .line 47
    const-string p1, "Only system server can register ActivityInterceptorCallback"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public unregisterActivityInterceptorCallback(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x3e8

    .line 6
    .line 7
    if-ne p0, v0, :cond_2

    .line 8
    .line 9
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback;->isValidMainlineOrderId(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 22
    .line 23
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 24
    .line 25
    const-string v0, "ActivityInterceptorCallback with id ("

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 30
    .line 31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 32
    .line 33
    .line 34
    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityInterceptorCallbacks:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityInterceptorCallbacks:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 50
    .line 51
    .line 52
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, ") is not registered"

    .line 70
    .line 71
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    const-string p1, "id is not in the mainline modules range, please useActivityTaskManagerInternal.unregisterActivityStartInterceptor(OrderedId) instead."

    .line 90
    .line 91
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 96
    .line 97
    const-string p1, "Only system server can register ActivityInterceptorCallback"

    .line 98
    .line 99
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method
