.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public final handleObj:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

.field public napInterface:Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->napInterface:Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->handleObj:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final declared-synchronized onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    const-string/jumbo p1, "onBindingDied called by "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->handleObj:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 8
    .line 9
    iget v0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "NetworkAnalytics:Service"

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->handleObj:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 37
    .line 38
    iget v0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForUser(I)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :cond_0
    :try_start_1
    check-cast p1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->handleObj:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 69
    .line 70
    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    iget v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 79
    .line 80
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->handleObj:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 81
    .line 82
    iget v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 83
    .line 84
    if-ne v1, v2, :cond_1

    .line 85
    .line 86
    iget-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 87
    .line 88
    iget v0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 89
    .line 90
    invoke-static {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    const-string v1, "NetworkAnalytics:Service"

    .line 97
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v3, "Trying to bind again after the onBindingDied for the profile "

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 119
    .line 120
    const/4 v2, 0x1

    .line 121
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catchall_0
    move-exception p1

    .line 126
    goto :goto_1

    .line 127
    :cond_2
    monitor-exit p0

    .line 128
    return-void

    .line 129
    :goto_1
    monitor-exit p0

    .line 130
    throw p1
.end method

.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    const-string/jumbo p1, "onServiceconnected called by "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->handleObj:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 8
    .line 9
    iget v0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "NetworkAnalytics:Service"

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->napInterface:Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->handleObj:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 39
    .line 40
    iget p2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 41
    .line 42
    if-nez p2, :cond_0

    .line 43
    .line 44
    iget-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 45
    .line 46
    iget-object p2, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForPackage(Ljava/lang/String;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForUser(I)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    if-nez p1, :cond_1

    .line 67
    .line 68
    monitor-exit p0

    .line 69
    return-void

    .line 70
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_3

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 85
    .line 86
    iget-object v1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->handleObj:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 89
    .line 90
    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    iget v1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 99
    .line 100
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->handleObj:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 101
    .line 102
    iget v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 103
    .line 104
    if-ne v1, v2, :cond_2

    .line 105
    .line 106
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 109
    .line 110
    iget-object v2, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 111
    .line 112
    iget v3, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 113
    .line 114
    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(ILjava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const/4 v2, 0x1

    .line 119
    if-ne v1, v2, :cond_2

    .line 120
    .line 121
    iget v1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 122
    .line 123
    new-instance v2, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    .line 124
    .line 125
    invoke-direct {v2, p2, p0, v1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)V

    .line 126
    .line 127
    .line 128
    const-string v1, "NetworkAnalytics:Service"

    .line 129
    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v4, "Adding the profile to the delivery list onServiceconnected callback "

    .line 136
    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object p2, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    iget-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 153
    .line 154
    iget-object p2, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 155
    .line 156
    invoke-virtual {p2, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->addNAPDataRecipient(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_3
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 161
    .line 162
    iget-object p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 163
    .line 164
    iget-object p2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->binderMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 165
    .line 166
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    if-eqz p2, :cond_4

    .line 171
    .line 172
    iget-object p2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->binderMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 173
    .line 174
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    :cond_4
    iget-object p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->binderMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 178
    .line 179
    invoke-virtual {p1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 183
    .line 184
    if-eqz p1, :cond_5

    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .line 188
    .line 189
    :cond_5
    monitor-exit p0

    .line 190
    return-void

    .line 191
    :goto_2
    monitor-exit p0

    .line 192
    throw p1
.end method

.method public final declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    const-string/jumbo p1, "onServiceDisconnected called by "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->handleObj:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 8
    .line 9
    iget v0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "NetworkAnalytics:Service"

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->removeBinderForPackage(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->handleObj:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 44
    .line 45
    iget-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 46
    .line 47
    iget v0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->removeDataRecipientsForPackage(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    monitor-exit p0

    .line 56
    throw p1
.end method
