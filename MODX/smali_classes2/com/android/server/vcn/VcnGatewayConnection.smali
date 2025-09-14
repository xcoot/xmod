.class public final Lcom/android/server/vcn/VcnGatewayConnection;
.super Lcom/android/internal/util/StateMachine;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final DISCONNECT_REQUEST_ALARM:Ljava/lang/String;

.field static final DUMMY_ADDR:Ljava/net/InetAddress;

.field public static final MERGED_CAPABILITIES:[I

.field static final NETWORK_INFO_EXTRA_INFO:Ljava/lang/String; = "VCN"

.field static final NETWORK_INFO_NETWORK_TYPE_STRING:Ljava/lang/String; = "MOBILE"

.field static final NETWORK_LOSS_DISCONNECT_TIMEOUT_SECONDS:I = 0x1e

.field static final RETRY_TIMEOUT_ALARM:Ljava/lang/String;

.field static final SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;

.field static final SAFEMODE_TIMEOUT_SECONDS:I = 0x1e

.field static final TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;

.field static final TEARDOWN_TIMEOUT_SECONDS:I = 0x5


# instance fields
.field public mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

.field final mConnectedState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

.field final mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

.field public final mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

.field public final mConnectivityDiagnosticsCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;

.field public final mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mCurrentToken:I

.field public final mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

.field public mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

.field final mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

.field final mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

.field public mFailedAttempts:I

.field public final mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

.field public mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

.field public mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

.field public final mIpSecManager:Landroid/net/IpSecManager;

.field public mIsInSafeMode:Z

.field public final mIsMobileDataEnabled:Z

.field public final mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

.field public mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field public mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

.field public mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field final mRetryTimeoutState:Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

.field public mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field public final mSubscriptionGroup:Landroid/os/ParcelUuid;

.field public mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field public mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

.field public mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

.field public final mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

.field public final mUnderlyingNetworkControllerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;

.field public final mVcnContext:Lcom/android/server/vcn/VcnContext;

.field public final mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;


# direct methods
.method public static $r8$lambda$dQrFsdoY5M3GVBsFSNJpWCtl8SQ(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static -$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "VcnGatewayConnection"

    .line 21
    .line 22
    invoke-static {v1, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "[INFO] "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static -$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "Uncaught exception"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "VcnGatewayConnection"

    .line 23
    .line 24
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    sget-object p0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "[WTF ] Uncaught exception"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static -$$Nest$msessionClosed(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V
    .locals 6

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v0, p2, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, p2

    .line 12
    check-cast v0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->getErrorType()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x18

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    instance-of v0, p2, Landroid/net/ipsec/ike/exceptions/IkeInternalException;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    instance-of v0, v0, Ljava/io/IOException;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const-class v0, Ljava/io/IOException;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x2

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const-class v0, Ljava/lang/RuntimeException;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "Received "

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, " with message: "

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const/4 v2, 0x0

    .line 105
    :goto_1
    const-string v3, "Encountered error; code="

    .line 106
    .line 107
    const-string v4, ", exceptionClass="

    .line 108
    .line 109
    const-string v5, ", exceptionMessage="

    .line 110
    .line 111
    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {p0, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v3, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    .line 126
    .line 127
    iget-object v4, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 128
    .line 129
    invoke-virtual {v4}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-interface {v3, v2, v4, v0, v1}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onGatewayConnectionError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;

    .line 140
    .line 141
    invoke-direct {v0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;-><init>(Ljava/lang/Exception;)V

    .line 142
    .line 143
    .line 144
    const/4 p2, 0x3

    .line 145
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 146
    .line 147
    .line 148
    const/4 p2, 0x4

    .line 149
    invoke-virtual {p0, p2, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public static -$$Nest$msessionLost(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V
    .locals 5

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-class v2, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v4, "Received "

    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v4, " with message: "

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-interface {v0, v4, v1, v2, v3}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onGatewayConnectionError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;

    .line 59
    .line 60
    invoke-direct {v0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;-><init>(Ljava/lang/Exception;)V

    .line 61
    .line 62
    .line 63
    const/4 p2, 0x3

    .line 64
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    const-string v0, "192.0.2.0"

    .line 4
    .line 5
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->DUMMY_ADDR:Ljava/net/InetAddress;

    .line 10
    .line 11
    const-string v0, "VcnGatewayConnection_TEARDOWN_TIMEOUT_ALARM"

    .line 12
    .line 13
    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "VcnGatewayConnection_DISCONNECT_REQUEST_ALARM"

    .line 16
    .line 17
    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->DISCONNECT_REQUEST_ALARM:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "VcnGatewayConnection_RETRY_TIMEOUT_ALARM"

    .line 20
    .line 21
    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->RETRY_TIMEOUT_ALARM:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "VcnGatewayConnection_SAFEMODE_TIMEOUT_ALARM"

    .line 24
    .line 25
    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;

    .line 26
    .line 27
    const/16 v0, 0xb

    .line 28
    .line 29
    const/16 v1, 0x12

    .line 30
    .line 31
    filled-new-array {v0, v1}, [I

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->MERGED_CAPABILITIES:[I

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;ZLcom/android/server/vcn/VcnGatewayConnection$Dependencies;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    move-object/from16 v1, p3

    .line 8
    .line 9
    move-object/from16 v9, p4

    .line 10
    .line 11
    move-object/from16 v2, p5

    .line 12
    .line 13
    move-object/from16 v3, p7

    .line 14
    .line 15
    const-string v5, "Missing vcnContext"

    .line 16
    .line 17
    invoke-static {v8, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v5, v8, Lcom/android/server/vcn/VcnContext;->mLooper:Landroid/os/Looper;

    .line 21
    .line 22
    const-string v6, "VcnGatewayConnection"

    .line 23
    .line 24
    invoke-direct {v0, v6, v5}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    new-instance v10, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    .line 28
    .line 29
    invoke-direct {v10, v0}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 30
    .line 31
    .line 32
    iput-object v10, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    .line 33
    .line 34
    new-instance v11, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    .line 35
    .line 36
    invoke-direct {v11, v0}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 37
    .line 38
    .line 39
    iput-object v11, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    .line 40
    .line 41
    new-instance v12, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    .line 42
    .line 43
    invoke-direct {v12, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 44
    .line 45
    .line 46
    iput-object v12, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    .line 47
    .line 48
    new-instance v13, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    .line 49
    .line 50
    invoke-direct {v13, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 51
    .line 52
    .line 53
    iput-object v13, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectedState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    .line 54
    .line 55
    new-instance v14, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

    .line 56
    .line 57
    invoke-direct {v14, v0}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 58
    .line 59
    .line 60
    iput-object v14, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutState:Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    iput-object v5, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 64
    .line 65
    new-instance v5, Lcom/android/server/vcn/util/OneWayBoolean;

    .line 66
    .line 67
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    const/4 v15, 0x0

    .line 71
    iput-boolean v15, v5, Lcom/android/server/vcn/util/OneWayBoolean;->mValue:Z

    .line 72
    .line 73
    iput-object v5, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    .line 74
    .line 75
    iput-boolean v15, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    .line 76
    .line 77
    const/4 v5, -0x1

    .line 78
    iput v5, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 79
    .line 80
    iput v15, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    .line 81
    .line 82
    iput-object v8, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 83
    .line 84
    const-string v5, "Missing subscriptionGroup"

    .line 85
    .line 86
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    iput-object v4, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 90
    .line 91
    const-string v5, "Missing connectionConfig"

    .line 92
    .line 93
    invoke-static {v9, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    iput-object v9, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 97
    .line 98
    const-string v5, "Missing gatewayStatusCallback"

    .line 99
    .line 100
    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    iput-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    .line 104
    .line 105
    move/from16 v2, p6

    .line 106
    .line 107
    iput-boolean v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsMobileDataEnabled:Z

    .line 108
    .line 109
    const-string v2, "Missing deps"

    .line 110
    .line 111
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    iput-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    .line 115
    .line 116
    const-string v2, "Missing snapshot"

    .line 117
    .line 118
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 122
    .line 123
    new-instance v6, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;

    .line 124
    .line 125
    invoke-direct {v6, v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 126
    .line 127
    .line 128
    iput-object v6, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkControllerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;

    .line 129
    .line 130
    iget-object v1, v8, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    new-instance v2, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    .line 133
    .line 134
    invoke-direct {v2, v1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;-><init>(Landroid/content/Context;)V

    .line 135
    .line 136
    .line 137
    iput-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    .line 138
    .line 139
    iget-object v5, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 140
    .line 141
    new-instance v7, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 142
    .line 143
    new-instance v16, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;

    .line 144
    .line 145
    invoke-direct/range {v16 .. v16}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;-><init>()V

    .line 146
    .line 147
    .line 148
    move-object v1, v7

    .line 149
    move-object/from16 v2, p1

    .line 150
    .line 151
    move-object/from16 v3, p4

    .line 152
    .line 153
    move-object/from16 v4, p2

    .line 154
    .line 155
    move-object v15, v7

    .line 156
    move-object/from16 v7, v16

    .line 157
    .line 158
    invoke-direct/range {v1 .. v7}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;)V

    .line 159
    .line 160
    .line 161
    iput-object v15, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 162
    .line 163
    iget-object v1, v8, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 164
    .line 165
    const-class v2, Landroid/net/IpSecManager;

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Landroid/net/IpSecManager;

    .line 172
    .line 173
    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIpSecManager:Landroid/net/IpSecManager;

    .line 174
    .line 175
    iget-object v1, v8, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 176
    .line 177
    const-class v2, Landroid/net/ConnectivityManager;

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 184
    .line 185
    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 186
    .line 187
    iget-object v1, v8, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 188
    .line 189
    const-class v2, Landroid/net/ConnectivityDiagnosticsManager;

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    check-cast v1, Landroid/net/ConnectivityDiagnosticsManager;

    .line 196
    .line 197
    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    .line 198
    .line 199
    new-instance v2, Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;

    .line 200
    .line 201
    invoke-direct {v2, v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 202
    .line 203
    .line 204
    iput-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityDiagnosticsCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;

    .line 205
    .line 206
    const/4 v3, 0x0

    .line 207
    invoke-virtual {v9, v3}, Landroid/net/vcn/VcnGatewayConnectionConfig;->hasGatewayOption(I)Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-eqz v4, :cond_0

    .line 212
    .line 213
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    .line 214
    .line 215
    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    new-instance v4, Landroid/os/HandlerExecutor;

    .line 227
    .line 228
    new-instance v5, Landroid/os/Handler;

    .line 229
    .line 230
    iget-object v6, v8, Lcom/android/server/vcn/VcnContext;->mLooper:Landroid/os/Looper;

    .line 231
    .line 232
    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 233
    .line 234
    .line 235
    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v3, v4, v2}, Landroid/net/ConnectivityDiagnosticsManager;->registerConnectivityDiagnosticsCallback(Landroid/net/NetworkRequest;Ljava/util/concurrent/Executor;Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;)V

    .line 239
    .line 240
    .line 241
    :cond_0
    invoke-virtual {v0, v10}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v11}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v12}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v13}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v14}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v10}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 257
    .line 258
    .line 259
    const/4 v1, 0x0

    .line 260
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->setDbg(Z)V

    .line 261
    .line 262
    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 264
    .line 265
    .line 266
    return-void
.end method

.method public static buildNetworkCapabilities(Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Z)Landroid/net/NetworkCapabilities;
    .locals 8

    .line 1
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x1c

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x14

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 18
    .line 19
    .line 20
    const/16 v2, 0x15

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez p2, :cond_1

    .line 50
    .line 51
    const/16 v4, 0xc

    .line 52
    .line 53
    if-eq v3, v4, :cond_0

    .line 54
    .line 55
    const/4 v4, 0x2

    .line 56
    if-ne v3, v4, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const-string p2, "VcnGatewayConnection"

    .line 64
    .line 65
    if-eqz p1, :cond_8

    .line 66
    .line 67
    iget-object v2, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 68
    .line 69
    sget-object v3, Lcom/android/server/vcn/VcnGatewayConnection;->MERGED_CAPABILITIES:[I

    .line 70
    .line 71
    array-length v4, v3

    .line 72
    move v5, v1

    .line 73
    :goto_1
    if-ge v5, v4, :cond_4

    .line 74
    .line 75
    aget v6, v3, v5

    .line 76
    .line 77
    invoke-virtual {v2, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_3

    .line 82
    .line 83
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 84
    .line 85
    .line 86
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getAdministratorUids()[I

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    const/4 v5, 0x1

    .line 101
    if-lez v4, :cond_5

    .line 102
    .line 103
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([II)I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-gez v4, :cond_5

    .line 112
    .line 113
    array-length v4, v3

    .line 114
    add-int/2addr v4, v5

    .line 115
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    array-length v4, v3

    .line 120
    sub-int/2addr v4, v5

    .line 121
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    aput v6, v3, v4

    .line 126
    .line 127
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 128
    .line 129
    .line 130
    :cond_5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;

    .line 135
    .line 136
    .line 137
    array-length v4, v3

    .line 138
    add-int/2addr v4, v5

    .line 139
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    array-length v4, v3

    .line 144
    sub-int/2addr v4, v5

    .line 145
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    aput v6, v3, v4

    .line 150
    .line 151
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_6

    .line 173
    .line 174
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    instance-of v3, v3, Landroid/net/wifi/WifiInfo;

    .line 179
    .line 180
    if-eqz v3, :cond_6

    .line 181
    .line 182
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    check-cast p2, Landroid/net/wifi/WifiInfo;

    .line 187
    .line 188
    new-instance v1, Landroid/net/vcn/VcnTransportInfo;

    .line 189
    .line 190
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getMinUdpPort4500NatTimeoutSeconds()I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    invoke-direct {v1, p2, p0}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_6
    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_7

    .line 206
    .line 207
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    instance-of v1, v1, Landroid/net/TelephonyNetworkSpecifier;

    .line 212
    .line 213
    if-eqz v1, :cond_7

    .line 214
    .line 215
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    check-cast p2, Landroid/net/TelephonyNetworkSpecifier;

    .line 220
    .line 221
    new-instance v1, Landroid/net/vcn/VcnTransportInfo;

    .line 222
    .line 223
    invoke-virtual {p2}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getMinUdpPort4500NatTimeoutSeconds()I

    .line 228
    .line 229
    .line 230
    move-result p0

    .line 231
    invoke-direct {v1, p2, p0}, Landroid/net/vcn/VcnTransportInfo;-><init>(II)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_7
    const-string p0, "Unknown transport type or missing TransportInfo/NetworkSpecifier for non-null underlying network"

    .line 239
    .line 240
    invoke-static {p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    :goto_2
    iget-object p0, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 244
    .line 245
    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-virtual {v0, p0}, Landroid/net/NetworkCapabilities$Builder;->setUnderlyingNetworks(Ljava/util/List;)Landroid/net/NetworkCapabilities$Builder;

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 254
    .line 255
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 256
    .line 257
    .line 258
    const-string p1, "No underlying network while building network capabilities"

    .line 259
    .line 260
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .line 262
    .line 263
    :goto_3
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    return-object p0
.end method

.method public static getSafeModeTimeoutMs(Lcom/android/server/vcn/VcnContext;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/os/ParcelUuid;)J
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/vcn/VcnContext;->mIsInTestMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x1e

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getCarrierConfigForSubGrp(Landroid/os/ParcelUuid;)Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p0, p0, Lcom/android/server/vcn/VcnContext;->mFeatureFlags:Landroid/net/vcn/FeatureFlags;

    .line 15
    .line 16
    check-cast p0, Landroid/net/vcn/FeatureFlagsImpl;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/net/vcn/FeatureFlagsImpl;->safeModeTimeoutConfig()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p0, p1, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 27
    .line 28
    const-string/jumbo p1, "vcn_safe_mode_timeout_seconds_key"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    :cond_1
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 36
    .line 37
    int-to-long p1, v0

    .line 38
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide p0

    .line 42
    return-wide p0
.end method


# virtual methods
.method public final acquireWakeLock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/android/server/vcn/util/OneWayBoolean;->mValue:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;->mImpl:Landroid/os/PowerManager$WakeLock;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    .line 22
    .line 23
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0

    .line 29
    throw p0

    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method public buildConnectedLinkProperties(Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)Landroid/net/LinkProperties;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/net/LinkProperties;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/net/IpSecManager$IpSecTunnelInterface;->getInterfaceName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {v1, p2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p3, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->mChildConfig:Landroid/net/ipsec/ike/ChildSessionConfiguration;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/net/LinkAddress;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p2, p3, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->mChildConfig:Landroid/net/ipsec/ike/ChildSessionConfiguration;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalDnsServers()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-eqz p3, :cond_1

    .line 58
    .line 59
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    check-cast p3, Ljava/net/InetAddress;

    .line 64
    .line 65
    invoke-virtual {v1, p3}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    new-instance p2, Landroid/net/RouteInfo;

    .line 70
    .line 71
    new-instance p3, Landroid/net/IpPrefix;

    .line 72
    .line 73
    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-direct {p3, v2, v3}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 77
    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    const/4 v4, 0x1

    .line 81
    invoke-direct {p2, p3, v2, v2, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 85
    .line 86
    .line 87
    new-instance p2, Landroid/net/RouteInfo;

    .line 88
    .line 89
    new-instance p3, Landroid/net/IpPrefix;

    .line 90
    .line 91
    sget-object v5, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    .line 92
    .line 93
    invoke-direct {p3, v5, v3}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p2, p3, v2, v2, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 100
    .line 101
    .line 102
    const-string p2, "VcnGatewayConnection"

    .line 103
    .line 104
    if-eqz p4, :cond_4

    .line 105
    .line 106
    iget-object p3, p4, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    .line 107
    .line 108
    invoke-virtual {p3}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p4

    .line 112
    invoke-virtual {v1, p4}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3}, Landroid/net/LinkProperties;->getMtu()I

    .line 116
    .line 117
    .line 118
    move-result p4

    .line 119
    if-nez p4, :cond_3

    .line 120
    .line 121
    invoke-virtual {p3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    if-eqz v2, :cond_3

    .line 126
    .line 127
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    .line 128
    .line 129
    invoke-virtual {p3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    :try_start_0
    invoke-static {p3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    if-nez p0, :cond_2

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_2
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getMTU()I

    .line 144
    .line 145
    .line 146
    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_2

    .line 148
    :catch_0
    move-exception p0

    .line 149
    const-string p3, "Could not get MTU of underlying network"

    .line 150
    .line 151
    invoke-static {p2, p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_3
    move v3, p4

    .line 156
    goto :goto_2

    .line 157
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 158
    .line 159
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string p3, "No underlying network while building link properties"

    .line 163
    .line 164
    invoke-static {p2, p3, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .line 166
    .line 167
    :goto_2
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-virtual {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getSaProposals()Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getMaxMtu()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    invoke-virtual {p5}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getLocalAddress()Ljava/net/InetAddress;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    instance-of p2, p2, Ljava/net/Inet4Address;

    .line 184
    .line 185
    invoke-static {p0, p1, p2, v3}, Lcom/android/server/vcn/util/MtuUtils;->getMtu(Ljava/util/List;IZI)I

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    invoke-virtual {v1, p0}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 190
    .line 191
    .line 192
    return-object v1
.end method

.method public buildIkeSession(Landroid/net/Network;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v4, Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v4, v2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;-><init>(Landroid/net/ipsec/ike/IkeSessionParams;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, p1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setNetwork(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->build()Landroid/net/ipsec/ike/IkeSessionParams;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    new-instance v6, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;

    .line 44
    .line 45
    invoke-direct {v6, p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;I)V

    .line 46
    .line 47
    .line 48
    new-instance v7, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-direct {v7, p0, v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;IZ)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 58
    .line 59
    move-object v2, p0

    .line 60
    invoke-direct/range {v2 .. v7}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;)V

    .line 61
    .line 62
    .line 63
    return-object p0
.end method

.method public final cancelSafeModeAlarm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 10
    .line 11
    :cond_0
    const/16 v0, 0xa

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(ILcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p3, "Attempted to schedule alarm after StateMachine has quit"

    .line 25
    .line 26
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string p4, "VcnGatewayConnection"

    .line 34
    .line 35
    invoke-static {p4, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    sget-object p2, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 39
    .line 40
    new-instance p4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v0, "[WARN] "

    .line 43
    .line 44
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p2, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    return-object p0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 72
    .line 73
    new-instance v3, Lcom/android/server/vcn/VcnGatewayConnection$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    invoke-direct {v3, p0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/os/Message;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance p2, Lcom/android/internal/util/WakeupMessage;

    .line 82
    .line 83
    iget-object v1, v2, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-direct {p2, v1, v0, p1, v3}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 94
    .line 95
    .line 96
    move-result-wide p0

    .line 97
    add-long/2addr p0, p3

    .line 98
    invoke-virtual {p2, p0, p1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 99
    .line 100
    .line 101
    return-object p2
.end method

.method public getConnectivityDiagnosticsCallback()Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityDiagnosticsCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIkeConnectionInfo()Landroid/net/ipsec/ike/IkeSessionConnectionInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIkeSession()Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLogPrefix()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Landroid/os/ParcelUuid;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "-"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p0, ") "

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public getNetworkAgent()Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTagLogPrefix()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[ VcnGatewayConnection "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, "]"

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public getUnderlyingNetwork()Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUnderlyingNetworkControllerCallback()Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkControllerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public isQuitting()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/vcn/util/OneWayBoolean;->mValue:Z

    .line 4
    .line 5
    return p0
.end method

.method public final logDbg(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p1, "VcnGatewayConnection"

    .line 21
    .line 22
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final logInfo(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "VcnGatewayConnection"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "[INFO] "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final logWtf(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "VcnGatewayConnection"

    .line 21
    .line 22
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    sget-object p0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "[WTF ] "

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onQuitting()V
    .locals 4

    .line 1
    const-string v0, "Quitting VcnGatewayConnection"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "NetworkAgent was non-null in onQuitting"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->mImpl:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->unregister()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-string v0, "IkeSession was non-null in onQuitting"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSession;->kill()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/net/IpSecManager$IpSecTunnelInterface;->close()V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    .line 56
    .line 57
    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;->mImpl:Landroid/os/PowerManager$WakeLock;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    monitor-exit v0

    .line 64
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    .line 65
    .line 66
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 77
    .line 78
    :cond_3
    const/16 v0, 0x8

    .line 79
    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(ILcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 88
    .line 89
    .line 90
    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 91
    .line 92
    :cond_4
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    .line 93
    .line 94
    const-string v2, "Underlying Network lost"

    .line 95
    .line 96
    const/4 v3, 0x0

    .line 97
    invoke-direct {v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    const/4 v2, 0x7

    .line 101
    invoke-virtual {p0, v2, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(ILcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 105
    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 112
    .line 113
    :cond_5
    const/4 v0, 0x2

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(ILcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelSafeModeAlarm()V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 121
    .line 122
    iget-object v1, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 125
    .line 126
    .line 127
    const/4 v2, 0x1

    .line 128
    iput-boolean v2, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mIsQuitting:Z

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->registerOrUpdateNetworkRequests()V

    .line 131
    .line 132
    .line 133
    iget-object v1, v1, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    const-class v2, Landroid/telephony/TelephonyManager;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mActiveDataSubIdListener:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$VcnActiveDataSubscriptionIdListener;

    .line 144
    .line 145
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    .line 149
    .line 150
    invoke-interface {v0}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onQuit()V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    .line 154
    .line 155
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityDiagnosticsCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;

    .line 156
    .line 157
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityDiagnosticsManager;->unregisterConnectivityDiagnosticsCallback(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :catchall_0
    move-exception p0

    .line 162
    monitor-exit v0

    .line 163
    throw p0
.end method

.method public final removeEqualMessages(ILcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    .line 28
    .line 29
    monitor-enter p1

    .line 30
    :try_start_0
    iget-object p2, p1, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;->mImpl:Landroid/os/PowerManager$WakeLock;

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    monitor-exit p1

    .line 36
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    .line 37
    .line 38
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit p1

    .line 44
    throw p0
.end method

.method public sendDisconnectRequestedAndAcquireWakelock(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x7

    .line 7
    const/high16 p2, -0x80000000

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final sendMessage(I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public final sendMessage(II)V
    .locals 1

    .line 5
    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public final sendMessage(III)V
    .locals 1

    .line 7
    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 8
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->sendMessage(III)V

    return-void
.end method

.method public final sendMessage(IIILjava/lang/Object;)V
    .locals 1

    .line 9
    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 10
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 1

    .line 3
    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .locals 1

    .line 11
    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 12
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public final sendMessageAndAcquireWakeLock(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public final sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    const/high16 v0, -0x80000000

    .line 4
    invoke-super {p0, p1, p2, v0, p3}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public setIkeSession(Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 2
    .line 3
    return-void
.end method

.method public setNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 2
    .line 3
    return-void
.end method

.method public setQuitting()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/server/vcn/util/OneWayBoolean;->mValue:Z

    .line 5
    .line 6
    return-void
.end method

.method public setSafeModeAlarm()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/vcn/VcnContext;->mFeatureFlags:Landroid/net/vcn/FeatureFlags;

    .line 4
    .line 5
    check-cast v0, Landroid/net/vcn/FeatureFlagsImpl;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/net/vcn/FeatureFlagsImpl;->safeModeConfig()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->isSafeModeEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const/16 v0, 0xa

    .line 28
    .line 29
    const/high16 v1, -0x80000000

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 42
    .line 43
    invoke-static {v2, v3, v4}, Lcom/android/server/vcn/VcnGatewayConnection;->getSafeModeTimeoutMs(Lcom/android/server/vcn/VcnContext;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/os/ParcelUuid;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 52
    .line 53
    return-void
.end method

.method public setTunnelInterface(Landroid/net/IpSecManager$IpSecTunnelInterface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 2
    .line 3
    return-void
.end method

.method public setUnderlyingNetwork(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 2
    .line 3
    return-void
.end method

.method public final teardownAsynchronously()V
    .locals 2

    .line 1
    const-string v0, "Triggering async teardown"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "teardown() called on VcnTunnel"

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendDisconnectRequestedAndAcquireWakelock(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
