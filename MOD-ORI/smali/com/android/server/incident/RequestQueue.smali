.class public final Lcom/android/server/incident/RequestQueue;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mPending:Ljava/util/ArrayList;

.field public mStarted:Z

.field public final mWorker:Lcom/android/server/incident/RequestQueue$1;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/incident/RequestQueue$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/incident/RequestQueue$1;-><init>(Lcom/android/server/incident/RequestQueue;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/incident/RequestQueue;->mWorker:Lcom/android/server/incident/RequestQueue$1;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/incident/RequestQueue;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final enqueue(Landroid/os/IBinder;ZLjava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p2, :cond_1

    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    :goto_0
    if-ltz v1, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/incident/RequestQueue$Rec;

    .line 23
    .line 24
    iget-object v3, v2, Lcom/android/server/incident/RequestQueue$Rec;->key:Landroid/os/IBinder;

    .line 25
    .line 26
    if-ne v3, p1, :cond_0

    .line 27
    .line 28
    iget-boolean v2, v2, Lcom/android/server/incident/RequestQueue$Rec;->value:Z

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    .line 44
    .line 45
    new-instance v2, Lcom/android/server/incident/RequestQueue$Rec;

    .line 46
    .line 47
    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/incident/RequestQueue$Rec;-><init>(Landroid/os/IBinder;ZLjava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :goto_1
    iget-boolean p1, p0, Lcom/android/server/incident/RequestQueue;->mStarted:Z

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/incident/RequestQueue;->mHandler:Landroid/os/Handler;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/incident/RequestQueue;->mWorker:Lcom/android/server/incident/RequestQueue$1;

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    :cond_2
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method
