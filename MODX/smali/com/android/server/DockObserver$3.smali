.class public final Lcom/android/server/DockObserver$3;
.super Landroid/os/UEventObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/DockObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DockObserver$3;->this$0:Lcom/android/server/DockObserver;

    .line 3
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3

    .line 1
    const-string v0, "DockObserver"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "CCIC Dock UEVENT: "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/android/server/DockObserver$3;->this$0:Lcom/android/server/DockObserver;

    .line 26
    const/4 v1, 0x1

    .line 27
    iput v1, v0, Lcom/android/server/DockObserver;->mLastUeventDevice:I

    .line 29
    :try_start_0
    iget-object v0, v0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 31
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :try_start_1
    iget-object v1, p0, Lcom/android/server/DockObserver$3;->this$0:Lcom/android/server/DockObserver;

    .line 34
    const-string v2, "USBPD_IDS"

    .line 36
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    iput-object v2, v1, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;

    .line 42
    iget-object p0, p0, Lcom/android/server/DockObserver$3;->this$0:Lcom/android/server/DockObserver;

    .line 44
    const-string v1, "SWITCH_STATE"

    .line 46
    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    move-result v1

    .line 54
    invoke-virtual {p0, v1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 57
    monitor-exit v0

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    :catch_0
    const-string p0, "DockObserver"

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    const-string v1, "Could not parse switch state from event "

    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void
.end method
