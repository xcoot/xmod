.class public abstract Lcom/android/server/utils/SnapshotCache;
.super Lcom/android/server/utils/Watcher;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sCaches:Ljava/util/WeakHashMap;


# instance fields
.field public volatile mSealed:Z

.field public volatile mSnapshot:Ljava/lang/Object;

.field public final mSource:Ljava/lang/Object;

.field public final mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/utils/SnapshotCache;->sCaches:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/android/server/utils/SnapshotCache;->mSealed:Z

    .line 4
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/android/server/utils/SnapshotCache;->mSealed:Z

    .line 6
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/android/server/utils/SnapshotCache;->mSealed:Z

    .line 10
    iput-object p1, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    .line 11
    invoke-interface {p2, p0}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    if-eqz p3, :cond_0

    .line 12
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Statistics;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Statistics;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    .line 13
    sget-object p1, Lcom/android/server/utils/SnapshotCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_0
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract createSnapshot()Ljava/lang/Object;
.end method

.method public final onChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/server/utils/SnapshotCache;->mSealed:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string p1, "attempt to change a sealed object"

    .line 12
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache$Statistics;->mReused:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->createSnapshot()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache$Statistics;->mRebuilt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-object v0
.end method
