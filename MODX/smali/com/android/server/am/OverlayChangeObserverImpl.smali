.class public final Lcom/android/server/am/OverlayChangeObserverImpl;
.super Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mCallingAttributionTag:Ljava/lang/String;

.field public final mCallingPackage:Ljava/lang/String;

.field public final mCallingPid:I

.field public final mConfiguration:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/res/Configuration;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/am/ActivityManagerService;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p4}, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;-><init>(II)V

    .line 5
    iput-object p1, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 7
    iput-object p2, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mCallingPackage:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mCallingAttributionTag:Ljava/lang/String;

    .line 11
    iput p5, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mCallingPid:I

    .line 13
    iput-object p6, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 15
    return-void
.end method


# virtual methods
.method public final onChangeCompleted(I)V
    .locals 8

    .line 1
    const-string/jumbo v0, "onLocaleOverlaysInstalled. token= "

    .line 4
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->overlayLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "ActivityManager"

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string p1, " callback done = "

    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-boolean p1, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->callbackCompleted:Z

    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-boolean p1, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->callbackCompleted:Z

    .line 36
    if-nez p1, :cond_0

    .line 38
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->callbackCompleted:Z

    .line 41
    iget-object v2, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 43
    iget-object v3, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 45
    iget-object v4, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mCallingPackage:Ljava/lang/String;

    .line 47
    iget-object v5, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mCallingAttributionTag:Ljava/lang/String;

    .line 49
    iget v6, p0, Lcom/android/server/am/OverlayChangeObserverImpl;->mCallingPid:I

    .line 51
    iget-object v7, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->mTimeoutRunnable:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;

    .line 53
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->overlaysInstallComplete(Landroid/content/res/Configuration;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;)V

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    monitor-exit v1

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method
