.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda97;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/devicepolicy/ActiveAdmin;

.field public final synthetic f$3:Lcom/android/server/devicepolicy/CallerIdentity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZLcom/android/server/devicepolicy/ActiveAdmin;Lcom/android/server/devicepolicy/CallerIdentity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda97;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda97;->f$1:Z

    .line 8
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda97;->f$2:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 10
    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda97;->f$3:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 12
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda97;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda97;->f$1:Z

    .line 5
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda97;->f$2:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 7
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda97;->f$3:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Landroid/app/admin/PasswordPolicy;

    .line 20
    invoke-direct {v3}, Landroid/app/admin/PasswordPolicy;-><init>()V

    .line 23
    iput-object v3, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Landroid/app/admin/PasswordPolicy;

    .line 28
    invoke-direct {v3}, Landroid/app/admin/PasswordPolicy;-><init>()V

    .line 31
    iput-object v3, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 33
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    monitor-enter v2

    .line 38
    :try_start_0
    iget v3, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 40
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 43
    move-result v3

    .line 44
    invoke-virtual {v0, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordValidityCheckpointLocked(IZ)Ljava/util/Set;

    .line 47
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget v1, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 50
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordQualityCacheForUserGroup(I)V

    .line 57
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 59
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 62
    move-result p0

    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, p0, v1, v1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p0
.end method
