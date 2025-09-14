.class public final Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;->this$0:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const-string v0, "Timeout in locale overlay installation.  callback done = "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;->this$0:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->overlayLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    const-string v2, "OverlayChangeObserver"

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;->this$0:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

    .line 16
    .line 17
    iget-boolean v0, v0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->callbackCompleted:Z

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;->this$0:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->callbackCompleted:Z

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->callbackCompleted:Z

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget v0, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->mToken:I

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->onChangeCompleted(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void

    .line 51
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p0
.end method
