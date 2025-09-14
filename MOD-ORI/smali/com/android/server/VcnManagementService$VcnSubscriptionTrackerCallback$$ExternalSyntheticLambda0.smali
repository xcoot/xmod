.class public final synthetic Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;

.field public final synthetic f$1:Landroid/os/ParcelUuid;

.field public final synthetic f$2:Lcom/android/server/vcn/Vcn;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;Landroid/os/ParcelUuid;Lcom/android/server/vcn/Vcn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback$$ExternalSyntheticLambda0;->f$1:Landroid/os/ParcelUuid;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/vcn/Vcn;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback$$ExternalSyntheticLambda0;->f$1:Landroid/os/ParcelUuid;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/vcn/Vcn;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    iget-object v3, v0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 15
    .line 16
    check-cast v3, Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-ne v3, p0, :cond_0

    .line 23
    .line 24
    iget-object p0, v0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/android/server/VcnManagementService;->stopVcnLocked(Landroid/os/ParcelUuid;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, v0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v1, v0}, Lcom/android/server/VcnManagementService;->notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v2

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method
