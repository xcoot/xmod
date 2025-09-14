.class public final Landroid/os/epic/EpicUidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final DELAY_CHECK_MS:J = 0x3e8L


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

.field private mCheckTimer:Ljava/util/Timer;

.field private mChromeDetector:Landroid/os/epic/EpicChromeDetector;

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPrevPkgName:Ljava/lang/String;

.field private mRequest:Lcom/samsung/epic/Request;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/IActivityManager;Landroid/os/epic/EpicChromeDetector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/os/epic/EpicUidObserver;->mPrevPkgName:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    .line 9
    iput-object v0, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    .line 11
    iput-object v0, p0, Landroid/os/epic/EpicUidObserver;->mCheckTimer:Ljava/util/Timer;

    .line 13
    iput-object p1, p0, Landroid/os/epic/EpicUidObserver;->mContext:Landroid/content/Context;

    .line 15
    new-instance p1, Lcom/samsung/epic/Request;

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {p1, v1}, Lcom/samsung/epic/Request;-><init>(I)V

    .line 21
    iput-object p1, p0, Landroid/os/epic/EpicUidObserver;->mRequest:Lcom/samsung/epic/Request;

    .line 23
    iput-object p2, p0, Landroid/os/epic/EpicUidObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 25
    iput-object p3, p0, Landroid/os/epic/EpicUidObserver;->mActivityManager:Landroid/app/IActivityManager;

    .line 27
    iput-object p4, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    .line 29
    if-nez p4, :cond_0

    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p4}, Landroid/os/epic/EpicChromeDetector;->LinkLibrary()Z

    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 38
    iput-object v0, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    .line 43
    invoke-virtual {p1}, Landroid/os/epic/EpicChromeDetector;->Initialize()V

    .line 46
    new-instance p1, Ljava/util/Timer;

    .line 48
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/os/epic/EpicUidObserver;->mCheckTimer:Ljava/util/Timer;

    .line 53
    :goto_0
    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-object p0, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Landroid/os/epic/EpicChromeDetector;->RemoveUid(Ljava/lang/String;)V

    .line 16
    :catch_0
    :cond_0
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUidProcAdjChanged(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 0

    .line 1
    const/4 p3, 0x2

    .line 2
    if-eq p2, p3, :cond_0

    .line 4
    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 7
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 10
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mPrevPkgName:Ljava/lang/String;

    .line 13
    if-eq p2, p1, :cond_1

    .line 15
    iget-object p3, p0, Landroid/os/epic/EpicUidObserver;->mRequest:Lcom/samsung/epic/Request;

    .line 17
    invoke-virtual {p3, p2}, Lcom/samsung/epic/Request;->hint_release(Ljava/lang/String;)Z

    .line 20
    :cond_1
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mRequest:Lcom/samsung/epic/Request;

    .line 22
    invoke-virtual {p2, p1}, Lcom/samsung/epic/Request;->perf_hint(Ljava/lang/String;)Z

    .line 25
    iput-object p1, p0, Landroid/os/epic/EpicUidObserver;->mPrevPkgName:Ljava/lang/String;

    .line 27
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    .line 29
    if-nez p2, :cond_2

    .line 31
    return-void

    .line 32
    :cond_2
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    .line 34
    if-eqz p2, :cond_3

    .line 36
    invoke-virtual {p2}, Ljava/util/TimerTask;->cancel()Z

    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_3

    .line 42
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    .line 44
    invoke-virtual {p2}, Landroid/os/epic/EpicChromeTask;->setCancel()V

    .line 47
    :cond_3
    new-instance p2, Landroid/os/epic/EpicChromeTask;

    .line 49
    iget-object p3, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    .line 51
    iget-object p4, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    .line 53
    invoke-direct {p2, p3, p4}, Landroid/os/epic/EpicChromeTask;-><init>(Landroid/os/epic/EpicChromeDetector;Landroid/os/epic/EpicChromeTask;)V

    .line 56
    iput-object p2, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    .line 58
    invoke-virtual {p2, p1}, Landroid/os/epic/EpicChromeTask;->setCheckPkgName(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    .line 63
    invoke-virtual {p1}, Landroid/os/epic/EpicChromeTask;->reset()V

    .line 66
    iget-object p1, p0, Landroid/os/epic/EpicUidObserver;->mCheckTimer:Ljava/util/Timer;

    .line 68
    iget-object p0, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    .line 70
    const-wide/16 p2, 0x3e8

    .line 72
    invoke-virtual {p1, p0, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 75
    :catch_0
    return-void
.end method
