.class public final Lcom/android/server/clipboard/ClipboardService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method public constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$1;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.companion.virtual.action.VIRTUAL_DEVICE_REMOVED"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    const-string p1, "android.companion.virtual.extra.VIRTUAL_DEVICE_ID"

    .line 16
    const/4 v0, -0x1

    .line 17
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 20
    move-result p1

    .line 21
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$1;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 23
    iget-object p2, p2, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 25
    monitor-enter p2

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$1;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 28
    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    .line 30
    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 33
    move-result v0

    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 36
    :goto_0
    if-ltz v0, :cond_1

    .line 38
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$1;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 40
    iget-object v1, v1, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    .line 42
    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 45
    move-result v2

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v0, v0, -0x1

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    monitor-exit p2

    .line 59
    return-void

    .line 60
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method
