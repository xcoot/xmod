.class public final Lcom/android/server/pm/OverlayChangeObserverImpl;
.super Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public callbackCompleted:Z

.field public final mDidLaunch:I

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mTargetPackage:Ljava/lang/String;

.field public final mType:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

.field public final overlayLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;-><init>(II)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->overlayLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->callbackCompleted:Z

    .line 13
    .line 14
    iput p2, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->mDidLaunch:I

    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->mType:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    .line 17
    .line 18
    iput-object p5, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->mTargetPackage:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p6, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onChangeCompleted(I)V
    .locals 9

    .line 1
    const-string/jumbo v0, "onLocaleOverlaysInstalled. token= "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->overlayLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "PackageManager"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " callback done = "

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->callbackCompleted:Z

    .line 23
    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->callbackCompleted:Z

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->callbackCompleted:Z

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 42
    .line 43
    iget v4, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->mDidLaunch:I

    .line 44
    .line 45
    iget-object v5, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->mType:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    .line 46
    .line 47
    iget v6, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->mUserId:I

    .line 48
    .line 49
    iget-object v7, p0, Lcom/android/server/pm/OverlayChangeObserverImpl;->mTargetPackage:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v8, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->mTimeoutRunnable:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;

    .line 52
    .line 53
    move v3, p1

    .line 54
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->overlaysInstallComplete(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    monitor-exit v1

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method
