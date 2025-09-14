.class public final Lcom/android/server/statusbar/TileRequestTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final MAX_NUM_DENIALS:I = 0x3


# instance fields
.field public final mComponentsToRemove:Landroid/util/ArraySet;

.field public final mLock:Ljava/lang/Object;

.field public final mTrackingMap:Landroid/util/SparseArrayMap;

.field public final mUninstallReceiver:Lcom/android/server/statusbar/TileRequestTracker$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mComponentsToRemove:Landroid/util/ArraySet;

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/statusbar/TileRequestTracker$1;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Lcom/android/server/statusbar/TileRequestTracker$1;-><init>(Lcom/android/server/statusbar/TileRequestTracker;)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Landroid/content/IntentFilter;

    .line 31
    .line 32
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string p0, "android.intent.action.PACKAGE_REMOVED"

    .line 36
    .line 37
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string p0, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 41
    .line 42
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string/jumbo p0, "package"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    move-object v1, p1

    .line 56
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "TileRequestTracker:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/statusbar/TileRequestTracker$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Lcom/android/server/statusbar/TileRequestTracker$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p0
.end method
