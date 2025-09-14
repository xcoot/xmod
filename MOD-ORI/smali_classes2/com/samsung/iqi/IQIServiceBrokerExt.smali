.class public final Lcom/samsung/iqi/IQIServiceBrokerExt;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final DEBUG:Z

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsOptOutTriggered:Z

.field public final mLock:Ljava/lang/Object;

.field public final mObserver:Lcom/samsung/iqi/IQIServiceBrokerExt$2;

.field public mServiceRunning:Z

.field public mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

.field public final mUploadStateReceiver:Lcom/samsung/iqi/IQIServiceBrokerExt$3;

.field public final rbIqiState:Lcom/samsung/iqi/IQIServiceBrokerExt$1;


# direct methods
.method public static -$$Nest$mchangeIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "changeIqiState: newState="

    .line 8
    .line 9
    const-string v1, "IQIServiceBrokerExt"

    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const-string v0, "iqi"

    .line 15
    .line 16
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    const-class v0, Lcom/android/server/SystemServiceManager;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/server/SystemServiceManager;

    .line 29
    .line 30
    const-string v1, "com.att.iqi.libs.IQIServiceBroker"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/16 v1, 0x258

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->registerIQIServiceStateListener()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 49
    .line 50
    const-string v1, "com.att.iqi.action.CHANGE_IQI_STATE"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v1, "com.att.iqi.extra.IQI_STATE"

    .line 56
    .line 57
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 63
    .line 64
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public static -$$Nest$smsubmitSS2S(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/att/iqi/lib/metrics/ss/SS2S;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/att/iqi/lib/metrics/ss/SS2S;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/att/iqi/lib/metrics/ss/SS2S;-><init>()V

    .line 18
    .line 19
    .line 20
    xor-int/lit8 p0, p0, 0x1

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v2, p0}, Lcom/att/iqi/lib/metrics/ss/SS2S;->setSetting(IB)Lcom/att/iqi/lib/metrics/ss/SS2S;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    .line 6
    .line 7
    const-string v1, "eng"

    .line 8
    .line 9
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput-boolean v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    .line 16
    .line 17
    new-instance v1, Landroid/os/Handler;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    .line 25
    .line 26
    new-instance v0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/samsung/iqi/IQIServiceBrokerExt$1;-><init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->rbIqiState:Lcom/samsung/iqi/IQIServiceBrokerExt$1;

    .line 32
    .line 33
    new-instance v0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;

    .line 34
    .line 35
    new-instance v1, Landroid/os/Handler;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p0, v1}, Lcom/samsung/iqi/IQIServiceBrokerExt$2;-><init>(Lcom/samsung/iqi/IQIServiceBrokerExt;Landroid/os/Handler;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mObserver:Lcom/samsung/iqi/IQIServiceBrokerExt$2;

    .line 44
    .line 45
    new-instance v0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/samsung/iqi/IQIServiceBrokerExt$3;-><init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mUploadStateReceiver:Lcom/samsung/iqi/IQIServiceBrokerExt$3;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    .line 62
    .line 63
    new-instance p1, Ljava/lang/Object;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mLock:Ljava/lang/Object;

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final registerIQIServiceStateListener()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, "IQIServiceBrokerExt"

    .line 16
    .line 17
    const-string v2, "Register IQI Service State Change Listener"

    .line 18
    .line 19
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance v1, Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;-><init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->registerServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final startIqi()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    const-string v1, "att_iqi_report_diagnostic"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move v0, v2

    .line 19
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    const-string/jumbo v2, "startIqi MNDToggleOpt="

    .line 24
    .line 25
    .line 26
    const-string v3, "IQIServiceBrokerExt"

    .line 27
    .line 28
    invoke-static {v0, v2, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v2, 0x2

    .line 32
    if-ne v0, v2, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    .line 36
    .line 37
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mObserver:Lcom/samsung/iqi/IQIServiceBrokerExt$2;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45
    .line 46
    .line 47
    const-class v0, Lcom/android/server/SystemServiceManager;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/android/server/SystemServiceManager;

    .line 54
    .line 55
    const-string v1, "com.att.iqi.libs.IQIServiceBroker"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->registerIQIServiceStateListener()V

    .line 61
    .line 62
    .line 63
    return-void
.end method
