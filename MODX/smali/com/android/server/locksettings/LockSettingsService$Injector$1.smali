.class public final Lcom/android/server/locksettings/LockSettingsService$Injector$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;


# instance fields
.field public val$storage:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onRebootEscrowRestored(B[BI)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;-><init>(B)V

    .line 6
    array-length p1, p2

    .line 7
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    .line 13
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 15
    check-cast p1, Lcom/android/server/locksettings/LockSettingsService;

    .line 17
    iget-object p1, p1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 19
    monitor-enter p1

    .line 20
    :try_start_0
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 22
    check-cast p2, Lcom/android/server/locksettings/LockSettingsService;

    .line 24
    iget-object v1, p2, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 26
    invoke-virtual {p2}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {v1, p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 33
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const-string p1, "LockSettingsService"

    .line 36
    const-string p2, "Restored synthetic password for user %d using reboot escrow"

    .line 38
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v1

    .line 42
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {p1, p2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 51
    check-cast p0, Lcom/android/server/locksettings/LockSettingsService;

    .line 53
    invoke-virtual {p0, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Landroid/app/admin/PasswordMetrics;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0
.end method
