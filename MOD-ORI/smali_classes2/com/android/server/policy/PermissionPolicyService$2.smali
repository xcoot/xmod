.class public final Lcom/android/server/policy/PermissionPolicyService$2;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final opChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "default:0"

    .line 2
    .line 3
    invoke-static {p4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p3, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizeUidPermissionsAndAppOpsAsync(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter p1

    .line 35
    :try_start_0
    iget-object p3, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidResetScheduled:Landroid/util/SparseBooleanArray;

    .line 36
    .line 37
    invoke-virtual {p3, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-nez p3, :cond_2

    .line 42
    .line 43
    iget-object p3, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidResetScheduled:Landroid/util/SparseBooleanArray;

    .line 44
    .line 45
    const/4 p4, 0x1

    .line 46
    invoke-virtual {p3, p2, p4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    new-instance p4, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda4;

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    invoke-direct {p4, v0}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p4, p0, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p3, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    monitor-exit p1

    .line 74
    goto :goto_2

    .line 75
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0

    .line 77
    :cond_3
    :goto_2
    return-void
.end method
