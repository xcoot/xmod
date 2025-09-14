.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/LockSettingsService;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 6
    iput-wide p2, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;->f$1:J

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    iget-wide v1, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;->f$1:J

    .line 5
    iget-object p0, v0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 10
    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 14
    if-eqz v3, :cond_0

    .line 16
    const-string v3, "LockSettingsService"

    .line 18
    const-string v4, "Cached Gatekeeper password with handle %016x has expired"

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    move-result-object v5

    .line 24
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 27
    move-result-object v5

    .line 28
    invoke-static {v3, v4, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw v0
.end method
