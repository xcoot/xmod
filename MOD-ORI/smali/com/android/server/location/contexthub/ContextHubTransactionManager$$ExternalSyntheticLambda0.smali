.class public final synthetic Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final synthetic f$1:Lcom/android/server/location/contexthub/ContextHubServiceTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "ContextHubTransactionManager"

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, " timed out"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x6

    .line 33
    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method
