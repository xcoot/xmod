.class public Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;
.super Ljava/util/concurrent/ConcurrentLinkedDeque;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    .line 4
    const/16 v0, 0x14

    .line 6
    iput v0, p0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->mSize:I

    .line 8
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    .line 5
    move-result v0

    .line 6
    iget v1, p0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->mSize:I

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->poll()Ljava/lang/Object;

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 20
    monitor-exit p0

    .line 21
    return p1

    .line 22
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method
