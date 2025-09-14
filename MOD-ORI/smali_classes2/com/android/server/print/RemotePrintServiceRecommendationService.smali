.class public final Lcom/android/server/print/RemotePrintServiceRecommendationService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

.field public final mContext:Landroid/content/Context;

.field public mIsBound:Z

.field public final mLock:Ljava/lang/Object;

.field public mService:Landroid/printservice/recommendation/IRecommendationService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/print/UserState;)V
    .locals 4

    .line 1
    const-string v0, "Failed to bind to service "

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    new-instance v2, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    .line 16
    .line 17
    invoke-direct {v2, p0, p3}, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;-><init>(Lcom/android/server/print/RemotePrintServiceRecommendationService;Lcom/android/server/print/UserState;)V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->getServiceIntent(Landroid/os/UserHandle;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    const v3, 0x4000001

    .line 28
    .line 29
    .line 30
    :try_start_1
    invoke-virtual {p1, p3, v2, v3, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput-boolean p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    monitor-exit v1

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    const-string p1, "RemotePrintServiceRecS"

    .line 64
    .line 65
    const-string p2, "Could not connect to print service recommendation service"

    .line 66
    .line 67
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    :goto_1
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_1
    invoke-interface {v1, v2}, Landroid/printservice/recommendation/IRecommendationService;->registerCallbacks(Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception v1

    .line 16
    :try_start_2
    const-string v3, "RemotePrintServiceRecS"

    .line 17
    .line 18
    const-string v4, "Could not unregister callbacks"

    .line 19
    .line 20
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :goto_0
    iput-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    .line 24
    .line 25
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    .line 38
    .line 39
    :cond_1
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw p0
.end method

.method public final finalize()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    const-string v0, "RemotePrintServiceRecS"

    .line 10
    .line 11
    const-string v1, "Service still connected on finalize()"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->close()V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final getServiceIntent(Landroid/os/UserHandle;)Landroid/content/Intent;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v2, "android.printservice.recommendation.RecommendationService"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v2, 0x10000084

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne v0, v1, :cond_3

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 38
    .line 39
    new-instance v2, Landroid/content/ComponentName;

    .line 40
    .line 41
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 42
    .line 43
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 57
    .line 58
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p0, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 67
    .line 68
    and-int/2addr p0, v1

    .line 69
    if-eqz p0, :cond_1

    .line 70
    .line 71
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 72
    .line 73
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 74
    .line 75
    const-string p1, "android.permission.BIND_PRINT_RECOMMENDATION_SERVICE"

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_0

    .line 82
    .line 83
    new-instance p0, Landroid/content/Intent;

    .line 84
    .line 85
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    return-object p0

    .line 92
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    .line 93
    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v0, "Service "

    .line 97
    .line 98
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, " does not require permission android.permission.BIND_PRINT_RECOMMENDATION_SERVICE"

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    .line 122
    .line 123
    const-string p1, "Service is not part of the system"

    .line 124
    .line 125
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    .line 130
    .line 131
    const-string p1, "Cannot read appInfo for service"

    .line 132
    .line 133
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    .line 138
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string p1, " instead of exactly one service found"

    .line 152
    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p0
.end method
