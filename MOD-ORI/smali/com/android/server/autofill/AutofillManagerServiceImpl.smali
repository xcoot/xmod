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

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sRandom:Ljava/util/Random;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerService;Ljava/lang/Object;Landroid/util/LocalLog;Landroid/util/LocalLog;ILcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;ZLcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/android/internal/logging/MetricsLogger;

    .line 5
    .line 6
    invoke-direct {p2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 10
    .line 11
    new-instance p2, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {p2, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance p2, Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 30
    .line 31
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    .line 34
    .line 35
    iput-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 36
    .line 37
    iput-object p4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mWtfHistory:Landroid/util/LocalLog;

    .line 38
    .line 39
    iput-object p6, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 40
    .line 41
    new-instance p2, Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p2, p1, p5}, Lcom/android/server/autofill/FieldClassificationStrategy;-><init>(Landroid/content/Context;I)V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 51
    .line 52
    iput-object p7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 53
    .line 54
    const-class p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 63
    .line 64
    const-class p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContentCaptureManagerInternal:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 73
    .line 74
    iput-object p9, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 75
    .line 76
    invoke-virtual {p0, p8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateLocked(Z)Z

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final addClientLocked(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;Z)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const v2, 0x1040316

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 31
    .line 32
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

    .line 37
    .line 38
    const-string v3, "AutofillManagerServiceImpl"

    .line 39
    .line 40
    const-string v4, "Invalid CredentialAutofillService"

    .line 41
    .line 42
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 v3, 0x0

    .line 46
    if-nez p3, :cond_3

    .line 47
    .line 48
    iget-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 49
    .line 50
    if-nez p3, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {p3}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_1
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-eqz p3, :cond_3

    .line 66
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

    .line 72
    .line 73
    if-nez p3, :cond_4

    .line 74
    .line 75
    new-instance p3, Landroid/os/RemoteCallbackList;

    .line 76
    .line 77
    invoke-direct {p3}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 81
    .line 82
    :cond_4
    iget-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 83
    .line 84
    invoke-virtual {p3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    monitor-exit v0

    .line 94
    const/4 p0, 0x1

    .line 95
    return p0

    .line 96
    :cond_5
    if-eqz p2, :cond_6

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAugmentedAutofillServiceAvailableLocked()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_6

    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 105
    .line 106
    check-cast p1, Lcom/android/server/autofill/AutofillManagerService;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    .line 109
    .line 110
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 111
    .line 112
    invoke-virtual {p1, p0, p2}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->isWhitelisted(ILandroid/content/ComponentName;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_6

    .line 117
    .line 118
    monitor-exit v0

    .line 119
    const/16 p0, 0x8

    .line 120
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

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AutofillManagerServiceImpl"

    .line 6
    .line 7
    const-string/jumbo v1, "destroyLocked()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetExtServiceLocked()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-instance v1, Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    move v3, v2

    .line 29
    :goto_0
    if-ge v3, v0, :cond_2

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/android/server/autofill/Session;

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/android/server/autofill/Session;->destroyLocked()Lcom/android/server/autofill/RemoteFillService;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-ge v2, v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/android/server/autofill/RemoteFillService;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sendStateToClients(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 87
    .line 88
    :cond_4
    return-void
.end method

.method public final disableAutofillForActivity(Landroid/content/ComponentName;JIZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    add-long/2addr v1, p2

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long v3, v1, v3

    .line 12
    .line 13
    if-gez v3, :cond_0

    .line 14
    .line 15
    const-wide v1, 0x7fffffffffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 21
    .line 22
    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 23
    .line 24
    invoke-virtual {v3, p1, v1, v2, v4}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->addDisabledActivityLocked(Landroid/content/ComponentName;JI)V

    .line 25
    .line 26
    .line 27
    const-wide/32 v1, 0x7fffffff

    .line 28
    .line 29
    .line 30
    cmp-long v1, p2, v1

    .line 31
    .line 32
    if-lez v1, :cond_1

    .line 33
    .line 34
    const p2, 0x7fffffff

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    long-to-int p2, p2

    .line 39
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    const/16 v1, 0x4d0

    .line 44
    .line 45
    invoke-static {v1, p1, p3, p4, p5}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const/16 p3, 0x479

    .line 54
    .line 55
    invoke-virtual {p1, p3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 62
    .line 63
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    add-long/2addr v1, p3

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long v3, v1, v3

    .line 12
    .line 13
    if-gez v3, :cond_0

    .line 14
    .line 15
    const-wide v1, 0x7fffffffffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 21
    .line 22
    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 23
    .line 24
    invoke-virtual {v3, v4, p1, v1, v2}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->addDisabledAppLocked(ILjava/lang/String;J)V

    .line 25
    .line 26
    .line 27
    const-wide/32 v1, 0x7fffffff

    .line 28
    .line 29
    .line 30
    cmp-long v1, p3, v1

    .line 31
    .line 32
    if-lez v1, :cond_1

    .line 33
    .line 34
    const p3, 0x7fffffff

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    long-to-int p3, p3

    .line 39
    :goto_0
    iget-object p4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/16 v1, 0x4cf

    .line 46
    .line 47
    invoke-static {v1, p2, p0, p5}, Lcom/android/server/autofill/Helper;->newLogMaker(IILjava/lang/String;Z)Landroid/metrics/LogMaker;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/16 p2, 0x479

    .line 60
    .line 61
    invoke-virtual {p0, p2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p4, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 66
    .line 67
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

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "disableOwnedServices("

    .line 5
    .line 6
    .line 7
    const-string v2, "): "

    .line 8
    .line 9
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "AutofillManagerServiceImpl"

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {v1}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 37
    .line 38
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 39
    .line 40
    if-eq v3, p1, :cond_1

    .line 41
    .line 42
    const-string/jumbo v0, "disableOwnedServices(): ignored when called by UID "

    .line 43
    .line 44
    .line 45
    const-string v3, " instead of "

    .line 46
    .line 47
    invoke-static {p1, v0, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 52
    .line 53
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, " for service "

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 64
    .line 65
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_2

    .line 97
    .line 98
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 99
    .line 100
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const/16 v1, 0x46f

    .line 105
    .line 106
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v0, "autofill_service"

    .line 120
    .line 121
    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->forceRemoveAllSessionsLocked()V

    .line 128
    .line 129
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

    .line 134
    .line 135
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v0, ") does not match Settings ("

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string p1, ")"

    .line 150
    .line 151
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .line 160
    .line 161
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    .line 167
    .line 168
    throw p0
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "    "

    .line 6
    .line 7
    invoke-super/range {p0 .. p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 8
    .line 9
    .line 10
    const-string v3, "      "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v4, "UID: "

    .line 16
    .line 17
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceUidLocked()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v4, "Autofill Service Info: "

    .line 31
    .line 32
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 36
    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    const-string v4, "N/A"

    .line 40
    .line 41
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 46
    .line 47
    .line 48
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 49
    .line 50
    invoke-virtual {v4, v3, v1}, Landroid/service/autofill/AutofillServiceInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v4, "Default component: "

    .line 57
    .line 58
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v4, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const v5, 0x104030c

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string/jumbo v4, "mAugmentedAutofillName: "

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v4, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 93
    .line 94
    check-cast v4, Lcom/android/server/autofill/AutofillManagerService;

    .line 95
    .line 96
    iget-object v4, v4, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 97
    .line 98
    iget v5, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 99
    .line 100
    invoke-virtual {v4, v5, v1}, Lcom/android/server/infra/ServiceNameBaseResolver;->dumpShort(ILjava/io/PrintWriter;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 104
    .line 105
    .line 106
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 107
    .line 108
    if-eqz v4, :cond_1

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v4, "RemoteAugmentedAutofillService: "

    .line 114
    .line 115
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 119
    .line 120
    invoke-virtual {v4, v3, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 124
    .line 125
    if-eqz v4, :cond_2

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v4, "RemoteAugmentedAutofillServiceInfo: "

    .line 131
    .line 132
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 136
    .line 137
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string/jumbo v4, "mFieldClassificationService for system detection"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v4, "Default component: "

    .line 156
    .line 157
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v4, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 161
    .line 162
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    const v5, 0x104031c

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v4, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 180
    .line 181
    check-cast v4, Lcom/android/server/autofill/AutofillManagerService;

    .line 182
    .line 183
    iget-object v4, v4, Lcom/android/server/autofill/AutofillManagerService;->mFieldClassificationResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 184
    .line 185
    iget v5, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 186
    .line 187
    invoke-virtual {v4, v5, v1}, Lcom/android/server/infra/ServiceNameBaseResolver;->dumpShort(ILjava/io/PrintWriter;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 191
    .line 192
    .line 193
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 194
    .line 195
    if-eqz v4, :cond_3

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string v4, "RemoteFieldClassificationService: "

    .line 201
    .line 202
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 206
    .line 207
    invoke-virtual {v4, v3, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_3
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const-string/jumbo v4, "mRemoteFieldClassificationService: null"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :goto_1
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 221
    .line 222
    if-eqz v4, :cond_4

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const-string v4, "RemoteFieldClassificationServiceInfo: "

    .line 228
    .line 229
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 233
    .line 234
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_4
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string/jumbo v4, "mRemoteFieldClassificationServiceInfo: null"

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const-string v4, "Field classification enabled: "

    .line 254
    .line 255
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    const-string v4, "Compat pkgs: "

    .line 269
    .line 270
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 274
    .line 275
    if-eqz v4, :cond_5

    .line 276
    .line 277
    invoke-virtual {v4}, Landroid/service/autofill/AutofillServiceInfo;->getCompatibilityPackages()Landroid/util/ArrayMap;

    .line 278
    .line 279
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

    .line 284
    .line 285
    const-string v4, "N/A"

    .line 286
    .line 287
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_6
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    :goto_4
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    const-string v4, "Inline Suggestions Enabled: "

    .line 298
    .line 299
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 303
    .line 304
    if-eqz v4, :cond_7

    .line 305
    .line 306
    invoke-virtual {v4}, Landroid/service/autofill/AutofillServiceInfo;->isInlineSuggestionsEnabled()Z

    .line 307
    .line 308
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

    .line 313
    .line 314
    invoke-static {v1, v2, v6, v4}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 315
    .line 316
    .line 317
    iget-wide v6, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    .line 318
    .line 319
    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 320
    .line 321
    .line 322
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 323
    .line 324
    iget v6, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 325
    .line 326
    iget-object v7, v4, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 327
    .line 328
    monitor-enter v7

    .line 329
    :try_start_0
    iget-object v4, v4, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 330
    .line 331
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    check-cast v4, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 336
    .line 337
    if-eqz v4, :cond_8

    .line 338
    .line 339
    invoke-virtual {v4, v1}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 340
    .line 341
    .line 342
    goto :goto_6

    .line 343
    :catchall_0
    move-exception v0

    .line 344
    goto/16 :goto_1b

    .line 345
    .line 346
    :cond_8
    :goto_6
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 348
    .line 349
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    if-nez v4, :cond_a

    .line 354
    .line 355
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const-string v4, "No sessions"

    .line 359
    .line 360
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    :cond_9
    const/4 v11, 0x0

    .line 364
    goto/16 :goto_14

    .line 365
    .line 366
    :cond_a
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 370
    .line 371
    .line 372
    const-string v6, " sessions:"

    .line 373
    .line 374
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    const/4 v6, 0x0

    .line 378
    :goto_7
    if-ge v6, v4, :cond_9

    .line 379
    .line 380
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    const-string v7, "#"

    .line 384
    .line 385
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    add-int/lit8 v7, v6, 0x1

    .line 389
    .line 390
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 391
    .line 392
    .line 393
    iget-object v8, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 394
    .line 395
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v6

    .line 399
    check-cast v6, Lcom/android/server/autofill/Session;

    .line 400
    .line 401
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    const-string v8, "        "

    .line 405
    .line 406
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const-string/jumbo v9, "id: "

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget v9, v6, Lcom/android/server/autofill/Session;->id:I

    .line 416
    .line 417
    const-string/jumbo v10, "uid: "

    .line 418
    .line 419
    .line 420
    invoke-static {v9, v1, v3, v10}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    iget v9, v6, Lcom/android/server/autofill/Session;->uid:I

    .line 424
    .line 425
    const-string/jumbo v10, "taskId: "

    .line 426
    .line 427
    .line 428
    invoke-static {v9, v1, v3, v10}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    iget v9, v6, Lcom/android/server/autofill/Session;->taskId:I

    .line 432
    .line 433
    const-string/jumbo v10, "flags: "

    .line 434
    .line 435
    .line 436
    invoke-static {v9, v1, v3, v10}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    iget v9, v6, Lcom/android/server/autofill/Session;->mFlags:I

    .line 440
    .line 441
    const-string/jumbo v10, "displayId: "

    .line 442
    .line 443
    .line 444
    invoke-static {v9, v1, v3, v10}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    iget-object v9, v6, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    .line 448
    .line 449
    invoke-virtual {v9}, Landroid/content/Context;->getDisplayId()I

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    const-string/jumbo v9, "state: "

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    iget v9, v6, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 466
    .line 467
    invoke-static {v9}, Lcom/android/server/autofill/Session;->sessionStateAsString(I)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v9

    .line 471
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    const-string/jumbo v9, "mComponentName: "

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    iget-object v9, v6, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 484
    .line 485
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    const-string/jumbo v9, "mActivityToken: "

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    iget-object v9, v6, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 498
    .line 499
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    const-string/jumbo v9, "mStartTime: "

    .line 506
    .line 507
    .line 508
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    iget-wide v9, v6, Lcom/android/server/autofill/Session;->mStartTime:J

    .line 512
    .line 513
    const-string v11, "Time to show UI: "

    .line 514
    .line 515
    invoke-static {v9, v10, v1, v3, v11}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    iget-wide v9, v6, Lcom/android/server/autofill/Session;->mUiShownTime:J

    .line 519
    .line 520
    const-wide/16 v11, 0x0

    .line 521
    .line 522
    cmp-long v11, v9, v11

    .line 523
    .line 524
    const-string v12, "N/A"

    .line 525
    .line 526
    if-nez v11, :cond_b

    .line 527
    .line 528
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    goto :goto_8

    .line 532
    :cond_b
    iget-wide v13, v6, Lcom/android/server/autofill/Session;->mStartTime:J

    .line 533
    .line 534
    sub-long/2addr v9, v13

    .line 535
    invoke-static {v9, v10, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 539
    .line 540
    .line 541
    :goto_8
    iget-object v9, v6, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 542
    .line 543
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 544
    .line 545
    .line 546
    move-result v9

    .line 547
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    const-string/jumbo v10, "mSessionLogs: "

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 557
    .line 558
    .line 559
    const/4 v10, 0x0

    .line 560
    :goto_9
    const/16 v11, 0x23

    .line 561
    .line 562
    if-ge v10, v9, :cond_12

    .line 563
    .line 564
    iget-object v13, v6, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 565
    .line 566
    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->keyAt(I)I

    .line 567
    .line 568
    .line 569
    move-result v13

    .line 570
    iget-object v14, v6, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 571
    .line 572
    invoke-virtual {v14, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v14

    .line 576
    check-cast v14, Landroid/metrics/LogMaker;

    .line 577
    .line 578
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(C)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 585
    .line 586
    .line 587
    const-string v11, ": req="

    .line 588
    .line 589
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 593
    .line 594
    .line 595
    const-string v11, ", log="

    .line 596
    .line 597
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    const-string v11, "CAT="

    .line 601
    .line 602
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v14}, Landroid/metrics/LogMaker;->getCategory()I

    .line 606
    .line 607
    .line 608
    move-result v11

    .line 609
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 610
    .line 611
    .line 612
    const-string v11, ", TYPE="

    .line 613
    .line 614
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v14}, Landroid/metrics/LogMaker;->getType()I

    .line 618
    .line 619
    .line 620
    move-result v11

    .line 621
    const-string v13, "UNSUPPORTED"

    .line 622
    .line 623
    const/4 v15, 0x2

    .line 624
    if-eq v11, v15, :cond_e

    .line 625
    .line 626
    const/16 v15, 0xa

    .line 627
    .line 628
    if-eq v11, v15, :cond_d

    .line 629
    .line 630
    const/16 v15, 0xb

    .line 631
    .line 632
    if-eq v11, v15, :cond_c

    .line 633
    .line 634
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    goto :goto_a

    .line 638
    :cond_c
    const-string v15, "FAILURE"

    .line 639
    .line 640
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    goto :goto_a

    .line 644
    :cond_d
    const-string v15, "SUCCESS"

    .line 645
    .line 646
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    goto :goto_a

    .line 650
    :cond_e
    const-string v15, "CLOSE"

    .line 651
    .line 652
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    :goto_a
    const/16 v15, 0x28

    .line 656
    .line 657
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 661
    .line 662
    .line 663
    const/16 v11, 0x29

    .line 664
    .line 665
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(C)V

    .line 666
    .line 667
    .line 668
    const-string v5, ", PKG="

    .line 669
    .line 670
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v14}, Landroid/metrics/LogMaker;->getPackageName()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v5

    .line 677
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    const-string v5, ", SERVICE="

    .line 681
    .line 682
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    const/16 v5, 0x38c

    .line 686
    .line 687
    invoke-virtual {v14, v5}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v5

    .line 691
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 692
    .line 693
    .line 694
    const-string v5, ", ORDINAL="

    .line 695
    .line 696
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    const/16 v5, 0x5ae

    .line 700
    .line 701
    invoke-virtual {v14, v5}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v5

    .line 705
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 706
    .line 707
    .line 708
    const-string v5, "FLAGS"

    .line 709
    .line 710
    const/16 v11, 0x5ac

    .line 711
    .line 712
    invoke-static {v1, v14, v5, v11}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 713
    .line 714
    .line 715
    const-string v5, "NUM_DATASETS"

    .line 716
    .line 717
    const/16 v11, 0x38d

    .line 718
    .line 719
    invoke-static {v1, v14, v5, v11}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 720
    .line 721
    .line 722
    const-string v5, "UI_LATENCY"

    .line 723
    .line 724
    const/16 v11, 0x479

    .line 725
    .line 726
    invoke-static {v1, v14, v5, v11}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 727
    .line 728
    .line 729
    const/16 v5, 0x5ad

    .line 730
    .line 731
    invoke-virtual {v14, v5}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    instance-of v11, v5, Ljava/lang/Number;

    .line 736
    .line 737
    if-nez v11, :cond_f

    .line 738
    .line 739
    const/4 v5, 0x0

    .line 740
    goto :goto_b

    .line 741
    :cond_f
    check-cast v5, Ljava/lang/Number;

    .line 742
    .line 743
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 744
    .line 745
    .line 746
    move-result v5

    .line 747
    :goto_b
    if-eqz v5, :cond_11

    .line 748
    .line 749
    const-string v11, ", AUTH_STATUS="

    .line 750
    .line 751
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    const/16 v11, 0x390

    .line 755
    .line 756
    if-eq v5, v11, :cond_10

    .line 757
    .line 758
    packed-switch v5, :pswitch_data_0

    .line 759
    .line 760
    .line 761
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    goto :goto_c

    .line 765
    :pswitch_0
    const-string v11, "INVALID_AUTHENTICATION"

    .line 766
    .line 767
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    goto :goto_c

    .line 771
    :pswitch_1
    const-string v11, "INVALID_DATASET_AUTHENTICATION"

    .line 772
    .line 773
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    goto :goto_c

    .line 777
    :pswitch_2
    const-string v11, "DATASET_AUTHENTICATED"

    .line 778
    .line 779
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    goto :goto_c

    .line 783
    :cond_10
    const-string v11, "AUTHENTICATED"

    .line 784
    .line 785
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    :goto_c
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 792
    .line 793
    .line 794
    const/16 v5, 0x29

    .line 795
    .line 796
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 797
    .line 798
    .line 799
    :cond_11
    const-string v5, "FC_IDS"

    .line 800
    .line 801
    const/16 v11, 0x4f7

    .line 802
    .line 803
    invoke-static {v1, v14, v5, v11}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 804
    .line 805
    .line 806
    const-string v5, "COMPAT_MODE"

    .line 807
    .line 808
    const/16 v11, 0x586

    .line 809
    .line 810
    invoke-static {v1, v14, v5, v11}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 811
    .line 812
    .line 813
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 814
    .line 815
    .line 816
    add-int/lit8 v10, v10, 0x1

    .line 817
    .line 818
    goto/16 :goto_9

    .line 819
    .line 820
    :cond_12
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    const-string/jumbo v5, "mResponses: "

    .line 824
    .line 825
    .line 826
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 830
    .line 831
    const-string/jumbo v9, "null"

    .line 832
    .line 833
    .line 834
    if-nez v5, :cond_13

    .line 835
    .line 836
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    goto :goto_e

    .line 840
    :cond_13
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 841
    .line 842
    .line 843
    move-result v5

    .line 844
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 845
    .line 846
    .line 847
    const/4 v5, 0x0

    .line 848
    :goto_d
    iget-object v10, v6, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 849
    .line 850
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 851
    .line 852
    .line 853
    move-result v10

    .line 854
    if-ge v5, v10, :cond_14

    .line 855
    .line 856
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(C)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 863
    .line 864
    .line 865
    const/16 v10, 0x20

    .line 866
    .line 867
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 868
    .line 869
    .line 870
    iget-object v10, v6, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 871
    .line 872
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v10

    .line 876
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 877
    .line 878
    .line 879
    add-int/lit8 v5, v5, 0x1

    .line 880
    .line 881
    goto :goto_d

    .line 882
    :cond_14
    :goto_e
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    const-string/jumbo v5, "mCurrentViewId: "

    .line 886
    .line 887
    .line 888
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 892
    .line 893
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    const-string/jumbo v5, "mDestroyed: "

    .line 900
    .line 901
    .line 902
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    iget-boolean v5, v6, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 906
    .line 907
    const-string/jumbo v10, "mShowingSaveUi: "

    .line 908
    .line 909
    .line 910
    invoke-static {v1, v3, v10, v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 911
    .line 912
    .line 913
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 914
    .line 915
    iget-boolean v5, v5, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    .line 916
    .line 917
    const-string/jumbo v10, "mPendingSaveUi: "

    .line 918
    .line 919
    .line 920
    invoke-static {v1, v3, v10, v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 921
    .line 922
    .line 923
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 924
    .line 925
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 926
    .line 927
    .line 928
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 929
    .line 930
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 931
    .line 932
    .line 933
    move-result v5

    .line 934
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    const-string/jumbo v10, "mViewStates size: "

    .line 938
    .line 939
    .line 940
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    iget-object v10, v6, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 944
    .line 945
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 946
    .line 947
    .line 948
    move-result v10

    .line 949
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 950
    .line 951
    .line 952
    const/4 v10, 0x0

    .line 953
    :goto_f
    if-ge v10, v5, :cond_1d

    .line 954
    .line 955
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    const-string v11, "ViewState at #"

    .line 959
    .line 960
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 964
    .line 965
    .line 966
    iget-object v11, v6, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 967
    .line 968
    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    move-result-object v11

    .line 972
    check-cast v11, Lcom/android/server/autofill/ViewState;

    .line 973
    .line 974
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 975
    .line 976
    .line 977
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 978
    .line 979
    .line 980
    const-string/jumbo v13, "id:"

    .line 981
    .line 982
    .line 983
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 987
    .line 988
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 989
    .line 990
    .line 991
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    .line 992
    .line 993
    if-eqz v13, :cond_15

    .line 994
    .line 995
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 996
    .line 997
    .line 998
    const-string/jumbo v13, "datasetId:"

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    .line 1005
    .line 1006
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1007
    .line 1008
    .line 1009
    :cond_15
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    const-string/jumbo v13, "state:"

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v11}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v13

    .line 1022
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1026
    .line 1027
    .line 1028
    const-string/jumbo v13, "is primary credential:"

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    iget-boolean v13, v11, Lcom/android/server/autofill/ViewState;->mIsPrimaryCredential:Z

    .line 1035
    .line 1036
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Z)V

    .line 1037
    .line 1038
    .line 1039
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 1040
    .line 1041
    if-eqz v13, :cond_16

    .line 1042
    .line 1043
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1044
    .line 1045
    .line 1046
    const-string/jumbo v13, "primary response id:"

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 1053
    .line 1054
    invoke-virtual {v13}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 1055
    .line 1056
    .line 1057
    move-result v13

    .line 1058
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(I)V

    .line 1059
    .line 1060
    .line 1061
    :cond_16
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 1062
    .line 1063
    if-eqz v13, :cond_17

    .line 1064
    .line 1065
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    .line 1067
    .line 1068
    const-string/jumbo v13, "secondary response id:"

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1072
    .line 1073
    .line 1074
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 1075
    .line 1076
    invoke-virtual {v13}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 1077
    .line 1078
    .line 1079
    move-result v13

    .line 1080
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(I)V

    .line 1081
    .line 1082
    .line 1083
    :cond_17
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 1084
    .line 1085
    if-eqz v13, :cond_18

    .line 1086
    .line 1087
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1088
    .line 1089
    .line 1090
    const-string/jumbo v13, "currentValue:"

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1094
    .line 1095
    .line 1096
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 1097
    .line 1098
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1099
    .line 1100
    .line 1101
    :cond_18
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 1102
    .line 1103
    if-eqz v13, :cond_19

    .line 1104
    .line 1105
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    const-string v13, "autofilledValue:"

    .line 1109
    .line 1110
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1111
    .line 1112
    .line 1113
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 1114
    .line 1115
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1116
    .line 1117
    .line 1118
    :cond_19
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    .line 1119
    .line 1120
    if-eqz v13, :cond_1a

    .line 1121
    .line 1122
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1123
    .line 1124
    .line 1125
    const-string/jumbo v13, "candidateSaveValue:"

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1129
    .line 1130
    .line 1131
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    .line 1132
    .line 1133
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1134
    .line 1135
    .line 1136
    :cond_1a
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    .line 1137
    .line 1138
    if-eqz v13, :cond_1b

    .line 1139
    .line 1140
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1141
    .line 1142
    .line 1143
    const-string/jumbo v13, "sanitizedValue:"

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1147
    .line 1148
    .line 1149
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    .line 1150
    .line 1151
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1152
    .line 1153
    .line 1154
    :cond_1b
    iget-object v13, v11, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    .line 1155
    .line 1156
    if-eqz v13, :cond_1c

    .line 1157
    .line 1158
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1159
    .line 1160
    .line 1161
    const-string/jumbo v13, "virtualBounds:"

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1165
    .line 1166
    .line 1167
    iget-object v11, v11, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    .line 1168
    .line 1169
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1170
    .line 1171
    .line 1172
    :cond_1c
    add-int/lit8 v10, v10, 0x1

    .line 1173
    .line 1174
    goto/16 :goto_f

    .line 1175
    .line 1176
    :cond_1d
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1177
    .line 1178
    .line 1179
    const-string/jumbo v5, "mContexts: "

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1183
    .line 1184
    .line 1185
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 1186
    .line 1187
    if-eqz v5, :cond_20

    .line 1188
    .line 1189
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1190
    .line 1191
    .line 1192
    move-result v5

    .line 1193
    const/4 v9, 0x0

    .line 1194
    :goto_10
    if-ge v9, v5, :cond_1f

    .line 1195
    .line 1196
    iget-object v10, v6, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 1197
    .line 1198
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v10

    .line 1202
    check-cast v10, Landroid/service/autofill/FillContext;

    .line 1203
    .line 1204
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1208
    .line 1209
    .line 1210
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1211
    .line 1212
    if-eqz v11, :cond_1e

    .line 1213
    .line 1214
    const-string v11, "AssistStructure dumped at logcat)"

    .line 1215
    .line 1216
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v10}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v10

    .line 1223
    const/4 v11, 0x0

    .line 1224
    invoke-virtual {v10, v11}, Landroid/app/assist/AssistStructure;->dump(Z)V

    .line 1225
    .line 1226
    .line 1227
    goto :goto_11

    .line 1228
    :cond_1e
    const/4 v11, 0x0

    .line 1229
    :goto_11
    add-int/lit8 v9, v9, 0x1

    .line 1230
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

    .line 1236
    .line 1237
    .line 1238
    :goto_12
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1239
    .line 1240
    .line 1241
    const-string/jumbo v5, "mHasCallback: "

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1245
    .line 1246
    .line 1247
    iget-boolean v5, v6, Lcom/android/server/autofill/Session;->mHasCallback:Z

    .line 1248
    .line 1249
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1250
    .line 1251
    .line 1252
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 1253
    .line 1254
    if-eqz v5, :cond_21

    .line 1255
    .line 1256
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1257
    .line 1258
    .line 1259
    const-string/jumbo v5, "mClientState: "

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1263
    .line 1264
    .line 1265
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 1266
    .line 1267
    invoke-virtual {v5}, Landroid/os/Bundle;->getSize()I

    .line 1268
    .line 1269
    .line 1270
    move-result v5

    .line 1271
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1272
    .line 1273
    .line 1274
    const-string v5, " bytes"

    .line 1275
    .line 1276
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1277
    .line 1278
    .line 1279
    :cond_21
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1280
    .line 1281
    .line 1282
    const-string/jumbo v5, "mCompatMode: "

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1286
    .line 1287
    .line 1288
    iget-boolean v5, v6, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 1289
    .line 1290
    const-string/jumbo v8, "mUrlBar: "

    .line 1291
    .line 1292
    .line 1293
    invoke-static {v1, v3, v8, v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1294
    .line 1295
    .line 1296
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    .line 1297
    .line 1298
    if-nez v5, :cond_22

    .line 1299
    .line 1300
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    .line 1302
    .line 1303
    goto :goto_13

    .line 1304
    :cond_22
    const-string/jumbo v5, "id="

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1308
    .line 1309
    .line 1310
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    .line 1311
    .line 1312
    invoke-virtual {v5}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v5

    .line 1316
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1317
    .line 1318
    .line 1319
    const-string v5, " domain="

    .line 1320
    .line 1321
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1322
    .line 1323
    .line 1324
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    .line 1325
    .line 1326
    invoke-virtual {v5}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v5

    .line 1330
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1331
    .line 1332
    .line 1333
    const-string v5, " text="

    .line 1334
    .line 1335
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1336
    .line 1337
    .line 1338
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    .line 1339
    .line 1340
    invoke-virtual {v5}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v5

    .line 1344
    if-nez v5, :cond_23

    .line 1345
    .line 1346
    const-string/jumbo v5, "null"

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    .line 1351
    .line 1352
    goto :goto_13

    .line 1353
    :cond_23
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 1354
    .line 1355
    .line 1356
    move-result v5

    .line 1357
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1358
    .line 1359
    .line 1360
    const-string v5, "_chars"

    .line 1361
    .line 1362
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1363
    .line 1364
    .line 1365
    :goto_13
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1366
    .line 1367
    .line 1368
    const-string/jumbo v5, "mSaveOnAllViewsInvisible: "

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1372
    .line 1373
    .line 1374
    iget-boolean v5, v6, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 1375
    .line 1376
    const-string/jumbo v8, "mSelectedDatasetIds: "

    .line 1377
    .line 1378
    .line 1379
    invoke-static {v1, v3, v8, v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1380
    .line 1381
    .line 1382
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 1383
    .line 1384
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1385
    .line 1386
    .line 1387
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 1388
    .line 1389
    iget-boolean v5, v5, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 1390
    .line 1391
    if-eqz v5, :cond_24

    .line 1392
    .line 1393
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1394
    .line 1395
    .line 1396
    const-string v5, "For Augmented Autofill Only"

    .line 1397
    .line 1398
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1399
    .line 1400
    .line 1401
    :cond_24
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 1402
    .line 1403
    iget-boolean v5, v5, Lcom/android/server/autofill/Session$SessionFlags;->mFillDialogDisabled:Z

    .line 1404
    .line 1405
    if-eqz v5, :cond_25

    .line 1406
    .line 1407
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1408
    .line 1409
    .line 1410
    const-string v5, "Fill Dialog disabled"

    .line 1411
    .line 1412
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    .line 1414
    .line 1415
    :cond_25
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mLastFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    .line 1416
    .line 1417
    if-eqz v5, :cond_26

    .line 1418
    .line 1419
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1420
    .line 1421
    .line 1422
    const-string v5, "Last Fill Dialog trigger ids: "

    .line 1423
    .line 1424
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1425
    .line 1426
    .line 1427
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 1428
    .line 1429
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1430
    .line 1431
    .line 1432
    :cond_26
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 1433
    .line 1434
    if-eqz v5, :cond_27

    .line 1435
    .line 1436
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1437
    .line 1438
    .line 1439
    const-string/jumbo v5, "has mAugmentedAutofillDestroyer"

    .line 1440
    .line 1441
    .line 1442
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1443
    .line 1444
    .line 1445
    :cond_27
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    .line 1446
    .line 1447
    if-eqz v5, :cond_28

    .line 1448
    .line 1449
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1450
    .line 1451
    .line 1452
    const-string/jumbo v5, "number augmented requests: "

    .line 1453
    .line 1454
    .line 1455
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1456
    .line 1457
    .line 1458
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    .line 1459
    .line 1460
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1461
    .line 1462
    .line 1463
    move-result v5

    .line 1464
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1465
    .line 1466
    .line 1467
    :cond_28
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 1468
    .line 1469
    if-eqz v5, :cond_29

    .line 1470
    .line 1471
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1472
    .line 1473
    .line 1474
    const-string/jumbo v5, "mAugmentedAutofillableIds: "

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1478
    .line 1479
    .line 1480
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 1481
    .line 1482
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1483
    .line 1484
    .line 1485
    :cond_29
    iget-object v5, v6, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 1486
    .line 1487
    if-eqz v5, :cond_2a

    .line 1488
    .line 1489
    invoke-virtual {v5, v3, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1490
    .line 1491
    .line 1492
    :cond_2a
    move v6, v7

    .line 1493
    goto/16 :goto_7

    .line 1494
    .line 1495
    :goto_14
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1496
    .line 1497
    .line 1498
    const-string v4, "Clients: "

    .line 1499
    .line 1500
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1501
    .line 1502
    .line 1503
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 1504
    .line 1505
    if-nez v4, :cond_2b

    .line 1506
    .line 1507
    const-string v4, "N/A"

    .line 1508
    .line 1509
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1510
    .line 1511
    .line 1512
    goto :goto_15

    .line 1513
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1514
    .line 1515
    .line 1516
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 1517
    .line 1518
    invoke-virtual {v4, v1, v3}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1519
    .line 1520
    .line 1521
    :goto_15
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 1522
    .line 1523
    if-eqz v4, :cond_2d

    .line 1524
    .line 1525
    invoke-virtual {v4}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v4

    .line 1529
    if-eqz v4, :cond_2d

    .line 1530
    .line 1531
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 1532
    .line 1533
    invoke-virtual {v4}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v4

    .line 1537
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1538
    .line 1539
    .line 1540
    move-result v4

    .line 1541
    if-nez v4, :cond_2c

    .line 1542
    .line 1543
    goto :goto_17

    .line 1544
    :cond_2c
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1545
    .line 1546
    .line 1547
    const-string v4, "Events of last fill response:"

    .line 1548
    .line 1549
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1553
    .line 1554
    .line 1555
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 1556
    .line 1557
    invoke-virtual {v4}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v4

    .line 1561
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1562
    .line 1563
    .line 1564
    move-result v4

    .line 1565
    move v5, v11

    .line 1566
    :goto_16
    if-ge v5, v4, :cond_2e

    .line 1567
    .line 1568
    iget-object v6, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 1569
    .line 1570
    invoke-virtual {v6}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v6

    .line 1574
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v6

    .line 1578
    check-cast v6, Landroid/service/autofill/FillEventHistory$Event;

    .line 1579
    .line 1580
    const-string v7, "  "

    .line 1581
    .line 1582
    const-string v8, ": eventType="

    .line 1583
    .line 1584
    invoke-static {v5, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v7

    .line 1588
    invoke-virtual {v6}, Landroid/service/autofill/FillEventHistory$Event;->getType()I

    .line 1589
    .line 1590
    .line 1591
    move-result v8

    .line 1592
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1593
    .line 1594
    .line 1595
    const-string v8, " datasetId="

    .line 1596
    .line 1597
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    .line 1599
    .line 1600
    invoke-virtual {v6}, Landroid/service/autofill/FillEventHistory$Event;->getDatasetId()Ljava/lang/String;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v6

    .line 1604
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    .line 1606
    .line 1607
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v6

    .line 1611
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1612
    .line 1613
    .line 1614
    add-int/lit8 v5, v5, 0x1

    .line 1615
    .line 1616
    goto :goto_16

    .line 1617
    :cond_2d
    :goto_17
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1618
    .line 1619
    .line 1620
    const-string v4, "No event on last fill response"

    .line 1621
    .line 1622
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    .line 1624
    .line 1625
    :cond_2e
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1626
    .line 1627
    .line 1628
    const-string v4, "User data: "

    .line 1629
    .line 1630
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1631
    .line 1632
    .line 1633
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    .line 1634
    .line 1635
    if-nez v4, :cond_2f

    .line 1636
    .line 1637
    const-string v4, "N/A"

    .line 1638
    .line 1639
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    .line 1641
    .line 1642
    goto :goto_18

    .line 1643
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1644
    .line 1645
    .line 1646
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    .line 1647
    .line 1648
    invoke-virtual {v4, v3, v1}, Landroid/service/autofill/UserData;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1649
    .line 1650
    .line 1651
    :goto_18
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1652
    .line 1653
    .line 1654
    const-string v2, "Field Classification strategy: "

    .line 1655
    .line 1656
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1657
    .line 1658
    .line 1659
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 1660
    .line 1661
    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceComponentName()Landroid/content/ComponentName;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v2

    .line 1665
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1666
    .line 1667
    .line 1668
    const-string v4, "User ID: "

    .line 1669
    .line 1670
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1671
    .line 1672
    .line 1673
    iget v4, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mUserId:I

    .line 1674
    .line 1675
    const-string v5, "Queued commands: "

    .line 1676
    .line 1677
    invoke-static {v4, v1, v3, v5}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    .line 1679
    .line 1680
    iget-object v4, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    .line 1681
    .line 1682
    const-string v5, "N/A"

    .line 1683
    .line 1684
    if-nez v4, :cond_30

    .line 1685
    .line 1686
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1687
    .line 1688
    .line 1689
    goto :goto_19

    .line 1690
    :cond_30
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1691
    .line 1692
    .line 1693
    move-result v4

    .line 1694
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1695
    .line 1696
    .line 1697
    :goto_19
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1698
    .line 1699
    .line 1700
    const-string v4, "Implementation: "

    .line 1701
    .line 1702
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1703
    .line 1704
    .line 1705
    if-nez v2, :cond_31

    .line 1706
    .line 1707
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1708
    .line 1709
    .line 1710
    goto :goto_1a

    .line 1711
    :cond_31
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v2

    .line 1715
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1716
    .line 1717
    .line 1718
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1719
    .line 1720
    .line 1721
    const-string v2, "Available algorithms: "

    .line 1722
    .line 1723
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1724
    .line 1725
    .line 1726
    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getAvailableAlgorithms()[Ljava/lang/String;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v2

    .line 1730
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v2

    .line 1734
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1735
    .line 1736
    .line 1737
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1738
    .line 1739
    .line 1740
    const-string v2, "Default algorithm: "

    .line 1741
    .line 1742
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1743
    .line 1744
    .line 1745
    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getDefaultAlgorithm()Ljava/lang/String;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v0

    .line 1749
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1750
    .line 1751
    .line 1752
    goto :goto_1a

    .line 1753
    :catch_0
    move-exception v0

    .line 1754
    const-string v2, "ERROR CALLING SERVICE: "

    .line 1755
    .line 1756
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1757
    .line 1758
    .line 1759
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1760
    .line 1761
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

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    const-string v0, "AutofillManagerServiceImpl"

    .line 14
    .line 15
    const-string v1, "Service not enabled"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    move-object/from16 v3, p0

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/server/autofill/Session;

    .line 30
    .line 31
    if-eqz v3, :cond_4d

    .line 32
    .line 33
    iget v4, v3, Lcom/android/server/autofill/Session;->uid:I

    .line 34
    .line 35
    if-eq v1, v4, :cond_1

    .line 36
    .line 37
    goto/16 :goto_23

    .line 38
    .line 39
    :cond_1
    iget-boolean v0, v3, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    const/4 v15, 0x0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    const-string v0, "AutofillSession"

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v5, "Call to Session#showSaveLocked() rejected - session: "

    .line 50
    .line 51
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v5, v3, Lcom/android/server/autofill/Session;->id:I

    .line 55
    .line 56
    const-string v6, " destroyed"

    .line 57
    .line 58
    invoke-static {v4, v5, v6, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 62
    .line 63
    const/16 v4, 0x9

    .line 64
    .line 65
    invoke-virtual {v0, v4}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 74
    .line 75
    invoke-direct {v0, v15, v15, v15}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 76
    .line 77
    .line 78
    :goto_0
    move-object v1, v3

    .line 79
    :goto_1
    move v3, v15

    .line 80
    goto/16 :goto_1d

    .line 81
    .line 82
    :cond_2
    const/4 v0, 0x2

    .line 83
    iput v0, v3, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 84
    .line 85
    const-string/jumbo v4, "showSaveLocked(%s)"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    if-nez v4, :cond_3

    .line 93
    .line 94
    const/4 v13, 0x0

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    move-object v13, v6

    .line 101
    :goto_2
    iget-object v6, v3, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 102
    .line 103
    iget-boolean v6, v6, Lcom/android/server/autofill/Session$SessionFlags;->mScreenHasCredmanField:Z

    .line 104
    .line 105
    const/16 v7, 0xa

    .line 106
    .line 107
    if-eqz v6, :cond_5

    .line 108
    .line 109
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    const-string v0, "AutofillSession"

    .line 114
    .line 115
    const-string v4, "Call to Session#showSaveLocked() rejected - there is credman field in screen"

    .line 116
    .line 117
    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 121
    .line 122
    invoke-virtual {v0, v7}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 123
    .line 124
    .line 125
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 128
    .line 129
    .line 130
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 131
    .line 132
    invoke-direct {v0, v15, v15, v1}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_5
    if-nez v13, :cond_7

    .line 137
    .line 138
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 139
    .line 140
    if-eqz v4, :cond_6

    .line 141
    .line 142
    const-string v4, "AutofillSession"

    .line 143
    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string/jumbo v6, "showSaveLocked("

    .line 147
    .line 148
    .line 149
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget v6, v3, Lcom/android/server/autofill/Session;->id:I

    .line 153
    .line 154
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v6, "): no saveInfo from service"

    .line 158
    .line 159
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    :cond_6
    iget-object v4, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 170
    .line 171
    invoke-virtual {v4, v0}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 172
    .line 173
    .line 174
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 177
    .line 178
    .line 179
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 180
    .line 181
    invoke-direct {v0, v1, v15, v1}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_7
    invoke-virtual {v13}, Landroid/service/autofill/SaveInfo;->getFlags()I

    .line 186
    .line 187
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

    .line 193
    .line 194
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 195
    .line 196
    if-eqz v4, :cond_8

    .line 197
    .line 198
    const-string v4, "AutofillSession"

    .line 199
    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string/jumbo v6, "showSaveLocked("

    .line 203
    .line 204
    .line 205
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget v6, v3, Lcom/android/server/autofill/Session;->id:I

    .line 209
    .line 210
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v6, "): service asked to delay save"

    .line 214
    .line 215
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    :cond_8
    iget-object v4, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 226
    .line 227
    invoke-virtual {v4, v9}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 228
    .line 229
    .line 230
    iget-object v4, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 231
    .line 232
    invoke-virtual {v4}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 233
    .line 234
    .line 235
    new-instance v4, Lcom/android/server/autofill/Session$SaveResult;

    .line 236
    .line 237
    invoke-direct {v4, v0, v15, v15}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 238
    .line 239
    .line 240
    move-object v1, v3

    .line 241
    move-object v0, v4

    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :cond_9
    invoke-static {v13}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    new-instance v6, Landroid/util/ArrayMap;

    .line 249
    .line 250
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 251
    .line 252
    .line 253
    new-instance v10, Landroid/util/ArraySet;

    .line 254
    .line 255
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v13}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    .line 259
    .line 260
    .line 261
    move-result-object v11

    .line 262
    if-eqz v11, :cond_18

    .line 263
    .line 264
    move v12, v15

    .line 265
    move v14, v12

    .line 266
    move/from16 v16, v14

    .line 267
    .line 268
    :goto_3
    array-length v7, v11

    .line 269
    if-ge v12, v7, :cond_17

    .line 270
    .line 271
    aget-object v7, v11, v12

    .line 272
    .line 273
    if-nez v7, :cond_a

    .line 274
    .line 275
    const-string v7, "AutofillSession"

    .line 276
    .line 277
    new-instance v9, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    const-string/jumbo v5, "null autofill id on "

    .line 280
    .line 281
    .line 282
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    invoke-static {v9, v5, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_7

    .line 293
    .line 294
    :cond_a
    invoke-virtual {v10, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    iget-object v5, v3, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 298
    .line 299
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    check-cast v5, Lcom/android/server/autofill/ViewState;

    .line 304
    .line 305
    if-nez v5, :cond_b

    .line 306
    .line 307
    const-string v5, "AutofillSession"

    .line 308
    .line 309
    new-instance v9, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string/jumbo v11, "showSaveLocked(): no ViewState for required "

    .line 312
    .line 313
    .line 314
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v7

    .line 324
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    goto/16 :goto_8

    .line 328
    .line 329
    :cond_b
    iget-object v9, v5, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 330
    .line 331
    if-eqz v9, :cond_c

    .line 332
    .line 333
    invoke-virtual {v9}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    .line 334
    .line 335
    .line 336
    move-result v17

    .line 337
    if-eqz v17, :cond_e

    .line 338
    .line 339
    :cond_c
    iget-object v9, v5, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    .line 340
    .line 341
    if-eqz v9, :cond_d

    .line 342
    .line 343
    invoke-virtual {v9}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    .line 344
    .line 345
    .line 346
    move-result v17

    .line 347
    if-nez v17, :cond_d

    .line 348
    .line 349
    sget-boolean v17, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 350
    .line 351
    if-eqz v17, :cond_e

    .line 352
    .line 353
    const-string v1, "AutofillSession"

    .line 354
    .line 355
    const-string/jumbo v15, "current value is empty, using cached last non-empty value instead"

    .line 356
    .line 357
    .line 358
    invoke-static {v1, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    goto :goto_4

    .line 362
    :cond_d
    invoke-virtual {v3, v7}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    if-eqz v9, :cond_16

    .line 367
    .line 368
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 369
    .line 370
    if-eqz v1, :cond_e

    .line 371
    .line 372
    const-string v1, "AutofillSession"

    .line 373
    .line 374
    new-instance v15, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    const-string v8, "Value of required field "

    .line 377
    .line 378
    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v8, " didn\'t change; using initial value ("

    .line 385
    .line 386
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v8, ") instead"

    .line 393
    .line 394
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v8

    .line 401
    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    :cond_e
    :goto_4
    invoke-virtual {v3, v0, v7, v9}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    if-nez v1, :cond_10

    .line 409
    .line 410
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 411
    .line 412
    if-eqz v1, :cond_f

    .line 413
    .line 414
    const-string v1, "AutofillSession"

    .line 415
    .line 416
    new-instance v5, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    const-string/jumbo v8, "value of required field "

    .line 419
    .line 420
    .line 421
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    const-string v7, " failed sanitization"

    .line 428
    .line 429
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    :cond_f
    :goto_5
    const/4 v15, 0x0

    .line 440
    goto/16 :goto_8

    .line 441
    .line 442
    :cond_10
    iput-object v1, v5, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    .line 443
    .line 444
    invoke-virtual {v6, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    iget-object v5, v5, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 448
    .line 449
    invoke-virtual {v1, v5}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v8

    .line 453
    if-nez v8, :cond_15

    .line 454
    .line 455
    if-nez v5, :cond_13

    .line 456
    .line 457
    invoke-virtual {v3, v7}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    .line 458
    .line 459
    .line 460
    move-result-object v8

    .line 461
    if-eqz v8, :cond_12

    .line 462
    .line 463
    invoke-virtual {v8, v1}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v8

    .line 467
    if-eqz v8, :cond_12

    .line 468
    .line 469
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 470
    .line 471
    if-eqz v8, :cond_11

    .line 472
    .line 473
    const-string v8, "AutofillSession"

    .line 474
    .line 475
    new-instance v9, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    const-string/jumbo v15, "id "

    .line 478
    .line 479
    .line 480
    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    const-string v15, " is part of dataset but initial value didn\'t change: "

    .line 487
    .line 488
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v9

    .line 498
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    :cond_11
    const/4 v8, 0x0

    .line 502
    goto :goto_6

    .line 503
    :cond_12
    iget-object v8, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 504
    .line 505
    iget-object v8, v8, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 506
    .line 507
    new-instance v9, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;

    .line 508
    .line 509
    const/4 v15, 0x0

    .line 510
    invoke-direct {v9, v15}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;-><init>(I)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v8, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 514
    .line 515
    .line 516
    const/4 v8, 0x1

    .line 517
    goto :goto_6

    .line 518
    :cond_13
    const/4 v8, 0x1

    .line 519
    const/16 v16, 0x1

    .line 520
    .line 521
    :goto_6
    if-eqz v8, :cond_15

    .line 522
    .line 523
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 524
    .line 525
    if-eqz v8, :cond_14

    .line 526
    .line 527
    const-string v8, "AutofillSession"

    .line 528
    .line 529
    new-instance v9, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    const-string/jumbo v14, "found a change on required "

    .line 532
    .line 533
    .line 534
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    const-string v7, ": "

    .line 541
    .line 542
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    const-string v5, " => "

    .line 549
    .line 550
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .line 562
    .line 563
    :cond_14
    const/4 v14, 0x1

    .line 564
    :cond_15
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 565
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

    .line 571
    .line 572
    :cond_16
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 573
    .line 574
    if-eqz v1, :cond_f

    .line 575
    .line 576
    const-string v1, "AutofillSession"

    .line 577
    .line 578
    new-instance v5, Ljava/lang/StringBuilder;

    .line 579
    .line 580
    const-string/jumbo v8, "empty value for required "

    .line 581
    .line 582
    .line 583
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v5

    .line 593
    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .line 595
    .line 596
    goto/16 :goto_5

    .line 597
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

    .line 603
    .line 604
    :goto_8
    invoke-virtual {v13}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 609
    .line 610
    if-eqz v5, :cond_1a

    .line 611
    .line 612
    const-string v5, "AutofillSession"

    .line 613
    .line 614
    const-string v7, "allRequiredAreNotEmpty: "

    .line 615
    .line 616
    const-string v8, " hasOptional: "

    .line 617
    .line 618
    invoke-static {v7, v8, v15}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    move-result-object v7

    .line 622
    if-eqz v1, :cond_19

    .line 623
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

    .line 628
    .line 629
    .line 630
    :cond_1a
    if-nez v15, :cond_1b

    .line 631
    .line 632
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 633
    .line 634
    const/4 v5, 0x4

    .line 635
    invoke-virtual {v0, v5}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 636
    .line 637
    .line 638
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 639
    .line 640
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 641
    .line 642
    .line 643
    const/4 v8, 0x3

    .line 644
    goto/16 :goto_d

    .line 645
    .line 646
    :cond_1b
    const/4 v5, 0x4

    .line 647
    if-eqz v1, :cond_27

    .line 648
    .line 649
    if-eqz v14, :cond_1c

    .line 650
    .line 651
    if-nez v16, :cond_27

    .line 652
    .line 653
    :cond_1c
    const/4 v7, 0x0

    .line 654
    :goto_a
    array-length v8, v1

    .line 655
    if-ge v7, v8, :cond_27

    .line 656
    .line 657
    aget-object v8, v1, v7

    .line 658
    .line 659
    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    iget-object v9, v3, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 663
    .line 664
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v9

    .line 668
    check-cast v9, Lcom/android/server/autofill/ViewState;

    .line 669
    .line 670
    if-nez v9, :cond_1d

    .line 671
    .line 672
    const-string v9, "AutofillSession"

    .line 673
    .line 674
    new-instance v11, Ljava/lang/StringBuilder;

    .line 675
    .line 676
    const-string/jumbo v12, "no ViewState for optional "

    .line 677
    .line 678
    .line 679
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v8

    .line 689
    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .line 691
    .line 692
    goto/16 :goto_c

    .line 693
    .line 694
    :cond_1d
    iget v11, v9, Lcom/android/server/autofill/ViewState;->mState:I

    .line 695
    .line 696
    and-int/lit8 v11, v11, 0x8

    .line 697
    .line 698
    if-eqz v11, :cond_24

    .line 699
    .line 700
    iget-object v11, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 701
    .line 702
    if-eqz v11, :cond_1e

    .line 703
    .line 704
    invoke-virtual {v11}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    .line 705
    .line 706
    .line 707
    move-result v12

    .line 708
    if-eqz v12, :cond_20

    .line 709
    .line 710
    :cond_1e
    iget-object v12, v9, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    .line 711
    .line 712
    if-eqz v12, :cond_20

    .line 713
    .line 714
    invoke-virtual {v12}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    .line 715
    .line 716
    .line 717
    move-result v18

    .line 718
    if-nez v18, :cond_20

    .line 719
    .line 720
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 721
    .line 722
    if-eqz v11, :cond_1f

    .line 723
    .line 724
    const-string v11, "AutofillSession"

    .line 725
    .line 726
    const-string/jumbo v5, "current value is empty, using cached last non-empty value instead"

    .line 727
    .line 728
    .line 729
    invoke-static {v11, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .line 731
    .line 732
    :cond_1f
    move-object v11, v12

    .line 733
    :cond_20
    invoke-virtual {v3, v0, v8, v11}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    .line 734
    .line 735
    .line 736
    move-result-object v5

    .line 737
    if-nez v5, :cond_21

    .line 738
    .line 739
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 740
    .line 741
    if-eqz v5, :cond_26

    .line 742
    .line 743
    const-string v5, "AutofillSession"

    .line 744
    .line 745
    new-instance v9, Ljava/lang/StringBuilder;

    .line 746
    .line 747
    const-string/jumbo v11, "value of opt. field "

    .line 748
    .line 749
    .line 750
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    const-string v8, " failed sanitization"

    .line 757
    .line 758
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v8

    .line 765
    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    .line 767
    .line 768
    goto :goto_c

    .line 769
    :cond_21
    invoke-virtual {v6, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    iget-object v9, v9, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 773
    .line 774
    invoke-virtual {v5, v9}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    .line 775
    .line 776
    .line 777
    move-result v11

    .line 778
    if-nez v11, :cond_26

    .line 779
    .line 780
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 781
    .line 782
    if-eqz v11, :cond_22

    .line 783
    .line 784
    const-string v11, "AutofillSession"

    .line 785
    .line 786
    new-instance v12, Ljava/lang/StringBuilder;

    .line 787
    .line 788
    const-string/jumbo v14, "found a change on optional "

    .line 789
    .line 790
    .line 791
    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    const-string v8, ": "

    .line 798
    .line 799
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    const-string v8, " => "

    .line 806
    .line 807
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v5

    .line 817
    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .line 819
    .line 820
    :cond_22
    if-eqz v9, :cond_23

    .line 821
    .line 822
    const/16 v16, 0x1

    .line 823
    .line 824
    goto :goto_b

    .line 825
    :cond_23
    iget-object v5, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 826
    .line 827
    iget-object v5, v5, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 828
    .line 829
    new-instance v8, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;

    .line 830
    .line 831
    const/4 v9, 0x0

    .line 832
    invoke-direct {v8, v9}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;-><init>(I)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v5, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 836
    .line 837
    .line 838
    :goto_b
    const/4 v14, 0x1

    .line 839
    goto :goto_c

    .line 840
    :cond_24
    invoke-virtual {v3, v8}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    .line 841
    .line 842
    .line 843
    move-result-object v5

    .line 844
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 845
    .line 846
    if-eqz v9, :cond_25

    .line 847
    .line 848
    const-string v9, "AutofillSession"

    .line 849
    .line 850
    new-instance v11, Ljava/lang/StringBuilder;

    .line 851
    .line 852
    const-string/jumbo v12, "no current value for "

    .line 853
    .line 854
    .line 855
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 859
    .line 860
    .line 861
    const-string v12, "; initial value is "

    .line 862
    .line 863
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 867
    .line 868
    .line 869
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v11

    .line 873
    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    .line 875
    .line 876
    :cond_25
    if-eqz v5, :cond_26

    .line 877
    .line 878
    invoke-virtual {v6, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    :cond_26
    :goto_c
    add-int/lit8 v7, v7, 0x1

    .line 882
    .line 883
    const/4 v5, 0x4

    .line 884
    goto/16 :goto_a

    .line 885
    .line 886
    :cond_27
    move/from16 v0, v16

    .line 887
    .line 888
    const/4 v1, 0x5

    .line 889
    if-nez v14, :cond_29

    .line 890
    .line 891
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 892
    .line 893
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 894
    .line 895
    .line 896
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 897
    .line 898
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 899
    .line 900
    .line 901
    const/4 v8, 0x4

    .line 902
    :goto_d
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 903
    .line 904
    if-eqz v0, :cond_28

    .line 905
    .line 906
    const-string v0, "AutofillSession"

    .line 907
    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    .line 909
    .line 910
    const-string/jumbo v4, "showSaveLocked("

    .line 911
    .line 912
    .line 913
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 914
    .line 915
    .line 916
    iget v4, v3, Lcom/android/server/autofill/Session;->id:I

    .line 917
    .line 918
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 919
    .line 920
    .line 921
    const-string v4, "): with no changes, comes no responsibilities.allRequiredAreNotNull="

    .line 922
    .line 923
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 927
    .line 928
    .line 929
    const-string v4, ", atLeastOneChanged="

    .line 930
    .line 931
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    invoke-static {v0, v1, v14}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 935
    .line 936
    .line 937
    :cond_28
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 938
    .line 939
    const/4 v1, 0x1

    .line 940
    const/4 v4, 0x0

    .line 941
    invoke-direct {v0, v8, v4, v1}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 942
    .line 943
    .line 944
    move-object v1, v3

    .line 945
    move v3, v4

    .line 946
    goto/16 :goto_1d

    .line 947
    .line 948
    :cond_29
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 949
    .line 950
    if-eqz v5, :cond_2a

    .line 951
    .line 952
    const-string v5, "AutofillSession"

    .line 953
    .line 954
    const-string v7, "at least one field changed, validate fields for save UI"

    .line 955
    .line 956
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    .line 958
    .line 959
    :cond_2a
    invoke-virtual {v13}, Landroid/service/autofill/SaveInfo;->getValidator()Landroid/service/autofill/InternalValidator;

    .line 960
    .line 961
    .line 962
    move-result-object v5

    .line 963
    const/4 v7, 0x6

    .line 964
    if-eqz v5, :cond_2d

    .line 965
    .line 966
    const/16 v8, 0x46d

    .line 967
    .line 968
    invoke-virtual {v3, v8}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    .line 969
    .line 970
    .line 971
    move-result-object v8

    .line 972
    :try_start_0
    invoke-virtual {v5, v3}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    .line 973
    .line 974
    .line 975
    move-result v9

    .line 976
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 977
    .line 978
    if-eqz v11, :cond_2b

    .line 979
    .line 980
    const-string v11, "AutofillSession"

    .line 981
    .line 982
    new-instance v12, Ljava/lang/StringBuilder;

    .line 983
    .line 984
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 985
    .line 986
    .line 987
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    const-string v5, " returned "

    .line 991
    .line 992
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v5

    .line 1002
    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    .line 1004
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

    .line 1009
    .line 1010
    const/16 v5, 0xa

    .line 1011
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

    .line 1015
    .line 1016
    .line 1017
    iget-object v5, v3, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1018
    .line 1019
    invoke-virtual {v5, v8}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1020
    .line 1021
    .line 1022
    if-nez v9, :cond_2d

    .line 1023
    .line 1024
    const-string v0, "AutofillSession"

    .line 1025
    .line 1026
    const-string/jumbo v4, "not showing save UI because fields failed validation"

    .line 1027
    .line 1028
    .line 1029
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    .line 1031
    .line 1032
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1033
    .line 1034
    invoke-virtual {v0, v7}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 1035
    .line 1036
    .line 1037
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1038
    .line 1039
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 1040
    .line 1041
    .line 1042
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 1043
    .line 1044
    const/4 v4, 0x1

    .line 1045
    const/4 v5, 0x0

    .line 1046
    invoke-direct {v0, v1, v5, v4}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 1047
    .line 1048
    .line 1049
    :goto_10
    move-object v1, v3

    .line 1050
    move v3, v5

    .line 1051
    goto/16 :goto_1d

    .line 1052
    .line 1053
    :goto_11
    const-string v4, "AutofillSession"

    .line 1054
    .line 1055
    const-string v5, "Not showing save UI because validation failed:"

    .line 1056
    .line 1057
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1058
    .line 1059
    .line 1060
    const/16 v0, 0xb

    .line 1061
    .line 1062
    invoke-virtual {v8, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1063
    .line 1064
    .line 1065
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1066
    .line 1067
    invoke-virtual {v0, v8}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1068
    .line 1069
    .line 1070
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1071
    .line 1072
    invoke-virtual {v0, v7}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 1073
    .line 1074
    .line 1075
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1076
    .line 1077
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 1078
    .line 1079
    .line 1080
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 1081
    .line 1082
    const/4 v4, 0x1

    .line 1083
    const/4 v5, 0x0

    .line 1084
    invoke-direct {v0, v1, v5, v4}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 1085
    .line 1086
    .line 1087
    goto :goto_10

    .line 1088
    :cond_2d
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v1

    .line 1092
    if-eqz v1, :cond_37

    .line 1093
    .line 1094
    const/4 v5, 0x0

    .line 1095
    :goto_12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1096
    .line 1097
    .line 1098
    move-result v8

    .line 1099
    if-ge v5, v8, :cond_37

    .line 1100
    .line 1101
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v8

    .line 1105
    check-cast v8, Landroid/service/autofill/Dataset;

    .line 1106
    .line 1107
    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v9

    .line 1111
    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v11

    .line 1115
    if-nez v9, :cond_2e

    .line 1116
    .line 1117
    const/4 v12, 0x0

    .line 1118
    goto :goto_13

    .line 1119
    :cond_2e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1120
    .line 1121
    .line 1122
    move-result v12

    .line 1123
    :goto_13
    new-instance v14, Landroid/util/ArrayMap;

    .line 1124
    .line 1125
    invoke-direct {v14, v12}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1126
    .line 1127
    .line 1128
    const/4 v15, 0x0

    .line 1129
    :goto_14
    if-ge v15, v12, :cond_2f

    .line 1130
    .line 1131
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v16

    .line 1135
    move-object/from16 v7, v16

    .line 1136
    .line 1137
    check-cast v7, Landroid/view/autofill/AutofillId;

    .line 1138
    .line 1139
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v16

    .line 1143
    move-object/from16 p1, v1

    .line 1144
    .line 1145
    move-object/from16 v1, v16

    .line 1146
    .line 1147
    check-cast v1, Landroid/view/autofill/AutofillValue;

    .line 1148
    .line 1149
    invoke-virtual {v14, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    add-int/lit8 v15, v15, 0x1

    .line 1153
    .line 1154
    move-object/from16 v1, p1

    .line 1155
    .line 1156
    const/4 v7, 0x6

    .line 1157
    goto :goto_14

    .line 1158
    :cond_2f
    move-object/from16 p1, v1

    .line 1159
    .line 1160
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1161
    .line 1162
    if-eqz v1, :cond_30

    .line 1163
    .line 1164
    const-string v1, "AutofillSession"

    .line 1165
    .line 1166
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1167
    .line 1168
    const-string v9, "Checking if saved fields match contents of dataset #"

    .line 1169
    .line 1170
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1174
    .line 1175
    .line 1176
    const-string v9, ": "

    .line 1177
    .line 1178
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1182
    .line 1183
    .line 1184
    const-string v9, "; savableIds="

    .line 1185
    .line 1186
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v7

    .line 1196
    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    .line 1198
    .line 1199
    :cond_30
    const/4 v1, 0x0

    .line 1200
    :goto_15
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 1201
    .line 1202
    .line 1203
    move-result v7

    .line 1204
    if-ge v1, v7, :cond_35

    .line 1205
    .line 1206
    invoke-virtual {v10, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v7

    .line 1210
    check-cast v7, Landroid/view/autofill/AutofillId;

    .line 1211
    .line 1212
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v9

    .line 1216
    check-cast v9, Landroid/view/autofill/AutofillValue;

    .line 1217
    .line 1218
    if-nez v9, :cond_31

    .line 1219
    .line 1220
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1221
    .line 1222
    if-eqz v9, :cond_34

    .line 1223
    .line 1224
    const-string v9, "AutofillSession"

    .line 1225
    .line 1226
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    const-string/jumbo v12, "dataset has value for field that is null: "

    .line 1229
    .line 1230
    .line 1231
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v7

    .line 1241
    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    .line 1243
    .line 1244
    goto :goto_16

    .line 1245
    :cond_31
    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v11

    .line 1249
    check-cast v11, Landroid/view/autofill/AutofillValue;

    .line 1250
    .line 1251
    invoke-virtual {v9, v11}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    .line 1252
    .line 1253
    .line 1254
    move-result v12

    .line 1255
    if-nez v12, :cond_33

    .line 1256
    .line 1257
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1258
    .line 1259
    if-eqz v1, :cond_32

    .line 1260
    .line 1261
    const-string v1, "AutofillSession"

    .line 1262
    .line 1263
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1264
    .line 1265
    const-string/jumbo v12, "found a dataset change on id "

    .line 1266
    .line 1267
    .line 1268
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1272
    .line 1273
    .line 1274
    const-string v7, ": from "

    .line 1275
    .line 1276
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1280
    .line 1281
    .line 1282
    const-string v7, " to "

    .line 1283
    .line 1284
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v7

    .line 1294
    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    .line 1296
    .line 1297
    :cond_32
    add-int/lit8 v5, v5, 0x1

    .line 1298
    .line 1299
    move-object/from16 v1, p1

    .line 1300
    .line 1301
    const/4 v7, 0x6

    .line 1302
    goto/16 :goto_12

    .line 1303
    .line 1304
    :cond_33
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1305
    .line 1306
    if-eqz v9, :cond_34

    .line 1307
    .line 1308
    const-string v9, "AutofillSession"

    .line 1309
    .line 1310
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    const-string/jumbo v12, "no dataset changes for id "

    .line 1313
    .line 1314
    .line 1315
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v7

    .line 1325
    invoke-static {v9, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    .line 1327
    .line 1328
    :cond_34
    :goto_16
    add-int/lit8 v1, v1, 0x1

    .line 1329
    .line 1330
    goto/16 :goto_15

    .line 1331
    .line 1332
    :cond_35
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1333
    .line 1334
    if-eqz v0, :cond_36

    .line 1335
    .line 1336
    const-string v0, "AutofillSession"

    .line 1337
    .line 1338
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    const-string/jumbo v4, "ignoring Save UI because all fields match contents of dataset #"

    .line 1341
    .line 1342
    .line 1343
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1347
    .line 1348
    .line 1349
    const-string v4, ": "

    .line 1350
    .line 1351
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1355
    .line 1356
    .line 1357
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v1

    .line 1361
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    .line 1363
    .line 1364
    :cond_36
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1365
    .line 1366
    const/4 v1, 0x7

    .line 1367
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 1368
    .line 1369
    .line 1370
    iget-object v0, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1371
    .line 1372
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 1373
    .line 1374
    .line 1375
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 1376
    .line 1377
    const/4 v1, 0x0

    .line 1378
    const/4 v4, 0x1

    .line 1379
    const/4 v5, 0x6

    .line 1380
    invoke-direct {v0, v5, v1, v4}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 1381
    .line 1382
    .line 1383
    move-object/from16 v22, v3

    .line 1384
    .line 1385
    move v3, v1

    .line 1386
    move-object/from16 v1, v22

    .line 1387
    .line 1388
    goto/16 :goto_1d

    .line 1389
    .line 1390
    :cond_37
    const/4 v1, 0x0

    .line 1391
    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v15

    .line 1395
    new-instance v5, Lcom/android/server/autofill/ui/PendingUi;

    .line 1396
    .line 1397
    new-instance v6, Landroid/os/Binder;

    .line 1398
    .line 1399
    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    .line 1400
    .line 1401
    .line 1402
    iget v7, v3, Lcom/android/server/autofill/Session;->id:I

    .line 1403
    .line 1404
    invoke-direct {v5, v6, v7, v15}, Lcom/android/server/autofill/ui/PendingUi;-><init>(Landroid/os/IBinder;ILandroid/view/autofill/IAutoFillManagerClient;)V

    .line 1405
    .line 1406
    .line 1407
    iput-object v5, v3, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 1408
    .line 1409
    invoke-static {}, Lcom/samsung/android/rune/ViewRune;->supportFoldableNoSubDisplay()Z

    .line 1410
    .line 1411
    .line 1412
    move-result v5

    .line 1413
    if-eqz v5, :cond_38

    .line 1414
    .line 1415
    iget-object v5, v3, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 1416
    .line 1417
    invoke-static {v5}, Lcom/android/server/autofill/Session;->getActivityDisplayId(Landroid/os/IBinder;)I

    .line 1418
    .line 1419
    .line 1420
    move-result v5

    .line 1421
    iput v5, v3, Lcom/android/server/autofill/Session;->mDisplayId:I

    .line 1422
    .line 1423
    :cond_38
    iget-object v5, v3, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 1424
    .line 1425
    monitor-enter v5

    .line 1426
    :try_start_1
    invoke-virtual {v3, v4}, Lcom/android/server/autofill/Session;->getServiceIcon(Landroid/service/autofill/FillResponse;)Landroid/graphics/drawable/Drawable;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v10

    .line 1430
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getServiceDisplayNameResourceId()I

    .line 1431
    .line 1432
    .line 1433
    move-result v6

    .line 1434
    if-eqz v6, :cond_39

    .line 1435
    .line 1436
    iget-object v7, v3, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1437
    .line 1438
    iget-object v7, v7, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 1439
    .line 1440
    check-cast v7, Lcom/android/server/autofill/AutofillManagerService;

    .line 1441
    .line 1442
    invoke-virtual {v7}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v7

    .line 1446
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v7

    .line 1450
    iget-object v8, v3, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1451
    .line 1452
    invoke-virtual {v8}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v8

    .line 1456
    const/4 v9, 0x0

    .line 1457
    invoke-virtual {v7, v8, v6, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 1458
    .line 1459
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

    .line 1465
    .line 1466
    iget-object v6, v3, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1467
    .line 1468
    invoke-virtual {v6}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceLabelLocked()Ljava/lang/CharSequence;

    .line 1469
    .line 1470
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

    .line 1475
    .line 1476
    if-nez v10, :cond_3c

    .line 1477
    .line 1478
    :cond_3b
    const/4 v2, 0x1

    .line 1479
    move-object/from16 v22, v3

    .line 1480
    .line 1481
    move v3, v1

    .line 1482
    move-object/from16 v1, v22

    .line 1483
    .line 1484
    goto/16 :goto_1c

    .line 1485
    .line 1486
    :cond_3c
    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v5

    .line 1490
    iget-object v6, v3, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1491
    .line 1492
    invoke-virtual {v6}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v11

    .line 1496
    iget-object v12, v3, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 1497
    .line 1498
    iget-object v6, v3, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    .line 1499
    .line 1500
    iget-object v8, v3, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 1501
    .line 1502
    iget-boolean v14, v3, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 1503
    .line 1504
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getShowSaveDialogIcon()Z

    .line 1505
    .line 1506
    .line 1507
    move-result v19

    .line 1508
    iget-object v7, v3, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1509
    .line 1510
    iget v4, v3, Lcom/android/server/autofill/Session;->mDisplayId:I

    .line 1511
    .line 1512
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1513
    .line 1514
    .line 1515
    sget-boolean v16, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1516
    .line 1517
    if-eqz v16, :cond_3d

    .line 1518
    .line 1519
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v1

    .line 1523
    move/from16 v16, v4

    .line 1524
    .line 1525
    invoke-virtual {v12}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v4

    .line 1529
    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    .line 1530
    .line 1531
    .line 1532
    move-result v6

    .line 1533
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v6

    .line 1537
    filled-new-array {v1, v4, v6, v13}, [Ljava/lang/Object;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v1

    .line 1541
    const-string v4, "AutofillUI"

    .line 1542
    .line 1543
    const-string/jumbo v6, "showSaveUi(update=%b) for %s and display %d: %s"

    .line 1544
    .line 1545
    .line 1546
    invoke-static {v4, v6, v1}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1547
    .line 1548
    .line 1549
    goto :goto_18

    .line 1550
    :cond_3d
    move/from16 v16, v4

    .line 1551
    .line 1552
    :goto_18
    invoke-virtual {v13}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v1

    .line 1556
    if-nez v1, :cond_3e

    .line 1557
    .line 1558
    const/4 v4, 0x0

    .line 1559
    goto :goto_19

    .line 1560
    :cond_3e
    invoke-virtual {v13}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v1

    .line 1564
    array-length v4, v1

    .line 1565
    :goto_19
    invoke-virtual {v13}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v1

    .line 1569
    if-nez v1, :cond_3f

    .line 1570
    .line 1571
    const/4 v1, 0x0

    .line 1572
    goto :goto_1a

    .line 1573
    :cond_3f
    invoke-virtual {v13}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v1

    .line 1577
    array-length v1, v1

    .line 1578
    :goto_1a
    add-int/2addr v4, v1

    .line 1579
    iget v1, v8, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    .line 1580
    .line 1581
    const/16 v6, 0x394

    .line 1582
    .line 1583
    invoke-static {v6, v12, v11, v1, v14}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v1

    .line 1587
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v4

    .line 1591
    const/16 v6, 0x395

    .line 1592
    .line 1593
    invoke-virtual {v1, v6, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v1

    .line 1597
    if-eqz v0, :cond_40

    .line 1598
    .line 1599
    const/4 v4, 0x1

    .line 1600
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v6

    .line 1604
    const/16 v4, 0x613

    .line 1605
    .line 1606
    invoke-virtual {v1, v4, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1607
    .line 1608
    .line 1609
    :cond_40
    iget-object v6, v5, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 1610
    .line 1611
    new-instance v4, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;

    .line 1612
    .line 1613
    move-object/from16 p0, v4

    .line 1614
    .line 1615
    move-object v2, v6

    .line 1616
    move-object v6, v3

    .line 1617
    move-object/from16 v18, v7

    .line 1618
    .line 1619
    move/from16 v7, v16

    .line 1620
    .line 1621
    move/from16 v20, v14

    .line 1622
    .line 1623
    move-object v14, v3

    .line 1624
    move-object/from16 v21, v3

    .line 1625
    .line 1626
    move-object v3, v15

    .line 1627
    move-object v15, v1

    .line 1628
    move-object/from16 v16, v18

    .line 1629
    .line 1630
    move/from16 v17, v0

    .line 1631
    .line 1632
    move/from16 v18, v20

    .line 1633
    .line 1634
    invoke-direct/range {v4 .. v19}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/Session;ILcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Lcom/android/server/autofill/Session;Landroid/metrics/LogMaker;Lcom/android/server/autofill/SaveEventLogger;ZZZ)V

    .line 1635
    .line 1636
    .line 1637
    move-object/from16 v0, p0

    .line 1638
    .line 1639
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1640
    .line 1641
    .line 1642
    if-eqz v3, :cond_41

    .line 1643
    .line 1644
    move-object/from16 v1, v21

    .line 1645
    .line 1646
    :try_start_2
    iget v0, v1, Lcom/android/server/autofill/Session;->id:I

    .line 1647
    .line 1648
    const/4 v2, 0x1

    .line 1649
    invoke-interface {v3, v0, v2}, Landroid/view/autofill/IAutoFillManagerClient;->setSaveUiState(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1650
    .line 1651
    .line 1652
    goto :goto_1b

    .line 1653
    :catch_1
    move-exception v0

    .line 1654
    const-string v2, "AutofillSession"

    .line 1655
    .line 1656
    const-string v3, "Error notifying client to set save UI state to shown: "

    .line 1657
    .line 1658
    invoke-static {v3, v0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1659
    .line 1660
    .line 1661
    goto :goto_1b

    .line 1662
    :cond_41
    move-object/from16 v1, v21

    .line 1663
    .line 1664
    :goto_1b
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 1665
    .line 1666
    const/4 v2, 0x1

    .line 1667
    iput-boolean v2, v0, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    .line 1668
    .line 1669
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1670
    .line 1671
    if-eqz v0, :cond_42

    .line 1672
    .line 1673
    const-string v0, "AutofillSession"

    .line 1674
    .line 1675
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1676
    .line 1677
    const-string v3, "Good news, everyone! All checks passed, show save UI for "

    .line 1678
    .line 1679
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1680
    .line 1681
    .line 1682
    iget v3, v1, Lcom/android/server/autofill/Session;->id:I

    .line 1683
    .line 1684
    const-string v4, "!"

    .line 1685
    .line 1686
    invoke-static {v2, v3, v4, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 1687
    .line 1688
    .line 1689
    :cond_42
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 1690
    .line 1691
    const/4 v2, 0x1

    .line 1692
    const/4 v3, 0x0

    .line 1693
    invoke-direct {v0, v3, v2, v3}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 1694
    .line 1695
    .line 1696
    goto :goto_1d

    .line 1697
    :goto_1c
    const-string/jumbo v0, "showSaveLocked(): no service label or icon"

    .line 1698
    .line 1699
    .line 1700
    new-array v4, v3, [Ljava/lang/Object;

    .line 1701
    .line 1702
    const/4 v5, 0x0

    .line 1703
    invoke-virtual {v1, v5, v0, v4}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1704
    .line 1705
    .line 1706
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1707
    .line 1708
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 1709
    .line 1710
    .line 1711
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1712
    .line 1713
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 1714
    .line 1715
    .line 1716
    new-instance v0, Lcom/android/server/autofill/Session$SaveResult;

    .line 1717
    .line 1718
    invoke-direct {v0, v3, v3, v2}, Lcom/android/server/autofill/Session$SaveResult;-><init>(IZZ)V

    .line 1719
    .line 1720
    .line 1721
    :goto_1d
    iget v2, v0, Lcom/android/server/autofill/Session$SaveResult;->mSaveDialogNotShowReason:I

    .line 1722
    .line 1723
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1724
    .line 1725
    const-string v5, "AutofillSession"

    .line 1726
    .line 1727
    if-eqz v4, :cond_43

    .line 1728
    .line 1729
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1730
    .line 1731
    const-string/jumbo v6, "logContextCommittedLocked ("

    .line 1732
    .line 1733
    .line 1734
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1735
    .line 1736
    .line 1737
    iget v6, v1, Lcom/android/server/autofill/Session;->id:I

    .line 1738
    .line 1739
    const-string v7, "): commit_reason:"

    .line 1740
    .line 1741
    const-string v8, " no_save_reason:"

    .line 1742
    .line 1743
    move/from16 v9, p3

    .line 1744
    .line 1745
    invoke-static {v6, v9, v7, v8, v4}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1746
    .line 1747
    .line 1748
    invoke-static {v4, v2, v5}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1749
    .line 1750
    .line 1751
    goto :goto_1e

    .line 1752
    :cond_43
    move/from16 v9, p3

    .line 1753
    .line 1754
    :goto_1e
    iget-object v4, v1, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 1755
    .line 1756
    new-instance v6, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;

    .line 1757
    .line 1758
    const/4 v7, 0x0

    .line 1759
    invoke-direct {v6, v7}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1760
    .line 1761
    .line 1762
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v2

    .line 1766
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v7

    .line 1770
    invoke-static {v6, v1, v2, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v2

    .line 1774
    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1775
    .line 1776
    .line 1777
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 1778
    .line 1779
    iget-object v2, v2, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 1780
    .line 1781
    new-instance v4, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    .line 1782
    .line 1783
    const/4 v6, 0x1

    .line 1784
    invoke-direct {v4, v9, v6}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 1785
    .line 1786
    .line 1787
    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1788
    .line 1789
    .line 1790
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 1791
    .line 1792
    iget v4, v1, Lcom/android/server/autofill/Session;->mRequestCount:I

    .line 1793
    .line 1794
    iget-object v2, v2, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 1795
    .line 1796
    new-instance v6, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    .line 1797
    .line 1798
    const/4 v7, 0x2

    .line 1799
    invoke-direct {v6, v4, v7}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 1800
    .line 1801
    .line 1802
    invoke-virtual {v2, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1803
    .line 1804
    .line 1805
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 1806
    .line 1807
    const/4 v4, -0x1

    .line 1808
    if-nez v2, :cond_44

    .line 1809
    .line 1810
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1811
    .line 1812
    if-eqz v2, :cond_45

    .line 1813
    .line 1814
    const-string/jumbo v2, "getSaveInfoStatsLocked(): mContexts is null"

    .line 1815
    .line 1816
    .line 1817
    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    .line 1819
    .line 1820
    goto :goto_1f

    .line 1821
    :cond_44
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 1822
    .line 1823
    if-nez v2, :cond_46

    .line 1824
    .line 1825
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1826
    .line 1827
    if-eqz v2, :cond_45

    .line 1828
    .line 1829
    const-string/jumbo v2, "getSaveInfoStatsLocked(): mResponses is null"

    .line 1830
    .line 1831
    .line 1832
    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    .line 1834
    .line 1835
    :cond_45
    :goto_1f
    move v6, v4

    .line 1836
    goto :goto_21

    .line 1837
    :cond_46
    new-instance v2, Landroid/util/ArraySet;

    .line 1838
    .line 1839
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1840
    .line 1841
    .line 1842
    iget-object v4, v1, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 1843
    .line 1844
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 1845
    .line 1846
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

    .line 1852
    .line 1853
    iget-object v7, v1, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 1854
    .line 1855
    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1856
    .line 1857
    .line 1858
    move-result-object v7

    .line 1859
    check-cast v7, Landroid/service/autofill/FillResponse;

    .line 1860
    .line 1861
    if-eqz v7, :cond_47

    .line 1862
    .line 1863
    invoke-virtual {v7}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v8

    .line 1867
    if-eqz v8, :cond_47

    .line 1868
    .line 1869
    add-int/lit8 v5, v5, 0x1

    .line 1870
    .line 1871
    invoke-virtual {v7}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    .line 1872
    .line 1873
    .line 1874
    move-result-object v7

    .line 1875
    invoke-virtual {v7}, Landroid/service/autofill/SaveInfo;->getType()I

    .line 1876
    .line 1877
    .line 1878
    move-result v7

    .line 1879
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1880
    .line 1881
    .line 1882
    move-result-object v8

    .line 1883
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1884
    .line 1885
    .line 1886
    move-result v8

    .line 1887
    if-nez v8, :cond_47

    .line 1888
    .line 1889
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1890
    .line 1891
    .line 1892
    move-result-object v7

    .line 1893
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1894
    .line 1895
    .line 1896
    add-int/lit8 v6, v6, 0x1

    .line 1897
    .line 1898
    :cond_47
    add-int/lit8 v15, v15, 0x1

    .line 1899
    .line 1900
    goto :goto_20

    .line 1901
    :cond_48
    move v4, v5

    .line 1902
    :goto_21
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 1903
    .line 1904
    iget-object v2, v2, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 1905
    .line 1906
    new-instance v5, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    .line 1907
    .line 1908
    const/4 v7, 0x4

    .line 1909
    invoke-direct {v5, v4, v7}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 1910
    .line 1911
    .line 1912
    invoke-virtual {v2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1913
    .line 1914
    .line 1915
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 1916
    .line 1917
    iget-object v2, v2, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 1918
    .line 1919
    new-instance v4, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    .line 1920
    .line 1921
    const/4 v5, 0x3

    .line 1922
    invoke-direct {v4, v6, v5}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 1923
    .line 1924
    .line 1925
    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1926
    .line 1927
    .line 1928
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 1929
    .line 1930
    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    .line 1931
    .line 1932
    .line 1933
    move-result-object v4

    .line 1934
    if-eqz v4, :cond_49

    .line 1935
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

    .line 1940
    .line 1941
    new-instance v3, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda6;

    .line 1942
    .line 1943
    invoke-direct {v3, v15}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda6;-><init>(Z)V

    .line 1944
    .line 1945
    .line 1946
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1947
    .line 1948
    .line 1949
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1950
    .line 1951
    const/4 v3, 0x1

    .line 1952
    invoke-virtual {v2, v3}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 1953
    .line 1954
    .line 1955
    iget-boolean v2, v0, Lcom/android/server/autofill/Session$SaveResult;->mLogSaveShown:Z

    .line 1956
    .line 1957
    if-eqz v2, :cond_4a

    .line 1958
    .line 1959
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 1960
    .line 1961
    new-instance v3, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;

    .line 1962
    .line 1963
    const/4 v4, 0x0

    .line 1964
    invoke-direct {v3, v4}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1965
    .line 1966
    .line 1967
    invoke-static {v3, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 1968
    .line 1969
    .line 1970
    move-result-object v3

    .line 1971
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1972
    .line 1973
    .line 1974
    :cond_4a
    iget-boolean v2, v0, Lcom/android/server/autofill/Session$SaveResult;->mRemoveSession:Z

    .line 1975
    .line 1976
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1977
    .line 1978
    if-eqz v3, :cond_4b

    .line 1979
    .line 1980
    const-string v3, "AutofillManagerServiceImpl"

    .line 1981
    .line 1982
    const-string/jumbo v4, "finishSessionLocked(): session finished? "

    .line 1983
    .line 1984
    .line 1985
    const-string v5, ", showing save UI? "

    .line 1986
    .line 1987
    invoke-static {v4, v5, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 1988
    .line 1989
    .line 1990
    move-result-object v4

    .line 1991
    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SaveResult;->mLogSaveShown:Z

    .line 1992
    .line 1993
    invoke-static {v3, v4, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1994
    .line 1995
    .line 1996
    :cond_4b
    if-eqz v2, :cond_4c

    .line 1997
    .line 1998
    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 1999
    .line 2000
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

    .line 2006
    .line 2007
    if-eqz v2, :cond_4e

    .line 2008
    .line 2009
    const-string v2, "AutofillManagerServiceImpl"

    .line 2010
    .line 2011
    const-string/jumbo v3, "finishSessionLocked(): no session for "

    .line 2012
    .line 2013
    .line 2014
    const-string v4, "("

    .line 2015
    .line 2016
    const-string v5, ")"

    .line 2017
    .line 2018
    invoke-static {v0, v1, v3, v4, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2019
    .line 2020
    .line 2021
    move-result-object v0

    .line 2022
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    .line 2024
    .line 2025
    :cond_4e
    return-void
.end method

.method public final forceRemoveAllSessionsLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance v2, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, p0, v3, v3, v1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    :goto_0
    if-ltz v0, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/server/autofill/Session;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
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

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/autofill/Session;

    .line 18
    .line 19
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string/jumbo v3, "forceRemoveFromServiceIfForAugmentedOnlyLocked("

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v3, v1, Lcom/android/server/autofill/Session;->id:I

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, "): "

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v3, v1, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 42
    .line 43
    iget-boolean v3, v3, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 44
    .line 45
    const-string v4, "AutofillSession"

    .line 46
    .line 47
    invoke-static {v4, v2, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 51
    .line 52
    iget-boolean v2, v2, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 53
    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    .line 59
    .line 60
    .line 61
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 62
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string/jumbo v1, "getFillEventHistory"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(ILjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 18
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

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string/jumbo v1, "getFillEventHistory"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByAugmentedAutofillServiceLocked(ILjava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 37
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

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
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

    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lcom/android/server/autofill/Session;

    .line 19
    .line 20
    iget v5, v4, Lcom/android/server/autofill/Session;->taskId:I

    .line 21
    .line 22
    iget v6, p1, Lcom/android/server/autofill/Session;->taskId:I

    .line 23
    .line 24
    if-ne v5, v6, :cond_2

    .line 25
    .line 26
    iget v5, v4, Lcom/android/server/autofill/Session;->id:I

    .line 27
    .line 28
    iget v6, p1, Lcom/android/server/autofill/Session;->id:I

    .line 29
    .line 30
    if-eq v5, v6, :cond_2

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    if-nez v5, :cond_0

    .line 37
    .line 38
    move v5, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getFlags()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    :goto_1
    and-int/lit8 v5, v5, 0x4

    .line 45
    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 59
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

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 11
    .line 12
    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v4, "AutofillManagerServiceImpl"

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    iget-boolean p0, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const-string/jumbo p0, "getRemoteAugmentedAutofillServiceLocked(): not set"

    .line 28
    .line 29
    .line 30
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    return-object v5

    .line 34
    :cond_1
    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Lcom/android/server/infra/ServiceNameBaseResolver;->isTemporary(I)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    sget v6, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->$r8$clinit:I

    .line 41
    .line 42
    const-string v6, "RemoteAugmentedAutofillService"

    .line 43
    .line 44
    const-string v7, "Bad service name for flags "

    .line 45
    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    const v1, 0x100080

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/16 v1, 0x80

    .line 53
    .line 54
    :goto_0
    :try_start_0
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    int-to-long v10, v1

    .line 63
    invoke-interface {v9, v8, v10, v11, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-nez v3, :cond_3

    .line 68
    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ": "

    .line 78
    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
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

    .line 97
    .line 98
    invoke-direct {v1, v3, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v7, "Error getting service info for \'"

    .line 105
    .line 106
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, "\': "

    .line 113
    .line 114
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :goto_3
    if-nez v1, :cond_4

    .line 129
    .line 130
    return-object v5

    .line 131
    :cond_4
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v2, Landroid/content/pm/ServiceInfo;

    .line 134
    .line 135
    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 136
    .line 137
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 138
    .line 139
    move-object v8, v1

    .line 140
    check-cast v8, Landroid/content/ComponentName;

    .line 141
    .line 142
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 143
    .line 144
    if-eqz v1, :cond_5

    .line 145
    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string/jumbo v2, "getRemoteAugmentedAutofillServiceLocked(): "

    .line 149
    .line 150
    .line 151
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    :cond_5
    new-instance v10, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;

    .line 165
    .line 166
    invoke-direct {v10, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 170
    .line 171
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 172
    .line 173
    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 174
    .line 175
    new-instance v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 182
    .line 183
    iget-boolean v11, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    .line 184
    .line 185
    iget v12, v0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    .line 186
    .line 187
    iget v13, v0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceRequestTimeoutMs:I

    .line 188
    .line 189
    iget v9, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 190
    .line 191
    move-object v5, v1

    .line 192
    invoke-direct/range {v5 .. v13}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;-><init>(Landroid/content/Context;ILandroid/content/ComponentName;ILcom/android/server/autofill/AutofillManagerServiceImpl$1;ZII)V

    .line 193
    .line 194
    .line 195
    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 196
    .line 197
    :cond_6
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 198
    .line 199
    return-object p0
.end method

.method public final getRemoteFieldClassificationServiceLocked()Lcom/android/server/autofill/RemoteFieldClassificationService;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerService;->mFieldClassificationResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 11
    .line 12
    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v4, 0x0

    .line 19
    const-string v5, "AutofillManagerServiceImpl"

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    iget-boolean p0, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const-string/jumbo p0, "getRemoteFieldClassificationServiceLocked(): not set"

    .line 28
    .line 29
    .line 30
    invoke-static {v5, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    return-object v4

    .line 34
    :cond_1
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 35
    .line 36
    if-eqz v6, :cond_2

    .line 37
    .line 38
    const-string/jumbo v6, "getRemoteFieldClassificationServiceLocked serviceName: "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerService;->mFieldClassificationResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Lcom/android/server/infra/ServiceNameBaseResolver;->isTemporary(I)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    sget v6, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    .line 55
    .line 56
    const-string v6, "AutofillRemoteFieldClassificationService"

    .line 57
    .line 58
    const-string v7, "Bad service name for flags "

    .line 59
    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    const v1, 0x100080

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/16 v1, 0x80

    .line 67
    .line 68
    :goto_0
    :try_start_0
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    int-to-long v10, v1

    .line 77
    invoke-interface {v9, v8, v10, v11, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    if-nez v9, :cond_4

    .line 82
    .line 83
    new-instance v8, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, ": "

    .line 92
    .line 93
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
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

    .line 111
    .line 112
    invoke-direct {v1, v9, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v8, "Error getting service info for \'"

    .line 119
    .line 120
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v8, "\': "

    .line 127
    .line 128
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :goto_3
    if-nez v1, :cond_5

    .line 143
    .line 144
    const-string p0, "RemoteFieldClassificationService.getComponentName returned null with serviceName: "

    .line 145
    .line 146
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    return-object v4

    .line 154
    :cond_5
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v2, Landroid/content/pm/ServiceInfo;

    .line 157
    .line 158
    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 159
    .line 160
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v1, Landroid/content/ComponentName;

    .line 163
    .line 164
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 165
    .line 166
    if-eqz v2, :cond_6

    .line 167
    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string/jumbo v4, "getRemoteFieldClassificationServiceLocked(): "

    .line 171
    .line 172
    .line 173
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    :cond_6
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 187
    .line 188
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 189
    .line 190
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 191
    .line 192
    new-instance v2, Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-direct {v2, v0, v1, v3}, Lcom/android/server/autofill/RemoteFieldClassificationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 199
    .line 200
    .line 201
    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 202
    .line 203
    :cond_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 204
    .line 205
    return-object p0
.end method

.method public final getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget v2, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->$r8$clinit:I

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    const-string v4, "RemoteInlineSuggestionRenderService"

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const-string/jumbo v1, "no external services package!"

    .line 27
    .line 28
    .line 29
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :goto_0
    move-object v2, v3

    .line 33
    goto :goto_3

    .line 34
    :cond_0
    const-string v5, "android.service.autofill.InlineSuggestionRenderService"

    .line 35
    .line 36
    invoke-static {v5, v2}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/16 v5, 0x84

    .line 45
    .line 46
    iget v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 47
    .line 48
    invoke-virtual {v1, v2, v5, v6}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    move-object v2, v3

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 57
    .line 58
    :goto_1
    if-eqz v1, :cond_3

    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    const-string v1, "android.permission.BIND_INLINE_SUGGESTION_RENDER_SERVICE"

    .line 64
    .line 65
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_4

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 79
    .line 80
    const-string v5, " does not require permission android.permission.BIND_INLINE_SUGGESTION_RENDER_SERVICE"

    .line 81
    .line 82
    invoke-static {v1, v2, v5, v4}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    :goto_2
    const-string v1, "No valid components found."

    .line 87
    .line 88
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    :goto_3
    if-nez v2, :cond_5

    .line 93
    .line 94
    move-object v7, v3

    .line 95
    goto :goto_4

    .line 96
    :cond_5
    new-instance v1, Landroid/content/ComponentName;

    .line 97
    .line 98
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 101
    .line 102
    invoke-direct {v1, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 106
    .line 107
    if-eqz v2, :cond_6

    .line 108
    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string/jumbo v5, "getServiceComponentName(): "

    .line 112
    .line 113
    .line 114
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    :cond_6
    move-object v7, v1

    .line 128
    :goto_4
    if-nez v7, :cond_7

    .line 129
    .line 130
    const-string p0, "AutofillManagerServiceImpl"

    .line 131
    .line 132
    const-string v0, "No valid component found for InlineSuggestionRenderService"

    .line 133
    .line 134
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    return-object v3

    .line 138
    :cond_7
    new-instance v1, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    new-instance v9, Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;

    .line 145
    .line 146
    invoke-direct {v9, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    .line 147
    .line 148
    .line 149
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    iget-boolean v11, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 156
    .line 157
    iget v8, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 158
    .line 159
    move-object v5, v1

    .line 160
    invoke-direct/range {v5 .. v11}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;ZZ)V

    .line 161
    .line 162
    .line 163
    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 164
    .line 165
    :cond_8
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 166
    .line 167
    return-object p0
.end method

.method public final getUrlBarResourceIdsForCompatMode(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
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

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/util/ArrayMap;

    .line 22
    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    monitor-exit v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 32
    .line 33
    if-nez p0, :cond_2

    .line 34
    .line 35
    monitor-exit v1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->urlBarResourceIds:[Ljava/lang/String;

    .line 38
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "getUserData"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(ILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    .line 14
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

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetExtServiceLocked()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final isAugmentedAutofillServiceAvailableLocked()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 7
    .line 8
    iget v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v3, "isAugmentedAutofillService(): setupCompleted="

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", disabled="

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-boolean v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, ", augmentedService="

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-object v3, v0

    .line 41
    check-cast v3, Lcom/android/server/autofill/AutofillManagerService;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 44
    .line 45
    invoke-virtual {v3, v2}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v3, "AutofillManagerServiceImpl"

    .line 57
    .line 58
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    .line 66
    .line 67
    if-nez p0, :cond_2

    .line 68
    .line 69
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 70
    .line 71
    iget-object p0, v0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 72
    .line 73
    invoke-virtual {p0, v2}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-nez p0, :cond_1

    .line 78
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

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iget v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 7
    .line 8
    const-string v3, "() called by UID "

    .line 9
    .line 10
    const-string v4, "AutofillManagerServiceImpl"

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, ", but there is no augmented autofill service defined for user "

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 45
    .line 46
    const/4 v5, -0x1

    .line 47
    const-string/jumbo v6, "getAugmentedAutofillServiceUid(): no mRemoteAugmentedAutofillServiceInfo"

    .line 48
    .line 49
    .line 50
    iget-object v7, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    move-object v0, v7

    .line 55
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 56
    .line 57
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_1
    move v0, v5

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 67
    .line 68
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 69
    .line 70
    :goto_0
    if-eq v0, p1, :cond_5

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p1, ", but service UID is "

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 92
    .line 93
    if-nez p0, :cond_3

    .line 94
    .line 95
    check-cast v7, Lcom/android/server/autofill/AutofillManagerService;

    .line 96
    .line 97
    iget-boolean p0, v7, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 98
    .line 99
    if-eqz p0, :cond_4

    .line 100
    .line 101
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 106
    .line 107
    iget v5, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 108
    .line 109
    :cond_4
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p0, " for user "

    .line 113
    .line 114
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
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

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eq p0, p1, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p2, "() called by UID "

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, ", but service UID is "

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, "AutofillManagerServiceImpl"

    .line 36
    .line 37
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
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

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "autofill_field_classification"

    .line 12
    .line 13
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-ne p0, v2, :cond_0

    .line 21
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

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 7
    .line 8
    iget v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v3, "isFieldClassificationService(): setupCompleted="

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", disabled="

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-boolean v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, ", augmentedService="

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-object v3, v0

    .line 41
    check-cast v3, Lcom/android/server/autofill/AutofillManagerService;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mFieldClassificationResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 44
    .line 45
    invoke-virtual {v3, v2}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v3, "AutofillManagerServiceImpl"

    .line 57
    .line 58
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    .line 66
    .line 67
    if-nez p0, :cond_2

    .line 68
    .line 69
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 70
    .line 71
    iget-object p0, v0, Lcom/android/server/autofill/AutofillManagerService;->mFieldClassificationResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 72
    .line 73
    invoke-virtual {p0, v2}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-nez p0, :cond_1

    .line 78
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

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mPccClassificationEnabled:Z

    .line 9
    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteFieldClassificationServiceLocked()Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
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

    .line 27
    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    const-string p0, "AutofillManagerServiceImpl"

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v2, "pccEnabled: "

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
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

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "AutofillManagerServiceImpl"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p0, ": not logging event because history is null"

    .line 9
    .line 10
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eq p1, v0, :cond_2

    .line 23
    .line 24
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p2, ": not logging event for session "

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, " because tracked session is "

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
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

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_3

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    const-string/jumbo v3, "no_svc"

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v3}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    :goto_1
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 40
    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    const-string/jumbo v4, "no_aug"

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-string v3, "%d:%s:%s"

    .line 64
    .line 65
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
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

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    move/from16 v3, p1

    .line 14
    .line 15
    if-eq v2, v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 19
    .line 20
    new-instance v14, Landroid/service/autofill/FillEventHistory$Event;

    .line 21
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

    .line 33
    .line 34
    move-object/from16 v5, p3

    .line 35
    .line 36
    invoke-direct/range {v2 .. v13}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v14}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 40
    .line 41
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

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    const-string/jumbo v2, "logDatasetShown"

    .line 7
    .line 8
    .line 9
    move/from16 v3, p1

    .line 10
    .line 11
    invoke-virtual {v0, v3, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(ILjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 18
    .line 19
    new-instance v15, Landroid/service/autofill/FillEventHistory$Event;

    .line 20
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

    .line 34
    .line 35
    move-object/from16 v16, v15

    .line 36
    .line 37
    move/from16 v15, p2

    .line 38
    .line 39
    invoke-direct/range {v2 .. v15}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;II)V

    .line 40
    .line 41
    .line 42
    move-object/from16 v2, v16

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 45
    .line 46
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "logViewEntered"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(ILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
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

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/service/autofill/FillEventHistory$Event;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/service/autofill/FillEventHistory$Event;->getType()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x6

    .line 52
    if-ne v1, v2, :cond_1

    .line 53
    .line 54
    const-string p0, "AutofillManagerServiceImpl"

    .line 55
    .line 56
    const-string/jumbo p1, "logViewEntered: already logged TYPE_VIEW_REQUESTED_AUTOFILL"

    .line 57
    .line 58
    .line 59
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :cond_2
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 65
    .line 66
    new-instance p1, Landroid/service/autofill/FillEventHistory$Event;

    .line 67
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

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 84
    .line 85
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

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v3, "android.service.autofill.AutofillService"

    .line 14
    .line 15
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const v3, 0x800080

    .line 19
    .line 20
    .line 21
    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 42
    .line 43
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    new-instance v1, Landroid/service/autofill/AutofillServiceInfo;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-direct {v1, v0, p1, v4}, Landroid/service/autofill/AutofillServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v0, "Autofill service from \'"

    .line 74
    .line 75
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p1, "\' doesnot have intent filter android.service.autofill.AutofillService"

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string p1, "AutofillManagerServiceImpl"

    .line 95
    .line 96
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    new-instance p0, Ljava/lang/SecurityException;

    .line 100
    .line 101
    const-string p1, "Service does not declare intent filter android.service.autofill.AutofillService"

    .line 102
    .line 103
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0
.end method

.method public final onPendingSaveUi(ILandroid/os/IBinder;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AutofillManagerServiceImpl"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "onPendingSaveUi("

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "): "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/lit8 v1, v1, -0x1

    .line 43
    .line 44
    :goto_0
    if-ltz v1, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/android/server/autofill/Session;

    .line 53
    .line 54
    iget-object v3, v2, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 55
    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    iget v4, v3, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    .line 59
    .line 60
    const/4 v5, 0x2

    .line 61
    if-ne v4, v5, :cond_1

    .line 62
    .line 63
    iget-object v3, v3, Lcom/android/server/autofill/ui/PendingUi;->mToken:Landroid/os/IBinder;

    .line 64
    .line 65
    invoke-interface {p2, v3}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 76
    .line 77
    new-instance v2, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;ILandroid/os/IBinder;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
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

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 94
    .line 95
    if-eqz p0, :cond_3

    .line 96
    .line 97
    const-string p0, "AutofillManagerServiceImpl"

    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v1, "No pending Save UI for token "

    .line 102
    .line 103
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p2, " and operation "

    .line 110
    .line 111
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-class p2, Landroid/view/autofill/AutofillManager;

    .line 115
    .line 116
    const-string v1, "PENDING_UI_OPERATION_"

    .line 117
    .line 118
    int-to-long v2, p1

    .line 119
    invoke-static {p2, v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
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

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 20
    .line 21
    iget-boolean v5, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    .line 22
    .line 23
    iget-object v6, v0, Lcom/android/server/autofill/AutofillManagerService;->mCredentialAutofillService:Landroid/content/ComponentName;

    .line 24
    .line 25
    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    move-object v0, v7

    .line 29
    invoke-direct/range {v0 .. v6}, Lcom/android/server/autofill/RemoteFillService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;ZLandroid/content/ComponentName;)V

    .line 30
    .line 31
    .line 32
    new-instance p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda1;

    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v7, p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final resetExtServiceLocked()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AutofillManagerServiceImpl"

    .line 6
    .line 7
    const-string/jumbo v1, "reset autofill service in ExtServices."

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 14
    .line 15
    const-string/jumbo v1, "reset(): "

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v2

    .line 21
    :try_start_0
    iget-object v3, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Lcom/android/server/autofill/FieldClassificationStrategy$1;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    const-string v3, "FieldClassificationStrategy"

    .line 31
    .line 32
    const-string/jumbo v5, "reset(): unbinding service."

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
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

    .line 42
    .line 43
    iget-object v5, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Lcom/android/server/autofill/FieldClassificationStrategy$1;

    .line 44
    .line 45
    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception v3

    .line 50
    :try_start_2
    const-string v5, "FieldClassificationStrategy"

    .line 51
    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :goto_1
    iput-object v4, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Lcom/android/server/autofill/FieldClassificationStrategy$1;

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    const-string v0, "FieldClassificationStrategy"

    .line 79
    .line 80
    const-string/jumbo v1, "reset(): service is not bound. Do nothing."

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    .line 92
    .line 93
    .line 94
    iput-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 95
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

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 8
    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    iget p1, p0, Lcom/android/server/autofill/Session;->uid:I

    .line 12
    .line 13
    if-eq p2, p1, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    const-string p1, "Call to Session#switchActivity() rejected - session: "

    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter p2

    .line 21
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string p3, "AutofillSession"

    .line 26
    .line 27
    new-instance p4, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 33
    .line 34
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, " destroyed"

    .line 38
    .line 39
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
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

    .line 54
    .line 55
    invoke-virtual {p0, p4}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 59
    .line 60
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 14
    .line 15
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

    .line 21
    .line 22
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Landroid/view/autofill/IAutoFillManagerClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 27
    .line 28
    :try_start_2
    iget-object v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 31
    const/4 v6, 0x1

    .line 32
    if-nez p1, :cond_4

    .line 33
    .line 34
    :try_start_3
    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    move v8, v0

    .line 41
    :goto_1
    if-ge v8, v7, :cond_2

    .line 42
    .line 43
    iget-object v9, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    check-cast v9, Lcom/android/server/autofill/Session;

    .line 50
    .line 51
    invoke-virtual {v9}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    invoke-interface {v10, v4}, Landroid/view/autofill/IAutoFillManagerClient;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-eqz v10, :cond_1

    .line 60
    .line 61
    iget-object v7, v9, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 64
    :try_start_4
    iget-boolean v8, v9, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 65
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

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move v8, v6

    .line 75
    :goto_2
    if-eqz v8, :cond_3

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    move v6, v0

    .line 79
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 84
    if-eqz v6, :cond_5

    .line 85
    .line 86
    or-int/lit8 v7, v7, 0x2

    .line 87
    .line 88
    :cond_5
    if-eqz p1, :cond_6

    .line 89
    .line 90
    or-int/lit8 v7, v7, 0x4

    .line 91
    .line 92
    :cond_6
    :try_start_6
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 93
    .line 94
    if-eqz v5, :cond_7

    .line 95
    .line 96
    or-int/lit8 v7, v7, 0x8

    .line 97
    .line 98
    :cond_7
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 99
    .line 100
    if-eqz v5, :cond_8

    .line 101
    .line 102
    or-int/lit8 v7, v7, 0x10

    .line 103
    .line 104
    :cond_8
    invoke-interface {v4, v7}, Landroid/view/autofill/IAutoFillManagerClient;->setState(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 105
    .line 106
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

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :goto_5
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :cond_9
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 121
    .line 122
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

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByAugmentedAutofillServiceLocked(ILjava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 13
    .line 14
    check-cast p1, Lcom/android/server/autofill/AutofillManagerService;

    .line 15
    .line 16
    iget-boolean p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const-string p1, "AutofillManagerServiceImpl"

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v1, "setAugmentedAutofillWhitelistLocked(packages="

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", activities="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ")"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    const-string/jumbo p1, "whitelisting packages: "

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 60
    .line 61
    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    .line 62
    .line 63
    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    const-string v1, "AutofillManagerServiceImpl"

    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p1, "and activities: "

    .line 78
    .line 79
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
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

    .line 96
    .line 97
    check-cast p1, Lcom/android/server/autofill/AutofillManagerService;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    .line 100
    .line 101
    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 102
    .line 103
    invoke-virtual {p1, v1, p2, p3}, Lcom/android/internal/infra/GlobalWhitelistState;->setWhitelist(ILjava/util/List;Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 108
    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    const-string p1, "AutofillManagerServiceImpl"

    .line 121
    .line 122
    const-string/jumbo v0, "setAugmentedAutofillWhitelistLocked(): no service"

    .line 123
    .line 124
    .line 125
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    const-string p1, "N/A"

    .line 129
    .line 130
    :goto_1
    new-instance v0, Landroid/metrics/LogMaker;

    .line 131
    .line 132
    const/16 v1, 0x6b9

    .line 133
    .line 134
    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 135
    .line 136
    .line 137
    const/16 v1, 0x38c

    .line 138
    .line 139
    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p2, :cond_4

    .line 144
    .line 145
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    const/16 v0, 0x6ba

    .line 154
    .line 155
    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 156
    .line 157
    .line 158
    :cond_4
    if-eqz p3, :cond_5

    .line 159
    .line 160
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    const/16 p3, 0x6bb

    .line 169
    .line 170
    invoke-virtual {p1, p3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 171
    .line 172
    .line 173
    :cond_5
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 174
    .line 175
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 176
    .line 177
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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AutofillManagerServiceImpl"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "Service not enabled"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 22
    .line 23
    if-eqz p0, :cond_6

    .line 24
    .line 25
    iget v0, p0, Lcom/android/server/autofill/Session;->uid:I

    .line 26
    .line 27
    if-eq p2, v0, :cond_1

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_1
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 32
    .line 33
    const-string p2, "AutofillSession"

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v0, "Total views that failed to populate: "

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_2
    const/4 p1, 0x0

    .line 65
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-ge p1, v0, :cond_5

    .line 70
    .line 71
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 84
    .line 85
    if-nez v1, :cond_3

    .line 86
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string/jumbo v2, "setAutofillFailure(): no view for id "

    .line 90
    .line 91
    .line 92
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    const/4 v2, 0x4

    .line 107
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 108
    .line 109
    .line 110
    iget v2, v1, Lcom/android/server/autofill/ViewState;->mState:I

    .line 111
    .line 112
    or-int/lit16 v2, v2, 0x400

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 115
    .line 116
    .line 117
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 118
    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v3, "Changed state of "

    .line 124
    .line 125
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v0, " to "

    .line 132
    .line 133
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    :cond_4
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 154
    .line 155
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 160
    .line 161
    new-instance p2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 162
    .line 163
    const/16 p3, 0xb

    .line 164
    .line 165
    invoke-direct {p2, p1, p3}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_6
    :goto_2
    const-string/jumbo p0, "setAutofillFailure(): no session for "

    .line 173
    .line 174
    .line 175
    const-string p3, "("

    .line 176
    .line 177
    const-string v0, ")"

    .line 178
    .line 179
    invoke-static {p1, p2, p0, p3, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method public final setHasCallback(IIZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/server/autofill/Session;

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget v0, p1, Lcom/android/server/autofill/Session;->uid:I

    .line 19
    .line 20
    if-ne p2, v0, :cond_2

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-boolean p2, p1, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p3, "Call to Session#setHasCallbackLocked() rejected - session: "

    .line 32
    .line 33
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget p1, p1, Lcom/android/server/autofill/Session;->id:I

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, " destroyed"

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string p2, "AutofillSession"

    .line 51
    .line 52
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iput-boolean p3, p1, Lcom/android/server/autofill/Session;->mHasCallback:Z

    .line 57
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "setUserData"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(ILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
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

    .line 18
    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p2}, Landroid/service/autofill/UserData;->getCategoryIds()[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    array-length p1, p1

    .line 28
    :goto_0
    iget-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 29
    .line 30
    new-instance v1, Landroid/metrics/LogMaker;

    .line 31
    .line 32
    const/16 v2, 0x4f8

    .line 33
    .line 34
    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v1, p0}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/16 v1, 0x392

    .line 50
    .line 51
    invoke-virtual {p0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p2, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 56
    .line 57
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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AutofillManagerServiceImpl"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "Service not enabled"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 22
    .line 23
    if-eqz p0, :cond_4

    .line 24
    .line 25
    iget v0, p0, Lcom/android/server/autofill/Session;->uid:I

    .line 26
    .line 27
    if-eq p3, v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p3, "View autofilled: "

    .line 37
    .line 38
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p3, "AutofillSession"

    .line 49
    .line 50
    invoke-static {p3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->getSessionId()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    iget p1, p0, Lcom/android/server/autofill/Session;->id:I

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 67
    .line 68
    new-instance p1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;

    .line 69
    .line 70
    const/4 p3, 0x1

    .line 71
    invoke-direct {p1, p3, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    :goto_0
    const-string/jumbo p0, "setViewAutofilled(): no session for "

    .line 79
    .line 80
    .line 81
    const-string p2, "("

    .line 82
    .line 83
    const-string v0, ")"

    .line 84
    .line 85
    invoke-static {p1, p3, p0, p2, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final startSessionLocked(Landroid/os/IBinder;IILandroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;ZLandroid/content/ComponentName;ZZI)J
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v13, p9

    .line 4
    .line 5
    move/from16 v12, p12

    .line 6
    .line 7
    and-int/lit8 v1, v12, 0x8

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
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

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    return-wide v0

    .line 27
    :cond_1
    const-wide/32 v24, 0x7fffffff

    .line 28
    .line 29
    .line 30
    const/4 v11, 0x0

    .line 31
    if-nez v1, :cond_6

    .line 32
    .line 33
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 34
    .line 35
    iget v5, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static/range {p9 .. p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iget-object v6, v4, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v6

    .line 46
    :try_start_0
    iget-object v4, v4, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 53
    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    invoke-virtual {v4, v13}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->isAutofillDisabledLocked(Landroid/content/ComponentName;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto/16 :goto_3

    .line 63
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

    .line 67
    .line 68
    iget-object v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 69
    .line 70
    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    .line 73
    .line 74
    iget v4, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 75
    .line 76
    invoke-virtual {v1, v4, v13}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->isWhitelisted(ILandroid/content/ComponentName;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 83
    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    const-string v1, "AutofillManagerServiceImpl"

    .line 87
    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string/jumbo v5, "startSession("

    .line 91
    .line 92
    .line 93
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v5, "): disabled by service but whitelisted for augmented autofill"

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_3
    move v10, v2

    .line 112
    goto :goto_4

    .line 113
    :cond_4
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    const-string v0, "AutofillManagerServiceImpl"

    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string/jumbo v2, "startSession("

    .line 122
    .line 123
    .line 124
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v2, "): ignored because disabled by service and not whitelisted for augmented autofill"

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :cond_5
    invoke-static/range {p4 .. p4}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const/4 v1, 0x4

    .line 147
    :try_start_1
    invoke-interface {v0, v1, v11}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    move-object v1, v0

    .line 153
    const-string v0, "AutofillManagerServiceImpl"

    .line 154
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v3, "Could not notify "

    .line 158
    .line 159
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v3, " that it\'s disabled: "

    .line 166
    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
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

    .line 185
    .line 186
    if-eqz v1, :cond_7

    .line 187
    .line 188
    const-string v1, "AutofillManagerServiceImpl"

    .line 189
    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string/jumbo v5, "startSession(): token="

    .line 193
    .line 194
    .line 195
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    move-object/from16 v9, p1

    .line 199
    .line 200
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v5, ", flags="

    .line 204
    .line 205
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v5, ", forAugmentedAutofillOnly="

    .line 212
    .line 213
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-static {v1, v4, v10}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 217
    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_7
    move-object/from16 v9, p1

    .line 221
    .line 222
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 223
    .line 224
    .line 225
    move-result-wide v4

    .line 226
    iget-wide v6, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    .line 227
    .line 228
    const-wide/16 v14, 0x7530

    .line 229
    .line 230
    sub-long v14, v4, v14

    .line 231
    .line 232
    cmp-long v1, v6, v14

    .line 233
    .line 234
    if-gez v1, :cond_8

    .line 235
    .line 236
    iput-wide v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    .line 237
    .line 238
    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 239
    .line 240
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-lez v1, :cond_8

    .line 245
    .line 246
    new-instance v1, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;

    .line 247
    .line 248
    invoke-direct {v1, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    .line 249
    .line 250
    .line 251
    new-array v4, v3, [Ljava/lang/Void;

    .line 252
    .line 253
    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 254
    .line 255
    .line 256
    :cond_8
    move v1, v3

    .line 257
    :goto_6
    add-int/2addr v1, v2

    .line 258
    const-string v4, "AutofillManagerServiceImpl"

    .line 259
    .line 260
    const/16 v5, 0x800

    .line 261
    .line 262
    if-le v1, v5, :cond_9

    .line 263
    .line 264
    const-string v1, "Cannot create session in 2048 tries"

    .line 265
    .line 266
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move/from16 v27, v10

    .line 270
    .line 271
    move-object/from16 v28, v11

    .line 272
    .line 273
    goto/16 :goto_a

    .line 274
    .line 275
    :cond_9
    sget-object v5, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sRandom:Ljava/util/Random;

    .line 276
    .line 277
    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 282
    .line 283
    .line 284
    move-result v8

    .line 285
    if-eqz v8, :cond_12

    .line 286
    .line 287
    const v5, 0x7fffffff

    .line 288
    .line 289
    .line 290
    if-eq v8, v5, :cond_12

    .line 291
    .line 292
    iget-object v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 293
    .line 294
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    if-gez v5, :cond_12

    .line 299
    .line 300
    invoke-virtual/range {p9 .. p9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    iget-object v5, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 305
    .line 306
    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    :try_start_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 319
    .line 320
    .line 321
    move-result v14

    .line 322
    invoke-virtual {v6, v1, v14}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 323
    .line 324
    .line 325
    move-result v14
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 326
    if-eq v7, v14, :cond_c

    .line 327
    .line 328
    const-class v15, Landroid/app/ActivityManagerInternal;

    .line 329
    .line 330
    invoke-static {v15}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v15

    .line 334
    check-cast v15, Landroid/app/ActivityManagerInternal;

    .line 335
    .line 336
    invoke-virtual {v15, v7, v1}, Landroid/app/ActivityManagerInternal;->hasRunningActivity(ILjava/lang/String;)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-nez v1, :cond_c

    .line 341
    .line 342
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    if-eqz v1, :cond_a

    .line 347
    .line 348
    aget-object v1, v1, v3

    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_a
    const-string/jumbo v1, "uid-"

    .line 352
    .line 353
    .line 354
    invoke-static {v7, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    :goto_7
    const-string v3, "App (package="

    .line 359
    .line 360
    const-string v5, ", UID="

    .line 361
    .line 362
    const-string v6, ") passed component ("

    .line 363
    .line 364
    invoke-static {v7, v3, v1, v5, v6}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v5, ") owned by UID "

    .line 372
    .line 373
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    new-instance v3, Landroid/metrics/LogMaker;

    .line 387
    .line 388
    const/16 v4, 0x3b4

    .line 389
    .line 390
    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v3, v1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    const/16 v3, 0x38c

    .line 398
    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    invoke-virtual {v1, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-virtual/range {p9 .. p9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    const/16 v4, 0x3b5

    .line 412
    .line 413
    invoke-virtual {v1, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    if-eqz p10, :cond_b

    .line 418
    .line 419
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    const/16 v3, 0x586

    .line 424
    .line 425
    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 426
    .line 427
    .line 428
    :cond_b
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 429
    .line 430
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 431
    .line 432
    .line 433
    new-instance v0, Ljava/lang/SecurityException;

    .line 434
    .line 435
    const-string v1, "Invalid component: "

    .line 436
    .line 437
    invoke-static {v13, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    throw v0

    .line 445
    :cond_c
    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 446
    .line 447
    if-nez v1, :cond_d

    .line 448
    .line 449
    move-object/from16 v16, v11

    .line 450
    .line 451
    goto :goto_8

    .line 452
    :cond_d
    invoke-virtual {v1}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    move-object/from16 v16, v1

    .line 461
    .line 462
    :goto_8
    and-int/lit16 v1, v12, 0x800

    .line 463
    .line 464
    if-eqz v1, :cond_e

    .line 465
    .line 466
    move/from16 v23, v2

    .line 467
    .line 468
    goto :goto_9

    .line 469
    :cond_e
    move/from16 v23, v3

    .line 470
    .line 471
    :goto_9
    new-instance v4, Lcom/android/server/autofill/Session;

    .line 472
    .line 473
    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 474
    .line 475
    .line 476
    move-result-object v17

    .line 477
    iget-object v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 478
    .line 479
    iget-object v14, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 480
    .line 481
    iget-object v15, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mWtfHistory:Landroid/util/LocalLog;

    .line 482
    .line 483
    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 484
    .line 485
    move-object/from16 v22, v1

    .line 486
    .line 487
    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 488
    .line 489
    iget v6, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 490
    .line 491
    iget-object v7, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 492
    .line 493
    move-object v1, v4

    .line 494
    move-object/from16 v2, p0

    .line 495
    .line 496
    move-object/from16 v26, v4

    .line 497
    .line 498
    move-object/from16 v4, v17

    .line 499
    .line 500
    move/from16 v9, p2

    .line 501
    .line 502
    move/from16 v27, v10

    .line 503
    .line 504
    move/from16 v10, p3

    .line 505
    .line 506
    move-object/from16 v28, v11

    .line 507
    .line 508
    move-object/from16 v11, p1

    .line 509
    .line 510
    move-object/from16 v12, p4

    .line 511
    .line 512
    move/from16 v13, p8

    .line 513
    .line 514
    move-object/from16 v17, p9

    .line 515
    .line 516
    move/from16 v18, p10

    .line 517
    .line 518
    move/from16 v19, p11

    .line 519
    .line 520
    move/from16 v20, v27

    .line 521
    .line 522
    move/from16 v21, p12

    .line 523
    .line 524
    invoke-direct/range {v1 .. v23}, Lcom/android/server/autofill/Session;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/ui/AutoFillUI;Landroid/content/Context;Landroid/os/Handler;ILjava/lang/Object;IIILandroid/os/IBinder;Landroid/os/IBinder;ZLandroid/util/LocalLog;Landroid/util/LocalLog;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZILcom/android/server/inputmethod/InputMethodManagerInternal;Z)V

    .line 525
    .line 526
    .line 527
    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 528
    .line 529
    move-object/from16 v2, v26

    .line 530
    .line 531
    iget v3, v2, Lcom/android/server/autofill/Session;->id:I

    .line 532
    .line 533
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    move-object v11, v2

    .line 537
    :goto_a
    if-nez v11, :cond_f

    .line 538
    .line 539
    return-wide v24

    .line 540
    :cond_f
    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 541
    .line 542
    if-nez v1, :cond_10

    .line 543
    .line 544
    move-object/from16 v1, v28

    .line 545
    .line 546
    goto :goto_b

    .line 547
    :cond_10
    invoke-virtual {v1}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 552
    .line 553
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    const-string/jumbo v3, "id="

    .line 556
    .line 557
    .line 558
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    iget v3, v11, Lcom/android/server/autofill/Session;->id:I

    .line 562
    .line 563
    const-string v4, " uid="

    .line 564
    .line 565
    const-string v5, " a="

    .line 566
    .line 567
    move/from16 v6, p3

    .line 568
    .line 569
    invoke-static {v3, v6, v4, v5, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual/range {p9 .. p9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    const-string v3, " s="

    .line 580
    .line 581
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    const-string v1, " u="

    .line 588
    .line 589
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    iget v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 593
    .line 594
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    const-string v1, " i="

    .line 598
    .line 599
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    move-object/from16 v4, p5

    .line 603
    .line 604
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    const-string v1, " b="

    .line 608
    .line 609
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    move-object/from16 v5, p6

    .line 613
    .line 614
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    const-string v1, " hc="

    .line 618
    .line 619
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    move/from16 v7, p8

    .line 623
    .line 624
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    const-string v1, " f="

    .line 628
    .line 629
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    move/from16 v8, p12

    .line 633
    .line 634
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    const-string v1, " aa="

    .line 638
    .line 639
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    move/from16 v9, v27

    .line 643
    .line 644
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 652
    .line 653
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 654
    .line 655
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 656
    .line 657
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    iget-object v6, v11, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 661
    .line 662
    monitor-enter v6

    .line 663
    const/4 v7, 0x1

    .line 664
    move-object v0, v11

    .line 665
    move-object/from16 v1, p5

    .line 666
    .line 667
    move-object/from16 v2, p6

    .line 668
    .line 669
    move-object/from16 v3, p7

    .line 670
    .line 671
    move v4, v7

    .line 672
    move/from16 v5, p12

    .line 673
    .line 674
    :try_start_4
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/Session;->updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 675
    .line 676
    .line 677
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 678
    if-eqz v9, :cond_11

    .line 679
    .line 680
    iget v0, v11, Lcom/android/server/autofill/Session;->id:I

    .line 681
    .line 682
    int-to-long v0, v0

    .line 683
    const-wide v2, 0x100000000L

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    or-long/2addr v0, v2

    .line 689
    return-wide v0

    .line 690
    :cond_11
    iget v0, v11, Lcom/android/server/autofill/Session;->id:I

    .line 691
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

    .line 698
    .line 699
    const-string v1, "Could not verify UID for "

    .line 700
    .line 701
    move-object/from16 v10, p9

    .line 702
    .line 703
    invoke-static {v10, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    throw v0

    .line 711
    :cond_12
    move/from16 v6, p3

    .line 712
    .line 713
    move-object/from16 v4, p5

    .line 714
    .line 715
    move-object/from16 v5, p6

    .line 716
    .line 717
    move/from16 v7, p8

    .line 718
    .line 719
    move v9, v10

    .line 720
    move-object/from16 v28, v11

    .line 721
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

    .line 727
    .line 728
    move v10, v9

    .line 729
    move-object/from16 v9, p1

    .line 730
    .line 731
    goto/16 :goto_6
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AutofillManagerServiceImpl: [userId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", component="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 27
    .line 28
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

    .line 33
    .line 34
    .line 35
    const-string p0, "]"

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public final updateLocked(Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->forceRemoveAllSessionsLocked()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    :goto_0
    if-ltz v0, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/server/autofill/Session;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sendStateToClients(Z)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateRemoteAugmentedAutofillService()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 48
    .line 49
    .line 50
    return p1
.end method

.method public final updateRemoteAugmentedAutofillService()V
    .locals 5

    .line 1
    const-string/jumbo v0, "updateRemoteAugmentedAutofillService(): "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 8
    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string v2, "AutofillManagerServiceImpl"

    .line 16
    .line 17
    const-string/jumbo v3, "updateRemoteAugmentedAutofillService(): destroying old remote service"

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
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

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 36
    .line 37
    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 40
    .line 41
    move-object v3, v2

    .line 42
    check-cast v3, Lcom/android/server/autofill/AutofillManagerService;

    .line 43
    .line 44
    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    const-string v3, "AutofillManagerServiceImpl"

    .line 49
    .line 50
    const-string/jumbo v4, "resetting augmented autofill whitelist"

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    check-cast v2, Lcom/android/server/autofill/AutofillManagerService;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    .line 59
    .line 60
    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Lcom/android/internal/infra/GlobalWhitelistState;->resetWhitelist(I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAugmentedAutofillServiceAvailableLocked()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 70
    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    const-string v3, "AutofillManagerServiceImpl"

    .line 74
    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_3
    if-eqz v2, :cond_4

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 97
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

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string v2, "AutofillManagerServiceImpl"

    .line 16
    .line 17
    const-string/jumbo v3, "updateRemoteFieldClassificationService(): destroying old remote service"

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
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

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 33
    .line 34
    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationServiceAvailableLocked()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    const-string v3, "AutofillManagerServiceImpl"

    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_2
    if-eqz v2, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteFieldClassificationServiceLocked()Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteFieldClassificationService:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 68
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

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Lcom/android/server/autofill/Session;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget p0, v0, Lcom/android/server/autofill/Session;->uid:I

    .line 13
    .line 14
    if-eq p0, p5, :cond_0

    .line 15
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

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    :goto_0
    and-int/lit8 p0, p7, 0x1

    .line 27
    .line 28
    const-string p3, "AutofillManagerServiceImpl"

    .line 29
    .line 30
    if-eqz p0, :cond_3

    .line 31
    .line 32
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 33
    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string/jumbo p4, "restarting session "

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, " due to manual request on "

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void

    .line 63
    :cond_3
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 64
    .line 65
    if-eqz p0, :cond_4

    .line 66
    .line 67
    const-string/jumbo p0, "updateSessionLocked(): session gone for "

    .line 68
    .line 69
    .line 70
    const-string p2, "("

    .line 71
    .line 72
    const-string p4, ")"

    .line 73
    .line 74
    invoke-static {p1, p5, p0, p2, p4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_4
    return-void
.end method
