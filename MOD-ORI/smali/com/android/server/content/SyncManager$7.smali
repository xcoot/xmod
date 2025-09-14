.class public final Lcom/android/server/content/SyncManager$7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/content/SyncManager$7;->this$0:Lcom/android/server/content/SyncManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "removeSyncsForAuthority: "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "onAuthorityRemoved"

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, p1, v1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Lcom/android/server/content/SyncManager$7;->this$0:Lcom/android/server/content/SyncManager;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 42
    .line 43
    iget-object v4, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 44
    .line 45
    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    const-string/jumbo v4, "canceling: "

    .line 52
    .line 53
    .line 54
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v2, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v3, v1}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method
