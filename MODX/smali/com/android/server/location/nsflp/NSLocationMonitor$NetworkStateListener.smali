.class public final Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 3
    iget-object p1, p1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5
    invoke-direct {p0, p1}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    const-string p1, "Constructor, NetworkStateListener subId="

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    const-string p1, "NSLocationMonitor"

    .line 24
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method


# virtual methods
.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 9

    .line 1
    const-string v0, "NSLocationMonitor"

    .line 3
    if-nez p1, :cond_0

    .line 5
    const-string/jumbo p0, "onServiceStateChanged null"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getChannelNumber()I

    .line 19
    move-result v2

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    const-string/jumbo v4, "onServiceStateChanged, state="

    .line 25
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v4, " / channel="

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v3, 0x2

    .line 47
    const/4 v4, 0x1

    .line 48
    invoke-virtual {p1, v3, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    .line 51
    move-result-object p1

    .line 52
    const/4 v3, 0x0

    .line 53
    if-eqz p1, :cond_2

    .line 55
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    .line 58
    move-result v5

    .line 59
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    .line 66
    move-result p1

    .line 67
    const/4 v7, 0x3

    .line 68
    if-ne p1, v7, :cond_1

    .line 70
    move v3, v4

    .line 71
    :cond_1
    const-string/jumbo p1, "networkType["

    .line 74
    const-string v7, "]="

    .line 76
    const-string v8, " / nrState="

    .line 78
    invoke-static {v5, p1, v7, v6, v8}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    move-result-object p1

    .line 82
    invoke-static {v0, p1, v3}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const-string p1, "Failed to get registration info from serviceState"

    .line 88
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v5, -0x1

    .line 92
    const-string/jumbo v6, "unknown"

    .line 95
    move v4, v3

    .line 96
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    .line 98
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 101
    const-string/jumbo v0, "serviceState"

    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    const-string/jumbo v0, "isRegistered"

    .line 110
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    const-string/jumbo v0, "nrState"

    .line 116
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    const-string/jumbo v0, "channelNumber"

    .line 122
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const-string/jumbo v0, "networkType"

    .line 128
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    const-string/jumbo v0, "networkTypeName"

    .line 134
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 139
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 141
    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->SERVICE_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 143
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 146
    return-void
.end method
