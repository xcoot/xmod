.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/VcnManagementService;

.field public final synthetic f$1:Landroid/os/ParcelUuid;

.field public final synthetic f$2:Landroid/net/vcn/VcnConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/VcnManagementService;

    .line 6
    iput-object p2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;->f$1:Landroid/os/ParcelUuid;

    .line 8
    iput-object p3, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;->f$2:Landroid/net/vcn/VcnConfig;

    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/VcnManagementService;

    .line 3
    iget-object v1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;->f$1:Landroid/os/ParcelUuid;

    .line 5
    iget-object p0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;->f$2:Landroid/net/vcn/VcnConfig;

    .line 7
    iget-object v2, v0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, v0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 12
    check-cast v3, Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v3, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v0, v1, p0}, Lcom/android/server/VcnManagementService;->startOrUpdateVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    .line 20
    invoke-virtual {v0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    .line 23
    monitor-exit v2

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method
