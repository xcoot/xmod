.class public final Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

.field public token:Landroid/os/IBinder;

.field public what:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "binder died for packageName = "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "EdgeLightingPolicyManager"

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    .line 22
    .line 23
    iget-object v3, v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    .line 24
    .line 25
    monitor-enter v3

    .line 26
    const/4 v4, 0x0

    .line 27
    :try_start_0
    invoke-virtual {v0, v4, v2, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->manageDisableRecoredLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    .line 32
    .line 33
    invoke-interface {v0, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0
.end method
