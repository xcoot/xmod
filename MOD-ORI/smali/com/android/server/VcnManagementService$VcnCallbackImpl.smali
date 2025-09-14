.class public final Lcom/android/server/VcnManagementService$VcnCallbackImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/VcnManagementService$VcnCallback;


# instance fields
.field public final mSubGroup:Landroid/os/ParcelUuid;

.field public final synthetic this$0:Lcom/android/server/VcnManagementService;


# direct methods
.method public constructor <init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    .line 5
    .line 6
    const-string p1, "Missing subGroup"

    .line 7
    .line 8
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onGatewayConnectionError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    .line 11
    .line 12
    check-cast v1, Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    .line 27
    .line 28
    check-cast v1, Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    move-object v5, v2

    .line 49
    check-cast v5, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    .line 54
    .line 55
    invoke-virtual {v2, v5, v3}, Lcom/android/server/VcnManagementService;->isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    new-instance v2, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    move-object v3, v2

    .line 64
    move-object v4, p0

    .line 65
    move-object v6, p2

    .line 66
    move v7, p1

    .line 67
    move-object v8, p3

    .line 68
    move-object v9, p4

    .line 69
    invoke-direct/range {v3 .. v9}, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/VcnManagementService$VcnCallbackImpl;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method
