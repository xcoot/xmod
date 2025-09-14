.class public final Lcom/android/server/statusbar/StatusBarManagerService$6;
.super Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field public final synthetic val$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

.field public final synthetic val$componentName:Landroid/content/ComponentName;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/content/ComponentName;Ljava/lang/String;Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$userId:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$componentName:Landroid/content/ComponentName;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$packageName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onTileRequest(I)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    move p1, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    .line 12
    .line 13
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$userId:I

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$componentName:Landroid/content/ComponentName;

    .line 16
    .line 17
    iget-object v4, v0, Lcom/android/server/statusbar/TileRequestTracker;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v4

    .line 20
    :try_start_0
    iget-object v5, v0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v5, v2, v3, v1}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget-object v0, v0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v2, v3, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    monitor-exit v4

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0

    .line 52
    :cond_1
    const/4 v0, 0x2

    .line 53
    if-ne p1, v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    .line 58
    .line 59
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$userId:I

    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$componentName:Landroid/content/ComponentName;

    .line 62
    .line 63
    iget-object v3, v0, Lcom/android/server/statusbar/TileRequestTracker;->mLock:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v3

    .line 66
    :try_start_1
    iget-object v0, v0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    monitor-exit v3

    .line 72
    goto :goto_0

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    throw p0

    .line 76
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$packageName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    :try_start_2
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

    .line 87
    .line 88
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception p0

    .line 93
    const-string p1, "StatusBarManagerService"

    .line 94
    .line 95
    const-string/jumbo v0, "requestAddTile - callback"

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_1
    return-void
.end method
