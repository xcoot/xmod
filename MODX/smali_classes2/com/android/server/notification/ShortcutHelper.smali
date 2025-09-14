.class public final Lcom/android/server/notification/ShortcutHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActiveShortcutBubbles:Ljava/util/HashMap;

.field public final mLauncherAppsCallback:Lcom/android/server/notification/ShortcutHelper$1;

.field public mLauncherAppsCallbackRegistered:Z

.field public mLauncherAppsService:Landroid/content/pm/LauncherApps;

.field public final mShortcutListener:Lcom/android/server/notification/NotificationManagerService$3;

.field public mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "*/*"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    const-string v1, "ShortcutHelper"

    .line 14
    .line 15
    const-string v2, "Bad mime type"

    .line 16
    .line 17
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/LauncherApps;Lcom/android/server/notification/NotificationManagerService$3;Landroid/content/pm/ShortcutServiceInternal;Landroid/os/UserManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/notification/ShortcutHelper$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/notification/ShortcutHelper$1;-><init>(Lcom/android/server/notification/ShortcutHelper;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallback:Lcom/android/server/notification/ShortcutHelper$1;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutListener:Lcom/android/server/notification/NotificationManagerService$3;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/android/server/notification/ShortcutHelper;->mUserManager:Landroid/os/UserManager;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final getValidShortcutInfo(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mUserManager:Landroid/os/UserManager;

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_4

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    if-eqz p1, :cond_5

    .line 20
    .line 21
    if-eqz p3, :cond_5

    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 32
    .line 33
    .line 34
    filled-new-array {p1}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 43
    .line 44
    .line 45
    const/16 p1, 0xc11

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    .line 51
    .line 52
    invoke-virtual {p0, v0, p2}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-lez p1, :cond_2

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Landroid/content/pm/ShortcutInfo;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    move-object p0, v1

    .line 75
    :goto_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 76
    .line 77
    .line 78
    if-eqz p0, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 87
    .line 88
    .line 89
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-nez p1, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_4
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    return-object v1

    .line 101
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :cond_5
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    .line 107
    .line 108
    :cond_6
    :goto_4
    return-object v1
.end method

.method public final maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;ZLandroid/os/Handler;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallback:Lcom/android/server/notification/ShortcutHelper$1;

    .line 30
    .line 31
    if-nez p2, :cond_2

    .line 32
    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 40
    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    iget-object p2, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    .line 54
    .line 55
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Ljava/util/HashMap;

    .line 66
    .line 67
    if-nez p2, :cond_1

    .line 68
    .line 69
    new-instance p2, Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    iget-boolean p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    .line 95
    .line 96
    if-nez p1, :cond_7

    .line 97
    .line 98
    iget-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    .line 99
    .line 100
    invoke-virtual {p1, v1, p3}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V

    .line 101
    .line 102
    .line 103
    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_2
    iget-object p2, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    .line 108
    .line 109
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 110
    .line 111
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    check-cast p2, Ljava/util/HashMap;

    .line 120
    .line 121
    if-eqz p2, :cond_6

    .line 122
    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    if-nez p3, :cond_3

    .line 128
    .line 129
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_3
    new-instance p3, Ljava/util/HashSet;

    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-direct {p3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_5

    .line 151
    .line 152
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Ljava/lang/String;

    .line 163
    .line 164
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 165
    .line 166
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_4

    .line 175
    .line 176
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_5
    :goto_2
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    if-eqz p2, :cond_6

    .line 185
    .line 186
    iget-object p2, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    .line 187
    .line 188
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    :cond_6
    iget-boolean p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    .line 198
    .line 199
    if-eqz p1, :cond_7

    .line 200
    .line 201
    iget-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_7

    .line 208
    .line 209
    iget-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    .line 210
    .line 211
    invoke-virtual {p1, v1}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 212
    .line 213
    .line 214
    const/4 p1, 0x0

    .line 215
    iput-boolean p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    .line 216
    .line 217
    :cond_7
    :goto_3
    return-void
.end method

.method public setLauncherApps(Landroid/content/pm/LauncherApps;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    .line 2
    .line 3
    return-void
.end method

.method public setShortcutServiceInternal(Landroid/content/pm/ShortcutServiceInternal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 2
    .line 3
    return-void
.end method

.method public setUserManager(Landroid/os/UserManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    return-void
.end method
