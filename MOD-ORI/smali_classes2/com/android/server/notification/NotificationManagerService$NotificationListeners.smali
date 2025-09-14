.class public final Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
.super Lcom/android/server/notification/ManagedServices;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIsHeadlessSystemUserMode:Z

.field public final mLightTrimListeners:Landroid/util/ArraySet;

.field public final mRequestedNotificationListeners:Landroid/util/ArrayMap;

.field public mSystemUIUid:I

.field public final mTrustListenerUpdateHistory:Ljava/util/ArrayList;

.field public final mTrustedListenerUids:Landroid/util/ArraySet;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    .line 12
    .line 13
    new-instance p1, Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustListenerUpdateHistory:Ljava/util/ArrayList;

    .line 26
    .line 27
    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mSystemUIUid:I

    .line 29
    .line 30
    new-instance p1, Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 36
    .line 37
    iput-boolean p6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mIsHeadlessSystemUserMode:Z

    .line 38
    .line 39
    return-void
.end method

.method public static getTypesFromStringList(Ljava/lang/String;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_6

    .line 3
    .line 4
    const-string v1, "\\|"

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    array-length v2, p0

    .line 12
    if-ge v0, v2, :cond_5

    .line 13
    .line 14
    aget-object v2, p0, v0

    .line 15
    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const-string v3, "ONGOING"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    or-int/lit8 v1, v1, 0x8

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string v3, "CONVERSATIONS"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    or-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const-string v3, "SILENT"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    or-int/lit8 v1, v1, 0x4

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    const-string v3, "ALERTING"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    or-int/lit8 v1, v1, 0x2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    or-int/2addr v1, v2

    .line 72
    :catch_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    move v0, v1

    .line 76
    :cond_6
    return v0
.end method

.method public static hasSensitiveContent(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->redactSensitiveNotificationsFromUntrustedListeners()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecord;->mSensitiveContent:Z

    .line 11
    .line 12
    return p0

    .line 13
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method


# virtual methods
.method public final allowRebindForParentUser()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

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

.method public final dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2
    .line 3
    .line 4
    const-string p2, "\n  Trusted Listener Uids:"

    .line 5
    .line 6
    const-string v0, "    mSystemUIUid="

    .line 7
    .line 8
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mSystemUIUid:I

    .line 13
    .line 14
    const-string v1, "    mTrustedListenerUids="

    .line 15
    .line 16
    invoke-static {p2, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v0, "    mTrustListenerUpdateHistory="

    .line 35
    .line 36
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustListenerUpdateHistory:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final ensureFilters(Landroid/content/pm/ServiceInfo;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/service/notification/NotificationListenerFilter;

    .line 23
    .line 24
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const-string v1, "android.service.notification.default_filter_types"

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 39
    .line 40
    const-string v2, "android.service.notification.default_filter_types"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getTypesFromStringList(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    new-instance v2, Landroid/service/notification/NotificationListenerFilter;

    .line 57
    .line 58
    new-instance v3, Landroid/util/ArraySet;

    .line 59
    .line 60
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, v1, v3}, Landroid/service/notification/NotificationListenerFilter;-><init>(ILandroid/util/ArraySet;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 67
    .line 68
    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 75
    .line 76
    const-string v2, "android.service.notification.disabled_filter_types"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 85
    .line 86
    const-string v1, "android.service.notification.disabled_filter_types"

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getTypesFromStringList(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 103
    .line 104
    new-instance v2, Landroid/service/notification/NotificationListenerFilter;

    .line 105
    .line 106
    invoke-direct {v2}, Landroid/service/notification/NotificationListenerFilter;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Landroid/service/notification/NotificationListenerFilter;

    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerFilter;->getTypes()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    not-int p1, p1

    .line 120
    and-int/2addr p1, v2

    .line 121
    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerFilter;->setTypes(I)V

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 125
    .line 126
    invoke-virtual {p0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    :cond_1
    monitor-exit v0

    .line 130
    return-void

    .line 131
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    throw p0
.end method

.method public final getBindFlags()I
    .locals 0

    .line 1
    const p0, 0x5000101

    .line 2
    .line 3
    .line 4
    return p0
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
    const-string/jumbo v0, "notification listener"

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "android.service.notification.NotificationListenerService"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "enabled_listeners"

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "enabled_notification_listeners"

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 30
    .line 31
    const v0, 0x1040933

    .line 32
    .line 33
    .line 34
    iput v0, p0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 35
    .line 36
    return-object p0
.end method

.method public final getNotificationListenerFilter(Landroid/util/Pair;)Landroid/service/notification/NotificationListenerFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/service/notification/NotificationListenerFilter;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final getRequiredPermission()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final hasAllowedListener(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    move p1, v0

    .line 10
    :goto_0
    move-object v1, p0

    .line 11
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge p1, v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/content/ComponentName;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return v0
.end method

.method public final isAppTrustedNotificationListenerService(ILjava/lang/String;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->redactSensitiveNotificationsFromUntrustedListeners()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    const/4 v1, 0x0

    .line 16
    :try_start_0
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 17
    .line 18
    const-string v6, "android.permission.RECEIVE_SENSITIVE_NOTIFICATIONS"

    .line 19
    .line 20
    invoke-interface {v5, v6, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_6

    .line 25
    .line 26
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 27
    .line 28
    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_6

    .line 33
    .line 34
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 35
    .line 36
    const/4 v11, 0x0

    .line 37
    const/16 v7, 0x94

    .line 38
    .line 39
    const/4 v10, 0x0

    .line 40
    move v8, p1

    .line 41
    move-object v9, p2

    .line 42
    invoke-virtual/range {v6 .. v11}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_6

    .line 47
    .line 48
    const-string v5, "com.android.systemui"

    .line 49
    .line 50
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 63
    .line 64
    if-nez v6, :cond_2

    .line 65
    .line 66
    const-string v6, "companiondevice"

    .line 67
    .line 68
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-static {v6}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_6

    .line 81
    :catch_0
    move-exception p1

    .line 82
    goto :goto_4

    .line 83
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    invoke-interface {v0, v5}, Landroid/companion/ICompanionDeviceManager;->getAllAssociationsForUser(I)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    :cond_3
    move v0, v1

    .line 96
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-ge v0, v6, :cond_5

    .line 101
    .line 102
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    check-cast v6, Landroid/companion/AssociationInfo;

    .line 107
    .line 108
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->isRevoked()Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-nez v7, :cond_4

    .line 113
    .line 114
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_4

    .line 123
    .line 124
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 129
    .line 130
    .line 131
    move-result v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-ne v6, v7, :cond_4

    .line 133
    .line 134
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    .line 136
    .line 137
    return v2

    .line 138
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_5
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_6
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    .line 147
    .line 148
    return v2

    .line 149
    :goto_4
    :try_start_1
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 150
    .line 151
    const-string p2, "Failed to check trusted status of listener"

    .line 152
    .line 153
    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :goto_5
    return v1

    .line 158
    :goto_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    .line 160
    .line 161
    throw p0
.end method

.method public final isUidTrusted(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->redactSensitiveNotificationsFromUntrustedListeners()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 28
    :goto_1
    monitor-exit v0

    .line 29
    return p0

    .line 30
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final loadDefaultsFromConfig()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x104031f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, ":"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const v3, 0x10403b0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x0

    .line 47
    move v2, v1

    .line 48
    :goto_0
    array-length v3, v0

    .line 49
    if-ge v2, v3, :cond_3

    .line 50
    .line 51
    aget-object v3, v0, v2

    .line 52
    .line 53
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mIsHeadlessSystemUserMode:Z

    .line 61
    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    const/high16 v3, 0x4c0000

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/high16 v3, 0xc0000

    .line 68
    .line 69
    :goto_1
    aget-object v4, v0, v2

    .line 70
    .line 71
    invoke-virtual {p0, v3, v1, v4}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(IILjava/lang/String;)Landroid/util/ArraySet;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    move v4, v1

    .line 76
    :goto_2
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-ge v4, v5, :cond_2

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Landroid/content/ComponentName;

    .line 87
    .line 88
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {p0, v5}, Lcom/android/server/notification/ManagedServices;->addDefaultComponentOrPackage(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v4, v4, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    return-void
.end method

.method public final notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 10

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v4, v1

    .line 25
    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 26
    .line 27
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v4, v1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1, v4, v2}, Lcom/android/server/notification/NotificationManagerService;->isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v9, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;

    .line 55
    .line 56
    move-object v2, v9

    .line 57
    move-object v3, p0

    .line 58
    move-object v5, p1

    .line 59
    move-object v6, p2

    .line 60
    move-object v7, p3

    .line 61
    move v8, p4

    .line 62
    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    return-void
.end method

.method public final notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .locals 10

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v4, v1

    .line 25
    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 26
    .line 27
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v4, v1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1, v4, v2}, Lcom/android/server/notification/NotificationManagerService;->isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v9, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;

    .line 55
    .line 56
    move-object v2, v9

    .line 57
    move-object v3, p0

    .line 58
    move-object v5, p1

    .line 59
    move-object v6, p2

    .line 60
    move-object v7, p3

    .line 61
    move v8, p4

    .line 62
    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    return-void
.end method

.method public final notifyPosted(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "unable to notify listener (posted): "

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 7
    .line 8
    check-cast v1, Landroid/service/notification/INotificationListener;

    .line 9
    .line 10
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 11
    .line 12
    invoke-direct {v2, p2}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-interface {v1, v2, p3}, Landroid/service/notification/INotificationListener;->onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p2

    .line 20
    new-instance p3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception p2

    .line 37
    new-instance p3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method

.method public notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->prepareNotifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 3
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p3, p3, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyRankingUpdateLocked(Ljava/util/List;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    move-object v0, p1

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_5

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 48
    .line 49
    invoke-virtual {v4, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iget v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    .line 59
    .line 60
    const/16 v5, 0x1c

    .line 61
    .line 62
    if-lt v3, v5, :cond_4

    .line 63
    .line 64
    move-object v3, p1

    .line 65
    check-cast v3, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_4

    .line 76
    .line 77
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 82
    .line 83
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 84
    .line 85
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-virtual {v4, v6, v5, v2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_3

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    if-nez v0, :cond_1

    .line 97
    .line 98
    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 103
    .line 104
    new-instance v5, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    invoke-direct {v5, p0, v2, v3, v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    return-void
.end method

.method public final notifyRemoved(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    .locals 5

    .line 1
    const-string/jumbo v0, "unable to notify listener (removed): "

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 7
    .line 8
    check-cast v1, Landroid/service/notification/INotificationListener;

    .line 9
    .line 10
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 11
    .line 12
    invoke-direct {v2, p2}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget p2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    .line 16
    .line 17
    const-wide/32 v3, 0xa732a34

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v4, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    const/16 p2, 0x14

    .line 27
    .line 28
    if-eq p5, p2, :cond_0

    .line 29
    .line 30
    const/16 p2, 0x15

    .line 31
    .line 32
    if-ne p5, p2, :cond_1

    .line 33
    .line 34
    :cond_0
    const/16 p5, 0x11

    .line 35
    .line 36
    :cond_1
    iget p2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    .line 37
    .line 38
    const-wide/32 v3, 0xba84d90

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v4, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-nez p2, :cond_2

    .line 46
    .line 47
    const/16 p2, 0x16

    .line 48
    .line 49
    if-ne p5, p2, :cond_2

    .line 50
    .line 51
    const/16 p5, 0xa

    .line 52
    .line 53
    :cond_2
    invoke-interface {v1, v2, p3, p4, p5}, Landroid/service/notification/INotificationListener;->onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catch_0
    move-exception p2

    .line 58
    goto :goto_0

    .line 59
    :catch_1
    move-exception p2

    .line 60
    goto :goto_1

    .line 61
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    :goto_2
    return-void
.end method

.method public final notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V
    .locals 18

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    iget-object v0, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v10, v7, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 18
    .line 19
    iget-object v1, v10, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    .line 22
    .line 23
    const/4 v11, 0x0

    .line 24
    invoke-virtual {v1, v0, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v12, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 32
    .line 33
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    .line 34
    .line 35
    .line 36
    move-result-object v13

    .line 37
    invoke-static/range {p1 .. p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->hasSensitiveContent(Lcom/android/server/notification/NotificationRecord;)Z

    .line 38
    .line 39
    .line 40
    move-result v14

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v15

    .line 51
    const/16 v16, 0x0

    .line 52
    .line 53
    move-object/from16 v0, v16

    .line 54
    .line 55
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_9

    .line 60
    .line 61
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    move-object v2, v1

    .line 66
    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 67
    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v10, v12, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-boolean v1, v8, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    .line 80
    .line 81
    const/16 v3, 0x1c

    .line 82
    .line 83
    const/16 v4, 0xe

    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    if-eq v9, v4, :cond_2

    .line 88
    .line 89
    iget v1, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    .line 90
    .line 91
    if-ge v1, v3, :cond_2

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    if-ne v9, v4, :cond_3

    .line 95
    .line 96
    iget v1, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    .line 97
    .line 98
    if-lt v1, v3, :cond_3

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->redactSensitiveNotificationsFromUntrustedListeners()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    if-eqz v14, :cond_4

    .line 108
    .line 109
    iget v1, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    .line 110
    .line 111
    invoke-virtual {v7, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isUidTrusted(I)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_4

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    move v1, v11

    .line 120
    :goto_1
    if-eqz v1, :cond_5

    .line 121
    .line 122
    if-nez v0, :cond_5

    .line 123
    .line 124
    invoke-virtual {v7, v12}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->redactStatusBarNotification(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :cond_5
    move-object/from16 v17, v0

    .line 129
    .line 130
    iget-object v0, v10, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 131
    .line 132
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 133
    .line 134
    if-nez v3, :cond_6

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_6
    invoke-virtual {v0, v3}, Lcom/android/server/notification/ManagedServices;->getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    move-object/from16 v5, p3

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    :goto_2
    move-object/from16 v5, v16

    .line 150
    .line 151
    :goto_3
    if-eqz v1, :cond_8

    .line 152
    .line 153
    move-object/from16 v3, v17

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_8
    move-object v3, v13

    .line 157
    :goto_4
    invoke-virtual {v10, v2}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    iget-object v6, v10, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 162
    .line 163
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;

    .line 164
    .line 165
    move-object v0, v1

    .line 166
    move-object v11, v1

    .line 167
    move-object/from16 v1, p0

    .line 168
    .line 169
    move-object v9, v6

    .line 170
    move/from16 v6, p2

    .line 171
    .line 172
    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    .line 177
    .line 178
    move/from16 v9, p2

    .line 179
    .line 180
    move-object/from16 v0, v17

    .line 181
    .line 182
    const/4 v11, 0x0

    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_9
    iget-object v0, v10, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 186
    .line 187
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;

    .line 188
    .line 189
    const/4 v2, 0x3

    .line 190
    invoke-direct {v1, v2, v7, v8}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method public final onPackagesChanged(Z[Ljava/lang/String;[I)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/notification/ManagedServices;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    move v1, p1

    .line 11
    :goto_0
    :try_start_0
    array-length v2, p2

    .line 12
    if-ge v1, v2, :cond_2

    .line 13
    .line 14
    aget-object v2, p2, v1

    .line 15
    .line 16
    aget v3, p3, v1

    .line 17
    .line 18
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    add-int/lit8 v4, v4, -0x1

    .line 29
    .line 30
    :goto_1
    if-ltz v4, :cond_1

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Landroid/util/Pair;

    .line 39
    .line 40
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v6, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-ne v6, v3, :cond_0

    .line 49
    .line 50
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v5, Landroid/content/ComponentName;

    .line 53
    .line 54
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_0

    .line 63
    .line 64
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 65
    .line 66
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_5

    .line 72
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, -0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    :goto_3
    array-length v1, p2

    .line 79
    if-ge p1, v1, :cond_4

    .line 80
    .line 81
    aget-object v1, p2, p1

    .line 82
    .line 83
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    add-int/lit8 v2, v2, -0x1

    .line 90
    .line 91
    :goto_4
    if-ltz v2, :cond_3

    .line 92
    .line 93
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 94
    .line 95
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Landroid/service/notification/NotificationListenerFilter;

    .line 100
    .line 101
    new-instance v4, Landroid/content/pm/VersionedPackage;

    .line 102
    .line 103
    aget v5, p3, p1

    .line 104
    .line 105
    invoke-direct {v4, v1, v5}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v4}, Landroid/service/notification/NotificationListenerFilter;->removePackage(Landroid/content/pm/VersionedPackage;)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v2, v2, -0x1

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_4
    monitor-exit v0

    .line 118
    return-void

    .line 119
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    throw p0
.end method

.method public final onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 9

    .line 1
    const-string v0, "Trim appInfo.metaData = "

    .line 2
    .line 3
    const-string/jumbo v1, "onServiceAdded : add "

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v5, "android.permission.STATUS_BAR_SERVICE"

    .line 32
    .line 33
    const/4 v6, -0x1

    .line 34
    iget v7, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    .line 35
    .line 36
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    move v2, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v2, v3

    .line 45
    :goto_0
    iput-boolean v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystemUi:Z

    .line 46
    .line 47
    :cond_1
    iget-object v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 48
    .line 49
    check-cast v2, Landroid/service/notification/INotificationListener;

    .line 50
    .line 51
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 52
    .line 53
    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v5

    .line 56
    :try_start_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 57
    .line 58
    invoke-virtual {v6, p1}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {p0, p1, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->updateUriPermissionsForActiveNotificationsLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    .line 63
    .line 64
    .line 65
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->redactSensitiveNotificationsFromUntrustedListeners()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    iget v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    .line 73
    .line 74
    iget-object v7, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 75
    .line 76
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {p0, v5, v7}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isAppTrustedNotificationListenerService(ILjava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_2

    .line 85
    .line 86
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    .line 87
    .line 88
    monitor-enter v5

    .line 89
    :try_start_1
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    .line 90
    .line 91
    iget v8, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    .line 92
    .line 93
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustListenerUpdateHistory:Ljava/util/ArrayList;

    .line 101
    .line 102
    new-instance v8, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    .line 108
    .line 109
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    monitor-exit v5

    .line 120
    goto :goto_1

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    throw p0

    .line 124
    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v2, v6}, Landroid/service/notification/INotificationListener;->onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 125
    .line 126
    .line 127
    iget-boolean v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 128
    .line 129
    if-eqz v1, :cond_3

    .line 130
    .line 131
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iget-object v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 142
    .line 143
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const/16 v5, 0x80

    .line 148
    .line 149
    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-eqz v1, :cond_3

    .line 154
    .line 155
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 156
    .line 157
    if-eqz v2, :cond_3

    .line 158
    .line 159
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 160
    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 167
    .line 168
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 179
    .line 180
    const-string v1, "com.samsung.android.notification.listener.trim"

    .line 181
    .line 182
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-ne v0, v4, :cond_3

    .line 187
    .line 188
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    .line 189
    .line 190
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :catch_0
    move-exception p0

    .line 195
    :try_start_4
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 196
    .line 197
    .line 198
    :catch_1
    :cond_3
    :goto_2
    return-void

    .line 199
    :catchall_1
    move-exception p0

    .line 200
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 201
    throw p0
.end method

.method public final onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "onServiceRemovedLocked : remove "

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->updateUriPermissionsForActiveNotificationsLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 9
    .line 10
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 11
    .line 12
    invoke-virtual {v2, p1, v1}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateListenerHintsLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateEffectsSuppressorLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->redactSensitiveNotificationsFromUntrustedListeners()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    .line 35
    .line 36
    monitor-enter v1

    .line 37
    :try_start_0
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mSystemUIUid:I

    .line 38
    .line 39
    const/4 v3, -0x1

    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 45
    .line 46
    const-string v3, "com.android.systemui"

    .line 47
    .line 48
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const-wide/16 v5, 0x0

    .line 53
    .line 54
    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iput v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mSystemUIUid:I

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mSystemUIUid:I

    .line 64
    .line 65
    iget v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    .line 66
    .line 67
    if-eq v2, v3, :cond_2

    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustListenerUpdateHistory:Ljava/util/ArrayList;

    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    .line 77
    .line 78
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    .line 89
    .line 90
    iget v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    .line 91
    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_2
    monitor-exit v1

    .line 100
    goto :goto_2

    .line 101
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    throw p0

    .line 103
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final onUserRemoved(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/notification/ManagedServices;->onUserRemoved(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    :goto_0
    if-ltz v1, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/util/Pair;

    .line 24
    .line 25
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ne v2, p1, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public prepareNotifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)Ljava/util/List;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    iget-object v9, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, v7, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 20
    .line 21
    iget-object v2, v10, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    .line 24
    .line 25
    const/4 v11, 0x0

    .line 26
    invoke-virtual {v2, v1, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    :try_start_0
    iget-object v13, v7, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    if-eqz v8, :cond_1

    .line 47
    .line 48
    iget-object v2, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 49
    .line 50
    move-object v14, v2

    .line 51
    goto :goto_1

    .line 52
    :goto_0
    move-object v11, v7

    .line 53
    goto/16 :goto_13

    .line 54
    .line 55
    :cond_1
    move-object v14, v1

    .line 56
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->hasSensitiveContent(Lcom/android/server/notification/NotificationRecord;)Z

    .line 57
    .line 58
    .line 59
    move-result v15

    .line 60
    invoke-static/range {p2 .. p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->hasSensitiveContent(Lcom/android/server/notification/NotificationRecord;)Z

    .line 61
    .line 62
    .line 63
    move-result v16

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v17

    .line 74
    move-object v2, v1

    .line 75
    move-object v3, v2

    .line 76
    move-object v4, v3

    .line 77
    move-object/from16 v18, v4

    .line 78
    .line 79
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_1b

    .line 84
    .line 85
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    move-object v6, v5

    .line 90
    check-cast v6, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 91
    .line 92
    iget v5, v6, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    .line 93
    .line 94
    invoke-virtual {v0, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isUidTrusted(I)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->redactSensitiveNotificationsFromUntrustedListeners()Z

    .line 99
    .line 100
    .line 101
    move-result v19

    .line 102
    if-eqz v19, :cond_2

    .line 103
    .line 104
    if-eqz v15, :cond_2

    .line 105
    .line 106
    if-nez v5, :cond_2

    .line 107
    .line 108
    const/16 v19, 0x1

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_2
    const/16 v19, 0x0

    .line 112
    .line 113
    :goto_3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->redactSensitiveNotificationsFromUntrustedListeners()Z

    .line 114
    .line 115
    .line 116
    move-result v20

    .line 117
    if-eqz v20, :cond_3

    .line 118
    .line 119
    if-eqz v16, :cond_3

    .line 120
    .line 121
    if-nez v5, :cond_3

    .line 122
    .line 123
    const/4 v5, 0x1

    .line 124
    goto :goto_4

    .line 125
    :cond_3
    const/4 v5, 0x0

    .line 126
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    invoke-virtual {v10, v13, v11, v6}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-eqz v14, :cond_4

    .line 135
    .line 136
    move-object/from16 v21, v2

    .line 137
    .line 138
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual {v10, v14, v2, v6}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_5

    .line 147
    .line 148
    const/4 v2, 0x1

    .line 149
    goto :goto_5

    .line 150
    :catch_0
    move-exception v0

    .line 151
    goto :goto_0

    .line 152
    :cond_4
    move-object/from16 v21, v2

    .line 153
    .line 154
    :cond_5
    const/4 v2, 0x0

    .line 155
    :goto_5
    if-nez v2, :cond_7

    .line 156
    .line 157
    if-nez v11, :cond_7

    .line 158
    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string/jumbo v5, "skip send NotificationListenerService - isn\'t visible, ManagedServiceInfo = "

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    if-eqz v14, :cond_6

    .line 181
    .line 182
    if-eqz v8, :cond_6

    .line 183
    .line 184
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-static {v10, v14, v2, v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misVisibleToListenerForLog(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 189
    .line 190
    .line 191
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    invoke-static {v10, v13, v2, v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misVisibleToListenerForLog(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 196
    .line 197
    .line 198
    move/from16 v22, v15

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_7
    move/from16 v22, v15

    .line 202
    .line 203
    iget-boolean v15, v7, Lcom/android/server/notification/NotificationRecord;->mHidden:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .line 205
    const/16 v7, 0x1c

    .line 206
    .line 207
    if-eqz v15, :cond_8

    .line 208
    .line 209
    :try_start_1
    iget v15, v6, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    .line 210
    .line 211
    if-ge v15, v7, :cond_8

    .line 212
    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string/jumbo v5, "skip send NotificationListenerService - hidden, ManagedServiceInfo = "

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    :goto_6
    move-object/from16 v7, p1

    .line 235
    .line 236
    move-object/from16 v2, v21

    .line 237
    .line 238
    move/from16 v15, v22

    .line 239
    .line 240
    :goto_7
    const/4 v11, 0x0

    .line 241
    goto/16 :goto_2

    .line 242
    .line 243
    :catch_1
    move-exception v0

    .line 244
    move-object/from16 v11, p1

    .line 245
    .line 246
    goto/16 :goto_13

    .line 247
    .line 248
    :cond_8
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    .line 249
    .line 250
    .line 251
    move-result v15

    .line 252
    if-eqz v15, :cond_f

    .line 253
    .line 254
    if-eqz v19, :cond_9

    .line 255
    .line 256
    if-nez v1, :cond_9

    .line 257
    .line 258
    invoke-virtual {v0, v13}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->redactStatusBarNotification(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    new-instance v15, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    .line 263
    .line 264
    invoke-direct {v15, v10, v1}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    .line 265
    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_9
    move-object/from16 v15, v21

    .line 269
    .line 270
    :goto_8
    if-eqz v19, :cond_a

    .line 271
    .line 272
    invoke-virtual {v15, v6}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    .line 273
    .line 274
    .line 275
    move-result-object v21

    .line 276
    move-object/from16 v33, v21

    .line 277
    .line 278
    move-object/from16 v21, v1

    .line 279
    .line 280
    :goto_9
    move-object v1, v4

    .line 281
    move-object/from16 v4, v33

    .line 282
    .line 283
    goto :goto_b

    .line 284
    :cond_a
    iget-object v7, v10, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 285
    .line 286
    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    .line 287
    .line 288
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    move-object/from16 v21, v1

    .line 293
    .line 294
    const/4 v1, 0x1

    .line 295
    if-ne v7, v1, :cond_c

    .line 296
    .line 297
    if-nez v3, :cond_b

    .line 298
    .line 299
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    :cond_b
    move-object v1, v3

    .line 304
    goto :goto_a

    .line 305
    :cond_c
    if-nez v4, :cond_d

    .line 306
    .line 307
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    :cond_d
    move-object v1, v3

    .line 312
    move-object v3, v4

    .line 313
    :goto_a
    move-object/from16 v33, v3

    .line 314
    .line 315
    move-object v3, v1

    .line 316
    goto :goto_9

    .line 317
    :goto_b
    iget-boolean v7, v6, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystemUi:Z

    .line 318
    .line 319
    if-eqz v7, :cond_e

    .line 320
    .line 321
    if-eqz v8, :cond_e

    .line 322
    .line 323
    iget-object v7, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 324
    .line 325
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    if-eqz v7, :cond_e

    .line 330
    .line 331
    iget-object v7, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 332
    .line 333
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    iget v7, v7, Landroid/app/Notification;->flags:I

    .line 338
    .line 339
    const/high16 v24, 0x10000

    .line 340
    .line 341
    and-int v7, v7, v24

    .line 342
    .line 343
    if-lez v7, :cond_e

    .line 344
    .line 345
    invoke-virtual {v10, v6}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    new-instance v7, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;

    .line 350
    .line 351
    const/4 v8, 0x1

    .line 352
    move-object v1, v7

    .line 353
    move-object/from16 v2, p0

    .line 354
    .line 355
    move-object v3, v6

    .line 356
    move v6, v8

    .line 357
    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    goto/16 :goto_14

    .line 364
    .line 365
    :cond_e
    move-object/from16 v24, v1

    .line 366
    .line 367
    move-object v7, v3

    .line 368
    goto :goto_c

    .line 369
    :cond_f
    move-object v7, v3

    .line 370
    move-object/from16 v24, v4

    .line 371
    .line 372
    move-object/from16 v15, v21

    .line 373
    .line 374
    move-object/from16 v21, v1

    .line 375
    .line 376
    :goto_c
    if-nez p3, :cond_10

    .line 377
    .line 378
    iget v1, v6, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    .line 379
    .line 380
    const/16 v3, 0x1c

    .line 381
    .line 382
    if-lt v1, v3, :cond_10

    .line 383
    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    const-string/jumbo v2, "skip send NotificationListenerService - notifyAllListeners is false, ManagedServiceInfo = "

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    move-object v3, v7

    .line 406
    move-object v2, v15

    .line 407
    move-object/from16 v1, v21

    .line 408
    .line 409
    move/from16 v15, v22

    .line 410
    .line 411
    move-object/from16 v4, v24

    .line 412
    .line 413
    :goto_d
    const/4 v11, 0x0

    .line 414
    move-object/from16 v7, p1

    .line 415
    .line 416
    goto/16 :goto_2

    .line 417
    .line 418
    :cond_10
    invoke-virtual {v10, v6}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    .line 419
    .line 420
    .line 421
    move-result-object v23

    .line 422
    if-eqz v2, :cond_14

    .line 423
    .line 424
    if-nez v11, :cond_14

    .line 425
    .line 426
    if-eqz v5, :cond_11

    .line 427
    .line 428
    if-nez v18, :cond_11

    .line 429
    .line 430
    invoke-virtual {v0, v14}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->redactStatusBarNotification(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    move-object/from16 v18, v1

    .line 435
    .line 436
    :cond_11
    if-eqz v5, :cond_12

    .line 437
    .line 438
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    :goto_e
    move-object v4, v1

    .line 443
    goto :goto_f

    .line 444
    :cond_12
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    goto :goto_e

    .line 449
    :goto_f
    new-instance v11, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;

    .line 450
    .line 451
    const/16 v19, 0x2

    .line 452
    .line 453
    move-object v1, v11

    .line 454
    move-object/from16 v2, p0

    .line 455
    .line 456
    move-object v3, v6

    .line 457
    move-object/from16 v5, v23

    .line 458
    .line 459
    move-object/from16 v25, v15

    .line 460
    .line 461
    move-object v15, v6

    .line 462
    move/from16 v6, v19

    .line 463
    .line 464
    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .line 474
    .line 475
    const-string/jumbo v2, "skip send NotificationListenerService - became invisible, ManagedServiceInfo = "

    .line 476
    .line 477
    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    if-eqz v14, :cond_13

    .line 492
    .line 493
    if-eqz v8, :cond_13

    .line 494
    .line 495
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    invoke-static {v10, v14, v1, v15}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misVisibleToListenerForLog(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 500
    .line 501
    .line 502
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    invoke-static {v10, v13, v1, v15}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misVisibleToListenerForLog(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 507
    .line 508
    .line 509
    move-object v3, v7

    .line 510
    move-object/from16 v1, v21

    .line 511
    .line 512
    move/from16 v15, v22

    .line 513
    .line 514
    move-object/from16 v4, v24

    .line 515
    .line 516
    move-object/from16 v2, v25

    .line 517
    .line 518
    goto :goto_d

    .line 519
    :cond_14
    move-object/from16 v25, v15

    .line 520
    .line 521
    move-object v15, v6

    .line 522
    iget v1, v15, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 523
    .line 524
    const/4 v2, -0x1

    .line 525
    if-ne v1, v2, :cond_15

    .line 526
    .line 527
    const/4 v1, 0x0

    .line 528
    :cond_15
    iget-object v2, v15, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 529
    .line 530
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 534
    move-object/from16 v11, p1

    .line 535
    .line 536
    :try_start_2
    invoke-virtual {v10, v11, v8, v2, v1}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    .line 537
    .line 538
    .line 539
    iget-object v2, v10, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 540
    .line 541
    iget v3, v15, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    .line 542
    .line 543
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 544
    .line 545
    .line 546
    move-result v29

    .line 547
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 548
    .line 549
    .line 550
    move-result v30

    .line 551
    const/16 v32, 0x0

    .line 552
    .line 553
    const/16 v28, 0x0

    .line 554
    .line 555
    const/16 v31, 0x0

    .line 556
    .line 557
    move-object/from16 v26, v2

    .line 558
    .line 559
    move/from16 v27, v1

    .line 560
    .line 561
    invoke-virtual/range {v26 .. v32}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    .line 562
    .line 563
    .line 564
    if-eqz v19, :cond_16

    .line 565
    .line 566
    if-nez v21, :cond_16

    .line 567
    .line 568
    invoke-virtual {v0, v13}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->redactStatusBarNotification(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    .line 573
    .line 574
    invoke-direct {v2, v10, v1}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    .line 575
    .line 576
    .line 577
    move-object/from16 v21, v1

    .line 578
    .line 579
    move-object v6, v2

    .line 580
    goto :goto_10

    .line 581
    :catch_2
    move-exception v0

    .line 582
    goto :goto_13

    .line 583
    :cond_16
    move-object/from16 v6, v25

    .line 584
    .line 585
    :goto_10
    if-eqz v19, :cond_17

    .line 586
    .line 587
    invoke-virtual {v6, v15}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    move-object v4, v1

    .line 592
    goto :goto_12

    .line 593
    :cond_17
    iget-object v1, v10, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 594
    .line 595
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    .line 596
    .line 597
    invoke-virtual {v1, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    const/4 v2, 0x1

    .line 602
    if-ne v1, v2, :cond_19

    .line 603
    .line 604
    if-nez v7, :cond_18

    .line 605
    .line 606
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    .line 607
    .line 608
    .line 609
    move-result-object v7

    .line 610
    :cond_18
    move-object v1, v7

    .line 611
    goto :goto_11

    .line 612
    :cond_19
    if-nez v24, :cond_1a

    .line 613
    .line 614
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    .line 615
    .line 616
    .line 617
    move-result-object v24

    .line 618
    :cond_1a
    move-object v1, v7

    .line 619
    move-object/from16 v7, v24

    .line 620
    .line 621
    :goto_11
    move-object v4, v7

    .line 622
    move-object v7, v1

    .line 623
    :goto_12
    new-instance v5, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;

    .line 624
    .line 625
    const/16 v19, 0x3

    .line 626
    .line 627
    move-object v1, v5

    .line 628
    move-object/from16 v2, p0

    .line 629
    .line 630
    move-object v3, v15

    .line 631
    move-object v15, v5

    .line 632
    move-object/from16 v5, v23

    .line 633
    .line 634
    move-object/from16 v25, v6

    .line 635
    .line 636
    move/from16 v6, v19

    .line 637
    .line 638
    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 642
    .line 643
    .line 644
    move-object v3, v7

    .line 645
    move-object v7, v11

    .line 646
    move-object/from16 v1, v21

    .line 647
    .line 648
    move/from16 v15, v22

    .line 649
    .line 650
    move-object/from16 v4, v24

    .line 651
    .line 652
    move-object/from16 v2, v25

    .line 653
    .line 654
    goto/16 :goto_7

    .line 655
    .line 656
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 657
    .line 658
    const-string v2, "Could not notify listeners for "

    .line 659
    .line 660
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    iget-object v2, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 664
    .line 665
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 677
    .line 678
    .line 679
    :cond_1b
    :goto_14
    return-object v12
.end method

.method public final readExtraTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "request_listeners"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-eqz p2, :cond_4

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    :goto_0
    invoke-static {p1, p2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    const-string v0, "listener"

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string/jumbo v0, "user"

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const-string v1, "component"

    .line 41
    .line 42
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Landroid/util/ArraySet;

    .line 51
    .line 52
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/16 v4, 0xf

    .line 60
    .line 61
    :cond_1
    :goto_1
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_3

    .line 66
    .line 67
    const-string v5, "allowed"

    .line 68
    .line 69
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_2

    .line 78
    .line 79
    const-string/jumbo v4, "types"

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const-string v5, "disallowed"

    .line 88
    .line 89
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_1

    .line 98
    .line 99
    const-string/jumbo v5, "pkg"

    .line 100
    .line 101
    .line 102
    invoke-static {p1, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const-string/jumbo v6, "uid"

    .line 107
    .line 108
    .line 109
    invoke-static {p1, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-nez v7, :cond_1

    .line 118
    .line 119
    new-instance v7, Landroid/content/pm/VersionedPackage;

    .line 120
    .line 121
    invoke-direct {v7, v5, v6}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    new-instance v3, Landroid/service/notification/NotificationListenerFilter;

    .line 129
    .line 130
    invoke-direct {v3, v4, v2}, Landroid/service/notification/NotificationListenerFilter;-><init>(ILandroid/util/ArraySet;)V

    .line 131
    .line 132
    .line 133
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 134
    .line 135
    monitor-enter v2

    .line 136
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 137
    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    monitor-exit v2

    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :catchall_0
    move-exception p0

    .line 153
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    throw p0

    .line 155
    :cond_4
    return-void
.end method

.method public final redactStatusBarNotification(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;
    .locals 11

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->redactSensitiveNotificationsFromUntrustedListeners()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 12
    .line 13
    const-string v1, "android.appInfo"

    .line 14
    .line 15
    const-class v2, Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "StatusBarNotification "

    .line 41
    .line 42
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, " does not have ApplicationInfo. Did you pass in a \'cloneLight\' notification?"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    const v3, 0x1040c72

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    new-instance v5, Landroid/app/Notification;

    .line 80
    .line 81
    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    .line 82
    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 86
    .line 87
    .line 88
    new-instance v7, Landroid/app/Notification$Builder;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-direct {v7, v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 101
    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 105
    .line 106
    .line 107
    new-array v1, v6, [Landroid/app/Notification$Action;

    .line 108
    .line 109
    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 110
    .line 111
    .line 112
    iget-object v1, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 113
    .line 114
    if-eqz v1, :cond_1

    .line 115
    .line 116
    :goto_1
    iget-object v1, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 117
    .line 118
    array-length v1, v1

    .line 119
    if-ge v6, v1, :cond_1

    .line 120
    .line 121
    new-instance v1, Landroid/app/Notification$Action$Builder;

    .line 122
    .line 123
    iget-object v5, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 124
    .line 125
    aget-object v5, v5, v6

    .line 126
    .line 127
    invoke-direct {v1, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/app/Notification$Action;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    const v8, 0x1040c71

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    iput-object v5, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 144
    .line 145
    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 146
    .line 147
    .line 148
    add-int/lit8 v6, v6, 0x1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_1
    const-class v1, Landroid/app/Notification$MessagingStyle;

    .line 152
    .line 153
    invoke-virtual {v4, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    const-string v5, ""

    .line 158
    .line 159
    if-eqz v1, :cond_2

    .line 160
    .line 161
    new-instance v1, Landroid/app/Person$Builder;

    .line 162
    .line 163
    invoke-direct {v1}, Landroid/app/Person$Builder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v5}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    new-instance v6, Landroid/app/Notification$MessagingStyle;

    .line 175
    .line 176
    invoke-direct {v6, v1}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    .line 177
    .line 178
    .line 179
    new-instance v8, Landroid/app/Notification$MessagingStyle$Message;

    .line 180
    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 182
    .line 183
    .line 184
    move-result-wide v9

    .line 185
    invoke-direct {v8, v2, v9, v10, v1}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6, v8}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 192
    .line 193
    .line 194
    :cond_2
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->redactSensitiveNotificationsBigTextStyle()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_3

    .line 199
    .line 200
    const-class v1, Landroid/app/Notification$BigTextStyle;

    .line 201
    .line 202
    invoke-virtual {v4, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_3

    .line 207
    .line 208
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    .line 209
    .line 210
    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 211
    .line 212
    .line 213
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 214
    .line 215
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {v1, p0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v5}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v5}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 229
    .line 230
    .line 231
    :cond_3
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 236
    .line 237
    const-string v2, "android.title.big"

    .line 238
    .line 239
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_4

    .line 244
    .line 245
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 246
    .line 247
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :cond_4
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 251
    .line 252
    const-string v1, "android.subText"

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 258
    .line 259
    const-string v1, "android.textLines"

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 265
    .line 266
    const-string v1, "android.largeIcon.big"

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, p0}, Landroid/service/notification/StatusBarNotification;->cloneShallow(Landroid/app/Notification;)Landroid/service/notification/StatusBarNotification;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    return-object p0

    .line 276
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    .line 277
    .line 278
    const-string/jumbo p1, "redactStatusBarNotification called while flag is off"

    .line 279
    .line 280
    .line 281
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw p0
.end method

.method public final setPackageOrComponentEnabled(ILjava/lang/String;ZZZ)V
    .locals 7

    .line 1
    const-string/jumbo p3, "setPackageOrComponentEnabled : add "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "setPackageOrComponentEnabled : remove "

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    move-object v1, p0

    .line 9
    move v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move v5, p4

    .line 12
    move v6, p5

    .line 13
    invoke-super/range {v1 .. v6}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(ILjava/lang/String;ZZZ)V

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->redactSensitiveNotificationsFromUntrustedListeners()Z

    .line 21
    .line 22
    .line 23
    move-result p5

    .line 24
    if-eqz p5, :cond_3

    .line 25
    .line 26
    iget-object p5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 27
    .line 28
    iget-object p5, p5, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 29
    .line 30
    const-wide/16 v1, 0x0

    .line 31
    .line 32
    invoke-virtual {p5, p2, v1, v2, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 33
    .line 34
    .line 35
    move-result p5

    .line 36
    if-nez p4, :cond_2

    .line 37
    .line 38
    if-ltz p5, :cond_2

    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    .line 41
    .line 42
    monitor-enter v3

    .line 43
    :try_start_0
    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mSystemUIUid:I

    .line 44
    .line 45
    const/4 v5, -0x1

    .line 46
    if-ne v4, v5, :cond_0

    .line 47
    .line 48
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 49
    .line 50
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 51
    .line 52
    const-string v5, "com.android.systemui"

    .line 53
    .line 54
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-virtual {v4, v5, v1, v2, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mSystemUIUid:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mSystemUIUid:I

    .line 68
    .line 69
    if-eq v1, p5, :cond_1

    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustListenerUpdateHistory:Ljava/util/ArrayList;

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, " "

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    .line 97
    .line 98
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :cond_1
    monitor-exit v3

    .line 106
    goto :goto_2

    .line 107
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    throw p0

    .line 109
    :cond_2
    :goto_2
    if-eqz p4, :cond_3

    .line 110
    .line 111
    if-ltz p5, :cond_3

    .line 112
    .line 113
    invoke-virtual {p0, p5, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isAppTrustedNotificationListenerService(ILjava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_3

    .line 118
    .line 119
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    .line 120
    .line 121
    monitor-enter p2

    .line 122
    :try_start_1
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustedListenerUids:Landroid/util/ArraySet;

    .line 123
    .line 124
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mTrustListenerUpdateHistory:Ljava/util/ArrayList;

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    monitor-exit p2

    .line 149
    goto :goto_3

    .line 150
    :catchall_1
    move-exception p0

    .line 151
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    throw p0

    .line 153
    :cond_3
    :goto_3
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 154
    .line 155
    new-instance p2, Landroid/content/Intent;

    .line 156
    .line 157
    const-string p3, "android.app.action.NOTIFICATION_LISTENER_ENABLED_CHANGED"

    .line 158
    .line 159
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const/high16 p3, 0x40000000    # 2.0f

    .line 163
    .line 164
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    const/4 p3, 0x0

    .line 173
    invoke-virtual {p0, p2, p1, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method public final updateUriPermissionsForActiveNotificationsLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_5

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    move-object v5, v2

    .line 20
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    iget-object v2, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 25
    .line 26
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {v0, v2, v3, p1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-boolean v2, v5, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    iget v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    .line 44
    .line 45
    const/16 v3, 0x1c

    .line 46
    .line 47
    if-ge v2, v3, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 51
    .line 52
    const/4 v3, -0x1

    .line 53
    if-ne v2, v3, :cond_2

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    :cond_2
    move v7, v2

    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    iget-object v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-virtual {v0, v5, v3, v2, v7}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 71
    .line 72
    iget-object v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    const/4 v8, 0x1

    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "Could not "

    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    if-eqz p2, :cond_4

    .line 92
    .line 93
    const-string p2, "grant"

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    const-string/jumbo p2, "revoke"

    .line 97
    .line 98
    .line 99
    :goto_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p2, " Uri permissions to "

    .line 103
    .line 104
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 108
    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {p0, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .line 120
    .line 121
    :cond_5
    return-void
.end method

.method public final writeExtraXmlTags(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "request_listeners"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/util/Pair;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mRequestedNotificationListeners:Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Landroid/service/notification/NotificationListenerFilter;

    .line 40
    .line 41
    const-string v5, "listener"

    .line 42
    .line 43
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    .line 45
    .line 46
    const-string v5, "component"

    .line 47
    .line 48
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v6, Landroid/content/ComponentName;

    .line 51
    .line 52
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v5, "user"

    .line 60
    .line 61
    .line 62
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-static {p1, v5, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    const-string v3, "allowed"

    .line 74
    .line 75
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    .line 77
    .line 78
    const-string/jumbo v3, "types"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerFilter;->getTypes()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    invoke-static {p1, v3, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    const-string v3, "allowed"

    .line 89
    .line 90
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerFilter;->getDisallowedPackages()Landroid/util/ArraySet;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_1

    .line 106
    .line 107
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Landroid/content/pm/VersionedPackage;

    .line 112
    .line 113
    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-nez v5, :cond_0

    .line 122
    .line 123
    const-string v5, "disallowed"

    .line 124
    .line 125
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    .line 127
    .line 128
    const-string/jumbo v5, "pkg"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    const-string/jumbo v5, "uid"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    invoke-static {p1, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    const-string v4, "disallowed"

    .line 149
    .line 150
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :catchall_0
    move-exception p0

    .line 155
    goto :goto_2

    .line 156
    :cond_1
    const-string v3, "listener"

    .line 157
    .line 158
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    const-string/jumbo p0, "request_listeners"

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    throw p0
.end method
