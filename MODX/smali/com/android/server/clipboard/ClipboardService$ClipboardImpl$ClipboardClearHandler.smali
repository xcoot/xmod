.class public final Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;->this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/16 v1, 0x65

    .line 5
    if-eq v0, v1, :cond_0

    .line 7
    const-string p0, "ClipboardService"

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "ClipboardClearHandler received unknown message "

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget p1, p1, Landroid/os/Message;->what:I

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 31
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35
    check-cast p1, Landroid/util/Pair;

    .line 37
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 39
    check-cast p1, Ljava/lang/Integer;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result p1

    .line 45
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;->this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    .line 47
    iget-object v2, v2, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 49
    iget-object v2, v2, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 51
    monitor-enter v2

    .line 52
    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;->this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    .line 54
    iget-object v3, v3, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 56
    invoke-virtual {v3, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 62
    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 64
    if-eqz v0, :cond_1

    .line 66
    const/16 v0, 0x198

    .line 68
    const/4 v3, 0x1

    .line 69
    invoke-static {v0, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 72
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;->this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    .line 74
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 76
    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0, v1, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Landroid/content/ClipData;IILjava/lang/String;)V

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    :goto_0
    monitor-exit v2

    .line 84
    :goto_1
    return-void

    .line 85
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0
.end method
