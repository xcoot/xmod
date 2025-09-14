.class public final Lcom/android/server/DockObserver$2;
.super Lcom/android/server/ExtconUEventObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/DockObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    .line 3
    invoke-direct {p0}, Lcom/android/server/ExtconUEventObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onUEvent(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Landroid/os/UEventObserver$UEvent;)V
    .locals 3

    .line 1
    const-string p1, "Extcon event missing STATE: "

    .line 3
    const-string v0, "DockObserver"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string v2, "Dock UEVENT: "

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    .line 28
    const/4 v1, 0x0

    .line 29
    iput v1, v0, Lcom/android/server/DockObserver;->mLastUeventDevice:I

    .line 31
    iget-object v0, v0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    const-string v1, "STATE"

    .line 36
    invoke-virtual {p2, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 42
    iget-object p0, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    .line 44
    invoke-static {v1}, Lcom/android/server/DockObserver$ExtconStateProvider;->fromString(Ljava/lang/String;)Lcom/android/server/DockObserver$ExtconStateProvider;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const-string p0, "DockObserver"

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method
