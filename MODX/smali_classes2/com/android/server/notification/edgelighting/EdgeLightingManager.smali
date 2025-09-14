.class public final Lcom/android/server/notification/edgelighting/EdgeLightingManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCurrentProfiles:Landroid/util/SparseArray;

.field public final mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

.field public final mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

.field public mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mLock:Ljava/lang/Object;

.field public final mPhoneStateListener:Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mReceiver:Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;

.field public mRinging:Z

.field public final mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

.field public mUserId:I

.field public final mUserManager:Landroid/os/UserManager;

.field public mUserSetupCompleted:Z

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


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
    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    .line 6
    .line 7
    const-string v0, "EdgeLightingManager"

    .line 8
    .line 9
    sput-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 10
    .line 11
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
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mRinging:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    new-instance v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    .line 38
    .line 39
    invoke-direct {v2, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    .line 43
    .line 44
    new-instance v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 45
    .line 46
    invoke-direct {v2, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 50
    .line 51
    new-instance v2, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 52
    .line 53
    invoke-direct {v2, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 57
    .line 58
    const-string/jumbo v2, "power"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Landroid/os/PowerManager;

    .line 66
    .line 67
    iput-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 68
    .line 69
    const-class v2, Landroid/os/UserManager;

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroid/os/UserManager;

    .line 76
    .line 77
    iput-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserManager:Landroid/os/UserManager;

    .line 78
    .line 79
    const-string/jumbo v2, "phone"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 87
    .line 88
    const/16 v3, 0x20

    .line 89
    .line 90
    invoke-virtual {v2, v0, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 91
    .line 92
    .line 93
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 100
    .line 101
    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 102
    .line 103
    new-instance p0, Landroid/content/IntentFilter;

    .line 104
    .line 105
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 106
    .line 107
    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 111
    .line 112
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public static isFolded()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/notification/NmRune;->NM_SUPPORT_SUB_DISPLAY_EDGE_LIGHTING:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_1
    return v1
.end method


# virtual methods
.method public final hideForNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isFolded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string p1, "hideForNotification : folded"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    if-eqz p1, :cond_10

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string p1, "hideForNotification : user setup is not yet completed"

    .line 49
    .line 50
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    const-string v3, "hideForNotification : packageName = "

    .line 61
    .line 62
    invoke-static {v3, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 66
    .line 67
    iget-object v3, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    .line 68
    .line 69
    const-string/jumbo v4, "remove : sbn : "

    .line 70
    .line 71
    .line 72
    iget-object v5, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    .line 73
    .line 74
    monitor-enter v5

    .line 75
    :try_start_0
    const-string v6, "EdgeLightingPolicyManager:NotificationGroup"

    .line 76
    .line 77
    new-instance v7, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    iget-object v4, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    check-cast v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    .line 103
    .line 104
    if-eqz v4, :cond_5

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    if-eqz v6, :cond_4

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    iget-object v7, v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    .line 117
    .line 118
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :try_start_1
    iget-object v8, v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    :try_start_2
    iget-object v4, v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-nez v4, :cond_6

    .line 132
    .line 133
    iget-object v4, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    goto/16 :goto_2

    .line 145
    .line 146
    :catchall_1
    move-exception p0

    .line 147
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    :try_start_4
    throw p0

    .line 149
    :cond_4
    iget-object v4, v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-nez v4, :cond_6

    .line 156
    .line 157
    iget-object v4, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_5
    iget-object v4, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    :cond_6
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->dump()V

    .line 177
    .line 178
    .line 179
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-nez p1, :cond_7

    .line 185
    .line 186
    const-string p0, "hideForNotification : isOngoing is false"

    .line 187
    .line 188
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_7
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-eqz p1, :cond_8

    .line 199
    .line 200
    const-string p0, "hideForNotification : isInteractive is true"

    .line 201
    .line 202
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_8
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-nez p1, :cond_f

    .line 213
    .line 214
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 215
    .line 216
    const/4 v3, 0x1

    .line 217
    invoke-virtual {p1, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-nez p1, :cond_f

    .line 222
    .line 223
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 224
    .line 225
    invoke-virtual {p1, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-eqz p1, :cond_9

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_9
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 233
    .line 234
    const/4 v4, 0x0

    .line 235
    invoke-virtual {p1, v3, v0, v1, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(IILjava/lang/String;Z)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-nez p1, :cond_c

    .line 240
    .line 241
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 242
    .line 243
    if-nez p0, :cond_a

    .line 244
    .line 245
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    .line 246
    .line 247
    if-eqz p0, :cond_b

    .line 248
    .line 249
    :cond_a
    const-string p0, "hideForNotification : return false by isAcceptableApplication."

    .line 250
    .line 251
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    :cond_b
    return-void

    .line 255
    :cond_c
    sget-boolean p1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 256
    .line 257
    if-nez p1, :cond_d

    .line 258
    .line 259
    sget-boolean p1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    .line 260
    .line 261
    if-eqz p1, :cond_e

    .line 262
    .line 263
    :cond_d
    const-string p1, "hideEdgeLightingInternal : packageName = "

    .line 264
    .line 265
    const-string v0, ", reason=1"

    .line 266
    .line 267
    invoke-static {p1, v1, v0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_e
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 271
    .line 272
    invoke-virtual {p0, v3, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(ILjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :cond_f
    :goto_1
    return-void

    .line 276
    :goto_2
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 277
    throw p0

    .line 278
    :cond_10
    :goto_3
    return-void
.end method

.method public final hideForWakeLockByWindow(ILjava/lang/String;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    :cond_0
    const-string v3, "hideForWakeLockByWindow : packageName = "

    .line 12
    .line 13
    invoke-static {v3, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_2

    .line 25
    .line 26
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "hideForWakeLockInternal : Calling user is not supported | Package : "

    .line 31
    .line 32
    :goto_0
    invoke-static {p1, p2, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_3

    .line 42
    .line 43
    const-string p0, "hideForWakeLockInternal : user setup is not yet completed."

    .line 44
    .line 45
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "hideForWakeLockInternal : user setup is not yet completed. | Package : "

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_5

    .line 62
    .line 63
    if-nez v0, :cond_4

    .line 64
    .line 65
    if-eqz v2, :cond_d

    .line 66
    .line 67
    :cond_4
    const-string/jumbo p0, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    .line 68
    .line 69
    .line 70
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string p1, "hideForWakeLockInternal : return false by isAllowEdgelighting. | Package : "

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 81
    .line 82
    const/4 v4, 0x2

    .line 83
    invoke-virtual {p0, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_7

    .line 88
    .line 89
    if-nez v0, :cond_6

    .line 90
    .line 91
    if-eqz v2, :cond_d

    .line 92
    .line 93
    :cond_6
    const-string p0, "hideForWakeLockInternal : return false by isAvailableEdgeLighting."

    .line 94
    .line 95
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const-string p1, "hideForWakeLockInternal : return false by isAvailableEdgeLighting. | Package : "

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_b

    .line 110
    .line 111
    const/4 v4, 0x4

    .line 112
    invoke-virtual {v3, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_8

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_8
    const/4 v5, 0x0

    .line 120
    invoke-virtual {v3, v4, p1, p2, v5}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(IILjava/lang/String;Z)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-nez p1, :cond_a

    .line 125
    .line 126
    if-nez v0, :cond_9

    .line 127
    .line 128
    if-eqz v2, :cond_d

    .line 129
    .line 130
    :cond_9
    const-string p0, "hideForWakeLockInternal : return false by isAcceptableApplication."

    .line 131
    .line 132
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_a
    const/4 p1, 0x6

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_b
    :goto_1
    if-nez v0, :cond_c

    .line 142
    .line 143
    if-eqz v2, :cond_d

    .line 144
    .line 145
    :cond_c
    const-string p0, "hideForWakeLockInternal : return false by checking disable policy."

    .line 146
    .line 147
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    const-string p1, "hideForWakeLockInternal : return false by checking disable policy. | Package : "

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_d
    :goto_2
    return-void
.end method

.method public final isCallingUserSupported(I)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    :cond_0
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, "isCallingUserSupported : callingUserId="

    .line 20
    .line 21
    const-string v4, ", mUserId="

    .line 22
    .line 23
    invoke-static {p1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v4, ", isDualAppId="

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v4, ", isKnoxId="

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    if-eq v2, p1, :cond_4

    .line 52
    .line 53
    const/4 v2, -0x1

    .line 54
    if-eq p1, v2, :cond_4

    .line 55
    .line 56
    if-nez v0, :cond_4

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    const-string v1, "isCurrentProfile = "

    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mLock:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v2

    .line 66
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 67
    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    move p0, v3

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move p0, v0

    .line 81
    :goto_0
    sget-object p1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    monitor-exit v2

    .line 99
    if-eqz p0, :cond_3

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw p0

    .line 104
    :cond_3
    move v3, v0

    .line 105
    :cond_4
    :goto_2
    return v3
.end method

.method public final isUserSetupCompleted()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "user_setup_complete"

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, -0x2

    .line 16
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    .line 24
    .line 25
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    .line 26
    .line 27
    return p0
.end method

.method public final showEdgeLightingInternal(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    const-string v1, "color"

    .line 5
    .line 6
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    :goto_0
    new-instance v2, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 13
    .line 14
    const/16 v3, 0x7d1

    .line 15
    .line 16
    filled-new-array {v1, v0}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {v2, v3, v0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;-><init>(I[I)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setUserId(I)V

    .line 26
    .line 27
    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2, p3}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    sget-boolean p3, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 34
    .line 35
    if-nez p3, :cond_2

    .line 36
    .line 37
    sget-boolean p3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    .line 38
    .line 39
    if-eqz p3, :cond_3

    .line 40
    .line 41
    :cond_2
    const-string/jumbo p3, "showEdgeLightingInternal : packageName = "

    .line 42
    .line 43
    .line 44
    const-string v0, ", reason="

    .line 45
    .line 46
    invoke-static {p1, p3, p2, v0}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 56
    .line 57
    invoke-virtual {p0, p2, v2, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->startEdgeLightingInternal(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v3, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 18
    .line 19
    sget-object v9, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const-string/jumbo v0, "showForNotification : Should show fullScreenIntent while screen off"

    .line 27
    .line 28
    .line 29
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return v10

    .line 33
    :cond_0
    iget-object v3, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    const-string/jumbo v0, "showForNotification : Should show fullScreenIntent while screen on and keyguard"

    .line 42
    .line 43
    .line 44
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return v10

    .line 48
    :cond_1
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isFolded()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    const-string/jumbo v0, "showForNotification : folded"

    .line 55
    .line 56
    .line 57
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return v10

    .line 68
    :cond_2
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    .line 69
    .line 70
    iget-object v4, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    iget v4, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    and-int/lit8 v3, v3, 0x20

    .line 82
    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string/jumbo v1, "showForNotification : lockdown mode"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return v10

    .line 96
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 101
    .line 102
    const-string v4, "android.ongoingActivityNoti.style"

    .line 103
    .line 104
    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-lez v3, :cond_4

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v4}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    const-string v6, "com.google.android.googlequicksearchbox"

    .line 128
    .line 129
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_5

    .line 134
    .line 135
    const-string v3, "convmode_notification_channel_id"

    .line 136
    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_5

    .line 142
    .line 143
    const/16 v3, 0x64

    .line 144
    .line 145
    if-ne v5, v3, :cond_5

    .line 146
    .line 147
    const-string v0, "isOngoingActivityNotification : googlequicksearchbox"

    .line 148
    .line 149
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    :goto_0
    const-string/jumbo v0, "showForNotification : OngoingActivityStyle"

    .line 153
    .line 154
    .line 155
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return v10

    .line 166
    :cond_5
    const-string v3, "isHeadUp"

    .line 167
    .line 168
    invoke-virtual {v1, v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    const-string v3, "isUpdate"

    .line 173
    .line 174
    invoke-virtual {v1, v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    const-string v3, "isInterrupt"

    .line 179
    .line 180
    invoke-virtual {v1, v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    const-string v4, "bubble"

    .line 185
    .line 186
    invoke-virtual {v1, v4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    const-string/jumbo v4, "smartPopup"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    const-string v5, "canBypassDnd"

    .line 198
    .line 199
    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    const-string/jumbo v6, "visibility"

    .line 204
    .line 205
    .line 206
    const/16 v13, -0x3e8

    .line 207
    .line 208
    invoke-virtual {v1, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    const-string/jumbo v13, "sound"

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 216
    .line 217
    .line 218
    move-result-object v13

    .line 219
    check-cast v13, Landroid/net/Uri;

    .line 220
    .line 221
    const-string/jumbo v14, "vibrate"

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    check-cast v1, Landroid/os/VibrationEffect;

    .line 229
    .line 230
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 231
    .line 232
    .line 233
    move-result-object v14

    .line 234
    if-nez v14, :cond_6

    .line 235
    .line 236
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    const-string/jumbo v1, "showForNotification : Notification is null"

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    return v10

    .line 247
    :cond_6
    const/4 v14, 0x1

    .line 248
    if-eqz v13, :cond_7

    .line 249
    .line 250
    sget-object v15, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 251
    .line 252
    invoke-virtual {v15, v13}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v13

    .line 256
    if-nez v13, :cond_7

    .line 257
    .line 258
    move v13, v14

    .line 259
    goto :goto_1

    .line 260
    :cond_7
    move v13, v10

    .line 261
    :goto_1
    iget-object v15, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    .line 262
    .line 263
    const-string v10, "audio"

    .line 264
    .line 265
    invoke-virtual {v15, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    check-cast v10, Landroid/media/AudioManager;

    .line 270
    .line 271
    if-eqz v1, :cond_8

    .line 272
    .line 273
    move v15, v14

    .line 274
    goto :goto_2

    .line 275
    :cond_8
    const/4 v15, 0x0

    .line 276
    :goto_2
    if-nez v1, :cond_9

    .line 277
    .line 278
    if-eqz v13, :cond_9

    .line 279
    .line 280
    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-ne v1, v14, :cond_9

    .line 285
    .line 286
    move v15, v14

    .line 287
    :cond_9
    if-nez v13, :cond_b

    .line 288
    .line 289
    if-eqz v15, :cond_a

    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_a
    const/4 v10, 0x0

    .line 293
    goto :goto_4

    .line 294
    :cond_b
    :goto_3
    move v10, v14

    .line 295
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 300
    .line 301
    .line 302
    move-result v13

    .line 303
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {v0, v13}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    .line 308
    .line 309
    .line 310
    move-result v15

    .line 311
    if-nez v15, :cond_c

    .line 312
    .line 313
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    const-string/jumbo v2, "showForNotification : Calling user is not supported. | Package : "

    .line 318
    .line 319
    .line 320
    invoke-static {v2, v1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 321
    .line 322
    .line 323
    const/4 v15, 0x0

    .line 324
    return v15

    .line 325
    :cond_c
    const/4 v15, 0x0

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    .line 327
    .line 328
    .line 329
    move-result v16

    .line 330
    if-nez v16, :cond_d

    .line 331
    .line 332
    const-string/jumbo v0, "showForNotification : user setup is not yet completed"

    .line 333
    .line 334
    .line 335
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    const-string/jumbo v2, "showForNotification : user setup is not yet completed  | Package : "

    .line 343
    .line 344
    .line 345
    invoke-static {v2, v1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 346
    .line 347
    .line 348
    return v15

    .line 349
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 350
    .line 351
    .line 352
    move-result-object v15

    .line 353
    iget v15, v15, Landroid/app/Notification;->ledARGB:I

    .line 354
    .line 355
    sget-boolean v17, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 356
    .line 357
    const-string v14, ", canBypassDnd="

    .line 358
    .line 359
    move/from16 v18, v10

    .line 360
    .line 361
    const-string v10, ", color="

    .line 362
    .line 363
    move/from16 v19, v6

    .line 364
    .line 365
    const-string v6, ", isHeadUp="

    .line 366
    .line 367
    move/from16 v20, v12

    .line 368
    .line 369
    const-string/jumbo v12, "showForNotification : isInteractive="

    .line 370
    .line 371
    .line 372
    sget-boolean v21, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    .line 373
    .line 374
    if-nez v17, :cond_f

    .line 375
    .line 376
    if-eqz v21, :cond_e

    .line 377
    .line 378
    goto :goto_5

    .line 379
    :cond_e
    invoke-static {v12, v2, v6, v11, v10}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v10

    .line 387
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v5, ", packageName = "

    .line 397
    .line 398
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-static {v6, v1, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    goto :goto_6

    .line 405
    :cond_f
    :goto_5
    invoke-static {v12, v2, v6, v11, v10}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v10

    .line 413
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string v5, ", sbn = "

    .line 423
    .line 424
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .line 436
    .line 437
    :goto_6
    iget-object v10, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 438
    .line 439
    iget-boolean v5, v10, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mIsTouchpadEnabled:Z

    .line 440
    .line 441
    if-eqz v5, :cond_10

    .line 442
    .line 443
    const-string/jumbo v0, "showForNotification : DEX touchpad enable"

    .line 444
    .line 445
    .line 446
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    const-string/jumbo v2, "showForNotification : DEX touchpad enable : "

    .line 454
    .line 455
    .line 456
    invoke-static {v2, v1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 457
    .line 458
    .line 459
    const/4 v5, 0x0

    .line 460
    return v5

    .line 461
    :cond_10
    const/4 v5, 0x0

    .line 462
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    iget v6, v6, Landroid/app/Notification;->semFlags:I

    .line 467
    .line 468
    and-int/lit8 v6, v6, 0x20

    .line 469
    .line 470
    if-eqz v6, :cond_11

    .line 471
    .line 472
    const-string/jumbo v0, "showForNotification : return false by notication disabling edge lighting."

    .line 473
    .line 474
    .line 475
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .line 477
    .line 478
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    const-string/jumbo v2, "showForNotification : return false by notication disabling edge lighting | Package : "

    .line 483
    .line 484
    .line 485
    invoke-static {v2, v1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 486
    .line 487
    .line 488
    return v5

    .line 489
    :cond_11
    if-eqz v3, :cond_12

    .line 490
    .line 491
    const-string/jumbo v0, "showForNotification : return false by isIntercepted"

    .line 492
    .line 493
    .line 494
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    const-string/jumbo v2, "showForNotification : isIntercepted. | Package : "

    .line 502
    .line 503
    .line 504
    invoke-static {v2, v1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 505
    .line 506
    .line 507
    return v5

    .line 508
    :cond_12
    iget-object v3, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 509
    .line 510
    const-string v15, ", sbn: "

    .line 511
    .line 512
    if-eqz v2, :cond_28

    .line 513
    .line 514
    if-eqz v7, :cond_13

    .line 515
    .line 516
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    const-string/jumbo v2, "showForNotification : canBubble. | Package : "

    .line 521
    .line 522
    .line 523
    invoke-static {v2, v1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 524
    .line 525
    .line 526
    const/4 v2, 0x0

    .line 527
    return v2

    .line 528
    :cond_13
    const/4 v2, 0x0

    .line 529
    if-eqz v4, :cond_14

    .line 530
    .line 531
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    const-string/jumbo v3, "showForNotification : isSmartPopup. | Package : "

    .line 536
    .line 537
    .line 538
    invoke-static {v3, v1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 539
    .line 540
    .line 541
    return v2

    .line 542
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v6

    .line 546
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->getEdgeLightingCondition()I

    .line 547
    .line 548
    .line 549
    move-result v5

    .line 550
    const/4 v1, 0x1

    .line 551
    invoke-virtual {v3, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    if-nez v2, :cond_17

    .line 556
    .line 557
    if-nez v17, :cond_15

    .line 558
    .line 559
    if-eqz v21, :cond_16

    .line 560
    .line 561
    :cond_15
    const-string/jumbo v0, "showForNotificationScreenOn : return false by isAvailableEdgeLighting."

    .line 562
    .line 563
    .line 564
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    .line 566
    .line 567
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    const-string/jumbo v1, "showForNotificationScreenOn : return false by isAvailableEdgeLighting. | Package : "

    .line 572
    .line 573
    .line 574
    invoke-static {v1, v6, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 575
    .line 576
    .line 577
    :cond_16
    :goto_7
    const/4 v10, 0x0

    .line 578
    goto/16 :goto_12

    .line 579
    .line 580
    :cond_17
    const/16 v1, 0x100

    .line 581
    .line 582
    const/4 v2, 0x0

    .line 583
    invoke-virtual {v10, v1, v13, v6, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(IILjava/lang/String;Z)Z

    .line 584
    .line 585
    .line 586
    move-result v22

    .line 587
    const-string v4, "EdgeLightingPolicyManager"

    .line 588
    .line 589
    if-nez v22, :cond_19

    .line 590
    .line 591
    iget-boolean v1, v10, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    .line 592
    .line 593
    if-nez v1, :cond_19

    .line 594
    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    .line 596
    .line 597
    const-string v1, "isHUNPeeked : UseHeadsUp = "

    .line 598
    .line 599
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    iget-boolean v1, v10, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    .line 603
    .line 604
    invoke-static {v4, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 605
    .line 606
    .line 607
    :cond_18
    :goto_8
    move-object v12, v6

    .line 608
    const/4 v6, 0x0

    .line 609
    goto/16 :goto_11

    .line 610
    .line 611
    :cond_19
    invoke-virtual {v10}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isHUNPeeked()Z

    .line 612
    .line 613
    .line 614
    move-result v1

    .line 615
    if-eqz v1, :cond_18

    .line 616
    .line 617
    invoke-virtual {v10}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    .line 618
    .line 619
    .line 620
    move-result v1

    .line 621
    if-nez v1, :cond_18

    .line 622
    .line 623
    const/4 v1, 0x1

    .line 624
    invoke-virtual {v10, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    .line 625
    .line 626
    .line 627
    move-result v2

    .line 628
    if-nez v2, :cond_18

    .line 629
    .line 630
    invoke-virtual {v10, v6}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(Ljava/lang/String;)Z

    .line 631
    .line 632
    .line 633
    move-result v1

    .line 634
    if-eqz v1, :cond_1a

    .line 635
    .line 636
    goto :goto_8

    .line 637
    :cond_1a
    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 638
    .line 639
    move-object/from16 v2, p1

    .line 640
    .line 641
    move v3, v11

    .line 642
    move-object v14, v4

    .line 643
    move/from16 v4, v20

    .line 644
    .line 645
    move v0, v5

    .line 646
    move/from16 v5, v19

    .line 647
    .line 648
    move-object v12, v6

    .line 649
    move/from16 v6, v18

    .line 650
    .line 651
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZIZZ)Landroid/os/Bundle;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    invoke-static {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEmptyText(Landroid/os/Bundle;)Z

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    if-eqz v2, :cond_1b

    .line 660
    .line 661
    const-string/jumbo v0, "showForNotificationScreenOn : texts are empty."

    .line 662
    .line 663
    .line 664
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    const-string/jumbo v2, "showForNotificationScreenOn : texts are empty. | Package : "

    .line 674
    .line 675
    .line 676
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    iget v1, v0, Landroid/app/Notification;->semFlags:I

    .line 694
    .line 695
    or-int/lit16 v1, v1, 0x4000

    .line 696
    .line 697
    iput v1, v0, Landroid/app/Notification;->semFlags:I

    .line 698
    .line 699
    goto :goto_7

    .line 700
    :cond_1b
    if-eqz v20, :cond_1c

    .line 701
    .line 702
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 703
    .line 704
    .line 705
    move-result-object v2

    .line 706
    iget v2, v2, Landroid/app/Notification;->flags:I

    .line 707
    .line 708
    and-int/lit8 v2, v2, 0x8

    .line 709
    .line 710
    if-eqz v2, :cond_1c

    .line 711
    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    .line 713
    .line 714
    const-string/jumbo v1, "showForNotificationScreenOn Alert once notification. sbn: "

    .line 715
    .line 716
    .line 717
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    .line 729
    .line 730
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    .line 735
    .line 736
    const-string/jumbo v2, "showForNotificationScreenOn : Alert once notification. | Package : "

    .line 737
    .line 738
    .line 739
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    goto/16 :goto_7

    .line 759
    .line 760
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    .line 761
    .line 762
    .line 763
    move-result v2

    .line 764
    if-eqz v2, :cond_1d

    .line 765
    .line 766
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 767
    .line 768
    .line 769
    move-result-object v2

    .line 770
    invoke-virtual {v2}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    .line 771
    .line 772
    .line 773
    move-result v2

    .line 774
    if-eqz v2, :cond_1d

    .line 775
    .line 776
    const-string/jumbo v0, "showForNotificationScreenOn No peeking: suppressed due to group alert behavior"

    .line 777
    .line 778
    .line 779
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    .line 781
    .line 782
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    const-string/jumbo v1, "showForNotificationScreenOn : No peeking suppressed due to group alert behavior. | Package : "

    .line 787
    .line 788
    .line 789
    invoke-static {v1, v12, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 790
    .line 791
    .line 792
    goto/16 :goto_7

    .line 793
    .line 794
    :cond_1d
    const/4 v2, 0x1

    .line 795
    const/4 v6, 0x0

    .line 796
    invoke-virtual {v10, v2, v13, v12, v6}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(IILjava/lang/String;Z)Z

    .line 797
    .line 798
    .line 799
    move-result v3

    .line 800
    if-nez v3, :cond_20

    .line 801
    .line 802
    if-nez v17, :cond_1e

    .line 803
    .line 804
    if-eqz v21, :cond_1f

    .line 805
    .line 806
    :cond_1e
    const-string/jumbo v0, "showForNotificationScreenOn : return false by isAcceptableApplication."

    .line 807
    .line 808
    .line 809
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .line 811
    .line 812
    :cond_1f
    :goto_9
    move v10, v6

    .line 813
    goto/16 :goto_12

    .line 814
    .line 815
    :cond_20
    if-nez v11, :cond_21

    .line 816
    .line 817
    move/from16 v11, v22

    .line 818
    .line 819
    :cond_21
    if-eqz v11, :cond_24

    .line 820
    .line 821
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 822
    .line 823
    .line 824
    move-result-object v2

    .line 825
    if-nez v2, :cond_22

    .line 826
    .line 827
    :goto_a
    move v15, v6

    .line 828
    goto :goto_b

    .line 829
    :cond_22
    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 830
    .line 831
    .line 832
    move-result-object v2

    .line 833
    if-nez v2, :cond_23

    .line 834
    .line 835
    new-instance v2, Ljava/lang/StringBuilder;

    .line 836
    .line 837
    const-string v3, "isNotificationForEdgeLighting : small icon is null : "

    .line 838
    .line 839
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v2

    .line 853
    invoke-static {v14, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    .line 855
    .line 856
    goto :goto_a

    .line 857
    :cond_23
    const/4 v15, 0x1

    .line 858
    :goto_b
    if-eqz v15, :cond_24

    .line 859
    .line 860
    const/4 v15, 0x1

    .line 861
    goto :goto_c

    .line 862
    :cond_24
    move v15, v6

    .line 863
    :goto_c
    if-eqz v15, :cond_27

    .line 864
    .line 865
    const/4 v2, 0x4

    .line 866
    if-ne v0, v2, :cond_25

    .line 867
    .line 868
    const/4 v2, 0x1

    .line 869
    goto :goto_d

    .line 870
    :cond_25
    move v2, v6

    .line 871
    :goto_d
    move-object/from16 v14, p0

    .line 872
    .line 873
    if-eqz v2, :cond_26

    .line 874
    .line 875
    move v2, v0

    .line 876
    const/4 v0, 0x7

    .line 877
    goto :goto_e

    .line 878
    :cond_26
    move v2, v0

    .line 879
    const/4 v0, 0x1

    .line 880
    :goto_e
    invoke-virtual {v14, v0, v12, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 881
    .line 882
    .line 883
    :goto_f
    const/4 v0, 0x1

    .line 884
    goto :goto_10

    .line 885
    :cond_27
    move v2, v0

    .line 886
    goto :goto_f

    .line 887
    :goto_10
    and-int/2addr v0, v2

    .line 888
    if-eqz v0, :cond_1f

    .line 889
    .line 890
    move v10, v15

    .line 891
    goto :goto_12

    .line 892
    :goto_11
    const-string/jumbo v0, "showForNotificationScreenOn : return false by checking disable policy."

    .line 893
    .line 894
    .line 895
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    .line 897
    .line 898
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    const-string/jumbo v1, "showForNotificationScreenOn : return false by checking disable policy.  | Package : "

    .line 903
    .line 904
    .line 905
    invoke-static {v1, v12, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 906
    .line 907
    .line 908
    goto :goto_9

    .line 909
    :goto_12
    return v10

    .line 910
    :cond_28
    move-object v14, v0

    .line 911
    const/4 v6, 0x0

    .line 912
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->getEdgeLightingCondition()I

    .line 917
    .line 918
    .line 919
    move-result v12

    .line 920
    const/4 v1, 0x6

    .line 921
    invoke-virtual {v3, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    .line 922
    .line 923
    .line 924
    move-result v1

    .line 925
    if-nez v1, :cond_2b

    .line 926
    .line 927
    if-nez v17, :cond_29

    .line 928
    .line 929
    if-eqz v21, :cond_2a

    .line 930
    .line 931
    :cond_29
    const-string/jumbo v1, "showForNotificationScreenOff : return false by isAvailableEdgeLighting."

    .line 932
    .line 933
    .line 934
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    .line 936
    .line 937
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 938
    .line 939
    .line 940
    move-result-object v1

    .line 941
    const-string/jumbo v2, "showForNotificationScreenOff : return false by isAvailableEdgeLighting. | Package : "

    .line 942
    .line 943
    .line 944
    invoke-static {v2, v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 945
    .line 946
    .line 947
    :cond_2a
    move v10, v6

    .line 948
    goto/16 :goto_18

    .line 949
    .line 950
    :cond_2b
    invoke-virtual {v10}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    .line 951
    .line 952
    .line 953
    move-result v1

    .line 954
    if-nez v1, :cond_2c

    .line 955
    .line 956
    const/4 v1, 0x1

    .line 957
    invoke-virtual {v10, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    .line 958
    .line 959
    .line 960
    move-result v2

    .line 961
    if-nez v2, :cond_2c

    .line 962
    .line 963
    invoke-virtual {v10, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(Ljava/lang/String;)Z

    .line 964
    .line 965
    .line 966
    move-result v1

    .line 967
    if-eqz v1, :cond_2d

    .line 968
    .line 969
    :cond_2c
    move v11, v6

    .line 970
    goto/16 :goto_17

    .line 971
    .line 972
    :cond_2d
    iget-object v1, v14, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 973
    .line 974
    move-object/from16 v2, p1

    .line 975
    .line 976
    move v3, v11

    .line 977
    move/from16 v4, v20

    .line 978
    .line 979
    move/from16 v5, v19

    .line 980
    .line 981
    move v11, v6

    .line 982
    move/from16 v6, v18

    .line 983
    .line 984
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZIZZ)Landroid/os/Bundle;

    .line 985
    .line 986
    .line 987
    move-result-object v1

    .line 988
    invoke-static {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEmptyText(Landroid/os/Bundle;)Z

    .line 989
    .line 990
    .line 991
    move-result v2

    .line 992
    if-eqz v2, :cond_2f

    .line 993
    .line 994
    const-string/jumbo v1, "showForNotificationScreenOff : texts are empty."

    .line 995
    .line 996
    .line 997
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    .line 999
    .line 1000
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v1

    .line 1004
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1005
    .line 1006
    const-string/jumbo v3, "showForNotificationScreenOff : texts are empty. | Package : "

    .line 1007
    .line 1008
    .line 1009
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0

    .line 1019
    invoke-virtual {v1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v0

    .line 1026
    iget v1, v0, Landroid/app/Notification;->semFlags:I

    .line 1027
    .line 1028
    or-int/lit16 v1, v1, 0x4000

    .line 1029
    .line 1030
    iput v1, v0, Landroid/app/Notification;->semFlags:I

    .line 1031
    .line 1032
    :cond_2e
    :goto_13
    move v10, v11

    .line 1033
    goto/16 :goto_18

    .line 1034
    .line 1035
    :cond_2f
    if-eqz v20, :cond_30

    .line 1036
    .line 1037
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v2

    .line 1041
    iget v2, v2, Landroid/app/Notification;->flags:I

    .line 1042
    .line 1043
    and-int/lit8 v2, v2, 0x8

    .line 1044
    .line 1045
    if-eqz v2, :cond_30

    .line 1046
    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    const-string/jumbo v2, "showForNotificationScreenOff Alert once notification. sbn: "

    .line 1050
    .line 1051
    .line 1052
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v1

    .line 1062
    invoke-static {v9, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    .line 1064
    .line 1065
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v1

    .line 1069
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    const-string/jumbo v3, "showForNotificationScreenOff : Alert once notification. | Package : "

    .line 1072
    .line 1073
    .line 1074
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    invoke-virtual {v1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    goto :goto_13

    .line 1094
    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    .line 1095
    .line 1096
    .line 1097
    move-result v2

    .line 1098
    if-eqz v2, :cond_31

    .line 1099
    .line 1100
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v2

    .line 1104
    invoke-virtual {v2}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    .line 1105
    .line 1106
    .line 1107
    move-result v2

    .line 1108
    if-eqz v2, :cond_31

    .line 1109
    .line 1110
    const-string/jumbo v1, "showForNotificationScreenOff No peeking: suppressed due to group alert behavior"

    .line 1111
    .line 1112
    .line 1113
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    .line 1115
    .line 1116
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v1

    .line 1120
    const-string/jumbo v2, "showForNotificationScreenOff : No peeking suppressed due to group alert behavior. | Package : "

    .line 1121
    .line 1122
    .line 1123
    invoke-static {v2, v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 1124
    .line 1125
    .line 1126
    goto :goto_13

    .line 1127
    :cond_31
    and-int/lit8 v2, v12, 0x4

    .line 1128
    .line 1129
    if-eqz v2, :cond_32

    .line 1130
    .line 1131
    const/4 v2, 0x1

    .line 1132
    const/4 v15, 0x1

    .line 1133
    goto :goto_14

    .line 1134
    :cond_32
    move v15, v11

    .line 1135
    const/4 v2, 0x1

    .line 1136
    :goto_14
    invoke-virtual {v10, v2, v13, v0, v15}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(IILjava/lang/String;Z)Z

    .line 1137
    .line 1138
    .line 1139
    move-result v3

    .line 1140
    if-nez v3, :cond_34

    .line 1141
    .line 1142
    if-nez v17, :cond_33

    .line 1143
    .line 1144
    if-eqz v21, :cond_2e

    .line 1145
    .line 1146
    :cond_33
    const-string/jumbo v0, "showForNotificationScreenOff : return false by isAcceptableApplication."

    .line 1147
    .line 1148
    .line 1149
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    .line 1151
    .line 1152
    goto :goto_13

    .line 1153
    :cond_34
    const/4 v2, 0x4

    .line 1154
    if-ne v12, v2, :cond_35

    .line 1155
    .line 1156
    const/4 v15, 0x1

    .line 1157
    goto :goto_15

    .line 1158
    :cond_35
    move v15, v11

    .line 1159
    :goto_15
    if-eqz v15, :cond_36

    .line 1160
    .line 1161
    const/4 v2, 0x7

    .line 1162
    goto :goto_16

    .line 1163
    :cond_36
    const/4 v2, 0x1

    .line 1164
    :goto_16
    invoke-virtual {v14, v2, v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1165
    .line 1166
    .line 1167
    const/4 v0, 0x1

    .line 1168
    and-int/lit8 v1, v12, 0x1

    .line 1169
    .line 1170
    if-eqz v1, :cond_2e

    .line 1171
    .line 1172
    move v10, v0

    .line 1173
    goto :goto_18

    .line 1174
    :goto_17
    const-string/jumbo v1, "showForNotificationScreenOff : return false by checking disable policy."

    .line 1175
    .line 1176
    .line 1177
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    .line 1179
    .line 1180
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v1

    .line 1184
    const-string/jumbo v2, "showForNotificationScreenOff : return false by checking disable policy  | Package : "

    .line 1185
    .line 1186
    .line 1187
    invoke-static {v2, v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 1188
    .line 1189
    .line 1190
    goto/16 :goto_13

    .line 1191
    .line 1192
    :goto_18
    return v10
.end method

.method public final showForToast(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isFolded()Z

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
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo p1, "showForToast : folded"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string/jumbo p1, "showForToast : folded"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string/jumbo p1, "showForToast : user setup is not yet completed."

    .line 47
    .line 48
    .line 49
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string/jumbo p1, "showForToast : user setup is not yet completed. | Package : "

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 60
    .line 61
    .line 62
    return v1

    .line 63
    :cond_2
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    const-string/jumbo v3, "showForToast : packageName = "

    .line 70
    .line 71
    .line 72
    const-string v4, ",text="

    .line 73
    .line 74
    invoke-static {v3, p2, v4, p3, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    sget-boolean p3, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 79
    .line 80
    if-eqz p3, :cond_4

    .line 81
    .line 82
    sget-object p3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 83
    .line 84
    const-string/jumbo v2, "showForToast : packageName = "

    .line 85
    .line 86
    .line 87
    invoke-static {v2, p2, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_0
    iget-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 91
    .line 92
    invoke-virtual {p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting()Z

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    if-nez p3, :cond_7

    .line 97
    .line 98
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 99
    .line 100
    if-nez p0, :cond_5

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    :cond_5
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 105
    .line 106
    const-string/jumbo p1, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    .line 107
    .line 108
    .line 109
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const-string/jumbo p1, "showForToast : return false by isAllowEdgelighting. | Package : "

    .line 117
    .line 118
    .line 119
    invoke-static {p1, p2, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 120
    .line 121
    .line 122
    :cond_6
    return v1

    .line 123
    :cond_7
    iget-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 124
    .line 125
    const/4 v2, 0x1

    .line 126
    invoke-virtual {p3, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    if-nez p3, :cond_a

    .line 131
    .line 132
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 133
    .line 134
    if-nez p0, :cond_8

    .line 135
    .line 136
    if-eqz v0, :cond_9

    .line 137
    .line 138
    :cond_8
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 139
    .line 140
    const-string/jumbo p1, "showForToast : return false by isAvailableEdgeLighting."

    .line 141
    .line 142
    .line 143
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    const-string/jumbo p1, "showForToast : return false by isAvailableEdgeLighting. | Package : "

    .line 151
    .line 152
    .line 153
    invoke-static {p1, p2, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 154
    .line 155
    .line 156
    :cond_9
    return v1

    .line 157
    :cond_a
    iget-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 158
    .line 159
    invoke-virtual {p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    .line 160
    .line 161
    .line 162
    move-result p3

    .line 163
    if-nez p3, :cond_17

    .line 164
    .line 165
    iget-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 166
    .line 167
    const/16 v3, 0x200

    .line 168
    .line 169
    invoke-virtual {p3, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    .line 170
    .line 171
    .line 172
    move-result p3

    .line 173
    if-eqz p3, :cond_b

    .line 174
    .line 175
    goto/16 :goto_5

    .line 176
    .line 177
    :cond_b
    iget-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 178
    .line 179
    invoke-virtual {p3, v3, p1, p2, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(IILjava/lang/String;Z)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-nez p1, :cond_e

    .line 184
    .line 185
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 186
    .line 187
    if-nez p0, :cond_c

    .line 188
    .line 189
    if-eqz v0, :cond_d

    .line 190
    .line 191
    :cond_c
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 192
    .line 193
    const-string/jumbo p1, "showForToast : return false by isAcceptableApplication."

    .line 194
    .line 195
    .line 196
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    :cond_d
    return v1

    .line 200
    :cond_e
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-nez p1, :cond_f

    .line 207
    .line 208
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    const-string/jumbo p1, "showForToast : power not interactive. | Package : "

    .line 213
    .line 214
    .line 215
    invoke-static {p1, p2, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 216
    .line 217
    .line 218
    return v1

    .line 219
    :cond_f
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 220
    .line 221
    const-string p3, "getValidNotificationData packageName="

    .line 222
    .line 223
    iget-object v0, p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    .line 224
    .line 225
    monitor-enter v0

    .line 226
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 227
    .line 228
    .line 229
    move-result-wide v3

    .line 230
    iget-object p1, p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    .line 231
    .line 232
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    check-cast p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 237
    .line 238
    const/4 v5, 0x0

    .line 239
    if-nez p1, :cond_10

    .line 240
    .line 241
    monitor-exit v0

    .line 242
    :goto_1
    move-object p1, v5

    .line 243
    goto :goto_2

    .line 244
    :catchall_0
    move-exception p0

    .line 245
    goto/16 :goto_4

    .line 246
    .line 247
    :cond_10
    sget-boolean v6, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 248
    .line 249
    if-nez v6, :cond_11

    .line 250
    .line 251
    sget-boolean v6, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    .line 252
    .line 253
    if-eqz v6, :cond_12

    .line 254
    .line 255
    :cond_11
    const-string v6, "EdgeLightingPolicyManager"

    .line 256
    .line 257
    new-instance v7, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v7, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string p3, ",now="

    .line 266
    .line 267
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string p3, ",time="

    .line 274
    .line 275
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    iget-wide v8, p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    .line 279
    .line 280
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string p3, ",ret="

    .line 284
    .line 285
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    iget-wide v8, p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    .line 289
    .line 290
    sub-long v8, v3, v8

    .line 291
    .line 292
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p3

    .line 299
    invoke-static {v6, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    :cond_12
    iget-wide v6, p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    .line 303
    .line 304
    sub-long/2addr v3, v6

    .line 305
    const-wide/16 v6, 0xfa0

    .line 306
    .line 307
    cmp-long p3, v3, v6

    .line 308
    .line 309
    if-gez p3, :cond_13

    .line 310
    .line 311
    monitor-exit v0

    .line 312
    goto :goto_2

    .line 313
    :cond_13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    goto :goto_1

    .line 315
    :goto_2
    if-eqz p1, :cond_16

    .line 316
    .line 317
    iget-object p3, p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 318
    .line 319
    const-string v0, "flag"

    .line 320
    .line 321
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 322
    .line 323
    .line 324
    move-result p3

    .line 325
    const/4 v0, 0x2

    .line 326
    and-int/2addr p3, v0

    .line 327
    if-eqz p3, :cond_14

    .line 328
    .line 329
    move p3, v2

    .line 330
    goto :goto_3

    .line 331
    :cond_14
    move p3, v1

    .line 332
    :goto_3
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 333
    .line 334
    const-string/jumbo v4, "showForToast : ongoing check "

    .line 335
    .line 336
    .line 337
    invoke-static {v4, v3, p3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 338
    .line 339
    .line 340
    if-nez p3, :cond_15

    .line 341
    .line 342
    iget-object p1, p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 343
    .line 344
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 345
    .line 346
    .line 347
    return v2

    .line 348
    :cond_15
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    const-string/jumbo p1, "showForToast : onGoing | Package : "

    .line 353
    .line 354
    .line 355
    invoke-static {p1, p2, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 356
    .line 357
    .line 358
    :cond_16
    return v1

    .line 359
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    throw p0

    .line 361
    :cond_17
    :goto_5
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 362
    .line 363
    const-string/jumbo p1, "showForToast : return false by checking disable policy."

    .line 364
    .line 365
    .line 366
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    const-string/jumbo p1, "showForToast : return false by checking disable policy. | Package : "

    .line 374
    .line 375
    .line 376
    invoke-static {p1, p2, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 377
    .line 378
    .line 379
    return v1
.end method

.method public final showForWakeLockByWindow(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v2, "showForWakeLockByWindow : packageName = "

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ", screenOn = "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string/jumbo v2, "showForWakeLockByWindow : Calling user is not supported. | Package : "

    .line 48
    .line 49
    .line 50
    invoke-static {v2, p2, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string/jumbo p1, "showForWakeLockByWindow : screenOn | Package : "

    .line 60
    .line 61
    .line 62
    invoke-static {p1, p2, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    return p0

    .line 67
    :cond_2
    const/4 v0, 0x6

    .line 68
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForWakeLockInternal(IILjava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    return p0
.end method

.method public final showForWakeLockInternal(IILjava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isFolded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string/jumbo p0, "showForWakeLockInternal : folded"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-virtual {p0, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string/jumbo p1, "showForWakeLockInternal : Calling user is not supported. | Package : "

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p3, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 42
    .line 43
    .line 44
    return v2

    .line 45
    :cond_1
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    iget v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    and-int/lit8 v0, v0, 0x20

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string/jumbo p1, "showForWakeLockInternal : lockdown mode"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return v2

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    const-string/jumbo p0, "showForWakeLockInternal : user setup is not yet completed"

    .line 80
    .line 81
    .line 82
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const-string/jumbo p1, "showForWakeLockInternal : user setup is not yet completed. | Package : "

    .line 90
    .line 91
    .line 92
    invoke-static {p1, p3, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 93
    .line 94
    .line 95
    return v2

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    sget-boolean v4, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    .line 103
    .line 104
    if-nez v3, :cond_6

    .line 105
    .line 106
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 107
    .line 108
    if-nez p0, :cond_4

    .line 109
    .line 110
    if-eqz v4, :cond_5

    .line 111
    .line 112
    :cond_4
    const-string/jumbo p0, "showForWakeLockInternal : return false by isAllowEdgelighting."

    .line 113
    .line 114
    .line 115
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    const-string/jumbo p1, "showForWakeLockInternal : return false by isAllowEdgelighting. | Package : "

    .line 123
    .line 124
    .line 125
    invoke-static {p1, p3, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    return v2

    .line 129
    :cond_6
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 130
    .line 131
    const/4 v5, 0x2

    .line 132
    invoke-virtual {v3, v5}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-nez v3, :cond_9

    .line 137
    .line 138
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 139
    .line 140
    if-nez p0, :cond_7

    .line 141
    .line 142
    if-eqz v4, :cond_8

    .line 143
    .line 144
    :cond_7
    const-string/jumbo p0, "showForWakeLockInternal : return false by isAvailableEdgeLighting."

    .line 145
    .line 146
    .line 147
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    const-string/jumbo p1, "showForWakeLockInternal : return false by isAvailableEdgeLighting. | Package : "

    .line 155
    .line 156
    .line 157
    invoke-static {p1, p3, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 158
    .line 159
    .line 160
    :cond_8
    return v2

    .line 161
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-nez v3, :cond_e

    .line 166
    .line 167
    const/4 v3, 0x4

    .line 168
    invoke-virtual {v0, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_a

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_a
    invoke-virtual {v0, v3, p2, p3, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(IILjava/lang/String;Z)Z

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-nez p2, :cond_d

    .line 180
    .line 181
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 182
    .line 183
    if-nez p0, :cond_b

    .line 184
    .line 185
    if-eqz v4, :cond_c

    .line 186
    .line 187
    :cond_b
    const-string/jumbo p0, "showForWakeLockInternal : return false by isAcceptableApplication."

    .line 188
    .line 189
    .line 190
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    :cond_c
    return v2

    .line 194
    :cond_d
    const/4 p2, 0x0

    .line 195
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 196
    .line 197
    .line 198
    const/4 p0, 0x1

    .line 199
    return p0

    .line 200
    :cond_e
    :goto_0
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 201
    .line 202
    if-nez p0, :cond_f

    .line 203
    .line 204
    if-eqz v4, :cond_10

    .line 205
    .line 206
    :cond_f
    const-string/jumbo p0, "showForWakeLockInternal : return false by checking disable policy."

    .line 207
    .line 208
    .line 209
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    const-string/jumbo p1, "showForWakeLockInternal : return false by checking disable policy. | Package : "

    .line 217
    .line 218
    .line 219
    invoke-static {p1, p3, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 220
    .line 221
    .line 222
    :cond_10
    return v2
.end method

.method public final showForWakeUp(Ljava/lang/String;I)Z
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    :cond_0
    const-string/jumbo v3, "showForWakeUp : packageName ="

    .line 12
    .line 13
    .line 14
    invoke-static {v3, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isFolded()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    const-string/jumbo p0, "showForWakeUpInternal : folded"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_2
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-virtual {p0, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string/jumbo p2, "showForWakeUpInternal : Calling user is not supported. | Package : "

    .line 54
    .line 55
    .line 56
    invoke-static {p2, p1, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_3
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    .line 62
    .line 63
    iget-object v5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    iget v5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    .line 69
    .line 70
    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    and-int/lit8 v3, v3, 0x20

    .line 75
    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string/jumbo p1, "showForWakeUpInternal : lockdown mode"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-nez v3, :cond_5

    .line 95
    .line 96
    const-string/jumbo p0, "showForWakeUpInternal : user setup is not yet completed"

    .line 97
    .line 98
    .line 99
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    const-string/jumbo p2, "showForWakeUpInternal : user setup is not yet completed. | Package : "

    .line 107
    .line 108
    .line 109
    invoke-static {p2, p1, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    :cond_5
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-nez v5, :cond_7

    .line 121
    .line 122
    if-nez v0, :cond_6

    .line 123
    .line 124
    if-eqz v2, :cond_e

    .line 125
    .line 126
    :cond_6
    const-string/jumbo p0, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    .line 127
    .line 128
    .line 129
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    const-string/jumbo p2, "showForWakeUpInternal : return false by isAllowEdgelighting. | Package : "

    .line 137
    .line 138
    .line 139
    invoke-static {p2, p1, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_7
    iget-object v5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 144
    .line 145
    const/4 v6, 0x2

    .line 146
    invoke-virtual {v5, v6}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-nez v5, :cond_9

    .line 151
    .line 152
    if-nez v0, :cond_8

    .line 153
    .line 154
    if-eqz v2, :cond_e

    .line 155
    .line 156
    :cond_8
    const-string/jumbo p0, "showForWakeUpInternal : return false by isAvailableEdgeLighting."

    .line 157
    .line 158
    .line 159
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    const-string/jumbo p2, "showForWakeUpInternal : return false by isAvailableEdgeLighting. | Package : "

    .line 167
    .line 168
    .line 169
    invoke-static {p2, p1, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_9
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-nez v5, :cond_c

    .line 178
    .line 179
    invoke-virtual {v3, v6}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    if-eqz v5, :cond_a

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_a
    invoke-virtual {v3, v6, p2, p1, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(IILjava/lang/String;Z)Z

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    if-nez p2, :cond_b

    .line 191
    .line 192
    const-string/jumbo p0, "showForWakeUpInternal : return false by isAcceptableApplication."

    .line 193
    .line 194
    .line 195
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_b
    const/4 p2, 0x0

    .line 200
    const/4 v0, 0x3

    .line 201
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 202
    .line 203
    .line 204
    const/4 v4, 0x1

    .line 205
    goto :goto_1

    .line 206
    :cond_c
    :goto_0
    if-nez v0, :cond_d

    .line 207
    .line 208
    if-eqz v2, :cond_e

    .line 209
    .line 210
    :cond_d
    const-string/jumbo p0, "showForWakeUpInternal : return false by checking disable policy."

    .line 211
    .line 212
    .line 213
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    const-string/jumbo p2, "showForWakeUpInternal : return false by checking disable policy. | Package : "

    .line 221
    .line 222
    .line 223
    invoke-static {p2, p1, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingHistory;)V

    .line 224
    .line 225
    .line 226
    :cond_e
    :goto_1
    return v4
.end method

.method public final statusBarDisabled(I)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    .line 4
    .line 5
    xor-int/2addr v0, p1

    .line 6
    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "disable: < "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/high16 v2, 0x40000

    .line 16
    .line 17
    and-int/2addr p1, v2

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-string v3, "ALERTS"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v3, "alerts"

    .line 24
    .line 25
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    and-int/2addr v0, v2

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const-string v2, "* "

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string v2, " "

    .line 35
    .line 36
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ">"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->DEBUG:Z

    .line 61
    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_2
    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->DEBUG:Z

    .line 66
    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    const-string v3, "EdgeLightingHistory"

    .line 70
    .line 71
    const-string/jumbo v5, "updateEventHistory log = "

    .line 72
    .line 73
    .line 74
    invoke-static {v5, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-static {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v3, v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    .line 82
    .line 83
    monitor-enter v3

    .line 84
    :try_start_0
    iget-object v5, v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mEventHistory:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :goto_2
    iget-object v1, v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mEventHistory:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/16 v5, 0x14

    .line 96
    .line 97
    if-le v1, v5, :cond_4

    .line 98
    .line 99
    iget-object v1, v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mEventHistory:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    goto :goto_4

    .line 107
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :goto_3
    if-eqz v0, :cond_6

    .line 109
    .line 110
    const/4 v0, 0x1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    move v4, v0

    .line 114
    :cond_5
    iput-boolean v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;->onChange(Z)V

    .line 119
    .line 120
    .line 121
    :cond_6
    return-void

    .line 122
    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    throw p0
.end method

.method public final updateCurrentProfilesCache()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserManager:Landroid/os/UserManager;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 36
    .line 37
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 38
    .line 39
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string/jumbo v3, "updateCurrentProfilesCache size = "

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method
