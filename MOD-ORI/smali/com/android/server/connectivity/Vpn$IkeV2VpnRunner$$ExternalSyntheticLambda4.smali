.class public final synthetic Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/Vpn$VpnRunner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Vpn$VpnRunner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onValidationStatus(I)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "[Validation] validation status "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    if-ne p1, v0, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 30
    .line 31
    new-instance v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda3;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleDataStallFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    iget p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    .line 47
    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    .line 61
    .line 62
    const/4 v0, 0x2

    .line 63
    const/4 v1, 0x7

    .line 64
    const/16 v2, 0x8

    .line 65
    .line 66
    if-ge p1, v0, :cond_4

    .line 67
    .line 68
    const-string p1, "IkeV2VpnRunner"

    .line 69
    .line 70
    const-string v0, "Validation failed"

    .line 71
    .line 72
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 76
    .line 77
    new-instance v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda3;

    .line 78
    .line 79
    const/4 v3, 0x4

    .line 80
    invoke-direct {v0, p0, v3}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;I)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 84
    .line 85
    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 86
    .line 87
    iget v4, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    .line 88
    .line 89
    add-int/lit8 v5, v4, 0x1

    .line 90
    .line 91
    iput v5, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    sget-object p0, Lcom/android/server/connectivity/Vpn;->DATA_STALL_RECOVERY_DELAYS_MS:[J

    .line 97
    .line 98
    if-lt v4, v2, :cond_3

    .line 99
    .line 100
    aget-wide v1, p0, v1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    aget-wide v1, p0, v4

    .line 104
    .line 105
    :goto_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 106
    .line 107
    invoke-virtual {p1, v0, v1, v2, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 112
    .line 113
    new-instance v3, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda3;

    .line 114
    .line 115
    const/4 v4, 0x2

    .line 116
    invoke-direct {v3, p0, v4}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;I)V

    .line 117
    .line 118
    .line 119
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 120
    .line 121
    iget-object v4, v4, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 122
    .line 123
    add-int/lit8 v5, p1, 0x1

    .line 124
    .line 125
    iput v5, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    sget-object v4, Lcom/android/server/connectivity/Vpn;->DATA_STALL_RECOVERY_DELAYS_MS:[J

    .line 131
    .line 132
    if-lt p1, v2, :cond_5

    .line 133
    .line 134
    aget-wide v1, v4, v1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    aget-wide v1, v4, p1

    .line 138
    .line 139
    :goto_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 140
    .line 141
    invoke-virtual {v0, v3, v1, v2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleDataStallFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 146
    .line 147
    :goto_2
    return-void
.end method
