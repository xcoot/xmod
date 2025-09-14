.class public final Landroid/os/epic/EpicChromeTask;
.super Ljava/util/TimerTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private mAcquired:Z

.field private mCancel:Z

.field private mCheckPkgName:Ljava/lang/String;

.field private mDetector:Landroid/os/epic/EpicChromeDetector;

.field private mHandle:Lcom/samsung/epic/Request;

.field private mRequest:Lcom/samsung/epic/Request;


# direct methods
.method public constructor <init>(Landroid/os/epic/EpicChromeDetector;Landroid/os/epic/EpicChromeTask;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/os/epic/EpicChromeTask;->mHandle:Lcom/samsung/epic/Request;

    .line 7
    iput-object v0, p0, Landroid/os/epic/EpicChromeTask;->mCheckPkgName:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    .line 12
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    .line 14
    iput-object p1, p0, Landroid/os/epic/EpicChromeTask;->mDetector:Landroid/os/epic/EpicChromeDetector;

    .line 16
    new-instance p1, Lcom/samsung/epic/Request;

    .line 18
    const v0, 0x187cc

    .line 21
    invoke-direct {p1, v0}, Lcom/samsung/epic/Request;-><init>(I)V

    .line 24
    iput-object p1, p0, Landroid/os/epic/EpicChromeTask;->mHandle:Lcom/samsung/epic/Request;

    .line 26
    if-eqz p2, :cond_0

    .line 28
    iget-boolean p1, p2, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    .line 30
    iput-boolean p1, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public getCheckPkgName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/os/epic/EpicChromeTask;->mCheckPkgName:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    .line 4
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/os/epic/EpicChromeTask;->mDetector:Landroid/os/epic/EpicChromeDetector;

    .line 4
    if-eqz v0, :cond_5

    .line 6
    iget-boolean v1, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    .line 8
    if-eqz v1, :cond_0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v1, p0, Landroid/os/epic/EpicChromeTask;->mCheckPkgName:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/epic/EpicChromeDetector;->CheckChromeBrowser(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    iget-boolean v1, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    .line 19
    if-eqz v1, :cond_1

    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    if-eqz v0, :cond_3

    .line 27
    iget-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    .line 29
    if-nez v0, :cond_2

    .line 31
    iget-object v0, p0, Landroid/os/epic/EpicChromeTask;->mHandle:Lcom/samsung/epic/Request;

    .line 33
    invoke-virtual {v0}, Lcom/samsung/epic/Request;->acquire_lock()Z

    .line 36
    :cond_2
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    .line 42
    if-eqz v0, :cond_4

    .line 44
    iget-object v0, p0, Landroid/os/epic/EpicChromeTask;->mHandle:Lcom/samsung/epic/Request;

    .line 46
    invoke-virtual {v0}, Lcom/samsung/epic/Request;->release_lock()Z

    .line 49
    :cond_4
    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    .line 52
    :goto_0
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :cond_5
    :goto_1
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw v0
.end method

.method public setCancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    .line 4
    return-void
.end method

.method public setCheckPkgName(Ljava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/os/epic/EpicChromeTask;->mCheckPkgName:Ljava/lang/String;

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method
