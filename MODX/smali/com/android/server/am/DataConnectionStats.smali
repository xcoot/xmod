.class public final Lcom/android/server/am/DataConnectionStats;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mContext:Landroid/content/Context;

.field public mDataState:I

.field public final mListenerHandler:Landroid/os/Handler;

.field public mNrState:I

.field public final mPhoneStateListener:Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;

.field public mServiceState:Landroid/telephony/ServiceState;

.field public mSignalStrength:Landroid/telephony/SignalStrength;

.field public mSimState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/server/am/DataConnectionStats;->mDataState:I

    .line 10
    iput v0, p0, Lcom/android/server/am/DataConnectionStats;->mNrState:I

    .line 12
    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mContext:Landroid/content/Context;

    .line 14
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 20
    iput-object p2, p0, Lcom/android/server/am/DataConnectionStats;->mListenerHandler:Landroid/os/Handler;

    .line 22
    new-instance p1, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;

    .line 24
    new-instance v0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerExecutor;

    .line 26
    invoke-direct {v0, p2}, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerExecutor;-><init>(Landroid/os/Handler;)V

    .line 29
    invoke-direct {p1, p0, v0}, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;-><init>(Lcom/android/server/am/DataConnectionStats;Lcom/android/server/am/DataConnectionStats$PhoneStateListenerExecutor;)V

    .line 32
    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mPhoneStateListener:Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;

    .line 34
    return-void
.end method


# virtual methods
.method public final notePhoneDataConnectionState()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    .line 8
    const/4 v1, 0x5

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eq v0, v1, :cond_2

    .line 14
    if-nez v0, :cond_1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 19
    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_3

    .line 27
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 29
    if-eqz v0, :cond_3

    .line 31
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    .line 34
    move-result v0

    .line 35
    if-eq v0, v4, :cond_3

    .line 37
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 39
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    .line 42
    move-result v0

    .line 43
    const/4 v1, 0x3

    .line 44
    if-eq v0, v1, :cond_3

    .line 46
    iget v0, p0, Lcom/android/server/am/DataConnectionStats;->mDataState:I

    .line 48
    if-ne v0, v3, :cond_3

    .line 50
    move v7, v4

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move v7, v2

    .line 53
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 55
    invoke-virtual {v0, v3, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    .line 58
    move-result-object v0

    .line 59
    if-nez v0, :cond_4

    .line 61
    :goto_2
    move v6, v2

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    .line 66
    move-result v2

    .line 67
    goto :goto_2

    .line 68
    :goto_3
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 70
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 72
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    .line 75
    move-result v8

    .line 76
    iget v9, p0, Lcom/android/server/am/DataConnectionStats;->mNrState:I

    .line 78
    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 80
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    .line 83
    move-result v10

    .line 84
    invoke-interface/range {v5 .. v10}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_4

    .line 88
    :catch_0
    move-exception p0

    .line 89
    const-string v0, "DataConnectionStats"

    .line 91
    const-string v1, "Error noting data connection state"

    .line 93
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :goto_4
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_5

    .line 13
    const-string/jumbo p1, "ss"

    .line 16
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const-string v0, "ABSENT"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 28
    const/4 p1, 0x1

    .line 29
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "READY"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 40
    const/4 p1, 0x5

    .line 41
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "LOCKED"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_4

    .line 52
    const-string/jumbo p1, "reason"

    .line 55
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    const-string p2, "PIN"

    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_2

    .line 67
    const/4 p1, 0x2

    .line 68
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const-string p2, "PUK"

    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_3

    .line 79
    const/4 p1, 0x3

    .line 80
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const/4 p1, 0x4

    .line 84
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    .line 86
    goto :goto_0

    .line 87
    :cond_4
    const/4 p1, 0x0

    .line 88
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/DataConnectionStats;->notePhoneDataConnectionState()V

    .line 93
    :cond_5
    return-void
.end method
