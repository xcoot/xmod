.class public final Lcom/android/server/incident/RequestQueue$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/incident/RequestQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/incident/RequestQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    const/4 v0, 0x0

    .line 44
    :goto_1
    if-ge v0, p0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/android/server/incident/RequestQueue$Rec;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/android/server/incident/RequestQueue$Rec;->runnable:Ljava/lang/Runnable;

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    return-void

    .line 61
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p0
.end method
