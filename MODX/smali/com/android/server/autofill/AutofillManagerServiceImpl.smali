.class public final Lcom/android/server/autofill/AutofillManagerServiceImpl;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sRandom:Ljava/util/Random;


# instance fields
.field public mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

.field public final mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

.field public mClients:Landroid/os/RemoteCallbackList;

.field public final mContentCaptureManagerInternal:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

.field public final mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

.field public mEventHistory:Landroid/service/autofill/FillEventHistory;

.field public final mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

.field public final mHandler:Landroid/os/Handler;

.field public mInfo:Landroid/service/autofill/AutofillServiceInfo;

.field public final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field public mLastPrune:J

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

.field public mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

.field public mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

.field public mRemoteFieldClassificationServiceInfo:Landroid/content/pm/ServiceInfo;

.field public mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

.field public final mSessions:Landroid/util/SparseArray;

.field public final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final mUiLatencyHistory:Landroid/util/LocalLog;

.field public mUserData:Landroid/service/autofill/UserData;

.field public final mWtfHistory:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sRandom:Ljava/util/Random;

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerService;Ljava/lang/Object;Landroid/util/LocalLog;Landroid/util/LocalLog;ILcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;ZLcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 4
    new-instance p2, Lcom/android/internal/logging/MetricsLogger;

    .line 6
    invoke-direct {p2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 11
    new-instance p2, Landroid/os/Handler;

    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {p2, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 22
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance p2, Landroid/util/SparseArray;

    .line 26
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 31
    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    .line 35
    iput-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 37
    iput-object p4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mWtfHistory:Landroid/util/LocalLog;

    .line 39
    iput-object p6, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 41
    new-instance p2, Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 43
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p2, p1, p5}, Lcom/android/server/autofill/FieldClassificationStrategy;-><init>(Landroid/content/Context;I)V

    .line 50
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 52
    iput-object p7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 54
    const-class p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 56
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 62
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 64
    const-class p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 66
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 72
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContentCaptureManagerInternal:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 74
    iput-object p9, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 76
    invoke-virtual {p0, p8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateLocked(Z)Z

    .line 79
    return-void
.end method


# virtual methods
.method public final addClientLocked(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;Z)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 6
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v1

    .line 14
    const v2, 0x1040316

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 30
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v1, v2

    .line 36
    :goto_0
    if-nez v1, :cond_1

    .line 38
    const-string v3, "AutofillManagerServiceImpl"

    .line 40
    const-string v4, "Invalid CredentialAutofillService"

    .line 42
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1
    const/4 v3, 0x0

    .line 46
    if-nez p3, :cond_3

    .line 48
    iget-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 50
    if-nez p3, :cond_2

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {p3}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 60
    move-result-object v2

    .line 61
    :goto_1
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result p3

    .line 65
    if-eqz p3, :cond_3

    .line 67
    monitor-exit v0

    .line 68
    return v3

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    iget-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 73
    if-nez p3, :cond_4

    .line 75
    new-instance p3, Landroid/os/RemoteCallbackList;

    .line 77
    invoke-direct {p3}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 80
    iput-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 82
    :cond_4
    iget-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 84
    invoke-virtual {p3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 87
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_5

    .line 93
    monitor-exit v0

    .line 94
    const/4 p0, 0x1

    .line 95
    return p0

    .line 96
    :cond_5
    if-eqz p2, :cond_6

    .line 98
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAugmentedAutofillServiceAvailableLocked()Z

    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_6

    .line 104
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 106
    check-cast p1, Lcom/android/server/autofill/AutofillManagerService;

    .line 108
    iget-object p1, p1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    .line 110
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 112
    invoke-virtual {p1, p0, p2}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->isWhitelisted(ILandroid/content/ComponentName;)Z

    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_6

    .line 118
    monitor-exit v0

    .line 119
    const/16 p0, 0x8

    .line 121
    return p0

    .line 122
    :cond_6
    monitor-exit v0

    .line 123
    return v3

    .line 124
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    throw p0
.end method

.method public final destroyLocked()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "AutofillManagerServiceImpl"

    .line 7
    const-string/jumbo v1, "destroyLocked()"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetExtServiceLocked()V

    .line 16
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 21
    move-result v0

    .line 22
    new-instance v1, Landroid/util/ArraySet;

    .line 24
    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 27
    const/4 v2, 0x0

    .line 28
    move v3, v2

    .line 29
    :goto_0
    if-ge v3, v0, :cond_2

    .line 31
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/android/server/autofill/Session;

    .line 39
    invoke-virtual {v4}, Lcom/android/server/autofill/Session;->destroyLocked()Lcom/android/server/autofill/RemoteFillService;

    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_1

    .line 45
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 56
    :goto_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 59
    move-result v0

    .line 60
    if-ge v2, v0, :cond_3

    .line 62
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/android/server/autofill/RemoteFillService;

    .line 68
    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sendStateToClients(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 80
    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 85
    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 88
    :cond_4
    return-void
.end method

.method public final disableAutofillForActivity(Landroid/content/ComponentName;JIZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v1

    .line 8
    add-long/2addr v1, p2

    .line 9
    const-wide/16 v3, 0x0

    .line 11
    cmp-long v3, v1, v3

    .line 13
    if-gez v3, :cond_0

    .line 15
    const-wide v1, 0x7fffffffffffffffL

    .line 20
    :cond_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 22
    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 24
    invoke-virtual {v3, p1, v1, v2, v4}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->addDisabledActivityLocked(Landroid/content/ComponentName;JI)V

    .line 27
    const-wide/32 v1, 0x7fffffff

    .line 30
    cmp-long v1, p2, v1

    .line 32
    if-lez v1, :cond_1

    .line 34
    const p2, 0x7fffffff

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    long-to-int p2, p2

    .line 39
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 42
    move-result-object p3

    .line 43
    const/16 v1, 0x4d0

    .line 45
    invoke-static {v1, p1, p3, p4, p5}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    .line 48
    move-result-object p1

    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object p2

    .line 53
    const/16 p3, 0x479

    .line 55
    invoke-virtual {p1, p3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 58
    move-result-object p1

    .line 59
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public final disableAutofillForApp(Ljava/lang/String;IJZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v1

    .line 8
    add-long/2addr v1, p3

    .line 9
    const-wide/16 v3, 0x0

    .line 11
    cmp-long v3, v1, v3

    .line 13
    if-gez v3, :cond_0

    .line 15
    const-wide v1, 0x7fffffffffffffffL

    .line 20
    :cond_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 22
    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 24
    invoke-virtual {v3, v4, p1, v1, v2}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->addDisabledAppLocked(ILjava/lang/String;J)V

    .line 27
    const-wide/32 v1, 0x7fffffff

    .line 30
    cmp-long v1, p3, v1

    .line 32
    if-lez v1, :cond_1

    .line 34
    const p3, 0x7fffffff

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    long-to-int p3, p3

    .line 39
    :goto_0
    iget-object p4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 41
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    const/16 v1, 0x4cf

    .line 47
    invoke-static {v1, p2, p0, p5}, Lcom/android/server/autofill/Helper;->newLogMaker(IILjava/lang/String;Z)Landroid/metrics/LogMaker;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 54
    move-result-object p0

    .line 55
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object p1

    .line 59
    const/16 p2, 0x479

    .line 61
    invoke-virtual {p0, p2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p4, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final disableOwnedAutofillServicesLocked(I)V
    .locals 7

    .line 1
    const-string/jumbo v0, "disableOwnedServices(): ignored because current service ("

    .line 4
    const-string/jumbo v1, "disableOwnedServices("

    .line 7
    const-string v2, "): "

    .line 9
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "AutofillManagerServiceImpl"

    .line 24
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 29
    if-nez v1, :cond_0

    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {v1}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 35
    move-result-object v1

    .line 36
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 38
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 40
    if-eq v3, p1, :cond_1

    .line 42
    const-string/jumbo v0, "disableOwnedServices(): ignored when called by UID "

    .line 45
    const-string v3, " instead of "

    .line 47
    invoke-static {p1, v0, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    move-result-object p1

    .line 51
    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 53
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v0, " for service "

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 65
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 76
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 79
    move-result-wide v3

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 87
    move-result-object v5

    .line 88
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_2

    .line 98
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 100
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    const/16 v1, 0x46f

    .line 106
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(ILjava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 111
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 118
    move-result-object p1

    .line 119
    const-string v0, "autofill_service"

    .line 121
    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 123
    const/4 v2, 0x0

    .line 124
    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 127
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->forceRemoveAllSessionsLocked()V

    .line 130
    goto :goto_0

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    goto :goto_1

    .line 133
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    const-string v0, ") does not match Settings ("

    .line 143
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string p1, ")"

    .line 151
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object p0

    .line 158
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    return-void

    .line 165
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    throw p0
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string v2, "    "

    .line 7
    invoke-super/range {p0 .. p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 10
    const-string v3, "      "

    .line 12
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    const-string v4, "UID: "

    .line 17
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceUidLocked()I

    .line 23
    move-result v4

    .line 24
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 27
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    const-string v4, "Autofill Service Info: "

    .line 32
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 37
    if-nez v4, :cond_0

    .line 39
    const-string v4, "N/A"

    .line 41
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 48
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 50
    invoke-virtual {v4, v3, v1}, Landroid/service/autofill/AutofillServiceInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 53
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    const-string v4, "Default component: "

    .line 58
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    iget-object v4, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 63
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v4

    .line 67
    const v5, 0x104030c

    .line 70
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 80
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v4, "mAugmentedAutofillName: "

    .line 86
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    iget-object v4, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 94
    check-cast v4, Lcom/android/server/autofill/AutofillManagerService;

    .line 96
    iget-object v4, v4, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 98
    iget v5, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 100
    invoke-virtual {v4, v5, v1}, Lcom/android/server/infra/ServiceNameBaseResolver;->dumpShort(ILjava/io/PrintWriter;)V

    .line 103
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 106
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 108
    if-eqz v4, :cond_1

    .line 110
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    const-string v4, "RemoteAugmentedAutofillService: "

    .line 115
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 120
    invoke-virtual {v4, v3, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 123
    :cond_1
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 125
    if-eqz v4, :cond_2

    .line 127
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    const-string v4, "RemoteAugmentedAutofillServiceInfo: "

    .line 132
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 137
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 140
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 143
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v4, "mFieldClassificationService for system detection"

    .line 149
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    const-string v4, "Default component: "

    .line 157
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    iget-object v4, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 162
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 165
    move-result-object v4

    .line 166
    const v5, 0x104031c

    .line 169
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    iget-object v4, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 181
    check-cast v4, Lcom/android/server/autofill/AutofillManagerService;

    .line 183
    iget-object v4, v4, Lcom/android/server/autofill/AutofillManagerService;->mFieldClassificationResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 185
    iget v5, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 187
    invoke-virtual {v4, v5, v1}, Lcom/android/server/infra/ServiceNameBaseResolver;->dumpShort(ILjava/io/PrintWriter;)V

    .line 190
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 193
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 195
    if-eqz v4, :cond_3

    .line 197
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 200
    const-string v4, "RemoteFieldClassificationService: "

    .line 202
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 207
    invoke-virtual {v4, v3, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 210
    goto :goto_1

    .line 211
    :cond_3
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    const-string/jumbo v4, "mRemoteFieldClassificationService: null"

    .line 217
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    :goto_1
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 222
    if-eqz v4, :cond_4

    .line 224
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    const-string v4, "RemoteFieldClassificationServiceInfo: "

    .line 229
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 234
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 237
    goto :goto_2

    .line 238
    :cond_4
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    const-string/jumbo v4, "mRemoteFieldClassificationServiceInfo: null"

    .line 244
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 250
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    const-string v4, "Field classification enabled: "

    .line 255
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    .line 261
    move-result v4

    .line 262
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 265
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    const-string v4, "Compat pkgs: "

    .line 270
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 275
    if-eqz v4, :cond_5

    .line 277
    invoke-virtual {v4}, Landroid/service/autofill/AutofillServiceInfo;->getCompatibilityPackages()Landroid/util/ArrayMap;

    .line 280
    move-result-object v4

    .line 281
    goto :goto_3

    .line 282
    :cond_5
    const/4 v4, 0x0

    .line 283
    :goto_3
    if-nez v4, :cond_6

    .line 285
    const-string v4, "N/A"

    .line 287
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    goto :goto_4

    .line 291
    :cond_6
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 294
    :goto_4
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    const-string v4, "Inline Suggestions Enabled: "

    .line 299
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 304
    if-eqz v4, :cond_7

    .line 306
    invoke-virtual {v4}, Landroid/service/autofill/AutofillServiceInfo;->isInlineSuggestionsEnabled()Z

    .line 309
    move-result v4

    .line 310
    goto :goto_5

    .line 311
    :cond_7
    const/4 v4, 0x0

    .line 312
    :goto_5
    const-string v6, "Last prune: "

    .line 314
    invoke-static {v1, v2, v6, v4}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 317
    iget-wide v6, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    .line 319
    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 322
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 324
    iget v6, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 326
    iget-object v7, v4, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 328
    monitor-enter v7

    .line 329
    :try_start_0
    iget-object v4, v4, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 331
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 334
    move-result-object v4

    .line 335
    check-cast v4, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 337
    if-eqz v4, :cond_8

    .line 339
    invoke-virtual {v4, v1}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 342
    goto :goto_6

    .line 343
    :catchall_0
    move-exception v0

    .line 344
    goto/16 :goto_1b

    .line 346
    :cond_8
    :goto_6
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 349
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 352
    move-result v4

    .line 353
    if-nez v4, :cond_a

    .line 355
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    const-string v4, "No sessions"

    .line 360
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    :cond_9
    const/4 v11, 0x0

    .line 364
    goto/16 :goto_14

    .line 366
    :cond_a
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 372
    const-string v6, " sessions:"

    .line 374
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    const/4 v6, 0x0

    .line 378
    :goto_7
    if-ge v6, v4, :cond_9

    .line 380
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 383
    const-string v7, "#"

    .line 385
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 388
    add-int/lit8 v7, v6, 0x1

    .line 390
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 393
    iget-object v8, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 395
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 398
    move-result-object v6

    .line 399
    check-cast v6, Lcom/android/server/autofill/Session;

    .line 401
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    const-string v8, "        "

    .line 406
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    const-string/jumbo v9, "id: "

    .line 412
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    iget v9, v6, Lcom/android/server/autofill/Session;->id:I

    .line 417
    const-string/jumbo v10, "uid: "

    .line 420
    invoke-static {v9, v1, v3, v10}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget v9, v6, Lcom/android/server/autofill/Session;->uid:I

    .line 425
    const-string/jumbo v10, "taskId: "

    .line 428
    invoke-static {v9, v1, v3, v10}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget v9, v6, Lcom/android/server/autofill/Session;->taskId:I

    .line 433
    const-string/jumbo v10, "flags: "

    .line 436
    invoke-static {v9, v1, v3, v10}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget v9, v6, Lcom/android/server/autofill/Session;->mFlags:I

    .line 441
    const-string/jumbo v10, "displayId: "

    .line 444
    invoke-static {v9, v1, v3, v10}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v9, v6, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    .line 449
    invoke-virtual {v9}, Landroid/content/Context;->getDisplayId()I

    .line 452
    move-result v9

    .line 453
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 456
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 459
    const-string/jumbo v9, "state: "

    .line 462
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    iget v9, v6, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 467
    invoke-static {v9}, Lcom/android/server/autofill/Session;->sessionStateAsString(I)Ljava/lang/String;

    .line 470
    move-result-object v9

    .line 471
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 477
    const-string/jumbo v9, "mComponentName: "

    .line 480
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    iget-object v9, v6, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 485
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 488
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 491
    const-string/jumbo v9, "mActivityToken: "

    .line 494
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 497
    iget-object v9, v6, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 499
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 502
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 505
    const-string/jumbo v9, "mStartTime: "

    .line 508
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 511
    iget-wide v9, v6, Lcom/android/server/autofill/Session;->mStartTime:J

    .line 513
    const-string v11, "Time to show UI: "

    .line 515
    invoke-static {v9, v10, v1, v3, v11}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-wide v9, v6, Lcom/android/server/autofill/Session;->mUiShownTime:J

    .line 520
    const-wide/16 v11, 0x0

    .line 522
    cmp-long v11, v9, v11

    .line 524
    const-string v12, "N/A"

    .line 526
    if-nez v11, :cond_b

    .line 528
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    goto :goto_8

    .line 532
    :cond_b
    iget-wide v13, v6, Lcom/android/server/autofill/Session;->mStartTime:J

    .line 534
    sub-long/2addr v9, v13

    .line 535
    invoke-static {v9, v10, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 538
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 541
    :goto_8
    iget-object v9, v6, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 543
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 546
    move-result v9

    .line 547
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 550
    const-string/jumbo v10, "mSessionLogs: "

    .line 553
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 559
    const/4 v10, 0x0

    .line 560
    :goto_9
    const/16 v11, 0x23

    .line 562
    if-ge v10, v9, :cond_12

    .line 564
    iget-object v13, v6, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 566
    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->keyAt(I)I

    .line 569
    move-result v13

    .line 570
    iget-object v14, v6, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 572
    invoke-virtual {v14, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 575
    move-result-object v14

    .line 576
    check-cast v14, Landroid/metrics/LogMaker;

    .line 578
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(C)V

    .line 584
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 587
    const-string v11, ": req="

    .line 589
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 595
    const-string v11, ", log="

    .line 597
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 600
    const-string v11, "CAT="

    .line 602
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v14}, Landroid/metrics/LogMaker;->getCategory()I

    .line 608
    move-result v11

    .line 609
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 612
    const-string v11, ", TYPE="

    .line 614
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v14}, Landroid/metrics/LogMaker;->getType()I

    .line 620
    move-result v11

    .line 621
    const-string v13, "UNSUPPORTED"

    .line 623
    const/4 v15, 0x2

    .line 624
    if-eq v11, v15, :cond_e

    .line 626
    const/16 v15, 0xa

    .line 628
    if-eq v11, v15, :cond_d

    .line 630
    const/16 v15, 0xb

    .line 632
    if-eq v11, v15, :cond_c

    .line 634
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 637
    goto :goto_a

    .line 638
    :cond_c
    const-string v15, "FAILURE"

    .line 640
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 643
    goto :goto_a

    .line 644
    :cond_d
    const-string v15, "SUCCESS"

    .line 646
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 649
    goto :goto_a

    .line 650
    :cond_e
    const-string v15, "CLOSE"

    .line 652
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 655
    :goto_a
    const/16 v15, 0x28

    .line 657
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 660
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 663
    const/16 v11, 0x29

    .line 665
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(C)V

    .line 668
    const-string v5, ", PKG="

    .line 670
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v14}, Landroid/metrics/LogMaker;->getPackageName()Ljava/lang/String;

    .line 676
    move-result-object v5

    .line 677
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 680
    const-string v5, ", SERVICE="

    .line 682
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 685
    const/16 v5, 0x38c

    .line 687
    invoke-virtual {v14, v5}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    .line 690
    move-result-object v5

    .line 691
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 694
    const-string v5, ", ORDINAL="

    .line 696
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 699
    const/16 v5, 0x5ae

    .line 701
    invoke-virtual {v14, v5}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    .line 704
    move-result-object v5

    .line 705
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 708
    const-string v5, "FLAGS"

    .line 710
    const/16 v11, 0x5ac

    .line 712
    invoke-static {v1, v14, v5, v11}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 715
    const-string v5, "NUM_DATASETS"

    .line 717
    const/16 v11, 0x38d

    .line 719
    invoke-static {v1, v14, v5, v11}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 722
    const-string v5, "UI_LATENCY"

    .line 724
    const/16 v11, 0x479

    .line 726
    invoke-static {v1, v14, v5, v11}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 729
    const/16 v5, 0x5ad

    .line 731
    invoke-virtual {v14, v5}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    .line 734
    move-result-object v5

    .line 735
    instance-of v11, v5, Ljava/lang/Number;

    .line 737
    if-nez v11, :cond_f

    .line 739
    const/4 v5, 0x0

    .line 740
    goto :goto_b

    .line 741
    :cond_f
    check-cast v5, Ljava/lang/Number;

    .line 743
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 746
    move-result v5

    .line 747
    :goto_b
    if-eqz v5, :cond_11

    .line 749
    const-string v11, ", AUTH_STATUS="

    .line 751
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 754
    const/16 v11, 0x390

    .line 756
    if-eq v5, v11, :cond_10

    .line 758
    packed-switch v5, :pswitch_data_0

    .line 761
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    goto :goto_c

    .line 765
    :pswitch_0
    const-string v11, "INVALID_AUTHENTICATION"

    .line 767
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 770
    goto :goto_c

    .line 771
    :pswitch_1
    const-string v11, "INVALID_DATASET_AUTHENTICATION"

    .line 773
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 776
    goto :goto_c

    .line 777
    :pswitch_2
    const-string v11, "DATASET_AUTHENTICATED"

    .line 779
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 782
    goto :goto_c

    .line 783
    :cond_10
    const-string v11, "AUTHENTICATED"

    .line 785
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 788
    :goto_c
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 791
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 794
    const/16 v5, 0x29

    .line 796
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 799
    :cond_11
    const-string v5, "FC_IDS"

    .line 801
    const/16 v11, 0x4f7

    .line 803
    invoke-static {v1, v14, v5, v11}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 806
    const-string v5, "COMPAT_MODE"

    .line 808
    const/16 v11, 0x586

    .line 810
    invoke-static {v1, v14, v5, v11}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 813
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 816
    add-int/lit8 v10, v10, 0x1

    .line 818
    goto/16 :goto_9

    .line 820
    :cond_12
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 823
    const-string/jumbo v5, "mResponses: "

    .line 826
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 829
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 831
    const-string/jumbo v9, "null"

    .line 834
    if-nez v5, :cond_13

    .line 836
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    goto :goto_e

    .line 840
    :cond_13
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 843
    move-result v5

    .line 844
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 847
    const/4 v5, 0x0

    .line 848
    :goto_d
    iget-object v10, v6, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 850
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 853
    move-result v10

    .line 854
    if-ge v5, v10, :cond_14

    .line 856
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(C)V

    .line 862
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 865
    const/16 v10, 0x20

    .line 867
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 870
    iget-object v10, v6, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 872
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 875
    move-result-object v10

    .line 876
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 879
    add-int/lit8 v5, v5, 0x1

    .line 881
    goto :goto_d

    .line 882
    :cond_14
    :goto_e
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    const-string/jumbo v5, "mCurrentViewId: "

    .line 888
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 891
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 893
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 896
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 899
    const-string/jumbo v5, "mDestroyed: "

    .line 902
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 905
    iget-boolean v5, v6, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 907
    const-string/jumbo v10, "mShowingSaveUi: "

    .line 910
    invoke-static {v1, v3, v10, v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 913
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 915
    iget-boolean v5, v5, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    .line 917
    const-string/jumbo v10, "mPendingSaveUi: "

    .line 920
    invoke-static {v1, v3, v10, v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 923
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 925
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 928
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 930
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 933
    move-result v5

    .line 934
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 937
    const-string/jumbo v10, "mViewStates size: "

    .line 940
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 943
    iget-object v10, v6, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 945
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 948
    move-result v10

    .line 949
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 952
    const/4 v10, 0x0

    .line 953
    :goto_f
    if-ge v10, v5, :cond_1d

    .line 955
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 958
    const-string v11, "ViewState at #"

    .line 960
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 963
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 966
    iget-object v11, v6, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 968
    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 971
    move-result-object v11

    .line 972
    check-cast v11, Lcom/android/server/autofill/ViewState;

    .line 974
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 977
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 980
    const-string/jumbo v13, "id:"

    .line 983
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 986
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 988
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 991
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    .line 993
    if-eqz v13, :cond_15

    .line 995
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 998
    const-string/jumbo v13, "datasetId:"

    .line 1001
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1004
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    .line 1006
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1009
    :cond_15
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1012
    const-string/jumbo v13, "state:"

    .line 1015
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v11}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    .line 1021
    move-result-object v13

    .line 1022
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1028
    const-string/jumbo v13, "is primary credential:"

    .line 1031
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1034
    iget-boolean v13, v11, Lcom/android/server/autofill/ViewState;->mIsPrimaryCredential:Z

    .line 1036
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Z)V

    .line 1039
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 1041
    if-eqz v13, :cond_16

    .line 1043
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    const-string/jumbo v13, "primary response id:"

    .line 1049
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1052
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 1054
    invoke-virtual {v13}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 1057
    move-result v13

    .line 1058
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(I)V

    .line 1061
    :cond_16
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 1063
    if-eqz v13, :cond_17

    .line 1065
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1068
    const-string/jumbo v13, "secondary response id:"

    .line 1071
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1074
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 1076
    invoke-virtual {v13}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 1079
    move-result v13

    .line 1080
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(I)V

    .line 1083
    :cond_17
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 1085
    if-eqz v13, :cond_18

    .line 1087
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1090
    const-string/jumbo v13, "currentValue:"

    .line 1093
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1096
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 1098
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1101
    :cond_18
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 1103
    if-eqz v13, :cond_19

    .line 1105
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1108
    const-string v13, "autofilledValue:"

    .line 1110
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1113
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 1115
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1118
    :cond_19
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    .line 1120
    if-eqz v13, :cond_1a

    .line 1122
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    const-string/jumbo v13, "candidateSaveValue:"

    .line 1128
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1131
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    .line 1133
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1136
    :cond_1a
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    .line 1138
    if-eqz v13, :cond_1b

    .line 1140
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1143
    const-string/jumbo v13, "sanitizedValue:"

    .line 1146
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1149
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    .line 1151
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1154
    :cond_1b
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    .line 1156
    if-eqz v13, :cond_1c

    .line 1158
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1161
    const-string/jumbo v13, "virtualBounds:"

    .line 1164
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1167
    iget-object v11, v11, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    .line 1169
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1172
    :cond_1c
    add-int/lit8 v10, v10, 0x1

    .line 1174
    goto/16 :goto_f

    .line 1176
    :cond_1d
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1179
    const-string/jumbo v5, "mContexts: "

    .line 1182
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1185
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 1187
    if-eqz v5, :cond_20

    .line 1189
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1192
    move-result v5

    .line 1193
    const/4 v9, 0x0

    .line 1194
    :goto_10
    if-ge v9, v5, :cond_1f

    .line 1196
    iget-object v10, v6, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 1198
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1201
    move-result-object v10

    .line 1202
    check-cast v10, Landroid/service/autofill/FillContext;

    .line 1204
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1207
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1210
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1212
    if-eqz v11, :cond_1e

    .line 1214
    const-string v11, "AssistStructure dumped at logcat)"

    .line 1216
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {v10}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    .line 1222
    move-result-object v10

    .line 1223
    const/4 v11, 0x0

    .line 1224
    invoke-virtual {v10, v11}, Landroid/app/assist/AssistStructure;->dump(Z)V

    .line 1227
    goto :goto_11

    .line 1228
    :cond_1e
    const/4 v11, 0x0

    .line 1229
    :goto_11
    add-int/lit8 v9, v9, 0x1

    .line 1231
    goto :goto_10

    .line 1232
    :cond_1f
    const/4 v11, 0x0

    .line 1233
    goto :goto_12

    .line 1234
    :cond_20
    const/4 v11, 0x0

    .line 1235
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1238
    :goto_12
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1241
    const-string/jumbo v5, "mHasCallback: "

    .line 1244
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1247
    iget-boolean v5, v6, Lcom/android/server/autofill/Session;->mHasCallback:Z

    .line 1249
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1252
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 1254
    if-eqz v5, :cond_21

    .line 1256
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1259
    const-string/jumbo v5, "mClientState: "

    .line 1262
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1265
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 1267
    invoke-virtual {v5}, Landroid/os/Bundle;->getSize()I

    .line 1270
    move-result v5

    .line 1271
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1274
    const-string v5, " bytes"

    .line 1276
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1279
    :cond_21
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1282
    const-string/jumbo v5, "mCompatMode: "

    .line 1285
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1288
    iget-boolean v5, v6, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 1290
    const-string/jumbo v8, "mUrlBar: "

    .line 1293
    invoke-static {v1, v3, v8, v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1296
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    .line 1298
    if-nez v5, :cond_22

    .line 1300
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1303
    goto :goto_13

    .line 1304
    :cond_22
    const-string/jumbo v5, "id="

    .line 1307
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1310
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    .line 1312
    invoke-virtual {v5}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    .line 1315
    move-result-object v5

    .line 1316
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1319
    const-string v5, " domain="

    .line 1321
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1324
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    .line 1326
    invoke-virtual {v5}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    .line 1329
    move-result-object v5

    .line 1330
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1333
    const-string v5, " text="

    .line 1335
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1338
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    .line 1340
    invoke-virtual {v5}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    .line 1343
    move-result-object v5

    .line 1344
    if-nez v5, :cond_23

    .line 1346
    const-string/jumbo v5, "null"

    .line 1349
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1352
    goto :goto_13

    .line 1353
    :cond_23
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 1356
    move-result v5

    .line 1357
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1360
    const-string v5, "_chars"

    .line 1362
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    :goto_13
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1368
    const-string/jumbo v5, "mSaveOnAllViewsInvisible: "

    .line 1371
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1374
    iget-boolean v5, v6, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 1376
    const-string/jumbo v8, "mSelectedDatasetIds: "

    .line 1379
    invoke-static {v1, v3, v8, v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1382
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 1384
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1387
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 1389
    iget-boolean v5, v5, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 1391
    if-eqz v5, :cond_24

    .line 1393
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1396
    const-string v5, "For Augmented Autofill Only"

    .line 1398
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    :cond_24
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 1403
    iget-boolean v5, v5, Lcom/android/server/autofill/Session$SessionFlags;->mFillDialogDisabled:Z

    .line 1405
    if-eqz v5, :cond_25

    .line 1407
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1410
    const-string v5, "Fill Dialog disabled"

    .line 1412
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1415
    :cond_25
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mLastFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    .line 1417
    if-eqz v5, :cond_26

    .line 1419
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1422
    const-string v5, "Last Fill Dialog trigger ids: "

    .line 1424
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 1429
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1432
    :cond_26
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 1434
    if-eqz v5, :cond_27

    .line 1436
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1439
    const-string/jumbo v5, "has mAugmentedAutofillDestroyer"

    .line 1442
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1445
    :cond_27
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    .line 1447
    if-eqz v5, :cond_28

    .line 1449
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1452
    const-string/jumbo v5, "number augmented requests: "

    .line 1455
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1458
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    .line 1460
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1463
    move-result v5

    .line 1464
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1467
    :cond_28
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 1469
    if-eqz v5, :cond_29

    .line 1471
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1474
    const-string/jumbo v5, "mAugmentedAutofillableIds: "

    .line 1477
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1480
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 1482
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1485
    :cond_29
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 1487
    if-eqz v5, :cond_2a

    .line 1489
    invoke-virtual {v5, v3, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1492
    :cond_2a
    move v6, v7

    .line 1493
    goto/16 :goto_7

    .line 1495
    :goto_14
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1498
    const-string v4, "Clients: "

    .line 1500
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1503
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 1505
    if-nez v4, :cond_2b

    .line 1507
    const-string v4, "N/A"

    .line 1509
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    goto :goto_15

    .line 1513
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1516
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 1518
    invoke-virtual {v4, v1, v3}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1521
    :goto_15
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 1523
    if-eqz v4, :cond_2d

    .line 1525
    invoke-virtual {v4}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    .line 1528
    move-result-object v4

    .line 1529
    if-eqz v4, :cond_2d

    .line 1531
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 1533
    invoke-virtual {v4}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    .line 1536
    move-result-object v4

    .line 1537
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1540
    move-result v4

    .line 1541
    if-nez v4, :cond_2c

    .line 1543
    goto :goto_17

    .line 1544
    :cond_2c
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1547
    const-string v4, "Events of last fill response:"

    .line 1549
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1552
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1555
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 1557
    invoke-virtual {v4}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    .line 1560
    move-result-object v4

    .line 1561
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1564
    move-result v4

    .line 1565
    move v5, v11

    .line 1566
    :goto_16
    if-ge v5, v4, :cond_2e

    .line 1568
    iget-object v6, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 1570
    invoke-virtual {v6}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    .line 1573
    move-result-object v6

    .line 1574
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1577
    move-result-object v6

    .line 1578
    check-cast v6, Landroid/service/autofill/FillEventHistory$Event;

    .line 1580
    const-string v7, "  "

    .line 1582
    const-string v8, ": eventType="

    .line 1584
    invoke-static {v5, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    move-result-object v7

    .line 1588
    invoke-virtual {v6}, Landroid/service/autofill/FillEventHistory$Event;->getType()I

    .line 1591
    move-result v8

    .line 1592
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1595
    const-string v8, " datasetId="

    .line 1597
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    invoke-virtual {v6}, Landroid/service/autofill/FillEventHistory$Event;->getDatasetId()Ljava/lang/String;

    .line 1603
    move-result-object v6

    .line 1604
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1610
    move-result-object v6

    .line 1611
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1614
    add-int/lit8 v5, v5, 0x1

    .line 1616
    goto :goto_16

    .line 1617
    :cond_2d
    :goto_17
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1620
    const-string v4, "No event on last fill response"

    .line 1622
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1625
    :cond_2e
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1628
    const-string v4, "User data: "

    .line 1630
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1633
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    .line 1635
    if-nez v4, :cond_2f

    .line 1637
    const-string v4, "N/A"

    .line 1639
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1642
    goto :goto_18

    .line 1643
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1646
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    .line 1648
    invoke-virtual {v4, v3, v1}, Landroid/service/autofill/UserData;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1651
    :goto_18
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1654
    const-string v2, "Field Classification strategy: "

    .line 1656
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1659
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 1661
    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceComponentName()Landroid/content/ComponentName;

    .line 1664
    move-result-object v2

    .line 1665
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1668
    const-string v4, "User ID: "

    .line 1670
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1673
    iget v4, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mUserId:I

    .line 1675
    const-string v5, "Queued commands: "

    .line 1677
    invoke-static {v4, v1, v3, v5}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    iget-object v4, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    .line 1682
    const-string v5, "N/A"

    .line 1684
    if-nez v4, :cond_30

    .line 1686
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    goto :goto_19

    .line 1690
    :cond_30
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1693
    move-result v4

    .line 1694
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1697
    :goto_19
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1700
    const-string v4, "Implementation: "

    .line 1702
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1705
    if-nez v2, :cond_31

    .line 1707
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    goto :goto_1a

    .line 1711
    :cond_31
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 1714
    move-result-object v2

    .line 1715
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1718
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1721
    const-string v2, "Available algorithms: "

    .line 1723
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1726
    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getAvailableAlgorithms()[Ljava/lang/String;

    .line 1729
    move-result-object v2

    .line 1730
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 1733
    move-result-object v2

    .line 1734
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1737
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1740
    const-string v2, "Default algorithm: "

    .line 1742
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1745
    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getDefaultAlgorithm()Ljava/lang/String;

    .line 1748
    move-result-object v0

    .line 1749
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1752
    goto :goto_1a

    .line 1753
    :catch_0
    move-exception v0

    .line 1754
    const-string v2, "ERROR CALLING SERVICE: "

    .line 1756
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1762
    :goto_1a
    return-void

    .line 1763
    :goto_1b
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1764
    throw v0

    .line 1765
    :pswitch_data_0
    .packed-switch 0x466
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final finishSessionLocked(III)V
    .locals 23

    .line 1
    move/from16 v0, p1

    .line 3
    move/from16 v1, p2

    .line 5
    move/from16 v2, p3

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_0

    .line 13
    const-string v0, "AutofillManagerServiceImpl"

    .line 15
    const-string v1, "Service not enabled"

    .line 17
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void

    .line 21
    :cond_0
    move-object/from16 v3, p0

    .line 23
    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/server/autofill/Session;

    .line 31
    if-eqz v3, :cond_4d

    .line 33
    iget v4, v3, Lcom/android/server/autofill/Session;->uid:I

    .line 35
    if-eq v1, v4, :cond_1

    .line 37
    goto/16 :goto_23

    .line 39
    :cond_1
    iget-boolean v0, v3, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 41
    const/4 v1, 0x1

    .line 42
    const/4 v15, 0x0

    .line 43
    if-eqz v0, :cond_2

    .line 45
    const-string v0, "AutofillSession"

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    const-string v5, "Call to Session#showSaveLocked() rejected - session: "

    .line 51
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iget v5, v3, Lcom/android/server/autofill/Session;->id:I

    .line 56
    const-string v6, " destroyed"

    .line 58
    invoke-static {v4, v5, v6, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 63
    const/16 v4, 0x9

    .line 65
    invoke-virtual {v0, v4}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 68
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 70
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 73
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 75
    invoke-direct {v0, v15, v15, v15}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 78
    :goto_0
    move-object v1, v3

    .line 79
    :goto_1
    move v3, v15

    .line 80
    goto/16 :goto_1d

    .line 82
    :cond_2
    const/4 v0, 0x2

    .line 83
    iput v0, v3, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 85
    const-string/jumbo v4, "showSaveLocked(%s)"

    .line 88
    invoke-virtual {v3, v4}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    .line 91
    move-result-object v4

    .line 92
    if-nez v4, :cond_3

    .line 94
    const/4 v13, 0x0

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    .line 99
    move-result-object v6

    .line 100
    move-object v13, v6

    .line 101
    :goto_2
    iget-object v6, v3, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 103
    iget-boolean v6, v6, Lcom/android/server/autofill/Session$SessionFlags;->mScreenHasCredmanField:Z

    .line 105
    const/16 v7, 0xa

    .line 107
    if-eqz v6, :cond_5

    .line 109
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 111
    if-eqz v0, :cond_4

    .line 113
    const-string v0, "AutofillSession"

    .line 115
    const-string v4, "Call to Session#showSaveLocked() rejected - there is credman field in screen"

    .line 117
    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_4
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 122
    invoke-virtual {v0, v7}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 125
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 127
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 130
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 132
    invoke-direct {v0, v15, v15, v1}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 135
    goto :goto_0

    .line 136
    :cond_5
    if-nez v13, :cond_7

    .line 138
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 140
    if-eqz v4, :cond_6

    .line 142
    const-string v4, "AutofillSession"

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    .line 146
    const-string/jumbo v6, "showSaveLocked("

    .line 149
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget v6, v3, Lcom/android/server/autofill/Session;->id:I

    .line 154
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    const-string v6, "): no saveInfo from service"

    .line 159
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v5

    .line 166
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_6
    iget-object v4, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 171
    invoke-virtual {v4, v0}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 174
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 176
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 179
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 181
    invoke-direct {v0, v1, v15, v1}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 184
    goto :goto_0

    .line 185
    :cond_7
    invoke-virtual {v13}, Landroid/service/autofill/SaveInfo;->getFlags()I

    .line 188
    move-result v6

    .line 189
    const/4 v8, 0x4

    .line 190
    and-int/2addr v6, v8

    .line 191
    const/4 v9, 0x3

    .line 192
    if-eqz v6, :cond_9

    .line 194
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 196
    if-eqz v4, :cond_8

    .line 198
    const-string v4, "AutofillSession"

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    .line 202
    const-string/jumbo v6, "showSaveLocked("

    .line 205
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    iget v6, v3, Lcom/android/server/autofill/Session;->id:I

    .line 210
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    const-string v6, "): service asked to delay save"

    .line 215
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object v5

    .line 222
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_8
    iget-object v4, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 227
    invoke-virtual {v4, v9}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 230
    iget-object v4, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 232
    invoke-virtual {v4}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 235
    new-instance v4, Lcom/android/server/autofill/Session$SaveResult;

    .line 237
    invoke-direct {v4, v0, v15, v15}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 240
    move-object v1, v3

    .line 241
    move-object v0, v4

    .line 242
    goto/16 :goto_1

    .line 244
    :cond_9
    invoke-static {v13}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    .line 247
    move-result-object v0

    .line 248
    new-instance v6, Landroid/util/ArrayMap;

    .line 250
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 253
    new-instance v10, Landroid/util/ArraySet;

    .line 255
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 258
    invoke-virtual {v13}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    .line 261
    move-result-object v11

    .line 262
    if-eqz v11, :cond_18

    .line 264
    move v12, v15

    .line 265
    move v14, v12

    .line 266
    move/from16 v16, v14

    .line 268
    :goto_3
    array-length v7, v11

    .line 269
    if-ge v12, v7, :cond_17

    .line 271
    aget-object v7, v11, v12

    .line 273
    if-nez v7, :cond_a

    .line 275
    const-string v7, "AutofillSession"

    .line 277
    new-instance v9, Ljava/lang/StringBuilder;

    .line 279
    const-string/jumbo v5, "null autofill id on "

    .line 282
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 288
    move-result-object v5

    .line 289
    invoke-static {v9, v5, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    goto/16 :goto_7

    .line 294
    :cond_a
    invoke-virtual {v10, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v5, v3, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 299
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    move-result-object v5

    .line 303
    check-cast v5, Lcom/android/server/autofill/ViewState;

    .line 305
    if-nez v5, :cond_b

    .line 307
    const-string v5, "AutofillSession"

    .line 309
    new-instance v9, Ljava/lang/StringBuilder;

    .line 311
    const-string/jumbo v11, "showSaveLocked(): no ViewState for required "

    .line 314
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    move-result-object v7

    .line 324
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    goto/16 :goto_8

    .line 329
    :cond_b
    iget-object v9, v5, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 331
    if-eqz v9, :cond_c

    .line 333
    invoke-virtual {v9}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    .line 336
    move-result v17

    .line 337
    if-eqz v17, :cond_e

    .line 339
    :cond_c
    iget-object v9, v5, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    .line 341
    if-eqz v9, :cond_d

    .line 343
    invoke-virtual {v9}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    .line 346
    move-result v17

    .line 347
    if-nez v17, :cond_d

    .line 349
    sget-boolean v17, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 351
    if-eqz v17, :cond_e

    .line 353
    const-string v1, "AutofillSession"

    .line 355
    const-string/jumbo v15, "current value is empty, using cached last non-empty value instead"

    .line 358
    invoke-static {v1, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    goto :goto_4

    .line 362
    :cond_d
    invoke-virtual {v3, v7}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    .line 365
    move-result-object v9

    .line 366
    if-eqz v9, :cond_16

    .line 368
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 370
    if-eqz v1, :cond_e

    .line 372
    const-string v1, "AutofillSession"

    .line 374
    new-instance v15, Ljava/lang/StringBuilder;

    .line 376
    const-string v8, "Value of required field "

    .line 378
    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    const-string v8, " didn\'t change; using initial value ("

    .line 386
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    const-string v8, ") instead"

    .line 394
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    move-result-object v8

    .line 401
    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_e
    :goto_4
    invoke-virtual {v3, v0, v7, v9}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    .line 407
    move-result-object v1

    .line 408
    if-nez v1, :cond_10

    .line 410
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 412
    if-eqz v1, :cond_f

    .line 414
    const-string v1, "AutofillSession"

    .line 416
    new-instance v5, Ljava/lang/StringBuilder;

    .line 418
    const-string/jumbo v8, "value of required field "

    .line 421
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 427
    const-string v7, " failed sanitization"

    .line 429
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    move-result-object v5

    .line 436
    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_f
    :goto_5
    const/4 v15, 0x0

    .line 440
    goto/16 :goto_8

    .line 442
    :cond_10
    iput-object v1, v5, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    .line 444
    invoke-virtual {v6, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v5, v5, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 449
    invoke-virtual {v1, v5}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    .line 452
    move-result v8

    .line 453
    if-nez v8, :cond_15

    .line 455
    if-nez v5, :cond_13

    .line 457
    invoke-virtual {v3, v7}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    .line 460
    move-result-object v8

    .line 461
    if-eqz v8, :cond_12

    .line 463
    invoke-virtual {v8, v1}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    .line 466
    move-result v8

    .line 467
    if-eqz v8, :cond_12

    .line 469
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 471
    if-eqz v8, :cond_11

    .line 473
    const-string v8, "AutofillSession"

    .line 475
    new-instance v9, Ljava/lang/StringBuilder;

    .line 477
    const-string/jumbo v15, "id "

    .line 480
    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 486
    const-string v15, " is part of dataset but initial value didn\'t change: "

    .line 488
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    move-result-object v9

    .line 498
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_11
    const/4 v8, 0x0

    .line 502
    goto :goto_6

    .line 503
    :cond_12
    iget-object v8, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 505
    iget-object v8, v8, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 507
    new-instance v9, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;

    .line 509
    const/4 v15, 0x0

    .line 510
    invoke-direct {v9, v15}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;-><init>(I)V

    .line 513
    invoke-virtual {v8, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 516
    const/4 v8, 0x1

    .line 517
    goto :goto_6

    .line 518
    :cond_13
    const/4 v8, 0x1

    .line 519
    const/16 v16, 0x1

    .line 521
    :goto_6
    if-eqz v8, :cond_15

    .line 523
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 525
    if-eqz v8, :cond_14

    .line 527
    const-string v8, "AutofillSession"

    .line 529
    new-instance v9, Ljava/lang/StringBuilder;

    .line 531
    const-string/jumbo v14, "found a change on required "

    .line 534
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 540
    const-string v7, ": "

    .line 542
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 548
    const-string v5, " => "

    .line 550
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    move-result-object v1

    .line 560
    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_14
    const/4 v14, 0x1

    .line 564
    :cond_15
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 566
    const/4 v1, 0x1

    .line 567
    const/4 v8, 0x4

    .line 568
    const/4 v9, 0x3

    .line 569
    const/4 v15, 0x0

    .line 570
    goto/16 :goto_3

    .line 572
    :cond_16
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 574
    if-eqz v1, :cond_f

    .line 576
    const-string v1, "AutofillSession"

    .line 578
    new-instance v5, Ljava/lang/StringBuilder;

    .line 580
    const-string/jumbo v8, "empty value for required "

    .line 583
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    move-result-object v5

    .line 593
    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    goto/16 :goto_5

    .line 598
    :cond_17
    const/4 v15, 0x1

    .line 599
    goto :goto_8

    .line 600
    :cond_18
    const/4 v14, 0x0

    .line 601
    const/4 v15, 0x1

    .line 602
    const/16 v16, 0x0

    .line 604
    :goto_8
    invoke-virtual {v13}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    .line 607
    move-result-object v1

    .line 608
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 610
    if-eqz v5, :cond_1a

    .line 612
    const-string v5, "AutofillSession"

    .line 614
    const-string v7, "allRequiredAreNotEmpty: "

    .line 616
    const-string v8, " hasOptional: "

    .line 618
    invoke-static {v7, v8, v15}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 621
    move-result-object v7

    .line 622
    if-eqz v1, :cond_19

    .line 624
    const/4 v8, 0x1

    .line 625
    goto :goto_9

    .line 626
    :cond_19
    const/4 v8, 0x0

    .line 627
    :goto_9
    invoke-static {v5, v7, v8}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 630
    :cond_1a
    if-nez v15, :cond_1b

    .line 632
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 634
    const/4 v5, 0x4

    .line 635
    invoke-virtual {v0, v5}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 638
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 640
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 643
    const/4 v8, 0x3

    .line 644
    goto/16 :goto_d

    .line 646
    :cond_1b
    const/4 v5, 0x4

    .line 647
    if-eqz v1, :cond_27

    .line 649
    if-eqz v14, :cond_1c

    .line 651
    if-nez v16, :cond_27

    .line 653
    :cond_1c
    const/4 v7, 0x0

    .line 654
    :goto_a
    array-length v8, v1

    .line 655
    if-ge v7, v8, :cond_27

    .line 657
    aget-object v8, v1, v7

    .line 659
    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 662
    iget-object v9, v3, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 664
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    move-result-object v9

    .line 668
    check-cast v9, Lcom/android/server/autofill/ViewState;

    .line 670
    if-nez v9, :cond_1d

    .line 672
    const-string v9, "AutofillSession"

    .line 674
    new-instance v11, Ljava/lang/StringBuilder;

    .line 676
    const-string/jumbo v12, "no ViewState for optional "

    .line 679
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 688
    move-result-object v8

    .line 689
    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    goto/16 :goto_c

    .line 694
    :cond_1d
    iget v11, v9, Lcom/android/server/autofill/ViewState;->mState:I

    .line 696
    and-int/lit8 v11, v11, 0x8

    .line 698
    if-eqz v11, :cond_24

    .line 700
    iget-object v11, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 702
    if-eqz v11, :cond_1e

    .line 704
    invoke-virtual {v11}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    .line 707
    move-result v12

    .line 708
    if-eqz v12, :cond_20

    .line 710
    :cond_1e
    iget-object v12, v9, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    .line 712
    if-eqz v12, :cond_20

    .line 714
    invoke-virtual {v12}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    .line 717
    move-result v18

    .line 718
    if-nez v18, :cond_20

    .line 720
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 722
    if-eqz v11, :cond_1f

    .line 724
    const-string v11, "AutofillSession"

    .line 726
    const-string/jumbo v5, "current value is empty, using cached last non-empty value instead"

    .line 729
    invoke-static {v11, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_1f
    move-object v11, v12

    .line 733
    :cond_20
    invoke-virtual {v3, v0, v8, v11}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    .line 736
    move-result-object v5

    .line 737
    if-nez v5, :cond_21

    .line 739
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 741
    if-eqz v5, :cond_26

    .line 743
    const-string v5, "AutofillSession"

    .line 745
    new-instance v9, Ljava/lang/StringBuilder;

    .line 747
    const-string/jumbo v11, "value of opt. field "

    .line 750
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 756
    const-string v8, " failed sanitization"

    .line 758
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 764
    move-result-object v8

    .line 765
    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    goto :goto_c

    .line 769
    :cond_21
    invoke-virtual {v6, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    iget-object v9, v9, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 774
    invoke-virtual {v5, v9}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    .line 777
    move-result v11

    .line 778
    if-nez v11, :cond_26

    .line 780
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 782
    if-eqz v11, :cond_22

    .line 784
    const-string v11, "AutofillSession"

    .line 786
    new-instance v12, Ljava/lang/StringBuilder;

    .line 788
    const-string/jumbo v14, "found a change on optional "

    .line 791
    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 797
    const-string v8, ": "

    .line 799
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 805
    const-string v8, " => "

    .line 807
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 813
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    move-result-object v5

    .line 817
    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_22
    if-eqz v9, :cond_23

    .line 822
    const/16 v16, 0x1

    .line 824
    goto :goto_b

    .line 825
    :cond_23
    iget-object v5, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 827
    iget-object v5, v5, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 829
    new-instance v8, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;

    .line 831
    const/4 v9, 0x0

    .line 832
    invoke-direct {v8, v9}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;-><init>(I)V

    .line 835
    invoke-virtual {v5, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 838
    :goto_b
    const/4 v14, 0x1

    .line 839
    goto :goto_c

    .line 840
    :cond_24
    invoke-virtual {v3, v8}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    .line 843
    move-result-object v5

    .line 844
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 846
    if-eqz v9, :cond_25

    .line 848
    const-string v9, "AutofillSession"

    .line 850
    new-instance v11, Ljava/lang/StringBuilder;

    .line 852
    const-string/jumbo v12, "no current value for "

    .line 855
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 861
    const-string v12, "; initial value is "

    .line 863
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 869
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 872
    move-result-object v11

    .line 873
    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_25
    if-eqz v5, :cond_26

    .line 878
    invoke-virtual {v6, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    :cond_26
    :goto_c
    add-int/lit8 v7, v7, 0x1

    .line 883
    const/4 v5, 0x4

    .line 884
    goto/16 :goto_a

    .line 886
    :cond_27
    move/from16 v0, v16

    .line 888
    const/4 v1, 0x5

    .line 889
    if-nez v14, :cond_29

    .line 891
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 893
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 896
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 898
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 901
    const/4 v8, 0x4

    .line 902
    :goto_d
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 904
    if-eqz v0, :cond_28

    .line 906
    const-string v0, "AutofillSession"

    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    .line 910
    const-string/jumbo v4, "showSaveLocked("

    .line 913
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 916
    iget v4, v3, Lcom/android/server/autofill/Session;->id:I

    .line 918
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 921
    const-string v4, "): with no changes, comes no responsibilities.allRequiredAreNotNull="

    .line 923
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 929
    const-string v4, ", atLeastOneChanged="

    .line 931
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-static {v0, v1, v14}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 937
    :cond_28
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 939
    const/4 v1, 0x1

    .line 940
    const/4 v4, 0x0

    .line 941
    invoke-direct {v0, v8, v4, v1}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 944
    move-object v1, v3

    .line 945
    move v3, v4

    .line 946
    goto/16 :goto_1d

    .line 948
    :cond_29
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 950
    if-eqz v5, :cond_2a

    .line 952
    const-string v5, "AutofillSession"

    .line 954
    const-string v7, "at least one field changed, validate fields for save UI"

    .line 956
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_2a
    invoke-virtual {v13}, Landroid/service/autofill/SaveInfo;->getValidator()Landroid/service/autofill/InternalValidator;

    .line 962
    move-result-object v5

    .line 963
    const/4 v7, 0x6

    .line 964
    if-eqz v5, :cond_2d

    .line 966
    const/16 v8, 0x46d

    .line 968
    invoke-virtual {v3, v8}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    .line 971
    move-result-object v8

    .line 972
    :try_start_0
    invoke-virtual {v5, v3}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    .line 975
    move-result v9

    .line 976
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 978
    if-eqz v11, :cond_2b

    .line 980
    const-string v11, "AutofillSession"

    .line 982
    new-instance v12, Ljava/lang/StringBuilder;

    .line 984
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 987
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 990
    const-string v5, " returned "

    .line 992
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1001
    move-result-object v5

    .line 1002
    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    goto :goto_e

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    goto :goto_11

    .line 1008
    :cond_2b
    :goto_e
    if-eqz v9, :cond_2c

    .line 1010
    const/16 v5, 0xa

    .line 1012
    goto :goto_f

    .line 1013
    :cond_2c
    move v5, v1

    .line 1014
    :goto_f
    invoke-virtual {v8, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    iget-object v5, v3, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1019
    invoke-virtual {v5, v8}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1022
    if-nez v9, :cond_2d

    .line 1024
    const-string v0, "AutofillSession"

    .line 1026
    const-string/jumbo v4, "not showing save UI because fields failed validation"

    .line 1029
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1034
    invoke-virtual {v0, v7}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 1037
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1039
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 1042
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 1044
    const/4 v4, 0x1

    .line 1045
    const/4 v5, 0x0

    .line 1046
    invoke-direct {v0, v1, v5, v4}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 1049
    :goto_10
    move-object v1, v3

    .line 1050
    move v3, v5

    .line 1051
    goto/16 :goto_1d

    .line 1053
    :goto_11
    const-string v4, "AutofillSession"

    .line 1055
    const-string v5, "Not showing save UI because validation failed:"

    .line 1057
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1060
    const/16 v0, 0xb

    .line 1062
    invoke-virtual {v8, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1065
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1067
    invoke-virtual {v0, v8}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1070
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1072
    invoke-virtual {v0, v7}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 1075
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1077
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 1080
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 1082
    const/4 v4, 0x1

    .line 1083
    const/4 v5, 0x0

    .line 1084
    invoke-direct {v0, v1, v5, v4}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 1087
    goto :goto_10

    .line 1088
    :cond_2d
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 1091
    move-result-object v1

    .line 1092
    if-eqz v1, :cond_37

    .line 1094
    const/4 v5, 0x0

    .line 1095
    :goto_12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1098
    move-result v8

    .line 1099
    if-ge v5, v8, :cond_37

    .line 1101
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1104
    move-result-object v8

    .line 1105
    check-cast v8, Landroid/service/autofill/Dataset;

    .line 1107
    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 1110
    move-result-object v9

    .line 1111
    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    .line 1114
    move-result-object v11

    .line 1115
    if-nez v9, :cond_2e

    .line 1117
    const/4 v12, 0x0

    .line 1118
    goto :goto_13

    .line 1119
    :cond_2e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1122
    move-result v12

    .line 1123
    :goto_13
    new-instance v14, Landroid/util/ArrayMap;

    .line 1125
    invoke-direct {v14, v12}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1128
    const/4 v15, 0x0

    .line 1129
    :goto_14
    if-ge v15, v12, :cond_2f

    .line 1131
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1134
    move-result-object v16

    .line 1135
    move-object/from16 v7, v16

    .line 1137
    check-cast v7, Landroid/view/autofill/AutofillId;

    .line 1139
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1142
    move-result-object v16

    .line 1143
    move-object/from16 p1, v1

    .line 1145
    move-object/from16 v1, v16

    .line 1147
    check-cast v1, Landroid/view/autofill/AutofillValue;

    .line 1149
    invoke-virtual {v14, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    add-int/lit8 v15, v15, 0x1

    .line 1154
    move-object/from16 v1, p1

    .line 1156
    const/4 v7, 0x6

    .line 1157
    goto :goto_14

    .line 1158
    :cond_2f
    move-object/from16 p1, v1

    .line 1160
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1162
    if-eqz v1, :cond_30

    .line 1164
    const-string v1, "AutofillSession"

    .line 1166
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1168
    const-string v9, "Checking if saved fields match contents of dataset #"

    .line 1170
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1176
    const-string v9, ": "

    .line 1178
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1184
    const-string v9, "; savableIds="

    .line 1186
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1192
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1195
    move-result-object v7

    .line 1196
    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_30
    const/4 v1, 0x0

    .line 1200
    :goto_15
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 1203
    move-result v7

    .line 1204
    if-ge v1, v7, :cond_35

    .line 1206
    invoke-virtual {v10, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1209
    move-result-object v7

    .line 1210
    check-cast v7, Landroid/view/autofill/AutofillId;

    .line 1212
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    move-result-object v9

    .line 1216
    check-cast v9, Landroid/view/autofill/AutofillValue;

    .line 1218
    if-nez v9, :cond_31

    .line 1220
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1222
    if-eqz v9, :cond_34

    .line 1224
    const-string v9, "AutofillSession"

    .line 1226
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1228
    const-string/jumbo v12, "dataset has value for field that is null: "

    .line 1231
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1237
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1240
    move-result-object v7

    .line 1241
    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    goto :goto_16

    .line 1245
    :cond_31
    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    move-result-object v11

    .line 1249
    check-cast v11, Landroid/view/autofill/AutofillValue;

    .line 1251
    invoke-virtual {v9, v11}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    .line 1254
    move-result v12

    .line 1255
    if-nez v12, :cond_33

    .line 1257
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1259
    if-eqz v1, :cond_32

    .line 1261
    const-string v1, "AutofillSession"

    .line 1263
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1265
    const-string/jumbo v12, "found a dataset change on id "

    .line 1268
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1274
    const-string v7, ": from "

    .line 1276
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1282
    const-string v7, " to "

    .line 1284
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1290
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1293
    move-result-object v7

    .line 1294
    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_32
    add-int/lit8 v5, v5, 0x1

    .line 1299
    move-object/from16 v1, p1

    .line 1301
    const/4 v7, 0x6

    .line 1302
    goto/16 :goto_12

    .line 1304
    :cond_33
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1306
    if-eqz v9, :cond_34

    .line 1308
    const-string v9, "AutofillSession"

    .line 1310
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1312
    const-string/jumbo v12, "no dataset changes for id "

    .line 1315
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1321
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1324
    move-result-object v7

    .line 1325
    invoke-static {v9, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_34
    :goto_16
    add-int/lit8 v1, v1, 0x1

    .line 1330
    goto/16 :goto_15

    .line 1332
    :cond_35
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1334
    if-eqz v0, :cond_36

    .line 1336
    const-string v0, "AutofillSession"

    .line 1338
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1340
    const-string/jumbo v4, "ignoring Save UI because all fields match contents of dataset #"

    .line 1343
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1346
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1349
    const-string v4, ": "

    .line 1351
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1357
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1360
    move-result-object v1

    .line 1361
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_36
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1366
    const/4 v1, 0x7

    .line 1367
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 1370
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1372
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 1375
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 1377
    const/4 v1, 0x0

    .line 1378
    const/4 v4, 0x1

    .line 1379
    const/4 v5, 0x6

    .line 1380
    invoke-direct {v0, v5, v1, v4}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 1383
    move-object/from16 v22, v3

    .line 1385
    move v3, v1

    .line 1386
    move-object/from16 v1, v22

    .line 1388
    goto/16 :goto_1d

    .line 1390
    :cond_37
    const/4 v1, 0x0

    .line 1391
    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    .line 1394
    move-result-object v15

    .line 1395
    new-instance v5, Lcom/android/server/autofill/ui/PendingUi;

    .line 1397
    new-instance v6, Landroid/os/Binder;

    .line 1399
    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    .line 1402
    iget v7, v3, Lcom/android/server/autofill/Session;->id:I

    .line 1404
    invoke-direct {v5, v6, v7, v15}, Lcom/android/server/autofill/ui/PendingUi;-><init>(Landroid/os/IBinder;ILandroid/view/autofill/IAutoFillManagerClient;)V

    .line 1407
    iput-object v5, v3, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 1409
    invoke-static {}, Lcom/samsung/android/rune/ViewRune;->supportFoldableNoSubDisplay()Z

    .line 1412
    move-result v5

    .line 1413
    if-eqz v5, :cond_38

    .line 1415
    iget-object v5, v3, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 1417
    invoke-static {v5}, Lcom/android/server/autofill/Session;->getActivityDisplayId(Landroid/os/IBinder;)I

    .line 1420
    move-result v5

    .line 1421
    iput v5, v3, Lcom/android/server/autofill/Session;->mDisplayId:I

    .line 1423
    :cond_38
    iget-object v5, v3, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 1425
    monitor-enter v5

    .line 1426
    :try_start_1
    invoke-virtual {v3, v4}, Lcom/android/server/autofill/Session;->getServiceIcon(Landroid/service/autofill/FillResponse;)Landroid/graphics/drawable/Drawable;

    .line 1429
    move-result-object v10

    .line 1430
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getServiceDisplayNameResourceId()I

    .line 1433
    move-result v6

    .line 1434
    if-eqz v6, :cond_39

    .line 1436
    iget-object v7, v3, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1438
    iget-object v7, v7, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 1440
    check-cast v7, Lcom/android/server/autofill/AutofillManagerService;

    .line 1442
    invoke-virtual {v7}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1445
    move-result-object v7

    .line 1446
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1449
    move-result-object v7

    .line 1450
    iget-object v8, v3, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1452
    invoke-virtual {v8}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 1455
    move-result-object v8

    .line 1456
    const/4 v9, 0x0

    .line 1457
    invoke-virtual {v7, v8, v6, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 1460
    move-result-object v6

    .line 1461
    move-object v9, v6

    .line 1462
    goto :goto_17

    .line 1463
    :cond_39
    const/4 v9, 0x0

    .line 1464
    :goto_17
    if-nez v9, :cond_3a

    .line 1466
    iget-object v6, v3, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1468
    invoke-virtual {v6}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceLabelLocked()Ljava/lang/CharSequence;

    .line 1471
    move-result-object v6

    .line 1472
    move-object v9, v6

    .line 1473
    :cond_3a
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1474
    if-eqz v9, :cond_3b

    .line 1476
    if-nez v10, :cond_3c

    .line 1478
    :cond_3b
    const/4 v2, 0x1

    .line 1479
    move-object/from16 v22, v3

    .line 1481
    move v3, v1

    .line 1482
    move-object/from16 v1, v22

    .line 1484
    goto/16 :goto_1c

    .line 1486
    :cond_3c
    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    .line 1489
    move-result-object v5

    .line 1490
    iget-object v6, v3, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1492
    invoke-virtual {v6}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 1495
    move-result-object v11

    .line 1496
    iget-object v12, v3, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 1498
    iget-object v6, v3, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    .line 1500
    iget-object v8, v3, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 1502
    iget-boolean v14, v3, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 1504
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getShowSaveDialogIcon()Z

    .line 1507
    move-result v19

    .line 1508
    iget-object v7, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1510
    iget v4, v3, Lcom/android/server/autofill/Session;->mDisplayId:I

    .line 1512
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1515
    sget-boolean v16, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1517
    if-eqz v16, :cond_3d

    .line 1519
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1522
    move-result-object v1

    .line 1523
    move/from16 v16, v4

    .line 1525
    invoke-virtual {v12}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 1528
    move-result-object v4

    .line 1529
    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    .line 1532
    move-result v6

    .line 1533
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1536
    move-result-object v6

    .line 1537
    filled-new-array {v1, v4, v6, v13}, [Ljava/lang/Object;

    .line 1540
    move-result-object v1

    .line 1541
    const-string v4, "AutofillUI"

    .line 1543
    const-string/jumbo v6, "showSaveUi(update=%b) for %s and display %d: %s"

    .line 1546
    invoke-static {v4, v6, v1}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1549
    goto :goto_18

    .line 1550
    :cond_3d
    move/from16 v16, v4

    .line 1552
    :goto_18
    invoke-virtual {v13}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    .line 1555
    move-result-object v1

    .line 1556
    if-nez v1, :cond_3e

    .line 1558
    const/4 v4, 0x0

    .line 1559
    goto :goto_19

    .line 1560
    :cond_3e
    invoke-virtual {v13}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    .line 1563
    move-result-object v1

    .line 1564
    array-length v4, v1

    .line 1565
    :goto_19
    invoke-virtual {v13}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    .line 1568
    move-result-object v1

    .line 1569
    if-nez v1, :cond_3f

    .line 1571
    const/4 v1, 0x0

    .line 1572
    goto :goto_1a

    .line 1573
    :cond_3f
    invoke-virtual {v13}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    .line 1576
    move-result-object v1

    .line 1577
    array-length v1, v1

    .line 1578
    :goto_1a
    add-int/2addr v4, v1

    .line 1579
    iget v1, v8, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    .line 1581
    const/16 v6, 0x394

    .line 1583
    invoke-static {v6, v12, v11, v1, v14}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    .line 1586
    move-result-object v1

    .line 1587
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1590
    move-result-object v4

    .line 1591
    const/16 v6, 0x395

    .line 1593
    invoke-virtual {v1, v6, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1596
    move-result-object v1

    .line 1597
    if-eqz v0, :cond_40

    .line 1599
    const/4 v4, 0x1

    .line 1600
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1603
    move-result-object v6

    .line 1604
    const/16 v4, 0x613

    .line 1606
    invoke-virtual {v1, v4, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1609
    :cond_40
    iget-object v6, v5, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 1611
    new-instance v4, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;

    .line 1613
    move-object/from16 p0, v4

    .line 1615
    move-object v2, v6

    .line 1616
    move-object v6, v3

    .line 1617
    move-object/from16 v18, v7

    .line 1619
    move/from16 v7, v16

    .line 1621
    move/from16 v20, v14

    .line 1623
    move-object v14, v3

    .line 1624
    move-object/from16 v21, v3

    .line 1626
    move-object v3, v15

    .line 1627
    move-object v15, v1

    .line 1628
    move-object/from16 v16, v18

    .line 1630
    move/from16 v17, v0

    .line 1632
    move/from16 v18, v20

    .line 1634
    invoke-direct/range {v4 .. v19}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/Session;ILcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Lcom/android/server/autofill/Session;Landroid/metrics/LogMaker;Lcom/android/server/autofill/SaveEventLogger;ZZZ)V

    .line 1637
    move-object/from16 v0, p0

    .line 1639
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1642
    if-eqz v3, :cond_41

    .line 1644
    move-object/from16 v1, v21

    .line 1646
    :try_start_2
    iget v0, v1, Lcom/android/server/autofill/Session;->id:I

    .line 1648
    const/4 v2, 0x1

    .line 1649
    invoke-interface {v3, v0, v2}, Landroid/view/autofill/IAutoFillManagerClient;->setSaveUiState(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1652
    goto :goto_1b

    .line 1653
    :catch_1
    move-exception v0

    .line 1654
    const-string v2, "AutofillSession"

    .line 1656
    const-string v3, "Error notifying client to set save UI state to shown: "

    .line 1658
    invoke-static {v3, v0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1661
    goto :goto_1b

    .line 1662
    :cond_41
    move-object/from16 v1, v21

    .line 1664
    :goto_1b
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 1666
    const/4 v2, 0x1

    .line 1667
    iput-boolean v2, v0, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    .line 1669
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1671
    if-eqz v0, :cond_42

    .line 1673
    const-string v0, "AutofillSession"

    .line 1675
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1677
    const-string v3, "Good news, everyone! All checks passed, show save UI for "

    .line 1679
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1682
    iget v3, v1, Lcom/android/server/autofill/Session;->id:I

    .line 1684
    const-string v4, "!"

    .line 1686
    invoke-static {v2, v3, v4, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 1689
    :cond_42
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 1691
    const/4 v2, 0x1

    .line 1692
    const/4 v3, 0x0

    .line 1693
    invoke-direct {v0, v3, v2, v3}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 1696
    goto :goto_1d

    .line 1697
    :goto_1c
    const-string/jumbo v0, "showSaveLocked(): no service label or icon"

    .line 1700
    new-array v4, v3, [Ljava/lang/Object;

    .line 1702
    const/4 v5, 0x0

    .line 1703
    invoke-virtual {v1, v5, v0, v4}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1706
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1708
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 1711
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1713
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 1716
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 1718
    invoke-direct {v0, v3, v3, v2}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 1721
    :goto_1d
    iget v2, v0, Lcom/android/server/autofill/Session$SaveResult;->mSaveDialogNotShowReason:I

    .line 1723
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1725
    const-string v5, "AutofillSession"

    .line 1727
    if-eqz v4, :cond_43

    .line 1729
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1731
    const-string/jumbo v6, "logContextCommittedLocked ("

    .line 1734
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1737
    iget v6, v1, Lcom/android/server/autofill/Session;->id:I

    .line 1739
    const-string v7, "): commit_reason:"

    .line 1741
    const-string v8, " no_save_reason:"

    .line 1743
    move/from16 v9, p3

    .line 1745
    invoke-static {v6, v9, v7, v8, v4}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1748
    invoke-static {v4, v2, v5}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1751
    goto :goto_1e

    .line 1752
    :cond_43
    move/from16 v9, p3

    .line 1754
    :goto_1e
    iget-object v4, v1, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 1756
    new-instance v6, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;

    .line 1758
    const/4 v7, 0x0

    .line 1759
    invoke-direct {v6, v7}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1762
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1765
    move-result-object v2

    .line 1766
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1769
    move-result-object v7

    .line 1770
    invoke-static {v6, v1, v2, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 1773
    move-result-object v2

    .line 1774
    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1777
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 1779
    iget-object v2, v2, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 1781
    new-instance v4, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    .line 1783
    const/4 v6, 0x1

    .line 1784
    invoke-direct {v4, v9, v6}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 1787
    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1790
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 1792
    iget v4, v1, Lcom/android/server/autofill/Session;->mRequestCount:I

    .line 1794
    iget-object v2, v2, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 1796
    new-instance v6, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    .line 1798
    const/4 v7, 0x2

    .line 1799
    invoke-direct {v6, v4, v7}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 1802
    invoke-virtual {v2, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1805
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 1807
    const/4 v4, -0x1

    .line 1808
    if-nez v2, :cond_44

    .line 1810
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1812
    if-eqz v2, :cond_45

    .line 1814
    const-string/jumbo v2, "getSaveInfoStatsLocked(): mContexts is null"

    .line 1817
    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    goto :goto_1f

    .line 1821
    :cond_44
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 1823
    if-nez v2, :cond_46

    .line 1825
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1827
    if-eqz v2, :cond_45

    .line 1829
    const-string/jumbo v2, "getSaveInfoStatsLocked(): mResponses is null"

    .line 1832
    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    :cond_45
    :goto_1f
    move v6, v4

    .line 1836
    goto :goto_21

    .line 1837
    :cond_46
    new-instance v2, Landroid/util/ArraySet;

    .line 1839
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1842
    iget-object v4, v1, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 1844
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 1847
    move-result v4

    .line 1848
    move v5, v3

    .line 1849
    move v6, v5

    .line 1850
    move v15, v6

    .line 1851
    :goto_20
    if-ge v15, v4, :cond_48

    .line 1853
    iget-object v7, v1, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 1855
    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1858
    move-result-object v7

    .line 1859
    check-cast v7, Landroid/service/autofill/FillResponse;

    .line 1861
    if-eqz v7, :cond_47

    .line 1863
    invoke-virtual {v7}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    .line 1866
    move-result-object v8

    .line 1867
    if-eqz v8, :cond_47

    .line 1869
    add-int/lit8 v5, v5, 0x1

    .line 1871
    invoke-virtual {v7}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    .line 1874
    move-result-object v7

    .line 1875
    invoke-virtual {v7}, Landroid/service/autofill/SaveInfo;->getType()I

    .line 1878
    move-result v7

    .line 1879
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1882
    move-result-object v8

    .line 1883
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1886
    move-result v8

    .line 1887
    if-nez v8, :cond_47

    .line 1889
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1892
    move-result-object v7

    .line 1893
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1896
    add-int/lit8 v6, v6, 0x1

    .line 1898
    :cond_47
    add-int/lit8 v15, v15, 0x1

    .line 1900
    goto :goto_20

    .line 1901
    :cond_48
    move v4, v5

    .line 1902
    :goto_21
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 1904
    iget-object v2, v2, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 1906
    new-instance v5, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    .line 1908
    const/4 v7, 0x4

    .line 1909
    invoke-direct {v5, v4, v7}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 1912
    invoke-virtual {v2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1915
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 1917
    iget-object v2, v2, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 1919
    new-instance v4, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    .line 1921
    const/4 v5, 0x3

    .line 1922
    invoke-direct {v4, v6, v5}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 1925
    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1928
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 1930
    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    .line 1933
    move-result-object v4

    .line 1934
    if-eqz v4, :cond_49

    .line 1936
    const/4 v15, 0x1

    .line 1937
    goto :goto_22

    .line 1938
    :cond_49
    move v15, v3

    .line 1939
    :goto_22
    iget-object v2, v2, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 1941
    new-instance v3, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda6;

    .line 1943
    invoke-direct {v3, v15}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda6;-><init>(Z)V

    .line 1946
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1949
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1951
    const/4 v3, 0x1

    .line 1952
    invoke-virtual {v2, v3}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 1955
    iget-boolean v2, v0, Lcom/android/server/autofill/Session$SaveResult;->mLogSaveShown:Z

    .line 1957
    if-eqz v2, :cond_4a

    .line 1959
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 1961
    new-instance v3, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;

    .line 1963
    const/4 v4, 0x0

    .line 1964
    invoke-direct {v3, v4}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1967
    invoke-static {v3, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 1970
    move-result-object v3

    .line 1971
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1974
    :cond_4a
    iget-boolean v2, v0, Lcom/android/server/autofill/Session$SaveResult;->mRemoveSession:Z

    .line 1976
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1978
    if-eqz v3, :cond_4b

    .line 1980
    const-string v3, "AutofillManagerServiceImpl"

    .line 1982
    const-string/jumbo v4, "finishSessionLocked(): session finished? "

    .line 1985
    const-string v5, ", showing save UI? "

    .line 1987
    invoke-static {v4, v5, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 1990
    move-result-object v4

    .line 1991
    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SaveResult;->mLogSaveShown:Z

    .line 1993
    invoke-static {v3, v4, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1996
    :cond_4b
    if-eqz v2, :cond_4c

    .line 1998
    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 2001
    :cond_4c
    return-void

    .line 2002
    :catchall_0
    move-exception v0

    .line 2003
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2004
    throw v0

    .line 2005
    :cond_4d
    :goto_23
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 2007
    if-eqz v2, :cond_4e

    .line 2009
    const-string v2, "AutofillManagerServiceImpl"

    .line 2011
    const-string/jumbo v3, "finishSessionLocked(): no session for "

    .line 2014
    const-string v4, "("

    .line 2016
    const-string v5, ")"

    .line 2018
    invoke-static {v0, v1, v3, v4, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2021
    move-result-object v0

    .line 2022
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    :cond_4e
    return-void
.end method

.method public final forceRemoveAllSessionsLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 12
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 14
    new-instance v2, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, p0, v3, v3, v1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 20
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    return-void

    .line 24
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 26
    :goto_0
    if-ltz v0, :cond_1

    .line 28
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/server/autofill/Session;

    .line 36
    invoke-virtual {v2, v1}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method public final forceRemoveForAugmentedOnlySessionsLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_0
    if-ltz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/autofill/Session;

    .line 19
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 21
    if-eqz v2, :cond_0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    const-string/jumbo v3, "forceRemoveFromServiceIfForAugmentedOnlyLocked("

    .line 28
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget v3, v1, Lcom/android/server/autofill/Session;->id:I

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v3, "): "

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v3, v1, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 43
    iget-boolean v3, v3, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 45
    const-string v4, "AutofillSession"

    .line 47
    invoke-static {v4, v2, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 50
    :cond_0
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 52
    iget-boolean v2, v2, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 54
    if-nez v2, :cond_1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    .line 61
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-void
.end method

.method public final getFillEventHistory(I)Landroid/service/autofill/FillEventHistory;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    const-string/jumbo v1, "getFillEventHistory"

    .line 11
    invoke-virtual {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(ILjava/lang/String;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 25
    if-eqz v1, :cond_1

    .line 27
    const-string/jumbo v1, "getFillEventHistory"

    .line 30
    invoke-virtual {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByAugmentedAutofillServiceLocked(ILjava/lang/String;)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 36
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 38
    monitor-exit v0

    .line 39
    return-object p0

    .line 40
    :cond_1
    monitor-exit v0

    .line 41
    const/4 p0, 0x0

    .line 42
    return-object p0

    .line 43
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    if-ge v3, v0, :cond_3

    .line 12
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lcom/android/server/autofill/Session;

    .line 20
    iget v5, v4, Lcom/android/server/autofill/Session;->taskId:I

    .line 22
    iget v6, p1, Lcom/android/server/autofill/Session;->taskId:I

    .line 24
    if-ne v5, v6, :cond_2

    .line 26
    iget v5, v4, Lcom/android/server/autofill/Session;->id:I

    .line 28
    iget v6, p1, Lcom/android/server/autofill/Session;->id:I

    .line 30
    if-eq v5, v6, :cond_2

    .line 32
    invoke-virtual {v4}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    .line 35
    move-result-object v5

    .line 36
    if-nez v5, :cond_0

    .line 38
    move v5, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getFlags()I

    .line 43
    move-result v5

    .line 44
    :goto_1
    and-int/lit8 v5, v5, 0x4

    .line 46
    if-eqz v5, :cond_2

    .line 48
    if-nez v1, :cond_1

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return-object v1
.end method

.method public final getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 3
    if-nez v0, :cond_6

    .line 5
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    .line 10
    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 12
    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 14
    invoke-virtual {v2, v3}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    const-string v4, "AutofillManagerServiceImpl"

    .line 20
    const/4 v5, 0x0

    .line 21
    if-nez v2, :cond_1

    .line 23
    iget-boolean p0, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 25
    if-eqz p0, :cond_0

    .line 27
    const-string/jumbo p0, "getRemoteAugmentedAutofillServiceLocked(): not set"

    .line 30
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-object v5

    .line 34
    :cond_1
    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 36
    invoke-virtual {v1, v3}, Lcom/android/server/infra/ServiceNameBaseResolver;->isTemporary(I)Z

    .line 39
    move-result v1

    .line 40
    sget v6, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->$r8$clinit:I

    .line 42
    const-string v6, "RemoteAugmentedAutofillService"

    .line 44
    const-string v7, "Bad service name for flags "

    .line 46
    if-nez v1, :cond_2

    .line 48
    const v1, 0x100080

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/16 v1, 0x80

    .line 54
    :goto_0
    :try_start_0
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 57
    move-result-object v8

    .line 58
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 61
    move-result-object v9

    .line 62
    int-to-long v10, v1

    .line 63
    invoke-interface {v9, v8, v10, v11, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 66
    move-result-object v3

    .line 67
    if-nez v3, :cond_3

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ": "

    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_1
    move-object v1, v5

    .line 93
    goto :goto_3

    .line 94
    :catch_0
    move-exception v1

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    new-instance v1, Landroid/util/Pair;

    .line 98
    invoke-direct {v1, v3, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    goto :goto_3

    .line 102
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    const-string v7, "Error getting service info for \'"

    .line 106
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v2, "\': "

    .line 114
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v1

    .line 124
    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    goto :goto_1

    .line 128
    :goto_3
    if-nez v1, :cond_4

    .line 130
    return-object v5

    .line 131
    :cond_4
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 133
    check-cast v2, Landroid/content/pm/ServiceInfo;

    .line 135
    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 137
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 139
    move-object v8, v1

    .line 140
    check-cast v8, Landroid/content/ComponentName;

    .line 142
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 144
    if-eqz v1, :cond_5

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    const-string/jumbo v2, "getRemoteAugmentedAutofillServiceLocked(): "

    .line 151
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v1

    .line 161
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_5
    new-instance v10, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;

    .line 166
    invoke-direct {v10, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    .line 169
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 171
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 173
    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 175
    new-instance v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 177
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 180
    move-result-object v6

    .line 181
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 183
    iget-boolean v11, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    .line 185
    iget v12, v0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    .line 187
    iget v13, v0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceRequestTimeoutMs:I

    .line 189
    iget v9, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 191
    move-object v5, v1

    .line 192
    invoke-direct/range {v5 .. v13}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;-><init>(Landroid/content/Context;ILandroid/content/ComponentName;ILcom/android/server/autofill/AutofillManagerServiceImpl$1;ZII)V

    .line 195
    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 197
    :cond_6
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 199
    return-object p0
.end method

.method public final getRemoteFieldClassificationServiceLocked()Lcom/android/server/autofill/RemoteFieldClassificationService;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 3
    if-nez v0, :cond_7

    .line 5
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    .line 10
    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerService;->mFieldClassificationResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 12
    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 14
    invoke-virtual {v2, v3}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    const/4 v4, 0x0

    .line 19
    const-string v5, "AutofillManagerServiceImpl"

    .line 21
    if-nez v2, :cond_1

    .line 23
    iget-boolean p0, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 25
    if-eqz p0, :cond_0

    .line 27
    const-string/jumbo p0, "getRemoteFieldClassificationServiceLocked(): not set"

    .line 30
    invoke-static {v5, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-object v4

    .line 34
    :cond_1
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 36
    if-eqz v6, :cond_2

    .line 38
    const-string/jumbo v6, "getRemoteFieldClassificationServiceLocked serviceName: "

    .line 41
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v6

    .line 45
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_2
    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerService;->mFieldClassificationResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 50
    invoke-virtual {v1, v3}, Lcom/android/server/infra/ServiceNameBaseResolver;->isTemporary(I)Z

    .line 53
    move-result v1

    .line 54
    sget v6, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    .line 56
    const-string v6, "AutofillRemoteFieldClassificationService"

    .line 58
    const-string v7, "Bad service name for flags "

    .line 60
    if-nez v1, :cond_3

    .line 62
    const v1, 0x100080

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/16 v1, 0x80

    .line 68
    :goto_0
    :try_start_0
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 71
    move-result-object v8

    .line 72
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 75
    move-result-object v9

    .line 76
    int-to-long v10, v1

    .line 77
    invoke-interface {v9, v8, v10, v11, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 80
    move-result-object v9

    .line 81
    if-nez v9, :cond_4

    .line 83
    new-instance v8, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ": "

    .line 93
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_1
    move-object v1, v4

    .line 107
    goto :goto_3

    .line 108
    :catch_0
    move-exception v1

    .line 109
    goto :goto_2

    .line 110
    :cond_4
    new-instance v1, Landroid/util/Pair;

    .line 112
    invoke-direct {v1, v9, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    goto :goto_3

    .line 116
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 118
    const-string v8, "Error getting service info for \'"

    .line 120
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v8, "\': "

    .line 128
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object v1

    .line 138
    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    goto :goto_1

    .line 142
    :goto_3
    if-nez v1, :cond_5

    .line 144
    const-string p0, "RemoteFieldClassificationService.getComponentName returned null with serviceName: "

    .line 146
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object p0

    .line 150
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v4

    .line 154
    :cond_5
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 156
    check-cast v2, Landroid/content/pm/ServiceInfo;

    .line 158
    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 160
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 162
    check-cast v1, Landroid/content/ComponentName;

    .line 164
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 166
    if-eqz v2, :cond_6

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    const-string/jumbo v4, "getRemoteFieldClassificationServiceLocked(): "

    .line 173
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v2

    .line 183
    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_6
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 188
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 190
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 192
    new-instance v2, Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 194
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 197
    move-result-object v0

    .line 198
    invoke-direct {v2, v0, v1, v3}, Lcom/android/server/autofill/RemoteFieldClassificationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 201
    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 203
    :cond_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 205
    return-object p0
.end method

.method public final getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 3
    if-nez v0, :cond_8

    .line 5
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 7
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    sget v2, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->$r8$clinit:I

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    const-string v4, "RemoteInlineSuggestionRenderService"

    .line 24
    if-nez v2, :cond_0

    .line 26
    const-string/jumbo v1, "no external services package!"

    .line 29
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :goto_0
    move-object v2, v3

    .line 33
    goto :goto_3

    .line 34
    :cond_0
    const-string v5, "android.service.autofill.InlineSuggestionRenderService"

    .line 36
    invoke-static {v5, v2}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 43
    move-result-object v1

    .line 44
    const/16 v5, 0x84

    .line 46
    iget v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 48
    invoke-virtual {v1, v2, v5, v6}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 51
    move-result-object v1

    .line 52
    if-nez v1, :cond_1

    .line 54
    move-object v2, v3

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 58
    :goto_1
    if-eqz v1, :cond_3

    .line 60
    if-nez v2, :cond_2

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    const-string v1, "android.permission.BIND_INLINE_SUGGESTION_RENDER_SERVICE"

    .line 65
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 67
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_4

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 80
    const-string v5, " does not require permission android.permission.BIND_INLINE_SUGGESTION_RENDER_SERVICE"

    .line 82
    invoke-static {v1, v2, v5, v4}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    :goto_2
    const-string v1, "No valid components found."

    .line 88
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    :goto_3
    if-nez v2, :cond_5

    .line 94
    move-object v7, v3

    .line 95
    goto :goto_4

    .line 96
    :cond_5
    new-instance v1, Landroid/content/ComponentName;

    .line 98
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 100
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 102
    invoke-direct {v1, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 107
    if-eqz v2, :cond_6

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    const-string/jumbo v5, "getServiceComponentName(): "

    .line 114
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_6
    move-object v7, v1

    .line 128
    :goto_4
    if-nez v7, :cond_7

    .line 130
    const-string p0, "AutofillManagerServiceImpl"

    .line 132
    const-string v0, "No valid component found for InlineSuggestionRenderService"

    .line 134
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-object v3

    .line 138
    :cond_7
    new-instance v1, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 140
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 143
    move-result-object v6

    .line 144
    new-instance v9, Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;

    .line 146
    invoke-direct {v9, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    .line 149
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 151
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    .line 154
    move-result v10

    .line 155
    iget-boolean v11, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 157
    iget v8, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 159
    move-object v5, v1

    .line 160
    invoke-direct/range {v5 .. v11}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;ZZ)V

    .line 163
    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 165
    :cond_8
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 167
    return-object p0
.end method

.method public final getUrlBarResourceIdsForCompatMode(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 3
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 5
    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 13
    monitor-exit v1

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/util/ArrayMap;

    .line 23
    if-nez p0, :cond_1

    .line 25
    monitor-exit v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 33
    if-nez p0, :cond_2

    .line 35
    monitor-exit v1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->urlBarResourceIds:[Ljava/lang/String;

    .line 39
    monitor-exit v1

    .line 40
    :goto_0
    return-object v2

    .line 41
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final getUserData(I)Landroid/service/autofill/UserData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "getUserData"

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(ILjava/lang/String;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    .line 15
    monitor-exit v0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final handlePackageUpdateLocked(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetExtServiceLocked()V

    .line 20
    :cond_0
    return-void
.end method

.method public final isAugmentedAutofillServiceAvailableLocked()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    .line 6
    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 8
    iget v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 10
    if-eqz v1, :cond_0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    const-string/jumbo v3, "isAugmentedAutofillService(): setupCompleted="

    .line 17
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget-boolean v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    const-string v3, ", disabled="

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-boolean v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    const-string v3, ", augmentedService="

    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-object v3, v0

    .line 41
    check-cast v3, Lcom/android/server/autofill/AutofillManagerService;

    .line 43
    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 45
    invoke-virtual {v3, v2}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    const-string v3, "AutofillManagerServiceImpl"

    .line 58
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    .line 63
    if-eqz v1, :cond_2

    .line 65
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    .line 67
    if-nez p0, :cond_2

    .line 69
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 71
    iget-object p0, v0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 73
    invoke-virtual {p0, v2}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    if-nez p0, :cond_1

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const/4 p0, 0x1

    .line 81
    return p0

    .line 82
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 83
    return p0
.end method

.method public final isCalledByAugmentedAutofillServiceLocked(ILjava/lang/String;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iget v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 8
    const-string v3, "() called by UID "

    .line 10
    const-string v4, "AutofillManagerServiceImpl"

    .line 12
    if-nez v0, :cond_0

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string p1, ", but there is no augmented autofill service defined for user "

    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return v1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 46
    const/4 v5, -0x1

    .line 47
    const-string/jumbo v6, "getAugmentedAutofillServiceUid(): no mRemoteAugmentedAutofillServiceInfo"

    .line 50
    iget-object v7, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 52
    if-nez v0, :cond_2

    .line 54
    move-object v0, v7

    .line 55
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 57
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 59
    if-eqz v0, :cond_1

    .line 61
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    move v0, v5

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 68
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 70
    :goto_0
    if-eq v0, p1, :cond_5

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string p1, ", but service UID is "

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 93
    if-nez p0, :cond_3

    .line 95
    check-cast v7, Lcom/android/server/autofill/AutofillManagerService;

    .line 97
    iget-boolean p0, v7, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 99
    if-eqz p0, :cond_4

    .line 101
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 107
    iget v5, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 109
    :cond_4
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string p0, " for user "

    .line 114
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v1

    .line 128
    :cond_5
    const/4 p0, 0x1

    .line 129
    return p0
.end method

.method public final isCalledByServiceLocked(ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceUidLocked()I

    .line 4
    move-result p0

    .line 5
    if-eq p0, p1, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string p2, "() called by UID "

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string p1, ", but service UID is "

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    const-string p1, "AutofillManagerServiceImpl"

    .line 37
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 p0, 0x0

    .line 41
    return p0

    .line 42
    :cond_0
    const/4 p0, 0x1

    .line 43
    return p0
.end method

.method public final isFieldClassificationEnabledLocked()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "autofill_field_classification"

    .line 13
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 19
    move-result p0

    .line 20
    if-ne p0, v2, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    return v2
.end method

.method public final isFieldClassificationServiceAvailableLocked()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    .line 6
    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 8
    iget v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 10
    if-eqz v1, :cond_0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    const-string/jumbo v3, "isFieldClassificationService(): setupCompleted="

    .line 17
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget-boolean v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    const-string v3, ", disabled="

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-boolean v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    const-string v3, ", augmentedService="

    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-object v3, v0

    .line 41
    check-cast v3, Lcom/android/server/autofill/AutofillManagerService;

    .line 43
    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mFieldClassificationResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 45
    invoke-virtual {v3, v2}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    const-string v3, "AutofillManagerServiceImpl"

    .line 58
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    .line 63
    if-eqz v1, :cond_2

    .line 65
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    .line 67
    if-nez p0, :cond_2

    .line 69
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 71
    iget-object p0, v0, Lcom/android/server/autofill/AutofillManagerService;->mFieldClassificationResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 73
    invoke-virtual {p0, v2}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    if-nez p0, :cond_1

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const/4 p0, 0x1

    .line 81
    return p0

    .line 82
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 83
    return p0
.end method

.method public final isPccClassificationEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 3
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 5
    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mPccClassificationEnabled:Z

    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteFieldClassificationServiceLocked()Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1

    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :goto_0
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 28
    if-eqz p0, :cond_2

    .line 30
    const-string p0, "AutofillManagerServiceImpl"

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    const-string/jumbo v2, "pccEnabled: "

    .line 37
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_2
    return v1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    throw p0

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    throw p0
.end method

.method public final isValidEventLocked(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "AutofillManagerServiceImpl"

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string p0, ": not logging event because history is null"

    .line 10
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    .line 21
    move-result v0

    .line 22
    if-eq p1, v0, :cond_2

    .line 24
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 26
    if-eqz v0, :cond_1

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string p2, ": not logging event for session "

    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string p1, " because tracked session is "

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 51
    invoke-virtual {p0}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    .line 54
    move-result p0

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    return v1

    .line 66
    :cond_2
    const/4 p0, 0x1

    .line 67
    return p0
.end method

.method public final listSessionsLocked(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_3

    .line 13
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 21
    if-nez v3, :cond_1

    .line 23
    const-string/jumbo v3, "no_svc"

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v3}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    :goto_1
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 41
    if-nez v4, :cond_2

    .line 43
    const-string/jumbo v4, "no_aug"

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v2

    .line 59
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 63
    const-string v3, "%d:%s:%s"

    .line 65
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    return-void
.end method

.method public final logAugmentedAutofillSelected(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 7
    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    .line 12
    move-result v2

    .line 13
    move/from16 v3, p1

    .line 15
    if-eq v2, v3, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 20
    new-instance v14, Landroid/service/autofill/FillEventHistory$Event;

    .line 22
    const/4 v12, 0x0

    .line 23
    const/4 v13, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    move-object v2, v14

    .line 32
    move-object/from16 v4, p2

    .line 34
    move-object/from16 v5, p3

    .line 36
    invoke-direct/range {v2 .. v13}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    .line 39
    invoke-virtual {v0, v14}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 42
    monitor-exit v1

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    monitor-exit v1

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v0
.end method

.method public final logDatasetShown(IILandroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    const-string/jumbo v2, "logDatasetShown"

    .line 9
    move/from16 v3, p1

    .line 11
    invoke-virtual {v0, v3, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(ILjava/lang/String;)Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 17
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 19
    new-instance v15, Landroid/service/autofill/FillEventHistory$Event;

    .line 21
    const/4 v11, 0x0

    .line 22
    const/4 v12, 0x0

    .line 23
    const/4 v13, 0x0

    .line 24
    const/4 v14, 0x0

    .line 25
    const/4 v3, 0x5

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v10, 0x0

    .line 32
    move-object v2, v15

    .line 33
    move-object/from16 v5, p3

    .line 35
    move-object/from16 v16, v15

    .line 37
    move/from16 v15, p2

    .line 39
    invoke-direct/range {v2 .. v15}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;II)V

    .line 42
    move-object/from16 v2, v16

    .line 44
    invoke-virtual {v0, v2}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    monitor-exit v1

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw v0
.end method

.method public final logViewEntered(I)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "logViewEntered"

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(ILjava/lang/String;)Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 19
    invoke-virtual {p1}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_2

    .line 25
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 27
    invoke-virtual {p1}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object p1

    .line 35
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/service/autofill/FillEventHistory$Event;

    .line 47
    invoke-virtual {v1}, Landroid/service/autofill/FillEventHistory$Event;->getType()I

    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x6

    .line 52
    if-ne v1, v2, :cond_1

    .line 54
    const-string p0, "AutofillManagerServiceImpl"

    .line 56
    const-string/jumbo p1, "logViewEntered: already logged TYPE_VIEW_REQUESTED_AUTOFILL"

    .line 59
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :cond_2
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 66
    new-instance p1, Landroid/service/autofill/FillEventHistory$Event;

    .line 68
    const/4 v9, 0x0

    .line 69
    const/4 v10, 0x0

    .line 70
    const/4 v4, 0x0

    .line 71
    const/4 v11, 0x0

    .line 72
    const/4 v12, 0x0

    .line 73
    const/4 v2, 0x6

    .line 74
    const/4 v3, 0x0

    .line 75
    const/4 v5, 0x0

    .line 76
    const/4 v6, 0x0

    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v8, 0x0

    .line 79
    move-object v1, p1

    .line 80
    invoke-direct/range {v1 .. v12}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    .line 83
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 88
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0
.end method

.method public final newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Landroid/content/Intent;

    .line 13
    const-string v3, "android.service.autofill.AutofillService"

    .line 15
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    const v3, 0x800080

    .line 21
    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 23
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v1

    .line 31
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 43
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 45
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 55
    new-instance v1, Landroid/service/autofill/AutofillServiceInfo;

    .line 57
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v0

    .line 61
    invoke-direct {v1, v0, p1, v4}, Landroid/service/autofill/AutofillServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 64
    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 66
    invoke-virtual {v1}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 73
    const-string v0, "Autofill service from \'"

    .line 75
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string p1, "\' doesnot have intent filter android.service.autofill.AutofillService"

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    const-string p1, "AutofillManagerServiceImpl"

    .line 96
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance p0, Ljava/lang/SecurityException;

    .line 101
    const-string p1, "Service does not declare intent filter android.service.autofill.AutofillService"

    .line 103
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p0
.end method

.method public final onPendingSaveUi(ILandroid/os/IBinder;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "AutofillManagerServiceImpl"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v2, "onPendingSaveUi("

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, "): "

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 38
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 41
    move-result v1

    .line 42
    add-int/lit8 v1, v1, -0x1

    .line 44
    :goto_0
    if-ltz v1, :cond_2

    .line 46
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 48
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/android/server/autofill/Session;

    .line 54
    iget-object v3, v2, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 56
    if-eqz v3, :cond_1

    .line 58
    iget v4, v3, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    .line 60
    const/4 v5, 0x2

    .line 61
    if-ne v4, v5, :cond_1

    .line 63
    iget-object v3, v3, Lcom/android/server/autofill/ui/PendingUi;->mToken:Landroid/os/IBinder;

    .line 65
    invoke-interface {p2, v3}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 71
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    .line 74
    move-result-object p0

    .line 75
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v2, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda0;

    .line 79
    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;ILandroid/os/IBinder;)V

    .line 82
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 95
    if-eqz p0, :cond_3

    .line 97
    const-string p0, "AutofillManagerServiceImpl"

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "No pending Save UI for token "

    .line 103
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string p2, " and operation "

    .line 111
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-class p2, Landroid/view/autofill/AutofillManager;

    .line 116
    const-string v1, "PENDING_UI_OPERATION_"

    .line 118
    int-to-long v2, p1

    .line 119
    invoke-static {p2, v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_3
    return-void

    .line 134
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    throw p0
.end method

.method public final requestSavedPasswordCount(Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/android/server/autofill/RemoteFillService;

    .line 3
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 11
    invoke-virtual {v2}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 18
    move-result-object v2

    .line 19
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 21
    iget-boolean v5, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    .line 23
    iget-object v6, v0, Lcom/android/server/autofill/AutofillManagerService;->mCredentialAutofillService:Landroid/content/ComponentName;

    .line 25
    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 27
    const/4 v4, 0x0

    .line 28
    move-object v0, v7

    .line 29
    invoke-direct/range {v0 .. v6}, Lcom/android/server/autofill/RemoteFillService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;ZLandroid/content/ComponentName;)V

    .line 32
    new-instance p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda1;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;)V

    .line 37
    invoke-virtual {v7, p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 40
    return-void
.end method

.method public final resetExtServiceLocked()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "AutofillManagerServiceImpl"

    .line 7
    const-string/jumbo v1, "reset autofill service in ExtServices."

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 15
    const-string/jumbo v1, "reset(): "

    .line 18
    iget-object v2, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter v2

    .line 21
    :try_start_0
    iget-object v3, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Lcom/android/server/autofill/FieldClassificationStrategy$1;

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v3, :cond_2

    .line 26
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 28
    if-eqz v3, :cond_1

    .line 30
    const-string v3, "FieldClassificationStrategy"

    .line 32
    const-string/jumbo v5, "reset(): unbinding service."

    .line 35
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :cond_1
    :goto_0
    :try_start_1
    iget-object v3, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    .line 43
    iget-object v5, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Lcom/android/server/autofill/FieldClassificationStrategy$1;

    .line 45
    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception v3

    .line 50
    :try_start_2
    const-string v5, "FieldClassificationStrategy"

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_1
    iput-object v4, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Lcom/android/server/autofill/FieldClassificationStrategy$1;

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 76
    if-eqz v0, :cond_3

    .line 78
    const-string v0, "FieldClassificationStrategy"

    .line 80
    const-string/jumbo v1, "reset(): service is not bound. Do nothing."

    .line 83
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_3
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 89
    if-eqz v0, :cond_4

    .line 91
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    .line 94
    iput-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 96
    :cond_4
    return-void

    .line 97
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    throw p0
.end method

.method public final restoreSession(IILandroid/os/IBinder;Landroid/os/IBinder;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 9
    if-eqz p0, :cond_2

    .line 11
    iget p1, p0, Lcom/android/server/autofill/Session;->uid:I

    .line 13
    if-eq p2, p1, :cond_0

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    const-string p1, "Call to Session#switchActivity() rejected - session: "

    .line 18
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter p2

    .line 21
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 23
    if-eqz v0, :cond_1

    .line 25
    const-string p3, "AutofillSession"

    .line 27
    new-instance p4, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {p4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 34
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string p0, " destroyed"

    .line 39
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    monitor-exit p2

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iput-object p3, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 55
    invoke-virtual {p0, p4}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 61
    monitor-exit p2

    .line 62
    :goto_0
    const/4 p0, 0x1

    .line 63
    return p0

    .line 64
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0

    .line 66
    :cond_2
    :goto_2
    const/4 p0, 0x0

    .line 67
    return p0
.end method

.method public final sendStateToClients(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto/16 :goto_6

    .line 13
    :cond_0
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 16
    move-result v2

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const/4 v0, 0x0

    .line 19
    move v3, v0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_9

    .line 22
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Landroid/view/autofill/IAutoFillManagerClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 28
    :try_start_2
    iget-object v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 30
    monitor-enter v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 31
    const/4 v6, 0x1

    .line 32
    if-nez p1, :cond_4

    .line 34
    :try_start_3
    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 36
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 39
    move-result v7

    .line 40
    move v8, v0

    .line 41
    :goto_1
    if-ge v8, v7, :cond_2

    .line 43
    iget-object v9, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 45
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    move-result-object v9

    .line 49
    check-cast v9, Lcom/android/server/autofill/Session;

    .line 51
    invoke-virtual {v9}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    .line 54
    move-result-object v10

    .line 55
    invoke-interface {v10, v4}, Landroid/view/autofill/IAutoFillManagerClient;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v10

    .line 59
    if-eqz v10, :cond_1

    .line 61
    iget-object v7, v9, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 63
    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 64
    :try_start_4
    iget-boolean v8, v9, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 66
    monitor-exit v7

    .line 67
    goto :goto_2

    .line 68
    :catchall_1
    move-exception v4

    .line 69
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 70
    :try_start_5
    throw v4

    .line 71
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move v8, v6

    .line 75
    :goto_2
    if-eqz v8, :cond_3

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    move v6, v0

    .line 79
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 82
    move-result v7

    .line 83
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 84
    if-eqz v6, :cond_5

    .line 86
    or-int/lit8 v7, v7, 0x2

    .line 88
    :cond_5
    if-eqz p1, :cond_6

    .line 90
    or-int/lit8 v7, v7, 0x4

    .line 92
    :cond_6
    :try_start_6
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 94
    if-eqz v5, :cond_7

    .line 96
    or-int/lit8 v7, v7, 0x8

    .line 98
    :cond_7
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 100
    if-eqz v5, :cond_8

    .line 102
    or-int/lit8 v7, v7, 0x10

    .line 104
    :cond_8
    invoke-interface {v4, v7}, Landroid/view/autofill/IAutoFillManagerClient;->setState(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 107
    goto :goto_4

    .line 108
    :catchall_2
    move-exception p0

    .line 109
    goto :goto_5

    .line 110
    :catchall_3
    move-exception v4

    .line 111
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 112
    :try_start_8
    throw v4
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 113
    :catch_0
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 115
    goto :goto_0

    .line 116
    :goto_5
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 119
    throw p0

    .line 120
    :cond_9
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 123
    return-void

    .line 124
    :goto_6
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 125
    throw p0
.end method

.method public final setAugmentedAutofillWhitelistLocked(ILjava/util/List;Ljava/util/List;)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "setAugmentedAutofillWhitelistLocked"

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByAugmentedAutofillServiceLocked(ILjava/lang/String;)Z

    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 14
    check-cast p1, Lcom/android/server/autofill/AutofillManagerService;

    .line 16
    iget-boolean p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 18
    if-eqz p1, :cond_1

    .line 20
    const-string p1, "AutofillManagerServiceImpl"

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v1, "setAugmentedAutofillWhitelistLocked(packages="

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", activities="

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ")"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    const-string/jumbo p1, "whitelisting packages: "

    .line 56
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 58
    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 61
    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    .line 63
    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 65
    if-eqz v1, :cond_2

    .line 67
    const-string v1, "AutofillManagerServiceImpl"

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    const-string p1, "and activities: "

    .line 79
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 97
    check-cast p1, Lcom/android/server/autofill/AutofillManagerService;

    .line 99
    iget-object p1, p1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    .line 101
    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 103
    invoke-virtual {p1, v1, p2, p3}, Lcom/android/internal/infra/GlobalWhitelistState;->setWhitelist(ILjava/util/List;Ljava/util/List;)V

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 109
    if-eqz p1, :cond_3

    .line 111
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    const-string p1, "AutofillManagerServiceImpl"

    .line 122
    const-string/jumbo v0, "setAugmentedAutofillWhitelistLocked(): no service"

    .line 125
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string p1, "N/A"

    .line 130
    :goto_1
    new-instance v0, Landroid/metrics/LogMaker;

    .line 132
    const/16 v1, 0x6b9

    .line 134
    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 137
    const/16 v1, 0x38c

    .line 139
    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 142
    move-result-object p1

    .line 143
    if-eqz p2, :cond_4

    .line 145
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 148
    move-result p2

    .line 149
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object p2

    .line 153
    const/16 v0, 0x6ba

    .line 155
    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 158
    :cond_4
    if-eqz p3, :cond_5

    .line 160
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 163
    move-result p2

    .line 164
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    move-result-object p2

    .line 168
    const/16 p3, 0x6bb

    .line 170
    invoke-virtual {p1, p3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 173
    :cond_5
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 178
    const/4 p0, 0x1

    .line 179
    return p0

    .line 180
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    throw p0
.end method

.method public final setAutofillFailureLocked(IILjava/util/List;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "AutofillManagerServiceImpl"

    .line 7
    if-nez v0, :cond_0

    .line 9
    const-string p0, "Service not enabled"

    .line 11
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 23
    if-eqz p0, :cond_6

    .line 25
    iget v0, p0, Lcom/android/server/autofill/Session;->uid:I

    .line 27
    if-eq p2, v0, :cond_1

    .line 29
    goto/16 :goto_2

    .line 31
    :cond_1
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 33
    const-string p2, "AutofillSession"

    .line 35
    if-eqz p1, :cond_2

    .line 37
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    const-string v0, "Total views that failed to populate: "

    .line 47
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_2
    const/4 p1, 0x0

    .line 65
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 68
    move-result v0

    .line 69
    if-ge p1, v0, :cond_5

    .line 71
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 77
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 79
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 85
    if-nez v1, :cond_3

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    const-string/jumbo v2, "setAutofillFailure(): no view for id "

    .line 92
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    const/4 v2, 0x4

    .line 107
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 110
    iget v2, v1, Lcom/android/server/autofill/ViewState;->mState:I

    .line 112
    or-int/lit16 v2, v2, 0x400

    .line 114
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 117
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 119
    if-eqz v2, :cond_4

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    const-string v3, "Changed state of "

    .line 125
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    const-string v0, " to "

    .line 133
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 147
    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_4
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 152
    goto :goto_0

    .line 153
    :cond_5
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 155
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 158
    move-result p1

    .line 159
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 161
    new-instance p2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 163
    const/16 p3, 0xb

    .line 165
    invoke-direct {p2, p1, p3}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 168
    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 171
    return-void

    .line 172
    :cond_6
    :goto_2
    const-string/jumbo p0, "setAutofillFailure(): no session for "

    .line 175
    const-string p3, "("

    .line 177
    const-string v0, ")"

    .line 179
    invoke-static {p1, p2, p0, p3, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    move-result-object p0

    .line 183
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public final setHasCallback(IIZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/server/autofill/Session;

    .line 16
    if-eqz p1, :cond_2

    .line 18
    iget v0, p1, Lcom/android/server/autofill/Session;->uid:I

    .line 20
    if-ne p2, v0, :cond_2

    .line 22
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-boolean p2, p1, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 27
    if-eqz p2, :cond_1

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    const-string p3, "Call to Session#setHasCallbackLocked() rejected - session: "

    .line 33
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget p1, p1, Lcom/android/server/autofill/Session;->id:I

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string p1, " destroyed"

    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    const-string p2, "AutofillSession"

    .line 52
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iput-boolean p3, p1, Lcom/android/server/autofill/Session;->mHasCallback:Z

    .line 58
    :goto_0
    monitor-exit p0

    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p1

    .line 63
    :cond_2
    :goto_1
    return-void
.end method

.method public final setUserData(ILandroid/service/autofill/UserData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "setUserData"

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(ILjava/lang/String;)Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    .line 19
    if-nez p2, :cond_1

    .line 21
    const/4 p1, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p2}, Landroid/service/autofill/UserData;->getCategoryIds()[Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    array-length p1, p1

    .line 28
    :goto_0
    iget-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 30
    new-instance v1, Landroid/metrics/LogMaker;

    .line 32
    const/16 v2, 0x4f8

    .line 34
    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 37
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v1, p0}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 44
    move-result-object p0

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object p1

    .line 49
    const/16 v1, 0x392

    .line 51
    invoke-virtual {p0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p2, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public final setViewAutofilledLocked(ILandroid/view/autofill/AutofillId;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "AutofillManagerServiceImpl"

    .line 7
    if-nez v0, :cond_0

    .line 9
    const-string p0, "Service not enabled"

    .line 11
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 23
    if-eqz p0, :cond_4

    .line 25
    iget v0, p0, Lcom/android/server/autofill/Session;->uid:I

    .line 27
    if-eq p3, v0, :cond_1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 32
    if-eqz p1, :cond_2

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    const-string p3, "View autofilled: "

    .line 38
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    const-string p3, "AutofillSession"

    .line 50
    invoke-static {p3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_2
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->getSessionId()I

    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_3

    .line 59
    iget p1, p0, Lcom/android/server/autofill/Session;->id:I

    .line 61
    invoke-virtual {p2, p1}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 64
    :cond_3
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 66
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 68
    new-instance p1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;

    .line 70
    const/4 p3, 0x1

    .line 71
    invoke-direct {p1, p3, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 74
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 77
    return-void

    .line 78
    :cond_4
    :goto_0
    const-string/jumbo p0, "setViewAutofilled(): no session for "

    .line 81
    const-string p2, "("

    .line 83
    const-string v0, ")"

    .line 85
    invoke-static {p1, p3, p0, p2, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public final startSessionLocked(Landroid/os/IBinder;IILandroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;ZLandroid/content/ComponentName;ZZI)J
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v13, p9

    .line 5
    move/from16 v12, p12

    .line 7
    and-int/lit8 v1, v12, 0x8

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 13
    move v1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v3

    .line 16
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_1

    .line 22
    if-nez v1, :cond_1

    .line 24
    const-wide/16 v0, 0x0

    .line 26
    return-wide v0

    .line 27
    :cond_1
    const-wide/32 v24, 0x7fffffff

    .line 30
    const/4 v11, 0x0

    .line 31
    if-nez v1, :cond_6

    .line 33
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 35
    iget v5, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 37
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-static/range {p9 .. p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v6, v4, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 45
    monitor-enter v6

    .line 46
    :try_start_0
    iget-object v4, v4, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 48
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 54
    if-eqz v4, :cond_2

    .line 56
    invoke-virtual {v4, v13}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->isAutofillDisabledLocked(Landroid/content/ComponentName;)Z

    .line 59
    move-result v4

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto/16 :goto_3

    .line 64
    :cond_2
    move v4, v3

    .line 65
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    if-eqz v4, :cond_6

    .line 68
    iget-object v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 70
    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    .line 72
    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    .line 74
    iget v4, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 76
    invoke-virtual {v1, v4, v13}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->isWhitelisted(ILandroid/content/ComponentName;)Z

    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 82
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 84
    if-eqz v1, :cond_3

    .line 86
    const-string v1, "AutofillManagerServiceImpl"

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    .line 90
    const-string/jumbo v5, "startSession("

    .line 93
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    const-string v5, "): disabled by service but whitelisted for augmented autofill"

    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v4

    .line 108
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_3
    move v10, v2

    .line 112
    goto :goto_4

    .line 113
    :cond_4
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 115
    if-eqz v0, :cond_5

    .line 117
    const-string v0, "AutofillManagerServiceImpl"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    const-string/jumbo v2, "startSession("

    .line 124
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    const-string v2, "): ignored because disabled by service and not whitelisted for augmented autofill"

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v1

    .line 139
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_5
    invoke-static/range {p4 .. p4}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    .line 145
    move-result-object v0

    .line 146
    const/4 v1, 0x4

    .line 147
    :try_start_1
    invoke-interface {v0, v1, v11}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    goto :goto_2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    move-object v1, v0

    .line 153
    const-string v0, "AutofillManagerServiceImpl"

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    const-string v3, "Could not notify "

    .line 159
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    const-string v3, " that it\'s disabled: "

    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_2
    return-wide v24

    .line 181
    :goto_3
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    throw v0

    .line 183
    :cond_6
    move v10, v1

    .line 184
    :goto_4
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 186
    if-eqz v1, :cond_7

    .line 188
    const-string v1, "AutofillManagerServiceImpl"

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    .line 192
    const-string/jumbo v5, "startSession(): token="

    .line 195
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    move-object/from16 v9, p1

    .line 200
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    const-string v5, ", flags="

    .line 205
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    const-string v5, ", forAugmentedAutofillOnly="

    .line 213
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-static {v1, v4, v10}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 219
    goto :goto_5

    .line 220
    :cond_7
    move-object/from16 v9, p1

    .line 222
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 225
    move-result-wide v4

    .line 226
    iget-wide v6, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    .line 228
    const-wide/16 v14, 0x7530

    .line 230
    sub-long v14, v4, v14

    .line 232
    cmp-long v1, v6, v14

    .line 234
    if-gez v1, :cond_8

    .line 236
    iput-wide v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    .line 238
    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 240
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 243
    move-result v1

    .line 244
    if-lez v1, :cond_8

    .line 246
    new-instance v1, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;

    .line 248
    invoke-direct {v1, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    .line 251
    new-array v4, v3, [Ljava/lang/Void;

    .line 253
    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 256
    :cond_8
    move v1, v3

    .line 257
    :goto_6
    add-int/2addr v1, v2

    .line 258
    const-string v4, "AutofillManagerServiceImpl"

    .line 260
    const/16 v5, 0x800

    .line 262
    if-le v1, v5, :cond_9

    .line 264
    const-string v1, "Cannot create session in 2048 tries"

    .line 266
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    move/from16 v27, v10

    .line 271
    move-object/from16 v28, v11

    .line 273
    goto/16 :goto_a

    .line 275
    :cond_9
    sget-object v5, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sRandom:Ljava/util/Random;

    .line 277
    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    .line 280
    move-result v5

    .line 281
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 284
    move-result v8

    .line 285
    if-eqz v8, :cond_12

    .line 287
    const v5, 0x7fffffff

    .line 290
    if-eq v8, v5, :cond_12

    .line 292
    iget-object v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 294
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 297
    move-result v5

    .line 298
    if-gez v5, :cond_12

    .line 300
    invoke-virtual/range {p9 .. p9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 303
    move-result-object v1

    .line 304
    iget-object v5, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 306
    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 309
    move-result-object v6

    .line 310
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 313
    move-result-object v6

    .line 314
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 317
    move-result v7

    .line 318
    :try_start_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 321
    move-result v14

    .line 322
    invoke-virtual {v6, v1, v14}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 325
    move-result v14
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 326
    if-eq v7, v14, :cond_c

    .line 328
    const-class v15, Landroid/app/ActivityManagerInternal;

    .line 330
    invoke-static {v15}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 333
    move-result-object v15

    .line 334
    check-cast v15, Landroid/app/ActivityManagerInternal;

    .line 336
    invoke-virtual {v15, v7, v1}, Landroid/app/ActivityManagerInternal;->hasRunningActivity(ILjava/lang/String;)Z

    .line 339
    move-result v1

    .line 340
    if-nez v1, :cond_c

    .line 342
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 345
    move-result-object v1

    .line 346
    if-eqz v1, :cond_a

    .line 348
    aget-object v1, v1, v3

    .line 350
    goto :goto_7

    .line 351
    :cond_a
    const-string/jumbo v1, "uid-"

    .line 354
    invoke-static {v7, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 357
    move-result-object v1

    .line 358
    :goto_7
    const-string v3, "App (package="

    .line 360
    const-string v5, ", UID="

    .line 362
    const-string v6, ") passed component ("

    .line 364
    invoke-static {v7, v3, v1, v5, v6}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    move-result-object v3

    .line 368
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 371
    const-string v5, ") owned by UID "

    .line 373
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    move-result-object v3

    .line 383
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v3, Landroid/metrics/LogMaker;

    .line 388
    const/16 v4, 0x3b4

    .line 390
    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 393
    invoke-virtual {v3, v1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 396
    move-result-object v1

    .line 397
    const/16 v3, 0x38c

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 402
    move-result-object v4

    .line 403
    invoke-virtual {v1, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 406
    move-result-object v1

    .line 407
    invoke-virtual/range {p9 .. p9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 410
    move-result-object v3

    .line 411
    const/16 v4, 0x3b5

    .line 413
    invoke-virtual {v1, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 416
    move-result-object v1

    .line 417
    if-eqz p10, :cond_b

    .line 419
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 422
    move-result-object v2

    .line 423
    const/16 v3, 0x586

    .line 425
    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 428
    :cond_b
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 430
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 433
    new-instance v0, Ljava/lang/SecurityException;

    .line 435
    const-string v1, "Invalid component: "

    .line 437
    invoke-static {v13, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 440
    move-result-object v1

    .line 441
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 444
    throw v0

    .line 445
    :cond_c
    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 447
    if-nez v1, :cond_d

    .line 449
    move-object/from16 v16, v11

    .line 451
    goto :goto_8

    .line 452
    :cond_d
    invoke-virtual {v1}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 455
    move-result-object v1

    .line 456
    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 459
    move-result-object v1

    .line 460
    move-object/from16 v16, v1

    .line 462
    :goto_8
    and-int/lit16 v1, v12, 0x800

    .line 464
    if-eqz v1, :cond_e

    .line 466
    move/from16 v23, v2

    .line 468
    goto :goto_9

    .line 469
    :cond_e
    move/from16 v23, v3

    .line 471
    :goto_9
    new-instance v4, Lcom/android/server/autofill/Session;

    .line 473
    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 476
    move-result-object v17

    .line 477
    iget-object v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 479
    iget-object v14, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 481
    iget-object v15, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mWtfHistory:Landroid/util/LocalLog;

    .line 483
    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 485
    move-object/from16 v22, v1

    .line 487
    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 489
    iget v6, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 491
    iget-object v7, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 493
    move-object v1, v4

    .line 494
    move-object/from16 v2, p0

    .line 496
    move-object/from16 v26, v4

    .line 498
    move-object/from16 v4, v17

    .line 500
    move/from16 v9, p2

    .line 502
    move/from16 v27, v10

    .line 504
    move/from16 v10, p3

    .line 506
    move-object/from16 v28, v11

    .line 508
    move-object/from16 v11, p1

    .line 510
    move-object/from16 v12, p4

    .line 512
    move/from16 v13, p8

    .line 514
    move-object/from16 v17, p9

    .line 516
    move/from16 v18, p10

    .line 518
    move/from16 v19, p11

    .line 520
    move/from16 v20, v27

    .line 522
    move/from16 v21, p12

    .line 524
    invoke-direct/range {v1 .. v23}, Lcom/android/server/autofill/Session;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/ui/AutoFillUI;Landroid/content/Context;Landroid/os/Handler;ILjava/lang/Object;IIILandroid/os/IBinder;Landroid/os/IBinder;ZLandroid/util/LocalLog;Landroid/util/LocalLog;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZILcom/android/server/inputmethod/InputMethodManagerInternal;Z)V

    .line 527
    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 529
    move-object/from16 v2, v26

    .line 531
    iget v3, v2, Lcom/android/server/autofill/Session;->id:I

    .line 533
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 536
    move-object v11, v2

    .line 537
    :goto_a
    if-nez v11, :cond_f

    .line 539
    return-wide v24

    .line 540
    :cond_f
    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 542
    if-nez v1, :cond_10

    .line 544
    move-object/from16 v1, v28

    .line 546
    goto :goto_b

    .line 547
    :cond_10
    invoke-virtual {v1}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 550
    move-result-object v1

    .line 551
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 553
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 555
    const-string/jumbo v3, "id="

    .line 558
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    iget v3, v11, Lcom/android/server/autofill/Session;->id:I

    .line 563
    const-string v4, " uid="

    .line 565
    const-string v5, " a="

    .line 567
    move/from16 v6, p3

    .line 569
    invoke-static {v3, v6, v4, v5, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 572
    invoke-virtual/range {p9 .. p9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 575
    move-result-object v3

    .line 576
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v3, " s="

    .line 581
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const-string v1, " u="

    .line 589
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 594
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 597
    const-string v1, " i="

    .line 599
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    move-object/from16 v4, p5

    .line 604
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 607
    const-string v1, " b="

    .line 609
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    move-object/from16 v5, p6

    .line 614
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 617
    const-string v1, " hc="

    .line 619
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    move/from16 v7, p8

    .line 624
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 627
    const-string v1, " f="

    .line 629
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    move/from16 v8, p12

    .line 634
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 637
    const-string v1, " aa="

    .line 639
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    move/from16 v9, v27

    .line 644
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 650
    move-result-object v1

    .line 651
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 653
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 655
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 657
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 660
    iget-object v6, v11, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 662
    monitor-enter v6

    .line 663
    const/4 v7, 0x1

    .line 664
    move-object v0, v11

    .line 665
    move-object/from16 v1, p5

    .line 667
    move-object/from16 v2, p6

    .line 669
    move-object/from16 v3, p7

    .line 671
    move v4, v7

    .line 672
    move/from16 v5, p12

    .line 674
    :try_start_4
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/Session;->updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 677
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 678
    if-eqz v9, :cond_11

    .line 680
    iget v0, v11, Lcom/android/server/autofill/Session;->id:I

    .line 682
    int-to-long v0, v0

    .line 683
    const-wide v2, 0x100000000L

    .line 688
    or-long/2addr v0, v2

    .line 689
    return-wide v0

    .line 690
    :cond_11
    iget v0, v11, Lcom/android/server/autofill/Session;->id:I

    .line 692
    int-to-long v0, v0

    .line 693
    return-wide v0

    .line 694
    :catchall_1
    move-exception v0

    .line 695
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 696
    throw v0

    .line 697
    :catch_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 699
    const-string v1, "Could not verify UID for "

    .line 701
    move-object/from16 v10, p9

    .line 703
    invoke-static {v10, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 706
    move-result-object v1

    .line 707
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 710
    throw v0

    .line 711
    :cond_12
    move/from16 v6, p3

    .line 713
    move-object/from16 v4, p5

    .line 715
    move-object/from16 v5, p6

    .line 717
    move/from16 v7, p8

    .line 719
    move v9, v10

    .line 720
    move-object/from16 v28, v11

    .line 722
    move v8, v12

    .line 723
    move-object v10, v13

    .line 724
    move v12, v8

    .line 725
    move-object v13, v10

    .line 726
    move-object/from16 v11, v28

    .line 728
    move v10, v9

    .line 729
    move-object/from16 v9, p1

    .line 731
    goto/16 :goto_6
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "AutofillManagerServiceImpl: [userId="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", component="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 20
    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 29
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    const-string p0, "]"

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public final updateLocked(Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->forceRemoveAllSessionsLocked()V

    .line 4
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 24
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/server/autofill/Session;

    .line 34
    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sendStateToClients(Z)V

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateRemoteAugmentedAutofillService()V

    .line 47
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 50
    return p1
.end method

.method public final updateRemoteAugmentedAutofillService()V
    .locals 5

    .line 1
    const-string/jumbo v0, "updateRemoteAugmentedAutofillService(): "

    .line 4
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 9
    if-eqz v2, :cond_2

    .line 11
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 13
    if-eqz v2, :cond_0

    .line 15
    const-string v2, "AutofillManagerServiceImpl"

    .line 17
    const-string/jumbo v3, "updateRemoteAugmentedAutofillService(): destroying old remote service"

    .line 20
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->forceRemoveForAugmentedOnlySessionsLocked()V

    .line 29
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 31
    invoke-virtual {v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 34
    const/4 v2, 0x0

    .line 35
    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 37
    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 39
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 41
    move-object v3, v2

    .line 42
    check-cast v3, Lcom/android/server/autofill/AutofillManagerService;

    .line 44
    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 46
    if-eqz v3, :cond_1

    .line 48
    const-string v3, "AutofillManagerServiceImpl"

    .line 50
    const-string/jumbo v4, "resetting augmented autofill whitelist"

    .line 53
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_1
    check-cast v2, Lcom/android/server/autofill/AutofillManagerService;

    .line 58
    iget-object v2, v2, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    .line 60
    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 62
    invoke-virtual {v2, v3}, Lcom/android/internal/infra/GlobalWhitelistState;->resetWhitelist(I)V

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAugmentedAutofillServiceAvailableLocked()Z

    .line 68
    move-result v2

    .line 69
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 71
    if-eqz v3, :cond_3

    .line 73
    const-string v3, "AutofillManagerServiceImpl"

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_3
    if-eqz v2, :cond_4

    .line 92
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 98
    :cond_4
    monitor-exit v1

    .line 99
    return-void

    .line 100
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p0
.end method

.method public final updateRemoteFieldClassificationService()V
    .locals 5

    .line 1
    const-string/jumbo v0, "updateRemoteFieldClassificationService(): "

    .line 4
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 9
    if-eqz v2, :cond_1

    .line 11
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 13
    if-eqz v2, :cond_0

    .line 15
    const-string v2, "AutofillManagerServiceImpl"

    .line 17
    const-string/jumbo v3, "updateRemoteFieldClassificationService(): destroying old remote service"

    .line 20
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 28
    invoke-virtual {v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 31
    const/4 v2, 0x0

    .line 32
    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 34
    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationServiceAvailableLocked()Z

    .line 39
    move-result v2

    .line 40
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 42
    if-eqz v3, :cond_2

    .line 44
    const-string v3, "AutofillManagerServiceImpl"

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_2
    if-eqz v2, :cond_3

    .line 63
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteFieldClassificationServiceLocked()Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 69
    :cond_3
    monitor-exit v1

    .line 70
    return-void

    .line 71
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final updateSessionLocked(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Lcom/android/server/autofill/Session;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    iget p0, v0, Lcom/android/server/autofill/Session;->uid:I

    .line 14
    if-eq p0, p5, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v1, p2

    .line 18
    move-object v2, p3

    .line 19
    move-object v3, p4

    .line 20
    move v4, p6

    .line 21
    move v5, p7

    .line 22
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/Session;->updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 25
    return-void

    .line 26
    :cond_1
    :goto_0
    and-int/lit8 p0, p7, 0x1

    .line 28
    const-string p3, "AutofillManagerServiceImpl"

    .line 30
    if-eqz p0, :cond_3

    .line 32
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 34
    if-eqz p0, :cond_2

    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo p4, "restarting session "

    .line 41
    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string p1, " due to manual request on "

    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    invoke-static {p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_2
    return-void

    .line 63
    :cond_3
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 65
    if-eqz p0, :cond_4

    .line 67
    const-string/jumbo p0, "updateSessionLocked(): session gone for "

    .line 70
    const-string p2, "("

    .line 72
    const-string p4, ")"

    .line 74
    invoke-static {p1, p5, p0, p2, p4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    invoke-static {p3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_4
    return-void
.end method
