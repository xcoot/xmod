.class public final synthetic Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/job/controllers/QuotaController;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/job/controllers/QuotaController;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked()V

    .line 14
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter v0

    .line 25
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_1
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    throw p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
