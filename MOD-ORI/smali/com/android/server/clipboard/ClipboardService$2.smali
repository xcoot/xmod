.class public final Lcom/android/server/clipboard/ClipboardService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method public constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$2;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onVirtualDeviceClosed(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$2;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$2;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    :goto_0
    if-ltz v1, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$2;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    add-int/lit8 v1, v1, -0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method
