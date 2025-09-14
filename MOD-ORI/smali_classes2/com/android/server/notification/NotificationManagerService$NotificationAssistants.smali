.class public final Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
.super Lcom/android/server/notification/ManagedServices;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAllowedAdjustments:Ljava/util/Set;

.field public mDefaultFromConfig:Landroid/content/ComponentName;

.field public final mLock:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public static -$$Nest$monNotificationEnqueuedLocked(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/NotificationRecord;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "notification_assistant"

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v3, "onNotificationEnqueuedLocked() called with: r = ["

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, "]"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_4

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 68
    .line 69
    invoke-virtual {v6, v2, v5, v4}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 76
    .line 77
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-virtual {v4, v5}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_1

    .line 86
    .line 87
    iget-object v5, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 88
    .line 89
    check-cast v5, Landroid/service/notification/INotificationListener;

    .line 90
    .line 91
    iget-object v7, v6, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 92
    .line 93
    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    .line 94
    .line 95
    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    const/4 v8, 0x1

    .line 100
    if-ne v7, v8, :cond_2

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    :goto_1
    new-instance v8, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 112
    .line 113
    invoke-direct {v8, v7}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 114
    .line 115
    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v9, "calling onNotificationEnqueuedWithChannel "

    .line 124
    .line 125
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :catch_0
    move-exception v4

    .line 140
    goto :goto_3

    .line 141
    :cond_3
    :goto_2
    invoke-virtual {v6, v4}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 146
    .line 147
    invoke-interface {v5, v8, v6, v4}, Landroid/service/notification/INotificationListener;->onNotificationEnqueuedWithChannel(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string/jumbo v7, "unable to notify assistant (enqueued): "

    .line 154
    .line 155
    .line 156
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance p1, Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mDefaultFromConfig:Landroid/content/ComponentName;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    :goto_0
    sget-object p2, Lcom/android/server/notification/NotificationManagerService;->ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    .line 25
    .line 26
    array-length p3, p2

    .line 27
    if-ge p1, p3, :cond_0

    .line 28
    .line 29
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    .line 30
    .line 31
    aget-object p2, p2, p1

    .line 32
    .line 33
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public final addApprovedList(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, ":"

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    array-length v1, v0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-le v1, v2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "More than one approved assistants"

    .line 20
    .line 21
    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    aget-object p2, v0, p2

    .line 26
    .line 27
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ManagedServices;->addApprovedList(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final allowRebindForParentUser()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final clearApprovedList()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-interface {p0, v0, v1}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final ensureFilters(Landroid/content/pm/ServiceInfo;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/server/notification/ManagedServices$Config;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "notification assistant"

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "android.service.notification.NotificationAssistantService"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "enabled_assistants"

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "enabled_notification_assistant"

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "android.permission.BIND_NOTIFICATION_ASSISTANT_SERVICE"

    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 30
    .line 31
    const v0, 0x1040936

    .line 32
    .line 33
    .line 34
    iput v0, p0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 35
    .line 36
    return-object p0
.end method

.method public final getRequiredPermission()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.permission.REQUEST_NOTIFICATION_ASSISTANT_SERVICE"

    .line 2
    .line 3
    return-object p0
.end method

.method public final loadDefaultsFromConfig()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->loadDefaultsFromConfig(Z)V

    return-void
.end method

.method public final loadDefaultsFromConfig(Z)V
    .locals 6

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040309

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    move v2, v1

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 7
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 8
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 10
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v5, 0xc0000

    .line 11
    invoke-virtual {p0, v5, v1, v4}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(IILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v4

    .line 12
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_2

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/notification/ManagedServices;->addDefaultComponentOrPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_2
    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mDefaultFromConfig:Landroid/content/ComponentName;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final notifyAssistantFeedbackReceived(Lcom/android/server/notification/NotificationRecord;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 30
    .line 31
    invoke-virtual {v4, v0, v3, v2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v2, v3}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 50
    .line 51
    check-cast v3, Landroid/service/notification/INotificationListener;

    .line 52
    .line 53
    :try_start_0
    invoke-virtual {v4, v2}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-interface {v3, v4, v2, p2}, Landroid/service/notification/INotificationListener;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/service/notification/NotificationRankingUpdate;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string/jumbo v5, "unable to notify assistant (feedback): "

    .line 69
    .line 70
    .line 71
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    return-void
.end method

.method public final notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ILjava/util/function/BiConsumer;)V
    .locals 11

    .line 1
    const-string/jumbo v0, "notification_assistant"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v3, "notifyAssistantLocked() called with: sbn = ["

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v3, "], sameUserOnly = [true], callback = ["

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, "]"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/4 v3, 0x0

    .line 55
    move-object v4, v3

    .line 56
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_7

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 67
    .line 68
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 69
    .line 70
    invoke-virtual {v6, p1, p2, v5}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    const/4 v8, 0x1

    .line 75
    if-eqz v7, :cond_1

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    invoke-virtual {v5, v7}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_1

    .line 86
    .line 87
    move v7, v8

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    const/4 v7, 0x0

    .line 90
    :goto_1
    if-eqz v0, :cond_2

    .line 91
    .line 92
    new-instance v9, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string/jumbo v10, "notifyAssistantLocked info="

    .line 95
    .line 96
    .line 97
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v10, " snbVisible="

    .line 104
    .line 105
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-static {v1, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    :cond_2
    if-nez v7, :cond_3

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    iget-object v7, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 122
    .line 123
    check-cast v7, Landroid/service/notification/INotificationListener;

    .line 124
    .line 125
    iget-object v9, v6, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 126
    .line 127
    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    .line 128
    .line 129
    invoke-virtual {v9, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-ne v5, v8, :cond_5

    .line 134
    .line 135
    if-nez v3, :cond_4

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    :cond_4
    move-object v5, v4

    .line 142
    move-object v4, v3

    .line 143
    goto :goto_2

    .line 144
    :cond_5
    if-nez v4, :cond_6

    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    :cond_6
    move-object v5, v4

    .line 151
    move-object v4, v3

    .line 152
    move-object v3, v5

    .line 153
    :goto_2
    new-instance v8, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 154
    .line 155
    invoke-direct {v8, v3}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 156
    .line 157
    .line 158
    iget-object v3, v6, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 159
    .line 160
    new-instance v6, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;

    .line 161
    .line 162
    const/4 v9, 0x2

    .line 163
    invoke-direct {v6, p3, v7, v8, v9}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    .line 168
    .line 169
    move-object v3, v4

    .line 170
    move-object v4, v5

    .line 171
    goto :goto_0

    .line 172
    :cond_7
    return-void
.end method

.method public final notifyAssistantVisibilityChangedLocked(Lcom/android/server/notification/NotificationRecord;Z)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string/jumbo v1, "notifyAssistantVisibilityChangedLocked: "

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda4;

    .line 30
    .line 31
    invoke-direct {v2, p0, v0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ILjava/util/function/BiConsumer;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onNotificationsSeenLocked(Ljava/util/ArrayList;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 22
    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 49
    .line 50
    iget-object v6, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    invoke-virtual {v5, v6, v7, v1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_1

    .line 61
    .line 62
    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 63
    .line 64
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-virtual {v1, v5}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_1

    .line 73
    .line 74
    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_0

    .line 89
    .line 90
    iget-object v3, v5, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 91
    .line 92
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;

    .line 93
    .line 94
    const/4 v5, 0x1

    .line 95
    invoke-direct {v4, p0, v1, v2, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    return-void
.end method

.method public final onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    instance-of v0, v0, Landroid/service/notification/INotificationListener;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->registerServiceImpl(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 6
    .line 7
    iget p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ManagedServices;->removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 23
    .line 24
    if-eq v1, p0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 28
    .line 29
    iget p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/notification/ManagedServices;->unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final resetDefaultAssistantsIfNecessary()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/lang/Boolean;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->isNASMigrationDone(I)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 68
    .line 69
    .line 70
    const/4 v3, 0x1

    .line 71
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->loadDefaultsFromConfig(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->setNASMigrationDone(I)V

    .line 75
    .line 76
    .line 77
    :cond_1
    const-string v3, "Approving default notification assistant for user "

    .line 78
    .line 79
    invoke-static {v1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->setDefaultAssistantForUser(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    return-void
.end method

.method public final setPackageOrComponentEnabled(ILjava/lang/String;ZZZ)V
    .locals 8

    .line 1
    if-eqz p4, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    move-object v0, p3

    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {p3}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    check-cast p3, Landroid/content/ComponentName;

    .line 21
    .line 22
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, p3, p1, v1, p5}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 v5, 0x1

    .line 40
    move-object v2, p0

    .line 41
    move v3, p1

    .line 42
    move-object v4, p2

    .line 43
    move v6, p4

    .line 44
    move v7, p5

    .line 45
    invoke-super/range {v2 .. v7}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(ILjava/lang/String;ZZZ)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final upgradeUserSet()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/util/ArraySet;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-lez v2, :cond_0

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const/4 v2, 0x0

    .line 47
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method
