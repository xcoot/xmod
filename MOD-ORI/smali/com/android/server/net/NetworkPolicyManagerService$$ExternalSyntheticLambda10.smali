.class public final synthetic Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/net/NetworkPolicyManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda10;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda10;->f$1:I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    const-string v2, "NetworkPolicy"

    .line 7
    .line 8
    if-eq p0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakObserverRegisted:Landroid/util/SparseArray;

    .line 11
    .line 12
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v1, p0, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakObserverRegisted:Landroid/util/SparseArray;

    .line 27
    .line 28
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v1, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    sget-object v4, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_IS_IN_OFF_PEAK_TIME:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mOffPeakContentObserver:Lcom/android/server/net/NetworkPolicyManagerService$20;

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    invoke-virtual {v1, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService;->checkOffPeakEnable(I)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Landroid/os/Bundle;

    .line 70
    .line 71
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 72
    .line 73
    .line 74
    sget-object v3, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_SM_EXTRAS_SUBID:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    :try_start_0
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sget-object v3, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_SM_PROVIDER_CONTENT_URI:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    sget-object v4, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_SM_PROVIDER_METHOR_UPDATE_ALARM:Ljava/lang/String;

    .line 92
    .line 93
    const/4 v5, 0x0

    .line 94
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v1, " call to smart manager has exception "

    .line 100
    .line 101
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    :goto_0
    const-string/jumbo v0, "updateOffPeakPlanConfig SubscriptionId: "

    .line 109
    .line 110
    .line 111
    const-string v1, " isoffpeakEnable:"

    .line 112
    .line 113
    invoke-static {p0, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakEnable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 118
    .line 119
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    return-void
.end method
