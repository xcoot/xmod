.class public final synthetic Lcom/android/server/apphibernation/HibernationStateDiskStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/apphibernation/HibernationStateDiskStore;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/apphibernation/HibernationStateDiskStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/apphibernation/HibernationStateDiskStore;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/apphibernation/HibernationStateDiskStore;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mScheduledStatesToWrite:Ljava/util/List;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->writeStateProto(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mScheduledStatesToWrite:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0
.end method
