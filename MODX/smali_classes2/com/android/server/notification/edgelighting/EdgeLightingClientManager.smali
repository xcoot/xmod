.class public final Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mCondition:I

.field public final mContext:Landroid/content/Context;

.field public final mEdgeLightingList:Ljava/util/List;

.field public final mEdgeLightingListenerManager:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

.field public final mEdgeLightingSettingObserver:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

.field public final mHandler:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;

.field public final mHosts:Ljava/util/ArrayList;

.field public mIsConnectedMode:Z

.field public mNeedToRecheckSetting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mNeedToRecheckSetting:Z

    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    .line 16
    .line 17
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    new-instance v2, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    .line 27
    .line 28
    invoke-direct {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v2, -0x2

    .line 38
    const-string v3, "edge_lighting_show_condition"

    .line 39
    .line 40
    invoke-static {p1, v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 v2, -0x1

    .line 45
    if-ne p1, v2, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    if-eqz p1, :cond_2

    .line 49
    .line 50
    if-eq p1, v1, :cond_1

    .line 51
    .line 52
    const/4 v1, 0x2

    .line 53
    if-eq p1, v1, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v0, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x3

    .line 59
    :goto_0
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I

    .line 60
    .line 61
    new-instance p1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;

    .line 62
    .line 63
    invoke-direct {p1, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHandler:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;

    .line 67
    .line 68
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

    .line 69
    .line 70
    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingSettingObserver:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final createEdgeLightingService(Landroid/os/UserHandle;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "com.android.systemui"

    .line 11
    .line 12
    const-string v2, "com.android.systemui.edgelighting.EdgeLightingService"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    return-void
.end method

.method public final getEdgeLightingCondition()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    return v3

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 43
    .line 44
    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return p0

    .line 48
    :cond_2
    monitor-exit v0

    .line 49
    return v3

    .line 50
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final isAvailableEdgeLighting(I)Z
    .locals 5

    .line 1
    const-string v0, "isAvailableEdgeLighting: condition="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mNeedToRecheckSetting:Z

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iput-boolean v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mNeedToRecheckSetting:Z

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingSettingObserver:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->recheckEdgeLightingDefaultValue()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    :cond_1
    const-string v2, "EdgeLightingClientManager"

    .line 31
    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, " mCondition="

    .line 41
    .line 42
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I

    .line 46
    .line 47
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, " mIsConnected="

    .line 51
    .line 52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    .line 56
    .line 57
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingSettingObserver:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

    .line 77
    .line 78
    iget-boolean v0, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 79
    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    monitor-exit v1

    .line 83
    return v3

    .line 84
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    .line 85
    .line 86
    const/4 v2, 0x7

    .line 87
    const/4 v4, 0x1

    .line 88
    if-nez v0, :cond_6

    .line 89
    .line 90
    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I

    .line 91
    .line 92
    if-eq p0, v2, :cond_4

    .line 93
    .line 94
    and-int/2addr p0, p1

    .line 95
    if-eqz p0, :cond_5

    .line 96
    .line 97
    :cond_4
    move v3, v4

    .line 98
    :cond_5
    monitor-exit v1

    .line 99
    return v3

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-ge v0, v4, :cond_7

    .line 107
    .line 108
    monitor-exit v1

    .line 109
    return v3

    .line 110
    :cond_7
    if-ne p1, v2, :cond_8

    .line 111
    .line 112
    monitor-exit v1

    .line 113
    return v4

    .line 114
    :cond_8
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_b

    .line 125
    .line 126
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 131
    .line 132
    iget v0, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    .line 133
    .line 134
    if-eq v0, v2, :cond_a

    .line 135
    .line 136
    and-int/2addr v0, p1

    .line 137
    if-eqz v0, :cond_9

    .line 138
    .line 139
    :cond_a
    monitor-exit v1

    .line 140
    return v4

    .line 141
    :cond_b
    monitor-exit v1

    .line 142
    return v3

    .line 143
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    throw p0
.end method

.method public final onScreenChanged(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 28
    .line 29
    const-string v3, "EdgeLightingClientManager"

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    :cond_1
    const-string/jumbo v2, "onScreenChanged on = "

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v2, v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    .line 44
    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    const-string/jumbo v1, "onScreenChanged : token is null"

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    iget-object v1, v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, 0x3

    .line 58
    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method

.method public final startEdgeLightingInternal(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 3

    .line 1
    const-string/jumbo v0, "startEdgeLightingInternal() reject edge lighting because application suspend package="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->isPackageSuspended(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 45
    .line 46
    monitor-enter v0

    .line 47
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v2, 0x1

    .line 58
    if-ge v1, v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->startEdgeLightingService(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 83
    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string/jumbo v2, "start : "

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p1, " : "

    .line 109
    .line 110
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p1, ","

    .line 121
    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateEdgeLightingHistory(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    monitor-exit v0

    .line 136
    return-void

    .line 137
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    throw p0
.end method

.method public final startEdgeLightingService(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v1, "startEdgeLightingService : pkg = "

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", info = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", reason = "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "EdgeLightingClientManager"

    .line 34
    .line 35
    invoke-static {v0, p3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHandler:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;

    .line 39
    .line 40
    new-instance v0, Landroid/util/Pair;

    .line 41
    .line 42
    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1, p3, p1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final stopEdgeLightingInternal(ILjava/lang/String;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "stopEdgeLightingInternal mHosts is null. pkg="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-ge v2, v3, :cond_0

    .line 19
    .line 20
    const-string v2, "EdgeLightingClientManager"

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ",reason="

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->onStopEdgeLighting(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string/jumbo v2, "stop : "

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p2, ","

    .line 91
    .line 92
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateEdgeLightingHistory(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    monitor-exit v1

    .line 106
    return-void

    .line 107
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    throw p0
.end method
