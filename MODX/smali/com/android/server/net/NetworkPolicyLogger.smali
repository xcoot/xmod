.class public final Lcom/android/server/net/NetworkPolicyLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final LOGD:Z

.field public static final LOGV:Z

.field public static final MAX_LOG_SIZE:I

.field public static final MAX_NETWORK_BLOCKED_LOG_SIZE:I


# instance fields
.field public mDebugUid:I

.field public final mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

.field public final mLock:Ljava/lang/Object;

.field public final mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

.field public final mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "NetworkPolicy"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    .line 17
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 20
    move-result v0

    .line 21
    const/16 v1, 0x190

    .line 23
    const/16 v2, 0x64

    .line 25
    if-eqz v0, :cond_0

    .line 27
    move v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v1

    .line 30
    :goto_0
    sput v0, Lcom/android/server/net/NetworkPolicyLogger;->MAX_LOG_SIZE:I

    .line 32
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 38
    move v1, v2

    .line 39
    :cond_1
    sput v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_NETWORK_BLOCKED_LOG_SIZE:I

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 6
    sget v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_NETWORK_BLOCKED_LOG_SIZE:I

    .line 8
    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;-><init>(I)V

    .line 11
    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 13
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 15
    sget v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_LOG_SIZE:I

    .line 17
    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;-><init>(I)V

    .line 20
    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 22
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 24
    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;-><init>(I)V

    .line 27
    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 29
    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 32
    new-instance v0, Ljava/lang/Object;

    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public static getFirewallChainName(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 4
    :pswitch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :pswitch_1
    const-string/jumbo p0, "metered_deny_admin"

    .line 12
    return-object p0

    .line 13
    :pswitch_2
    const-string/jumbo p0, "metered_deny_user"

    .line 16
    return-object p0

    .line 17
    :pswitch_3
    const-string/jumbo p0, "metered_allow"

    .line 20
    return-object p0

    .line 21
    :pswitch_4
    const-string/jumbo p0, "fw_oem_deny_1"

    .line 24
    return-object p0

    .line 25
    :pswitch_5
    const-string p0, "background"

    .line 27
    return-object p0

    .line 28
    :pswitch_6
    const-string/jumbo p0, "low_power_standby"

    .line 31
    return-object p0

    .line 32
    :pswitch_7
    const-string/jumbo p0, "restricted"

    .line 35
    return-object p0

    .line 36
    :pswitch_8
    const-string/jumbo p0, "powersave"

    .line 39
    return-object p0

    .line 40
    :pswitch_9
    const-string/jumbo p0, "standby"

    .line 43
    return-object p0

    .line 44
    :pswitch_a
    const-string/jumbo p0, "dozable"

    .line 47
    return-object p0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getPolicyChangedLog(III)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "Policy for "

    .line 3
    const-string v1, " changed from "

    .line 5
    invoke-static {p0, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string p1, " to "

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static getTempPowerSaveWlChangedLog(IILjava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "temp-power-save whitelist for "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string p0, " changed to: "

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    const-string p0, "; reason="

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {p1}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string p0, " <"

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string p0, ">"

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static getUidFirewallRuleChangedLog(III)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    if-eqz p2, :cond_2

    .line 11
    const/4 v0, 0x1

    .line 12
    if-eq p2, v0, :cond_1

    .line 14
    const/4 v0, 0x2

    .line 15
    if-eq p2, v0, :cond_0

    .line 17
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string/jumbo p2, "deny"

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string p2, "allow"

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const-string/jumbo p2, "default"

    .line 32
    :goto_0
    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    const-string p1, "Firewall rule changed: %d-%s-%s"

    .line 38
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method


# virtual methods
.method public final appIdleStateChanged(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 10
    if-ne p1, v1, :cond_1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    :goto_0
    const-string v1, "NetworkPolicy"

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    const-string v3, "App idle state of uid "

    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v3, ": "

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 44
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 47
    move-result-object p0

    .line 48
    if-nez p0, :cond_2

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 54
    const/16 v1, 0x8

    .line 56
    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 58
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 60
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    move-result-wide p1

    .line 66
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 68
    :goto_1
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method

.method public final appIdleWlChanged(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 10
    if-ne p1, v1, :cond_1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    :goto_0
    const-string v1, "NetworkPolicy"

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    const-string v3, "App idle whitelist state of uid "

    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v3, ": "

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 44
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 47
    move-result-object p0

    .line 48
    if-nez p0, :cond_2

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 54
    const/16 v1, 0xe

    .line 56
    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 58
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 60
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    move-result-wide p1

    .line 66
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 68
    :goto_1
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method

.method public final deviceIdleModeEnabled(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq v1, v2, :cond_1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    :goto_0
    const-string v1, "NetworkPolicy"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    const-string v3, "DeviceIdleMode enabled: "

    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 37
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_2

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 47
    const/4 v1, 0x7

    .line 48
    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 50
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    move-result-wide v1

    .line 56
    iput-wide v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 58
    :goto_1
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public final dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 7
    const-string/jumbo v1, "mEventLogs (most recent first):"

    .line 10
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 16
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 18
    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 21
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 24
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 27
    const-string/jumbo v1, "mNetworkBlockedLogs (most recent first):"

    .line 30
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 36
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 38
    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 41
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 44
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 47
    const-string/jumbo v1, "mUidStateChangeLogs (most recent first):"

    .line 50
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 56
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 61
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

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

.method public final firewallChainEnabled(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq v1, v2, :cond_1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    :goto_0
    const-string v1, "NetworkPolicy"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    const-string v3, "Firewall chain "

    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v3, " state: "

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 49
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 52
    move-result-object p0

    .line 53
    if-nez p0, :cond_2

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 59
    const/16 v1, 0xc

    .line 61
    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 63
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 65
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    move-result-wide p1

    .line 71
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 73
    :goto_1
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public final firewallRulesChanged(I[I[I)V
    .locals 3

    .line 1
    const-string v0, "Firewall rules changed for "

    .line 3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string p1, "; uids="

    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string p1, "; rules="

    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    sget-boolean p2, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 48
    if-nez p2, :cond_0

    .line 50
    iget p2, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 52
    const/4 p3, -0x1

    .line 53
    if-eq p2, p3, :cond_1

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_0
    :goto_0
    const-string p2, "NetworkPolicy"

    .line 60
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 65
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 68
    move-result-object p0

    .line 69
    if-nez p0, :cond_2

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const/4 p2, 0x0

    .line 73
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 75
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    move-result-wide p1

    .line 81
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 83
    :goto_1
    monitor-exit v1

    .line 84
    return-void

    .line 85
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0
.end method

.method public final interfacesChanged(ILandroid/util/ArraySet;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq v1, v2, :cond_1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    :goto_0
    const-string v1, "NetworkPolicy"

    .line 18
    invoke-virtual {p2}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    const-string v4, "Interfaces of netId="

    .line 26
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v4, " changed to "

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 49
    invoke-virtual {p2}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 56
    move-result-object p0

    .line 57
    if-nez p0, :cond_2

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/16 v1, 0x12

    .line 62
    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 64
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 66
    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    move-result-wide p1

    .line 72
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 74
    :goto_1
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method

.method public final meteredAllowlistChanged(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 10
    if-ne v1, p1, :cond_1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    :goto_0
    const-string v1, "NetworkPolicy"

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v3, "metered-allowlist for "

    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, " changed to "

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 45
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 48
    move-result-object p0

    .line 49
    if-nez p0, :cond_2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 55
    const/16 v1, 0xf

    .line 57
    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 59
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 61
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    move-result-wide p1

    .line 67
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 69
    :goto_1
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final meteredDenylistChanged(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 10
    if-ne v1, p1, :cond_1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    :goto_0
    const-string v1, "NetworkPolicy"

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v3, "metered-denylist for "

    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, " changed to "

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 45
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 48
    move-result-object p0

    .line 49
    if-nez p0, :cond_2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 55
    const/16 v1, 0x10

    .line 57
    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 59
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 61
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    move-result-wide p1

    .line 67
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 69
    :goto_1
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final meteredRestrictedPkgsChanged(Ljava/util/Set;)V
    .locals 4

    .line 1
    const-string v0, "Metered restricted uids: "

    .line 3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 20
    if-nez v0, :cond_0

    .line 22
    iget v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 24
    const/4 v2, -0x1

    .line 25
    if-eq v0, v2, :cond_1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    :goto_0
    const-string v0, "NetworkPolicy"

    .line 32
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 37
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_2

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 47
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    move-result-wide v2

    .line 53
    iput-wide v2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 55
    :goto_1
    monitor-exit v1

    .line 56
    return-void

    .line 57
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public final meterednessChanged(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq v1, v2, :cond_1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    :goto_0
    const-string v1, "NetworkPolicy"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    const-string v3, "Meteredness of netId="

    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, " changed to "

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 45
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 48
    move-result-object p0

    .line 49
    if-nez p0, :cond_2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 55
    const/4 v1, 0x4

    .line 56
    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 58
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 60
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    move-result-wide p1

    .line 66
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 68
    :goto_1
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method

.method public final networkBlocked(ILcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;)V
    .locals 5

    .line 1
    const-string v0, "Blocked state of "

    .line 3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 8
    if-nez v2, :cond_0

    .line 10
    iget v2, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 12
    if-ne p1, v2, :cond_1

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    :goto_0
    const-string v2, "NetworkPolicy"

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v0, ": "

    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_1
    const/4 v0, 0x1

    .line 43
    const/4 v2, 0x0

    .line 44
    if-nez p2, :cond_3

    .line 46
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 48
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 51
    move-result-object p0

    .line 52
    if-nez p0, :cond_2

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 57
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 59
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 61
    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 64
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 66
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield4:I

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    move-result-wide p1

    .line 72
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 77
    iget v3, p2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 79
    iget v4, p2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 81
    iget p2, p2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 83
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 86
    move-result-object p0

    .line 87
    if-nez p0, :cond_4

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 92
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 94
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 96
    iput v3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 98
    iput v4, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 100
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield4:I

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    move-result-wide p1

    .line 106
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 108
    :goto_1
    monitor-exit v1

    .line 109
    return-void

    .line 110
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    throw p0
.end method

.method public final paroleStateChanged(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq v1, v2, :cond_1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    :goto_0
    const-string v1, "NetworkPolicy"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    const-string v3, "Parole state: "

    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 37
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_2

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 47
    const/16 v1, 0x9

    .line 49
    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 51
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    move-result-wide v1

    .line 57
    iput-wide v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 59
    :goto_1
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method

.method public final restrictBackgroundChanged(ZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq v1, v2, :cond_1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    :goto_0
    const-string v1, "NetworkPolicy"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    const-string v3, "Changed restrictBackground: "

    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, "->"

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 45
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 48
    move-result-object p0

    .line 49
    if-nez p0, :cond_2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 55
    const/4 v1, 0x6

    .line 56
    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 58
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 60
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    move-result-wide p1

    .line 66
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 68
    :goto_1
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method

.method public final roamingChanged(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq v1, v2, :cond_1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    :goto_0
    const-string v1, "NetworkPolicy"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    const-string v3, "Roaming of netId="

    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, " changed to "

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 45
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 48
    move-result-object p0

    .line 49
    if-nez p0, :cond_2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 55
    const/16 v1, 0x11

    .line 57
    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 59
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 61
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    move-result-wide p1

    .line 67
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 69
    :goto_1
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final tempPowerSaveWlChanged(IILjava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 10
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 13
    move-result v1

    .line 14
    if-ne p1, v1, :cond_1

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    :goto_0
    const-string v1, "NetworkPolicy"

    .line 21
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyLogger;->getTempPowerSaveWlChangedLog(IILjava/lang/String;Z)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 30
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 33
    move-result-object p0

    .line 34
    if-nez p0, :cond_2

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/16 v1, 0xa

    .line 39
    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 41
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 43
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 45
    iput-boolean p4, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 47
    iput-object p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    move-result-wide p1

    .line 53
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 55
    :goto_1
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public final uidFirewallRuleChanged(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 10
    if-ne p2, v1, :cond_1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    :goto_0
    const-string v1, "NetworkPolicy"

    .line 17
    invoke-static {p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->getUidFirewallRuleChangedLog(III)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 26
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 29
    move-result-object p0

    .line 30
    if-nez p0, :cond_2

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 36
    const/16 v1, 0xb

    .line 38
    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 40
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 42
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 44
    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    move-result-wide p1

    .line 50
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 52
    :goto_1
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final uidPolicyChanged(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 10
    if-ne p1, v1, :cond_1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    :goto_0
    const-string v1, "NetworkPolicy"

    .line 17
    invoke-static {p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->getPolicyChangedLog(III)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 26
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 29
    move-result-object p0

    .line 30
    if-nez p0, :cond_2

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 36
    const/4 v1, 0x3

    .line 37
    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 39
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 41
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 43
    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    move-result-wide p1

    .line 49
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 51
    :goto_1
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final uidStateChanged(IIIJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 10
    if-ne p1, v1, :cond_1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    :goto_0
    const-string v1, "NetworkPolicy"

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v3, " state changed to "

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    sget v3, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 32
    invoke-static {p2}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v3, ",seq="

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    const-string v3, ",cap="

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {p3}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 68
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 71
    move-result-object p0

    .line 72
    if-nez p0, :cond_2

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 78
    const/4 v1, 0x2

    .line 79
    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 81
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 83
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 85
    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 87
    iput-wide p4, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 92
    move-result-wide p1

    .line 93
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 95
    :goto_1
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
