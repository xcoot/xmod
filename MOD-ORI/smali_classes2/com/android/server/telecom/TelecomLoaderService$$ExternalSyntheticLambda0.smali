.class public final synthetic Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getPackages(I)[Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Landroid/util/IntArray;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_3

    .line 30
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->add(I)V

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/telephony/SubscriptionManager;

    .line 47
    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const-string/jumbo v0, "telecom"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Landroid/telecom/TelecomManager;

    .line 61
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    array-length v1, p1

    .line 72
    const/4 v2, 0x0

    .line 73
    move v3, v2

    .line 74
    :goto_1
    if-ge v3, v1, :cond_4

    .line 75
    .line 76
    aget v4, p1, v3

    .line 77
    .line 78
    invoke-virtual {p0, v4}, Landroid/telecom/TelecomManager;->getSimCallManagerForSubscription(I)Landroid/telecom/PhoneAccountHandle;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    invoke-virtual {v4}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    new-array p0, v2, [Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    move-object v2, p0

    .line 105
    check-cast v2, [Ljava/lang/String;

    .line 106
    .line 107
    :goto_2
    return-object v2

    .line 108
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    throw p0

    .line 110
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    .line 111
    .line 112
    monitor-enter p1

    .line 113
    :try_start_2
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    .line 114
    .line 115
    const/4 v1, 0x0

    .line 116
    if-nez v0, :cond_5

    .line 117
    .line 118
    monitor-exit p1

    .line 119
    goto :goto_4

    .line 120
    :catchall_1
    move-exception p0

    .line 121
    goto :goto_5

    .line 122
    :cond_5
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    invoke-static {p0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    if-eqz p0, :cond_6

    .line 130
    .line 131
    filled-new-array {p0}, [Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    :cond_6
    :goto_4
    return-object v1

    .line 136
    :goto_5
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    throw p0

    .line 138
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    .line 139
    .line 140
    monitor-enter p1

    .line 141
    :try_start_4
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    .line 142
    .line 143
    const/4 v1, 0x0

    .line 144
    if-nez v0, :cond_7

    .line 145
    .line 146
    monitor-exit p1

    .line 147
    goto :goto_6

    .line 148
    :catchall_2
    move-exception p0

    .line 149
    goto :goto_7

    .line 150
    :cond_7
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 151
    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 152
    .line 153
    const/4 p1, 0x1

    .line 154
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    if-eqz p0, :cond_8

    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    filled-new-array {p0}, [Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    :cond_8
    :goto_6
    return-object v1

    .line 169
    :goto_7
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 170
    throw p0

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
