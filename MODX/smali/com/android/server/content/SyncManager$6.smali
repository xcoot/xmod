.class public final Lcom/android/server/content/SyncManager$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/content/SyncManager$6;->this$0:Lcom/android/server/content/SyncManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$6;->this$0:Lcom/android/server/content/SyncManager;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/HashSet;

    .line 9
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v2

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_4

    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 30
    iget-object v4, v3, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 32
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v4, v3, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v5

    .line 48
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_0

    .line 54
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Lcom/android/server/content/SyncOperation;

    .line 60
    if-ne v3, v6, :cond_3

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object v7, v6, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 65
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_2

    .line 71
    iget-object v7, p0, Lcom/android/server/content/SyncManager$6;->this$0:Lcom/android/server/content/SyncManager;

    .line 73
    iget-object v7, v7, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 75
    const-string v8, "Removing duplicate sync: "

    .line 77
    filled-new-array {v8, v6}, [Ljava/lang/Object;

    .line 80
    move-result-object v8

    .line 81
    invoke-virtual {v7, v8}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 84
    iget-object v7, p0, Lcom/android/server/content/SyncManager$6;->this$0:Lcom/android/server/content/SyncManager;

    .line 86
    new-instance v8, Ljava/lang/StringBuilder;

    .line 88
    const-string/jumbo v9, "cleanupJobs() x="

    .line 91
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    const-string v9, " y="

    .line 99
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v7, v6, v8}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    return-void
.end method
