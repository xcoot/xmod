.class public final Lcom/android/server/print/UserState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActiveServices:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public final mDisabledServices:Ljava/util/Set;

.field public final mInstalledServices:Ljava/util/List;

.field public mIsInstantServiceAllowed:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

.field public mPrintJobStateChangeListenerRecords:Ljava/util/List;

.field public mPrintServiceRecommendations:Ljava/util/List;

.field public mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

.field public mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

.field public mPrintServicesChangeListenerRecords:Ljava/util/List;

.field public mPrinterDiscoverySession:Lcom/android/server/print/UserState$1;

.field public final mQueryIntent:Landroid/content/Intent;

.field public final mSpooler:Lcom/android/server/print/RemotePrintSpooler;

.field public final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/Object;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 5
    .line 6
    const/16 v1, 0x3a

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 12
    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    const-string v1, "android.printservice.PrintService"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    .line 21
    .line 22
    new-instance v0, Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 35
    .line 36
    new-instance v0, Landroid/util/ArraySet;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    .line 42
    .line 43
    new-instance v0, Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    iput p2, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 53
    .line 54
    iput-object p3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 55
    .line 56
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler;

    .line 57
    .line 58
    invoke-direct {v0, p1, p2, p4, p0}, Lcom/android/server/print/RemotePrintSpooler;-><init>(Landroid/content/Context;IZLcom/android/server/print/UserState;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 62
    .line 63
    monitor-enter p3

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->upgradePersistentStateIfNeeded()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->readDisabledPrintServicesLocked()V

    .line 71
    .line 72
    .line 73
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    .line 75
    .line 76
    .line 77
    monitor-enter p3

    .line 78
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 79
    .line 80
    .line 81
    monitor-exit p3

    .line 82
    return-void

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    throw p0

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    throw p0
.end method


# virtual methods
.method public final addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 17
    .line 18
    new-instance v1, Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 23
    .line 24
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-direct {v1, v2, v3, p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/print/UserState;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 37
    .line 38
    new-instance v2, Lcom/android/server/print/UserState$3;

    .line 39
    .line 40
    invoke-direct {v2, p0, p1}, Lcom/android/server/print/UserState$3;-><init>(Lcom/android/server/print/UserState;Landroid/printservice/recommendation/IRecommendationsChangeListener;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public final cancelPrintJob(Landroid/print/PrintJobId;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/print/PrintJobInfo;->getState()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x6

    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/android/server/print/RemotePrintService;

    .line 42
    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-nez p0, :cond_1

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;

    .line 52
    .line 53
    const/4 v1, 0x3

    .line 54
    invoke-direct {v0, v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p0, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p0

    .line 68
    :cond_2
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 69
    .line 70
    const/4 p2, 0x7

    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_0
    return-void
.end method

.method public final destroyLocked()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    iput-boolean v2, v0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    iput-boolean v3, v0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 23
    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    new-instance v4, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    const/4 v5, 0x3

    .line 57
    invoke-direct {v4, v5}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-static {v4, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 74
    .line 75
    check-cast v0, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    .line 81
    .line 82
    check-cast v0, Landroid/util/ArraySet;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$1;

    .line 88
    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/android/server/print/UserState$1;->destroyLocked()V

    .line 92
    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$1;

    .line 96
    .line 97
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    .line 98
    .line 99
    return-void

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    throw p0
.end method

.method public final failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V
    .locals 8

    .line 1
    const/4 v0, -0x4

    .line 2
    const/4 v1, -0x2

    .line 3
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 4
    .line 5
    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(IILandroid/content/ComponentName;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    :goto_0
    if-ge v4, v3, :cond_1

    .line 22
    .line 23
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Landroid/print/PrintJobInfo;

    .line 28
    .line 29
    invoke-virtual {v5}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-object v6, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const v7, 0x1040c61

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    const/4 v7, 0x6

    .line 43
    invoke-virtual {v2, v5, v7, v6}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-boolean v2, v0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 14
    .line 15
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 16
    const/4 v1, 0x1

    .line 17
    :try_start_1
    iget-object v2, v0, Lcom/android/server/print/RemotePrintSpooler;->mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3, p1}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->getCustomPrinterIcon(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    .line 24
    .line 25
    .line 26
    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    iget-object v3, v0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v3

    .line 30
    :try_start_2
    iput-boolean v1, v0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 35
    .line 36
    .line 37
    monitor-exit v3

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw p0

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v2

    .line 45
    :try_start_3
    const-string v3, "RemotePrintSpooler"

    .line 46
    .line 47
    const-string v4, "Error getting custom printer icon."

    .line 48
    .line 49
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    .line 51
    .line 52
    iget-object v2, v0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter v2

    .line 55
    :try_start_4
    iput-boolean v1, v0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 56
    .line 57
    iget-object v0, v0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 60
    .line 61
    .line 62
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 63
    const/4 v2, 0x0

    .line 64
    :goto_0
    if-nez v2, :cond_0

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lcom/android/server/print/RemotePrintService;

    .line 77
    .line 78
    if-eqz p0, :cond_0

    .line 79
    .line 80
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    invoke-direct {v1, v3}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 88
    .line 89
    .line 90
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    .line 96
    .line 97
    :cond_0
    return-object v2

    .line 98
    :catchall_2
    move-exception p0

    .line 99
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 100
    throw p0

    .line 101
    :goto_1
    iget-object p1, v0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 102
    .line 103
    monitor-enter p1

    .line 104
    :try_start_6
    iput-boolean v1, v0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 105
    .line 106
    iget-object v0, v0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 109
    .line 110
    .line 111
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 112
    throw p0

    .line 113
    :catchall_3
    move-exception p0

    .line 114
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 115
    throw p0

    .line 116
    :catchall_4
    move-exception p0

    .line 117
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 118
    throw p0
.end method

.method public final getInstalledComponents()Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/printservice/PrintServiceInfo;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    new-instance v4, Landroid/content/ComponentName;

    .line 28
    .line 29
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 30
    .line 31
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-object v0
.end method

.method public final getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/List;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    monitor-exit v1

    .line 20
    :goto_0
    move-object v5, v2

    .line 21
    goto :goto_2

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_3

    .line 24
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    :goto_1
    if-ge v4, v3, :cond_2

    .line 30
    .line 31
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Landroid/print/PrintJobInfo;

    .line 36
    .line 37
    invoke-virtual {v5}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v6, p1}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    monitor-exit v1

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    goto :goto_0

    .line 54
    :goto_2
    if-nez v5, :cond_3

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 57
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    :cond_3
    if-eqz v5, :cond_4

    .line 63
    .line 64
    invoke-virtual {v5, v2}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v2}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    return-object v5

    .line 71
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p0
.end method

.method public final getPrintJobInfos(I)Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    const/4 v2, -0x2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    if-ne p1, v2, :cond_1

    .line 12
    .line 13
    :try_start_0
    iget-object v2, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    move v5, v3

    .line 20
    move-object v6, v4

    .line 21
    :goto_0
    if-ge v5, v2, :cond_3

    .line 22
    .line 23
    iget-object v7, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    check-cast v7, Ljava/util/List;

    .line 30
    .line 31
    if-nez v6, :cond_0

    .line 32
    .line 33
    new-instance v6, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_0
    :goto_1
    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    .line 45
    add-int/lit8 v5, v5, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/util/List;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    new-instance v6, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move-object v6, v4

    .line 68
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 69
    .line 70
    monitor-exit v1

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_3
    new-instance v0, Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    move v2, v3

    .line 87
    :goto_4
    if-ge v2, v1, :cond_5

    .line 88
    .line 89
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Landroid/print/PrintJobInfo;

    .line 94
    .line 95
    invoke-virtual {v5}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v0, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v4}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v4}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 106
    .line 107
    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_5
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 112
    .line 113
    const/4 v1, -0x1

    .line 114
    invoke-virtual {p0, v1, p1, v4}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(IILandroid/content/ComponentName;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    if-eqz p0, :cond_6

    .line 119
    .line 120
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    :goto_5
    if-ge v3, p1, :cond_6

    .line 125
    .line 126
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Landroid/print/PrintJobInfo;

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v4}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v4}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 143
    .line 144
    .line 145
    add-int/lit8 v3, v3, 0x1

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 155
    .line 156
    .line 157
    return-object p0

    .line 158
    :goto_6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    throw p0
.end method

.method public final getPrintServices(I)Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 5
    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v1, :cond_3

    .line 15
    .line 16
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 17
    .line 18
    check-cast v4, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Landroid/printservice/PrintServiceInfo;

    .line 25
    .line 26
    new-instance v5, Landroid/content/ComponentName;

    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 33
    .line 34
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 41
    .line 42
    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v6, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-virtual {v4, v5}, Landroid/printservice/PrintServiceInfo;->setIsEnabled(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_0

    .line 61
    .line 62
    and-int/lit8 v5, p1, 0x1

    .line 63
    .line 64
    if-nez v5, :cond_1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_0
    and-int/lit8 v5, p1, 0x2

    .line 68
    .line 69
    if-nez v5, :cond_1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    if-nez v2, :cond_2

    .line 73
    .line 74
    new-instance v2, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_3

    .line 82
    :cond_2
    :goto_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    monitor-exit v0

    .line 89
    return-object v2

    .line 90
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw p0
.end method

.method public final onConfigurationChangedLocked()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->getInstalledComponents()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v1, :cond_5

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    move-object v7, v4

    .line 18
    check-cast v7, Landroid/content/ComponentName;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    .line 21
    .line 22
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_3

    .line 27
    .line 28
    iget-object v4, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_4

    .line 35
    .line 36
    new-instance v4, Lcom/android/server/print/RemotePrintService;

    .line 37
    .line 38
    iget-object v6, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    iget v8, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 41
    .line 42
    iget-object v9, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 43
    .line 44
    move-object v5, v4

    .line 45
    move-object v10, p0

    .line 46
    invoke-direct/range {v5 .. v10}, Lcom/android/server/print/RemotePrintService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/UserState;)V

    .line 47
    .line 48
    .line 49
    iget-object v5, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 50
    .line 51
    iget-object v6, v4, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    .line 52
    .line 53
    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$1;

    .line 57
    .line 58
    if-eqz v5, :cond_4

    .line 59
    .line 60
    iget-boolean v6, v5, Lcom/android/server/print/UserState$1;->mIsDestroyed:Z

    .line 61
    .line 62
    if-eqz v6, :cond_0

    .line 63
    .line 64
    const-string v4, "UserState"

    .line 65
    .line 66
    const-string v5, "Not updating added service - session destroyed"

    .line 67
    .line 68
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_0
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    new-instance v7, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    const/4 v8, 0x2

    .line 79
    invoke-direct {v7, v8}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-static {v7, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    .line 88
    .line 89
    iget-object v6, v5, Lcom/android/server/print/UserState$1;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 90
    .line 91
    check-cast v6, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-nez v6, :cond_1

    .line 98
    .line 99
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    new-instance v7, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;

    .line 104
    .line 105
    const/4 v8, 0x5

    .line 106
    invoke-direct {v7, v8}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;-><init>(I)V

    .line 107
    .line 108
    .line 109
    const/4 v8, 0x0

    .line 110
    invoke-static {v7, v4, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    .line 116
    .line 117
    :cond_1
    iget-object v6, v5, Lcom/android/server/print/UserState$1;->mStateTrackedPrinters:Ljava/util/List;

    .line 118
    .line 119
    check-cast v6, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    move v7, v2

    .line 126
    :goto_1
    if-ge v7, v6, :cond_4

    .line 127
    .line 128
    iget-object v8, v5, Lcom/android/server/print/UserState$1;->mStateTrackedPrinters:Ljava/util/List;

    .line 129
    .line 130
    check-cast v8, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    check-cast v8, Landroid/print/PrinterId;

    .line 137
    .line 138
    invoke-virtual {v8}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    iget-object v10, v4, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    .line 143
    .line 144
    invoke-virtual {v9, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-eqz v9, :cond_2

    .line 149
    .line 150
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    new-instance v10, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;

    .line 155
    .line 156
    const/4 v11, 0x6

    .line 157
    invoke-direct {v10, v11}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;-><init>(I)V

    .line 158
    .line 159
    .line 160
    invoke-static {v10, v4, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    .line 166
    .line 167
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_3
    iget-object v4, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 171
    .line 172
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    check-cast v4, Lcom/android/server/print/RemotePrintService;

    .line 177
    .line 178
    if-eqz v4, :cond_4

    .line 179
    .line 180
    invoke-virtual {p0, v4}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 181
    .line 182
    .line 183
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_5
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 188
    .line 189
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_7

    .line 202
    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    check-cast v2, Ljava/util/Map$Entry;

    .line 208
    .line 209
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    check-cast v3, Landroid/content/ComponentName;

    .line 214
    .line 215
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 220
    .line 221
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-nez v3, :cond_6

    .line 226
    .line 227
    invoke-virtual {p0, v2}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 228
    .line 229
    .line 230
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_7
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    new-instance v1, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;

    .line 239
    .line 240
    const/4 v2, 0x0

    .line 241
    invoke-direct {v1, v2}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;-><init>(I)V

    .line 242
    .line 243
    .line 244
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 249
    .line 250
    .line 251
    return-void
.end method

.method public final onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance v0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-direct {v0, v2}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    const v1, 0x1040c61

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const/4 v1, 0x6

    .line 60
    invoke-virtual {v0, p1, v1, p0}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw p0
.end method

.method public final print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/print/PrintJobInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/print/PrintJobInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/print/PrintJobId;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/print/PrintJobId;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/print/PrintJobInfo;->setId(Landroid/print/PrintJobId;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p5}, Landroid/print/PrintJobInfo;->setAppId(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->setLabel(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p3}, Landroid/print/PrintJobInfo;->setAttributes(Landroid/print/PrintAttributes;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->setState(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->setCopies(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/print/PrintJobInfo;->setCreationTime(J)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 38
    .line 39
    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    :try_start_0
    new-instance v2, Lcom/android/server/print/UserState$PrintJobForAppCache$1;

    .line 48
    .line 49
    invoke-direct {v2, p1, p3, p5}, Lcom/android/server/print/UserState$PrintJobForAppCache$1;-><init>(Lcom/android/server/print/UserState$PrintJobForAppCache;Landroid/os/IBinder;I)V

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-interface {p3, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    iget-object p3, p1, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    .line 57
    .line 58
    iget-object p3, p3, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter p3

    .line 61
    :try_start_1
    iget-object v2, p1, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-virtual {v2, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/util/List;

    .line 68
    .line 69
    if-nez v2, :cond_0

    .line 70
    .line 71
    new-instance v2, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p1, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {p1, p5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    :goto_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    :try_start_2
    new-instance p3, Landroid/content/Intent;

    .line 93
    .line 94
    const-string p1, "android.print.PRINT_DIALOG"

    .line 95
    .line 96
    invoke-direct {p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string/jumbo p1, "printjob"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 103
    .line 104
    .line 105
    move-result-object p5

    .line 106
    invoke-virtual {p5}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p5

    .line 110
    invoke-static {p1, p5, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    const-string p1, "android.print.intent.extra.EXTRA_PRINT_DOCUMENT_ADAPTER"

    .line 118
    .line 119
    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    const-string p1, "android.print.intent.extra.EXTRA_PRINT_JOB"

    .line 127
    .line 128
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    const-string p1, "android.intent.extra.PACKAGE_NAME"

    .line 132
    .line 133
    invoke-virtual {p3, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const/4 p2, 0x2

    .line 141
    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iget-object p2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 148
    .line 149
    .line 150
    move-result-object p4

    .line 151
    new-instance p5, Landroid/os/UserHandle;

    .line 152
    .line 153
    iget p0, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 154
    .line 155
    invoke-direct {p5, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 156
    .line 157
    .line 158
    const/4 p1, 0x0

    .line 159
    const/high16 v1, 0x54000000

    .line 160
    .line 161
    move-object p0, p2

    .line 162
    move-object p2, p3

    .line 163
    move p3, v1

    .line 164
    invoke-static/range {p0 .. p5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    new-instance p1, Landroid/os/Bundle;

    .line 173
    .line 174
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string p2, "android.print.intent.extra.EXTRA_PRINT_JOB"

    .line 178
    .line 179
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 180
    .line 181
    .line 182
    const-string p2, "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

    .line 183
    .line 184
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    .line 186
    .line 187
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    .line 189
    .line 190
    return-object p1

    .line 191
    :catchall_1
    move-exception p0

    .line 192
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    .line 194
    .line 195
    throw p0

    .line 196
    :goto_1
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    throw p0

    .line 198
    :catch_0
    return-object v1
.end method

.method public final prunePrintServices()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->getInstalledComponents()Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {v2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lcom/android/server/print/RemotePrintSpooler;->pruneApprovedPrintServices(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0
.end method

.method public final readDisabledPrintServicesLocked()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "disabled_print_services"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    .line 25
    .line 26
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final readInstalledPrintServicesLocked()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/android/server/print/UserState;->mIsInstantServiceAllowed:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const v1, 0x10800084

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const v1, 0x10000084

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    .line 24
    .line 25
    iget v4, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 26
    .line 27
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_1
    if-ge v3, v2, :cond_2

    .line 37
    .line 38
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 43
    .line 44
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 45
    .line 46
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 47
    .line 48
    const-string v6, "android.permission.BIND_PRINT_SERVICE"

    .line 49
    .line 50
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_1

    .line 55
    .line 56
    new-instance v5, Landroid/content/ComponentName;

    .line 57
    .line 58
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 59
    .line 60
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {v5, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v6, "Skipping print service "

    .line 70
    .line 71
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v5, " since it does not require permission android.permission.BIND_PRINT_SERVICE"

    .line 82
    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    const-string v5, "UserState"

    .line 91
    .line 92
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_1
    iget-object v5, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {v5, v4}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/printservice/PrintServiceInfo;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 8
    .line 9
    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    move-object v0, p2

    .line 48
    check-cast v0, Ljava/util/HashSet;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-void
.end method

.method public final removeObsoletePrintJobs()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 16
    const/4 v0, 0x1

    .line 17
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Landroid/print/IPrintSpooler;->removeObsoletePrintJobs()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v1

    .line 27
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0

    .line 39
    :catchall_1
    move-exception v1

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception v1

    .line 42
    :try_start_3
    const-string v2, "RemotePrintSpooler"

    .line 43
    .line 44
    const-string v3, "Error removing obsolete print jobs ."

    .line 45
    .line 46
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v1

    .line 52
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 57
    .line 58
    .line 59
    monitor-exit v1

    .line 60
    :goto_0
    return-void

    .line 61
    :catchall_2
    move-exception p0

    .line 62
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 63
    throw p0

    .line 64
    :goto_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter v2

    .line 67
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 72
    .line 73
    .line 74
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 75
    throw v1

    .line 76
    :catchall_3
    move-exception p0

    .line 77
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 78
    throw p0

    .line 79
    :catchall_4
    move-exception p0

    .line 80
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 81
    throw p0
.end method

.method public final removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    move v3, v2

    .line 21
    :goto_0
    if-ge v3, v1, :cond_2

    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/android/server/print/UserState$2;

    .line 30
    .line 31
    iget-object v5, v4, Lcom/android/server/print/UserState$2;->listener:Landroid/print/IPrintJobStateChangeListener;

    .line 32
    .line 33
    invoke-interface {v5}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-interface {p1}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-interface {v5, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    iget-object p1, v4, Lcom/android/server/print/UserState$2;->listener:Landroid/print/IPrintJobStateChangeListener;

    .line 48
    .line 49
    invoke-interface {p1}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 75
    .line 76
    :cond_3
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method public final removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    :goto_0
    if-ge v3, v1, :cond_2

    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 26
    .line 27
    check-cast v4, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/android/server/print/UserState$3;

    .line 34
    .line 35
    iget-object v5, v4, Lcom/android/server/print/UserState$3;->listener:Landroid/os/IInterface;

    .line 36
    .line 37
    check-cast v5, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    .line 38
    .line 39
    invoke-interface {v5}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->asBinder()Landroid/os/IBinder;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-interface {p1}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->asBinder()Landroid/os/IBinder;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-interface {v5, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    iget-object p1, v4, Lcom/android/server/print/UserState$3;->listener:Landroid/os/IInterface;

    .line 54
    .line 55
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 63
    .line 64
    check-cast p1, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 74
    .line 75
    check-cast p1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 85
    .line 86
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->close()V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 94
    .line 95
    :cond_3
    monitor-exit v0

    .line 96
    return-void

    .line 97
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p0
.end method

.method public final removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    :goto_0
    if-ge v3, v1, :cond_2

    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 26
    .line 27
    check-cast v4, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/android/server/print/UserState$3;

    .line 34
    .line 35
    iget-object v5, v4, Lcom/android/server/print/UserState$3;->listener:Landroid/os/IInterface;

    .line 36
    .line 37
    check-cast v5, Landroid/print/IPrintServicesChangeListener;

    .line 38
    .line 39
    invoke-interface {v5}, Landroid/print/IPrintServicesChangeListener;->asBinder()Landroid/os/IBinder;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-interface {p1}, Landroid/print/IPrintServicesChangeListener;->asBinder()Landroid/os/IBinder;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-interface {v5, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    iget-object p1, v4, Lcom/android/server/print/UserState$3;->listener:Landroid/os/IInterface;

    .line 54
    .line 55
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 63
    .line 64
    check-cast p1, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 74
    .line 75
    check-cast p1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 85
    .line 86
    :cond_3
    monitor-exit v0

    .line 87
    return-void

    .line 88
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0
.end method

.method public final removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-static {v2, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$1;

    .line 35
    .line 36
    if-eqz p0, :cond_8

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/android/server/print/UserState$1;->mIsDestroyed:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const-string p0, "UserState"

    .line 43
    .line 44
    const-string p1, "Not updating removed service - session destroyed"

    .line 45
    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_1
    iget-object v0, p1, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/print/UserState$1;->mPrinters:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/android/server/print/UserState$1;->mPrinters:Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v2, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    move v4, v2

    .line 71
    :goto_1
    if-ge v4, v1, :cond_5

    .line 72
    .line 73
    iget-object v5, p0, Lcom/android/server/print/UserState$1;->mPrinters:Landroid/util/ArrayMap;

    .line 74
    .line 75
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Landroid/print/PrinterId;

    .line 80
    .line 81
    invoke-virtual {v5}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_4

    .line 90
    .line 91
    if-nez v3, :cond_3

    .line 92
    .line 93
    new-instance v3, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    if-eqz v3, :cond_7

    .line 105
    .line 106
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    :goto_2
    if-ge v2, v0, :cond_6

    .line 111
    .line 112
    iget-object v1, p0, Lcom/android/server/print/UserState$1;->mPrinters:Landroid/util/ArrayMap;

    .line 113
    .line 114
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    add-int/lit8 v2, v2, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    new-instance v1, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;

    .line 129
    .line 130
    const/16 v2, 0x9

    .line 131
    .line 132
    invoke-direct {v1, v2}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;-><init>(I)V

    .line 133
    .line 134
    .line 135
    invoke-static {v1, p0, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    .line 141
    .line 142
    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    new-instance v0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;

    .line 147
    .line 148
    const/4 v1, 0x3

    .line 149
    invoke-direct {v0, v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 150
    .line 151
    .line 152
    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_8
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    new-instance v0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;

    .line 165
    .line 166
    const/4 v1, 0x3

    .line 167
    invoke-direct {v0, v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 168
    .line 169
    .line 170
    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    .line 176
    .line 177
    :goto_4
    return-void
.end method

.method public final setPrintServiceEnabled(Landroid/content/ComponentName;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    .line 9
    .line 10
    check-cast v2, Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget-object v3, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 20
    .line 21
    check-cast v3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    move v4, v2

    .line 28
    :goto_0
    if-ge v4, v3, :cond_2

    .line 29
    .line 30
    iget-object v5, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 31
    .line 32
    check-cast v5, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Landroid/printservice/PrintServiceInfo;

    .line 39
    .line 40
    invoke-virtual {v5}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v5, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    .line 51
    .line 52
    check-cast v2, Landroid/util/ArraySet;

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move v2, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    xor-int/2addr p2, v1

    .line 72
    const/16 v1, 0x1ff

    .line 73
    .line 74
    invoke-static {p1, v1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 78
    .line 79
    .line 80
    :cond_3
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0
.end method

.method public final stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$1;

    .line 20
    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$1;->stopPrinterStateTrackingLocked(Landroid/print/PrinterId;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final throwIfDestroyedLocked()V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Cannot interact with a destroyed instance."

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method

.method public final updateIfNeededLocked()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->readDisabledPrintServicesLocked()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final upgradePersistentStateIfNeeded()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "enabled_print_services"

    .line 8
    .line 9
    iget v2, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x0

    .line 37
    :goto_0
    if-ge v5, v4, :cond_1

    .line 38
    .line 39
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Landroid/printservice/PrintServiceInfo;

    .line 46
    .line 47
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-nez v7, :cond_0

    .line 56
    .line 57
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 74
    .line 75
    .line 76
    :cond_2
    return-void
.end method

.method public final validatePrinters(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$1;

    .line 20
    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$1;->validatePrintersLocked(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final writeDisabledPrintServicesLocked(Ljava/util/Set;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/content/ComponentName;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-lez v2, :cond_0

    .line 27
    .line 28
    const/16 v2, 0x3a

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget p0, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 52
    .line 53
    const-string v1, "disabled_print_services"

    .line 54
    .line 55
    invoke-static {p1, v1, v0, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method
