.class public final Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;


# static fields
.field public static final sBoundServiceInfoComparator:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$$ExternalSyntheticLambda0;


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManagerInternal;

.field public final mCallerPermission:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mIntent:Landroid/content/Intent;

.field public volatile mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

.field public final mMatchSystemAppsOnly:Z

.field public final mServicePermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->sBoundServiceInfoComparator:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mActivityManager:Landroid/app/ActivityManagerInternal;

    .line 18
    .line 19
    new-instance p1, Landroid/content/Intent;

    .line 20
    .line 21
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    .line 25
    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    :cond_0
    iput-object p4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p5, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mServicePermission:Ljava/lang/String;

    .line 34
    .line 35
    iput-boolean p6, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mMatchSystemAppsOnly:Z

    .line 36
    .line 37
    return-void
.end method

.method public static createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v6, 0x0

    .line 10
    if-nez p2, :cond_2

    .line 11
    .line 12
    invoke-static {}, Landroid/location/flags/Flags;->fixServiceWatcher()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    new-instance p2, Landroid/util/TypedValue;

    .line 19
    .line 20
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, p3, p2, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    const-string p2, ""

    .line 34
    .line 35
    :goto_0
    move-object v4, p2

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object v4, v6

    .line 48
    :goto_1
    new-instance p2, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    .line 49
    .line 50
    const/4 v7, 0x1

    .line 51
    move-object v1, p2

    .line 52
    move-object v2, p0

    .line 53
    move-object v3, p1

    .line 54
    move-object v5, v6

    .line 55
    invoke-direct/range {v1 .. v7}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    return-object p2
.end method


# virtual methods
.method public final getServiceInfo()Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
    .locals 8

    .line 1
    invoke-static {}, Landroid/location/flags/Flags;->fixServiceWatcher()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v2, ""

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mMatchSystemAppsOnly:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const v0, 0x10100080

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const v0, 0x10000080

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mActivityManager:Landroid/app/ActivityManagerInternal;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iget-object v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    .line 48
    .line 49
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 68
    .line 69
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 70
    .line 71
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget-object v4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    .line 75
    .line 76
    const-string v5, "CurrentUserServiceSupplier"

    .line 77
    .line 78
    if-eqz v4, :cond_3

    .line 79
    .line 80
    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-nez v4, :cond_3

    .line 87
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v3, " disqualified due to not requiring "

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v2, v3, v5}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    new-instance v3, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 116
    .line 117
    iget-object v4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    .line 118
    .line 119
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-direct {v3, v4, v2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    .line 124
    .line 125
    .line 126
    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mServicePermission:Ljava/lang/String;

    .line 127
    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    iget-object v4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    const/4 v6, -0x1

    .line 133
    iget v7, v3, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mUid:I

    .line 134
    .line 135
    invoke-virtual {v4, v2, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_4

    .line 140
    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    iget-object v3, v3, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 147
    .line 148
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v3, " disqualified due to not holding "

    .line 156
    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-object v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    .line 161
    .line 162
    invoke-static {v2, v3, v5}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_4
    sget-object v2, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->sBoundServiceInfoComparator:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$$ExternalSyntheticLambda0;

    .line 167
    .line 168
    invoke-virtual {v2, v3, v1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$$ExternalSyntheticLambda0;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-lez v2, :cond_2

    .line 173
    .line 174
    move-object v1, v3

    .line 175
    goto :goto_1

    .line 176
    :cond_5
    :goto_2
    return-object v1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "android.intent.extra.user_handle"

    .line 9
    .line 10
    const/16 v1, -0x2710

    .line 11
    .line 12
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-ne p2, v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    const/4 v1, 0x0

    .line 25
    const-string v2, "android.intent.action.USER_UNLOCKED"

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_4

    .line 32
    .line 33
    const-string p0, "android.intent.action.USER_SWITCHED"

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    check-cast v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0

    .line 52
    throw p0

    .line 53
    :cond_4
    iget-object p0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mActivityManager:Landroid/app/ActivityManagerInternal;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-ne p2, p0, :cond_5

    .line 60
    .line 61
    check-cast v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 62
    .line 63
    monitor-enter v0

    .line 64
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .line 66
    .line 67
    monitor-exit v0

    .line 68
    goto :goto_0

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    monitor-exit v0

    .line 71
    throw p0

    .line 72
    :cond_5
    :goto_0
    return-void
.end method
