.class public final Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInterface;


# static fields
.field public static final BACKUP_TIMEOUT_MILLIS:J

.field public static final EMPTY_INT_ARRAY:[I

.field public static final FULLER_PERMISSION_MAP:Ljava/util/Map;

.field public static final NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

.field public static final NOTIFICATION_PERMISSIONS:Ljava/util/List;

.field public static final READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

.field public static final READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

.field public static final STORAGE_PERMISSIONS:Ljava/util/List;


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

.field public final mGlobalGids:[I

.field public final mHandler:Landroid/os/Handler;

.field public final mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

.field public final mIsLeanback:Z

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

.field public final mPackageGrantedPermissions:Landroid/util/ArrayMap;

.field public final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field public mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field public mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

.field public final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public mPrivappPermissionsViolations:Landroid/util/ArraySet;

.field public final mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

.field public final mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

.field public final mState:Lcom/android/server/pm/permission/DevicePermissionState;

.field public final mSystemPermissions:Landroid/util/SparseArray;

.field public mSystemReady:Z

.field public final mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 2
    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    const-wide/16 v1, 0x3c

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    sput-wide v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->BACKUP_TIMEOUT_MILLIS:J

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [I

    .line 15
    .line 16
    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->STORAGE_PERMISSIONS:Ljava/util/List;

    .line 24
    .line 25
    new-instance v1, Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    .line 31
    .line 32
    new-instance v2, Landroid/util/ArraySet;

    .line 33
    .line 34
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    .line 38
    .line 39
    new-instance v3, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

    .line 45
    .line 46
    new-instance v4, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    sput-object v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    .line 52
    .line 53
    new-instance v5, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    sput-object v5, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 59
    .line 60
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    .line 61
    .line 62
    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    .line 63
    .line 64
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    .line 68
    .line 69
    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 70
    .line 71
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    .line 75
    .line 76
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 80
    .line 81
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 90
    .line 91
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 100
    .line 101
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    .line 110
    .line 111
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 115
    .line 116
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 120
    .line 121
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 125
    .line 126
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/ArrayMap;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v1, Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    .line 11
    .line 12
    new-instance v2, Lcom/android/server/pm/PackageManagerTracedLock;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 19
    .line 20
    new-instance v4, Lcom/android/server/pm/permission/DevicePermissionState;

    .line 21
    .line 22
    invoke-direct {v4}, Lcom/android/server/pm/permission/DevicePermissionState;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    .line 26
    .line 27
    new-instance v4, Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    .line 33
    .line 34
    new-instance v4, Lcom/android/internal/logging/MetricsLogger;

    .line 35
    .line 36
    invoke-direct {v4}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 40
    .line 41
    const-string/jumbo v4, "platform_compat"

    .line 42
    .line 43
    .line 44
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-static {v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iput-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 53
    .line 54
    new-instance v4, Lcom/android/server/pm/permission/PermissionRegistry;

    .line 55
    .line 56
    invoke-direct {v4}, Lcom/android/server/pm/permission/PermissionRegistry;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 60
    .line 61
    new-instance v4, Landroid/util/SparseBooleanArray;

    .line 62
    .line 63
    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    .line 67
    .line 68
    new-instance v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 69
    .line 70
    invoke-direct {v4, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V

    .line 71
    .line 72
    .line 73
    iput-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 74
    .line 75
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 90
    .line 91
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 92
    .line 93
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    .line 100
    .line 101
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 102
    .line 103
    const-string p1, "android.software.leanback"

    .line 104
    .line 105
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iput-boolean p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mIsLeanback:Z

    .line 110
    .line 111
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 116
    .line 117
    const-string p1, "android"

    .line 118
    .line 119
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    const-string p1, "android.hardware.type.automotive"

    .line 123
    .line 124
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_0

    .line 129
    .line 130
    const-string/jumbo p1, "ro.android.car.carservice.package"

    .line 131
    .line 132
    .line 133
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_0

    .line 138
    .line 139
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    :cond_0
    const-string p1, "PermissionManager"

    .line 143
    .line 144
    const/16 p2, 0xa

    .line 145
    .line 146
    invoke-static {p2, p1, v0}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    new-instance p2, Landroid/os/Handler;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 157
    .line 158
    .line 159
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 160
    .line 161
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1, p2}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iget-object p2, p1, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    .line 173
    .line 174
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemPermissions:Landroid/util/SparseArray;

    .line 175
    .line 176
    iget-object p1, p1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    .line 177
    .line 178
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mGlobalGids:[I

    .line 179
    .line 180
    new-instance p1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    .line 181
    .line 182
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-direct {p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;-><init>(Landroid/os/Looper;)V

    .line 191
    .line 192
    .line 193
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    .line 194
    .line 195
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iget-object p1, p1, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    .line 200
    .line 201
    sget-boolean p2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 202
    .line 203
    monitor-enter v2

    .line 204
    const/4 p2, 0x0

    .line 205
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-ge p2, v1, :cond_3

    .line 210
    .line 211
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    check-cast v1, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 216
    .line 217
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 218
    .line 219
    iget-object v4, v1, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    if-nez v3, :cond_1

    .line 226
    .line 227
    new-instance v3, Lcom/android/server/pm/permission/Permission;

    .line 228
    .line 229
    iget-object v4, v1, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    .line 230
    .line 231
    const-string v5, "android"

    .line 232
    .line 233
    invoke-direct {v3, v0, v4, v5}, Lcom/android/server/pm/permission/Permission;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 237
    .line 238
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 239
    .line 240
    iget-object v5, v3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 241
    .line 242
    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    goto :goto_1

    .line 248
    :catchall_0
    move-exception p0

    .line 249
    goto :goto_2

    .line 250
    :cond_1
    :goto_1
    iget-object v4, v1, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    .line 251
    .line 252
    if-eqz v4, :cond_2

    .line 253
    .line 254
    iget-boolean v1, v1, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    .line 255
    .line 256
    iput-object v4, v3, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 257
    .line 258
    iput-boolean v1, v3, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    .line 259
    .line 260
    :cond_2
    add-int/2addr p2, v0

    .line 261
    goto :goto_0

    .line 262
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 264
    .line 265
    return-void

    .line 266
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 268
    .line 269
    throw p0
.end method

.method public static canGrantOemPermission(Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isOem()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v2, v2, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 18
    .line 19
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionAllowlist;->mOemAppAllowlist:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Landroid/util/ArrayMap;

    .line 30
    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/lang/Boolean;

    .line 40
    .line 41
    :goto_0
    if-eqz p0, :cond_3

    .line 42
    .line 43
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    if-ne p1, p0, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    :cond_2
    return v1

    .line 49
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v1, "OEM permission "

    .line 52
    .line 53
    const-string v2, " requested by package "

    .line 54
    .line 55
    const-string v3, " must be explicitly declared granted or not"

    .line 56
    .line 57
    invoke-static {v1, p1, v2, v0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method

.method public static getAllUserIds$1()[I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getAppOp(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)I
    .locals 3

    .line 1
    iget-object v0, p2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "android"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p2, p2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 15
    .line 16
    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p2, v1

    .line 24
    :goto_0
    if-eq p2, v1, :cond_1

    .line 25
    .line 26
    return p2

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 28
    .line 29
    const-string v1, "Invalid appOp "

    .line 30
    .line 31
    const-string v2, " for package "

    .line 32
    .line 33
    invoke-static {p2, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p0, " permission "

    .line 45
    .line 46
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method public static getVolumeUuidForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string/jumbo p0, "primary_physical"

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_2
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 32
    .line 33
    return-object p0
.end method

.method public static hasPermission(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    sub-int/2addr v0, v2

    .line 23
    :goto_0
    if-ltz v0, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 34
    .line 35
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    return v2

    .line 46
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return v1
.end method

.method public static isCompatPlatformPermissionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    sget-object v3, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-virtual {v3}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ge v4, v3, :cond_0

    .line 31
    .line 32
    const-string v0, "Auto-granting "

    .line 33
    .line 34
    const-string v1, " to old pkg "

    .line 35
    .line 36
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "PermissionManager"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    :goto_1
    return v1
.end method

.method public static isPossibleToModify(ILcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p2, p3}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    and-int/lit8 p2, p2, 0x10

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    sget-object p2, Lcom/android/server/pm/PersonaManagerService;->containerCriticalApps:Ljava/util/List;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    check-cast p2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 29
    .line 30
    const-string v0, "Cannot modify system fixed permission "

    .line 31
    .line 32
    const-string v1, " for package "

    .line 33
    .line 34
    invoke-static {v0, p3, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, " in user "

    .line 46
    .line 47
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p2

    .line 61
    :cond_1
    const/4 p0, 0x1

    .line 62
    return p0
.end method

.method public static killUid(IILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    :try_start_1
    invoke-interface {v2, p0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :catch_0
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method


# virtual methods
.method public final addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 3

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-gez v2, :cond_2

    .line 29
    .line 30
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p3, p1, p4, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissions(ILjava/lang/String;ILjava/util/List;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :cond_2
    return v1
.end method

.method public final addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    .line 4
    .line 5
    const-string v2, "addOnPermissionsChangeListener"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 8

    .line 1
    const-string v0, "Not allowed to modify non-dynamic permission "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_7

    .line 14
    .line 15
    iget v2, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 25
    .line 26
    const-string p1, "Label must be specified in permission"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 33
    .line 34
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 35
    .line 36
    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 38
    .line 39
    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v3, v1, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->enforcePermissionTree(ILjava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 46
    .line 47
    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v4, 0x0

    .line 58
    :goto_1
    iget v5, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 59
    .line 60
    invoke-static {v5}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)V

    .line 65
    .line 66
    .line 67
    const/4 v6, 0x2

    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    new-instance v3, Lcom/android/server/pm/permission/Permission;

    .line 71
    .line 72
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v7, v1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 75
    .line 76
    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 77
    .line 78
    invoke-direct {v3, v6, v0, v7}, Lcom/android/server/pm/permission/Permission;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    iget v7, v3, Lcom/android/server/pm/permission/Permission;->mType:I

    .line 85
    .line 86
    if-ne v7, v6, :cond_6

    .line 87
    .line 88
    :goto_2
    invoke-virtual {v3, v5, p1, v1}, Lcom/android/server/pm/permission/Permission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz v4, :cond_4

    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 97
    .line 98
    iget-object v1, v3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 99
    .line 100
    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 109
    .line 110
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 111
    .line 112
    .line 113
    :cond_5
    return v4

    .line 114
    :cond_6
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 115
    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 136
    .line 137
    throw p0

    .line 138
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    .line 139
    .line 140
    const-string p1, "Instant apps can\'t add permissions"

    .line 141
    .line 142
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0
.end method

.method public final applyRuntimePermissionsForAllApplicationsForMDM(II)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string p0, "Invalid User ID "

    .line 20
    .line 21
    const-string p1, "PermissionManager"

    .line 22
    .line 23
    invoke-static {p2, p0, p1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 v5, 0x0

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    move-object v0, p0

    .line 32
    move v3, p1

    .line 33
    move v4, p2

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->applyRuntimePermissionsInternalForMDM$1(Ljava/lang/String;Ljava/util/List;IIZ)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 40
    .line 41
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 12
    .line 13
    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const-string v2, "PermissionManager"

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const-string p0, "Invalid User ID "

    .line 23
    .line 24
    invoke-static {p4, p0, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-string p0, "Invalid package name "

    .line 31
    .line 32
    invoke-static {p0, p1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_1
    const/4 v8, 0x1

    .line 37
    move-object v3, p0

    .line 38
    move-object v4, p1

    .line 39
    move-object v5, p2

    .line 40
    move v6, p3

    .line 41
    move v7, p4

    .line 42
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->applyRuntimePermissionsInternalForMDM$1(Ljava/lang/String;Ljava/util/List;IIZ)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 48
    .line 49
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public final applyRuntimePermissionsInternalForMDM$1(Ljava/lang/String;Ljava/util/List;IIZ)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->containerCriticalApps:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/16 v3, 0x3e8

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const-string v6, "PermissionManager"

    .line 11
    .line 12
    if-eq v2, v3, :cond_0

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-lez v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-string v0, "Package "

    .line 33
    .line 34
    const-string v1, " is container critical application"

    .line 35
    .line 36
    invoke-static {v0, p1, v1, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v5

    .line 40
    :cond_0
    if-eqz p3, :cond_2

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    if-eq p3, v0, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    if-eq p3, v0, :cond_1

    .line 47
    .line 48
    const-string v0, "Invalid Permission State "

    .line 49
    .line 50
    invoke-static {p3, v0, v6}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return v5

    .line 54
    :cond_1
    const/4 v2, 0x4

    .line 55
    move-object v0, p0

    .line 56
    move v1, p3

    .line 57
    move v3, p4

    .line 58
    move-object v4, p1

    .line 59
    move-object v5, p2

    .line 60
    move v6, p5

    .line 61
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionStatesAndFlagsInternalForMDM(IIILjava/lang/String;Ljava/util/List;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    return v0

    .line 66
    :cond_2
    const/4 v2, 0x0

    .line 67
    move-object v0, p0

    .line 68
    move v1, p3

    .line 69
    move v3, p4

    .line 70
    move-object v4, p1

    .line 71
    move-object v5, p2

    .line 72
    move v6, p5

    .line 73
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionStatesAndFlagsInternalForMDM(IIILjava/lang/String;Ljava/util/List;Z)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    return v0
.end method

.method public final backupRuntimePermissions(I)[B
    .locals 4

    .line 1
    int-to-float v0, p1

    .line 2
    const-string/jumbo v1, "userId"

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda3;

    .line 24
    .line 25
    invoke-direct {v3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    sget-wide v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->BACKUP_TIMEOUT_MILLIS:J

    .line 32
    .line 33
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    return-object p0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "Cannot create permission backup for user "

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "PermissionManager"

    .line 58
    .line 59
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return-object p0
.end method

.method public final checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "No such permissions: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string p0, "PermissionManager"

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return v3

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_3

    .line 38
    :cond_0
    iget-object v0, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 39
    .line 40
    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 41
    .line 42
    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 43
    .line 44
    and-int/lit8 v4, v0, 0xc

    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    move v4, v5

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v4, v3

    .line 52
    :goto_0
    if-eqz v4, :cond_2

    .line 53
    .line 54
    and-int/lit8 v0, v0, 0x10

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    move v0, v5

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v0, v3

    .line 61
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 71
    .line 72
    invoke-virtual {v6, v1, v4, v2, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    const-string p0, "186404356"

    .line 79
    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const p1, 0x534e4554

    .line 89
    .line 90
    .line 91
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    return v3

    .line 95
    :cond_3
    if-eqz v0, :cond_5

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    const-string v0, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-nez p0, :cond_4

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 109
    .line 110
    const-string v0, "Cannot modify allowlisting of an immutably restricted permission: "

    .line 111
    .line 112
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :cond_5
    :goto_2
    return v5

    .line 121
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 123
    .line 124
    throw p0
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    invoke-virtual {p3, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    const/4 v0, -0x1

    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 12
    .line 13
    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    const/4 p3, 0x1

    .line 21
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermissionInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final checkPermissionInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;I)I
    .locals 5

    .line 1
    const-string v0, "Missing permissions state for "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, -0x1

    .line 9
    if-nez p2, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 19
    .line 20
    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    return v3

    .line 27
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 28
    .line 29
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {p2, v1, p4, v4, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    return v3

    .line 40
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-static {p4, p2}, Landroid/os/UserHandle;->getUid(II)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 49
    .line 50
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    const/4 p2, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move p2, v2

    .line 59
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 60
    .line 61
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 62
    .line 63
    monitor-enter v1

    .line 64
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-virtual {p0, v4, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    if-nez v4, :cond_4

    .line 73
    .line 74
    const-string p0, "PermissionManager"

    .line 75
    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, " and user "

    .line 89
    .line 90
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    monitor-exit v1

    .line 104
    return v3

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    goto :goto_5

    .line 107
    :cond_4
    invoke-virtual {v4, p3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_5

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    if-eqz p2, :cond_a

    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 117
    .line 118
    invoke-virtual {p1, p3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_6

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_6
    :goto_2
    sget-object p1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 132
    .line 133
    check-cast p1, Ljava/util/HashMap;

    .line 134
    .line 135
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Ljava/lang/String;

    .line 140
    .line 141
    if-eqz p1, :cond_9

    .line 142
    .line 143
    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result p3

    .line 147
    if-nez p3, :cond_7

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_7
    if-eqz p2, :cond_8

    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 153
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    if-eqz p0, :cond_9

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    if-eqz p0, :cond_9

    .line 165
    .line 166
    :cond_8
    monitor-exit v1

    .line 167
    return v2

    .line 168
    :cond_9
    :goto_3
    monitor-exit v1

    .line 169
    return v3

    .line 170
    :cond_a
    :goto_4
    monitor-exit v1

    .line 171
    return v2

    .line 172
    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 174
    .line 175
    throw p0
.end method

.method public final checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 6
    .line 7
    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const/4 v0, -0x1

    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 16
    .line 17
    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0, p3, v1, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermissionInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 34
    .line 35
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 36
    .line 37
    monitor-enter p3

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemPermissions:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/util/ArraySet;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    monitor-exit p3

    .line 55
    :goto_0
    move v0, v1

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 60
    .line 61
    check-cast v2, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Ljava/lang/String;

    .line 68
    .line 69
    if-eqz p2, :cond_3

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemPermissions:Landroid/util/SparseArray;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Landroid/util/ArraySet;

    .line 78
    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    monitor-exit p3

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    monitor-exit p3

    .line 90
    :goto_1
    return v0

    .line 91
    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 93
    .line 94
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final enforceCrossUserPermission(IILjava/lang/String;Z)V
    .locals 1

    .line 1
    if-ltz p2, :cond_8

    .line 2
    .line 3
    if-eqz p4, :cond_2

    .line 4
    .line 5
    const/16 p4, 0x7d0

    .line 6
    .line 7
    if-ne p1, p4, :cond_2

    .line 8
    .line 9
    if-ltz p2, :cond_1

    .line 10
    .line 11
    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 12
    .line 13
    const-string/jumbo v0, "no_debugging_features"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4, v0, p2}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    if-nez p4, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 24
    .line 25
    const-string p1, "Shell does not have permission to access user "

    .line 26
    .line 27
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 36
    .line 37
    const-string p4, "Unable to check shell permission for user "

    .line 38
    .line 39
    const-string v0, "\n\t"

    .line 40
    .line 41
    invoke-static {p2, p4, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    const/4 v0, 0x3

    .line 46
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p4

    .line 57
    const-string v0, "PermissionManagerServiceImpl"

    .line 58
    .line 59
    invoke-static {v0, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 63
    .line 64
    .line 65
    move-result p4

    .line 66
    if-ne p2, p4, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const/16 p4, 0x3e8

    .line 70
    .line 71
    if-eq p1, p4, :cond_7

    .line 72
    .line 73
    if-nez p1, :cond_4

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    const-string p4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 79
    .line 80
    invoke-virtual {p0, p4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-nez p0, :cond_5

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_6

    .line 96
    .line 97
    if-nez p2, :cond_6

    .line 98
    .line 99
    return-void

    .line 100
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p3, ": "

    .line 109
    .line 110
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p3, "UID "

    .line 114
    .line 115
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, " requires android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p1, " to access user "

    .line 127
    .line 128
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string p1, "."

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    const-string p1, "PermissionManager"

    .line 144
    .line 145
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    new-instance p1, Ljava/lang/SecurityException;

    .line 149
    .line 150
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :cond_7
    :goto_1
    return-void

    .line 155
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 156
    .line 157
    const-string p1, "Invalid userId "

    .line 158
    .line 159
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p0
.end method

.method public final enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 23
    .line 24
    const-string v0, " requires android.permission.GRANT_RUNTIME_PERMISSIONS or android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)V
    .locals 5

    .line 1
    iget v0, p2, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    if-eq v0, v1, :cond_3

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v0, 0x0

    .line 20
    move v1, v0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/android/server/pm/permission/Permission;

    .line 32
    .line 33
    iget v3, p2, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 34
    .line 35
    iget v4, v2, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 36
    .line 37
    if-ne v3, v4, :cond_0

    .line 38
    .line 39
    iget-object v3, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 40
    .line 41
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iget-object v2, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    add-int/2addr v2, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    move v2, v0

    .line 56
    :goto_1
    add-int/2addr v1, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    add-int/2addr p0, v1

    .line 63
    const p1, 0x8000

    .line 64
    .line 65
    .line 66
    if-gt p0, p1, :cond_2

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 70
    .line 71
    const-string p1, "Permission tree size cap exceeded"

    .line 72
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_3
    :goto_2
    return-void
.end method

.method public final getAllAppOpPermissionPackages()Ljava/util/Map;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    .line 9
    .line 10
    new-instance v1, Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Landroid/util/ArraySet;

    .line 33
    .line 34
    new-instance v6, Landroid/util/ArraySet;

    .line 35
    .line 36
    invoke-direct {v6, v5}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 49
    .line 50
    return-object v1

    .line 51
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 53
    .line 54
    throw p0
.end method

.method public final getAllPermissionGroups(I)Ljava/util/List;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 24
    .line 25
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 26
    .line 27
    monitor-enter v2

    .line 28
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 29
    .line 30
    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 51
    .line 52
    int-to-long v5, p1

    .line 53
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
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
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 65
    .line 66
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda1;

    .line 71
    .line 72
    const/4 v3, 0x1

    .line 73
    invoke-direct {v2, p0, v0, p1, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;III)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 82
    .line 83
    throw p0
.end method

.method public final getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "This method is supported in newer implementation only"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final getAllPermissionsWithProtection()Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 7
    .line 8
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/server/pm/permission/Permission;

    .line 34
    .line 35
    iget-object v3, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 36
    .line 37
    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 38
    .line 39
    and-int/lit8 v3, v3, 0xf

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    if-ne v3, v4, :cond_0

    .line 43
    .line 44
    const/16 v3, 0x2710

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-virtual {v2, v4, v3}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 59
    .line 60
    return-object v0

    .line 61
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 63
    .line 64
    throw p0
.end method

.method public final getAllPermissionsWithProtectionFlags()Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 7
    .line 8
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/server/pm/permission/Permission;

    .line 34
    .line 35
    iget-object v3, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 36
    .line 37
    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 38
    .line 39
    const/16 v4, 0x40

    .line 40
    .line 41
    and-int/2addr v3, v4

    .line 42
    if-ne v3, v4, :cond_0

    .line 43
    .line 44
    const/16 v3, 0x2710

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-virtual {v2, v4, v3}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 59
    .line 60
    return-object v0

    .line 61
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 63
    .line 64
    throw p0
.end method

.method public final getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 6
    .line 7
    .line 8
    int-to-float v0, p3

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eq v0, p3, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v3, "getAllowlistedRestrictedPermissions for user "

    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    .line 36
    .line 37
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-virtual {v3, v2, v4, p1, v5}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    const-string v1, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    const/4 v5, 0x1

    .line 78
    :cond_3
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 79
    .line 80
    check-cast p1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-interface {p1, v0, v2}, Lcom/android/server/pm/Computer;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    and-int/lit8 v1, p2, 0x1

    .line 93
    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    if-eqz v5, :cond_4

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 100
    .line 101
    const-string p1, "Querying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 102
    .line 103
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_5
    :goto_0
    and-int/lit8 v1, p2, 0x6

    .line 108
    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    if-nez v5, :cond_7

    .line 112
    .line 113
    if-eqz p1, :cond_6

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 117
    .line 118
    const-string p1, "Querying upgrade or installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 119
    .line 120
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_7
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 125
    .line 126
    .line 127
    move-result-wide v1

    .line 128
    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    .line 134
    .line 135
    return-object p0

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    .line 139
    .line 140
    throw p0
.end method

.method public final getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "Missing permissions state for "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p0, v2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const-string p0, "PermissionManager"

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, " and user "

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    monitor-exit v1

    .line 49
    return-object v2

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    and-int/lit8 p3, p2, 0x1

    .line 53
    .line 54
    if-eqz p3, :cond_1

    .line 55
    .line 56
    const/16 p3, 0x1000

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 p3, 0x0

    .line 60
    :goto_0
    and-int/lit8 v0, p2, 0x4

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    or-int/lit16 p3, p3, 0x2000

    .line 65
    .line 66
    :cond_2
    and-int/lit8 p2, p2, 0x2

    .line 67
    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    or-int/lit16 p3, p3, 0x800

    .line 71
    .line 72
    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_6

    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    and-int/2addr v0, p3

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    if-nez v2, :cond_5

    .line 100
    .line 101
    new-instance v2, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    :cond_5
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 112
    .line 113
    return-object v2

    .line 114
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 116
    .line 117
    throw p0
.end method

.method public final getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    const-string/jumbo v0, "permissionName"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 8
    .line 9
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroid/util/ArraySet;

    .line 21
    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    new-array p1, p1, [Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, [Ljava/lang/String;

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    :goto_0
    return-object p0

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 43
    .line 44
    throw p0
.end method

.method public final getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 27
    .line 28
    :goto_0
    return-object p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0
.end method

.method public final getGidsForUid(I)[I
    .locals 6

    .line 1
    const-string v0, "Missing permissions state for app ID "

    .line 2
    .line 3
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 12
    .line 13
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    const-string p0, "PermissionManager"

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, " and user ID "

    .line 33
    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    sget-object p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    .line 48
    .line 49
    monitor-exit v2

    .line 50
    return-object p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_3

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mGlobalGids:[I

    .line 54
    .line 55
    invoke-static {p0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    iget-object v0, v3, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 60
    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/4 v1, 0x0

    .line 73
    :goto_0
    if-ge v1, v0, :cond_4

    .line 74
    .line 75
    iget-object v4, v3, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 76
    .line 77
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Lcom/android/server/pm/permission/PermissionState;

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    .line 91
    .line 92
    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/Permission;->computeGids(I)[I

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    array-length v5, v4

    .line 97
    if-eqz v5, :cond_3

    .line 98
    .line 99
    invoke-virtual {p0, v4}, Landroid/util/IntArray;->addAll([I)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 111
    .line 112
    return-object p0

    .line 113
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 115
    .line 116
    throw p0
.end method

.method public final getGrantedPermissions(ILjava/lang/String;)Ljava/util/Set;
    .locals 4

    .line 1
    const-string/jumbo v0, "packageName"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    int-to-float v0, p1

    .line 8
    const-string/jumbo v1, "userId"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 12
    .line 13
    .line 14
    const-string v0, "Missing permissions state for "

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 17
    .line 18
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 30
    .line 31
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 32
    .line 33
    monitor-enter v2

    .line 34
    :try_start_0
    move-object v3, v1

    .line 35
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 36
    .line 37
    iget v3, v3, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 38
    .line 39
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    const-string p0, "PermissionManager"

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p2, " and user "

    .line 56
    .line 57
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    monitor-exit v2

    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-interface {v1, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-nez p2, :cond_2

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    monitor-exit v2

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    new-instance p2, Landroid/util/ArraySet;

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda5;

    .line 104
    .line 105
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILcom/android/server/pm/pkg/PackageStateInternal;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 109
    .line 110
    .line 111
    monitor-exit v2

    .line 112
    move-object p0, p2

    .line 113
    :goto_0
    return-object p0

    .line 114
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 116
    .line 117
    throw p0
.end method

.method public final getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;
    .locals 4

    .line 1
    const-string/jumbo v0, "packageName"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/util/ArraySet;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 13
    .line 14
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/server/pm/permission/Permission;

    .line 40
    .line 41
    iget-object v3, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 42
    .line 43
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    iget-object v2, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 52
    .line 53
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 63
    .line 64
    return-object v0

    .line 65
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 67
    .line 68
    throw p0
.end method

.method public final getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 6
    .line 7
    invoke-direct {v2}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 11
    .line 12
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 13
    .line 14
    monitor-enter v3

    .line 15
    :try_start_0
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    .line 16
    .line 17
    iget-object v5, v4, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    new-array v6, v5, [I

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    :goto_0
    if-ge v8, v5, :cond_0

    .line 27
    .line 28
    iget-object v9, v4, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    aput v9, v6, v8

    .line 35
    .line 36
    add-int/lit8 v8, v8, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v4, 0x0

    .line 40
    :goto_1
    if-ge v4, v5, :cond_3

    .line 41
    .line 42
    aget v8, v6, v4

    .line 43
    .line 44
    invoke-virtual {v0, v1, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    if-nez v9, :cond_1

    .line 49
    .line 50
    const-string v9, "PermissionManager"

    .line 51
    .line 52
    new-instance v10, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v11, "Missing permissions state for app ID "

    .line 58
    .line 59
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v11, " and user ID "

    .line 66
    .line 67
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto :goto_4

    .line 83
    :cond_1
    invoke-virtual {v9}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    const/4 v11, 0x0

    .line 92
    :goto_2
    if-ge v11, v10, :cond_2

    .line 93
    .line 94
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    check-cast v12, Lcom/android/server/pm/permission/PermissionState;

    .line 99
    .line 100
    new-instance v13, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 101
    .line 102
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    iget-object v15, v12, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    .line 107
    .line 108
    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    invoke-direct {v13, v14, v15, v7, v12}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v13, v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 v11, v11, 0x1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 134
    .line 135
    return-object v2

    .line 136
    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 138
    .line 139
    throw v0
.end method

.method public final getLegacyPermissions()Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/server/pm/permission/Permission;

    .line 34
    .line 35
    new-instance v3, Lcom/android/server/pm/permission/LegacyPermission;

    .line 36
    .line 37
    iget-object v4, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 38
    .line 39
    iget v5, v2, Lcom/android/server/pm/permission/Permission;->mType:I

    .line 40
    .line 41
    iget v6, v2, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 44
    .line 45
    invoke-direct {v3, v4, v5, v6, v2}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 56
    .line 57
    return-object v1

    .line 58
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 60
    .line 61
    throw p0
.end method

.method public final getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/List;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(IILjava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getPermissionFlagsInternal(IILjava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string v0, "Missing permissions state for "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 4
    .line 5
    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string v3, "android.permission.GET_RUNTIME_PERMISSIONS"

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const-string v3, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const-string v3, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 45
    .line 46
    const-string p1, "getPermissionFlags requires android.permission.GRANT_RUNTIME_PERMISSIONS or android.permission.REVOKE_RUNTIME_PERMISSIONS or android.permission.GET_RUNTIME_PERMISSIONS"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_2
    :goto_0
    const-string v1, "getPermissionFlags"

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IILjava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 58
    .line 59
    invoke-virtual {v1, p3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    return v2

    .line 66
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 67
    .line 68
    invoke-virtual {v3, p1, p2, p3, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    return v2

    .line 75
    :cond_4
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 76
    .line 77
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 78
    .line 79
    monitor-enter p1

    .line 80
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 81
    .line 82
    invoke-virtual {v3, p4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-nez v3, :cond_5

    .line 87
    .line 88
    monitor-exit p1

    .line 89
    return v2

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    if-nez p0, :cond_6

    .line 101
    .line 102
    const-string p0, "PermissionManager"

    .line 103
    .line 104
    new-instance p4, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p3, " and user "

    .line 113
    .line 114
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    monitor-exit p1

    .line 128
    return v2

    .line 129
    :cond_6
    invoke-virtual {p0, p4}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    monitor-exit p1

    .line 134
    return p0

    .line 135
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 137
    .line 138
    throw p0
.end method

.method public final getPermissionGids(ILjava/lang/String;)[I
    .locals 2

    .line 1
    const-string/jumbo v0, "permissionName"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    int-to-float v0, p1

    .line 8
    const-string/jumbo v1, "userId"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 15
    .line 16
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/Permission;->computeGids(I)[I

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    monitor-exit v0

    .line 38
    :goto_0
    return-object p0

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 41
    .line 42
    throw p0
.end method

.method public final getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-object v2

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 16
    .line 17
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    monitor-exit v1

    .line 33
    return-object v2

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    int-to-long v4, p2

    .line 37
    invoke-static {v3, v4, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 47
    .line 48
    iget-object v3, p2, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    const-string p0, "186113473"

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    filled-new-array {p0, p2, p1}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const p1, 0x534e4554

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 71
    .line 72
    .line 73
    return-object v2

    .line 74
    :cond_2
    return-object p2

    .line 75
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 77
    .line 78
    throw p0
.end method

.method public final getPermissionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-object v2

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 16
    .line 17
    invoke-virtual {v1, p3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v3, 0x2710

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    const/16 v4, 0x3e8

    .line 30
    .line 31
    if-eq v1, v4, :cond_3

    .line 32
    .line 33
    const/16 v4, 0x7d0

    .line 34
    .line 35
    if-ne v1, v4, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    if-nez p3, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    :cond_3
    :goto_0
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 46
    .line 47
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 48
    .line 49
    monitor-enter p3

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 51
    .line 52
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-nez v1, :cond_4

    .line 57
    .line 58
    monitor-exit p3

    .line 59
    return-object v2

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {v1, p1, v3}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 72
    .line 73
    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0, v0, p3, v1, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_5

    .line 81
    .line 82
    const-string p0, "183122164"

    .line 83
    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const p1, 0x534e4554

    .line 93
    .line 94
    .line 95
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 96
    .line 97
    .line 98
    return-object v2

    .line 99
    :cond_5
    return-object p1

    .line 100
    :goto_1
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 102
    .line 103
    throw p0
.end method

.method public final getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 9
    .line 10
    .line 11
    move-result-object p0

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
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 17
    .line 18
    throw p0
.end method

.method public final getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 16
    .line 17
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getRequestedRuntimePermissionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    monitor-exit v0

    .line 26
    return-object p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 30
    .line 31
    throw p0
.end method

.method public final getRequestedRuntimePermissionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/String;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    return-object p1
.end method

.method public final getSplitPermissions()Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-static {p0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/pm/permission/UserPermissionState;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v4

    .line 5
    const-string p3, "default:0"

    .line 6
    .line 7
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 8
    .line 9
    invoke-virtual {p0, v4, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    const/4 p3, 0x1

    .line 16
    :goto_0
    move v3, p3

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 p3, 0x0

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 21
    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    move-object v2, p2

    .line 25
    move v5, p4

    .line 26
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    .line 1
    const-string v6, "Cannot grant non-ephemeral permission "

    const-string v7, "Cannot grant soft restricted permission "

    const-string v8, "Cannot grant hard restricted non-exempt permission "

    const-string v9, "Cannot grant policy fixed permission "

    const-string v10, "Cannot grant system fixed permission "

    const-string v11, "Package "

    const-string v12, "Missing permissions state for "

    const-string v13, "Permission "

    const-string v14, "Permission "

    const-string v15, "Unknown permission: "

    move-object/from16 v16, v15

    const-string v15, "Unknown permission: "

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v15, v4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v15

    if-nez v15, :cond_0

    .line 2
    const-string v0, "PermissionManager"

    const-string v1, "No such user:"

    .line 3
    invoke-static {v4, v1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    move-object/from16 v18, v6

    const-string v6, "grantRuntimePermission"

    invoke-virtual {v15, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string v5, "grantRuntimePermission"

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IILjava/lang/String;Z)V

    .line 6
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    .line 7
    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v15, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v15

    if-eqz v5, :cond_22

    if-nez v15, :cond_1

    goto/16 :goto_e

    .line 8
    :cond_1
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v20, v15

    const/4 v15, 0x0

    invoke-virtual {v6, v3, v4, v1, v15}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_21

    .line 9
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v21, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v6

    .line 10
    :try_start_0
    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v15, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v15

    if-eqz v15, :cond_20

    .line 11
    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v17

    .line 12
    iget-object v15, v15, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v15, v15, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v15, v15, 0x8

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    .line 13
    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v17, :cond_4

    .line 14
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 15
    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v15, :cond_5

    .line 18
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 19
    move-object v15, v5

    check-cast v15, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    move-object/from16 v22, v7

    .line 20
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 21
    invoke-static {v6, v15, v5, v7, v2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v6

    .line 22
    invoke-virtual {v6}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayGrantPermission()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v22, v7

    :cond_6
    const/4 v6, 0x0

    .line 23
    :goto_3
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v7

    .line 24
    :try_start_1
    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v15, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v15

    if-eqz v15, :cond_1f

    .line 25
    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v16

    move/from16 p4, v6

    .line 26
    iget-object v6, v15, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length v6, v6

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    if-nez v16, :cond_b

    .line 27
    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v17

    if-eqz v17, :cond_8

    goto :goto_5

    .line 28
    :cond_8
    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v17

    if-eqz v17, :cond_a

    if-eqz v3, :cond_9

    goto :goto_5

    .line 29
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is managed by role"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    .line 30
    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requested by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a changeable permission type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_b
    :goto_5
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v3

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    if-nez v3, :cond_c

    .line 33
    const-string v0, "PermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    monitor-exit v7

    return-void

    .line 35
    :cond_c
    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 36
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_6

    .line 37
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has not requested permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_e
    :goto_6
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v11

    const/16 v12, 0x17

    if-ge v11, v12, :cond_f

    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 39
    monitor-exit v7

    return-void

    .line 40
    :cond_f
    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v11

    and-int/lit8 v13, v11, 0x10

    if-eqz v13, :cond_10

    .line 41
    const-string v0, "PermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    monitor-exit v7

    return-void

    :cond_10
    if-nez p3, :cond_11

    and-int/lit8 v10, v11, 0x4

    if-eqz v10, :cond_11

    .line 43
    const-string v0, "PermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    monitor-exit v7

    return-void

    .line 45
    :cond_11
    iget-object v9, v15, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v9, v9, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    goto :goto_7

    :cond_12
    const/4 v10, 0x0

    :goto_7
    if-eqz v10, :cond_13

    and-int/lit16 v10, v11, 0x3800

    if-nez v10, :cond_13

    .line 46
    const-string v0, "PermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    monitor-exit v7

    return-void

    :cond_13
    and-int/lit8 v8, v9, 0x8

    if-eqz v8, :cond_14

    const/16 v19, 0x1

    goto :goto_8

    :cond_14
    const/16 v19, 0x0

    :goto_8
    if-eqz v19, :cond_15

    if-nez p4, :cond_15

    .line 48
    const-string v0, "PermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v22

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    monitor-exit v7

    return-void

    .line 50
    :cond_15
    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v8

    if-eqz v8, :cond_16

    goto :goto_a

    :cond_16
    move-object/from16 v8, v20

    .line 51
    invoke-interface {v8, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v8

    if-eqz v8, :cond_17

    goto :goto_9

    .line 52
    :cond_17
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_18
    :goto_9
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v8

    if-ge v8, v12, :cond_19

    .line 54
    const-string v0, "PermissionManager"

    const-string v1, "Cannot grant runtime permission to a legacy app"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    monitor-exit v7

    return-void

    .line 56
    :cond_19
    invoke-virtual {v3, v15}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 57
    monitor-exit v7

    return-void

    .line 58
    :cond_1a
    :goto_a
    invoke-virtual {v3, v15}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 59
    monitor-exit v7

    return-void

    .line 60
    :cond_1b
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v16, :cond_1c

    .line 61
    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v7, 0x4db

    invoke-direct {v3, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 62
    invoke-virtual {v3, v1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    const/16 v1, 0x4d9

    .line 63
    invoke-virtual {v3, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 64
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 65
    :cond_1c
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    move-object/from16 v1, p6

    if-eqz v1, :cond_1e

    if-eqz v16, :cond_1d

    .line 66
    invoke-virtual {v1, v0, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionGranted(II)V

    goto :goto_b

    .line 67
    :cond_1d
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionGranted()V

    :goto_b
    if-eqz v6, :cond_1e

    .line 68
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {v1, v0, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onGidsChanged(II)V

    :cond_1e
    return-void

    .line 69
    :cond_1f
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :goto_c
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_d

    .line 71
    :cond_20
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :goto_d
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    .line 73
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown package: "

    .line 74
    invoke-static {v2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_22
    :goto_e
    const-string v0, "PermissionManager"

    const-string v2, "Unknown package: "

    .line 77
    invoke-static {v2, v1, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleDenyLocked(ILcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;Z)Z
    .locals 8

    .line 1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x16

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    if-le v0, v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    return v7

    .line 31
    :cond_0
    iget-object p5, p5, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 32
    .line 33
    iget-object p5, p5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p3, p5}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-nez p3, :cond_1

    .line 40
    .line 41
    const-string p0, "Failed to deny the permission "

    .line 42
    .line 43
    const-string p1, " to package "

    .line 44
    .line 45
    invoke-static {p0, p4, p1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string p1, "PermissionManager"

    .line 61
    .line 62
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    return p0

    .line 67
    :cond_1
    if-eqz p6, :cond_3

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 70
    .line 71
    new-instance p2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;

    .line 72
    .line 73
    const/4 p3, 0x0

    .line 74
    invoke-direct {p2, v4, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(III)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const/16 p6, 0x8

    .line 82
    .line 83
    invoke-virtual {p3, p5, p6, p6}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 84
    .line 85
    .line 86
    invoke-static {p2, p4, p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAppOp(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 91
    .line 92
    new-instance p4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;

    .line 93
    .line 94
    move-object v1, p4

    .line 95
    move-object v2, p0

    .line 96
    move v3, p1

    .line 97
    move-object v6, p2

    .line 98
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IIILcom/android/server/pm/pkg/AndroidPackage;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_0
    return v7
.end method

.method public final handleGrantLocked(ILcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)Z
    .locals 17

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    move-object/from16 v10, p4

    .line 8
    .line 9
    move-object/from16 v11, p5

    .line 10
    .line 11
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x16

    .line 24
    .line 25
    const/4 v12, 0x0

    .line 26
    const/4 v13, 0x1

    .line 27
    if-le v1, v2, :cond_3

    .line 28
    .line 29
    invoke-virtual/range {p3 .. p4}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual/range {p3 .. p4}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    return v13

    .line 42
    :cond_0
    invoke-virtual {v0, v11}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 43
    .line 44
    .line 45
    move-result v14

    .line 46
    invoke-static {v9, v10, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAppOp(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    iget-object v15, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 55
    .line 56
    new-instance v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    const/16 v16, 0x0

    .line 60
    .line 61
    move-object v0, v7

    .line 62
    move-object/from16 v1, p0

    .line 63
    .line 64
    move/from16 v2, p1

    .line 65
    .line 66
    move-object v13, v7

    .line 67
    move/from16 v7, v16

    .line 68
    .line 69
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IIILjava/lang/String;ZZ)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v15, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    if-nez v14, :cond_1

    .line 76
    .line 77
    const-string v0, "Failed to grant the permission "

    .line 78
    .line 79
    const-string v1, " to package "

    .line 80
    .line 81
    invoke-static {v0, v10, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v1, "PermissionManager"

    .line 97
    .line 98
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    return v12

    .line 102
    :cond_1
    iget-object v0, v11, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 103
    .line 104
    array-length v0, v0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 108
    .line 109
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    move/from16 v2, p1

    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->onGidsChanged(II)V

    .line 120
    .line 121
    .line 122
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    move/from16 v2, p1

    .line 125
    .line 126
    invoke-static {v9, v10, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAppOp(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    const/16 v1, 0x8

    .line 131
    .line 132
    invoke-virtual {v0, v11, v1, v12}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 133
    .line 134
    .line 135
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    iget-object v9, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 140
    .line 141
    new-instance v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;

    .line 142
    .line 143
    const/4 v6, 0x1

    .line 144
    const/4 v7, 0x1

    .line 145
    move-object v0, v10

    .line 146
    move-object/from16 v1, p0

    .line 147
    .line 148
    move/from16 v2, p1

    .line 149
    .line 150
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IIILjava/lang/String;ZZ)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :goto_1
    return v0
.end method

.method public final isPermissionRevokedByPolicy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    if-eq p4, p1, :cond_0

    .line 6
    .line 7
    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "isPermissionRevokedByPolicy for user "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 24
    .line 25
    invoke-virtual {p4, v1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const-string p4, "default:0"

    .line 29
    .line 30
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result p4

    .line 34
    const/4 v0, 0x0

    .line 35
    if-nez p4, :cond_1

    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 43
    .line 44
    invoke-virtual {v1, p4, p1, p2, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    return v0

    .line 51
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    :try_start_0
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(IILjava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    and-int/lit8 p0, p0, 0x4

    .line 60
    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    return v0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    throw p0
.end method

.method public final isPermissionSplitFromNonRuntime(ILjava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v1, v1, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    if-ge v4, v2, :cond_2

    .line 15
    .line 16
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    check-cast v5, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 21
    .line 22
    invoke-virtual {v5}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-ge p1, v6, :cond_1

    .line 27
    .line 28
    invoke-virtual {v5}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-interface {v6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_1

    .line 37
    .line 38
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 39
    .line 40
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 41
    .line 42
    monitor-enter v6

    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 44
    .line 45
    invoke-virtual {v5}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-eqz p0, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_0

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_2

    .line 64
    :cond_0
    move v0, v3

    .line 65
    :goto_1
    monitor-exit v6

    .line 66
    return v0

    .line 67
    :goto_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 69
    .line 70
    throw p0

    .line 71
    :cond_1
    add-int/2addr v4, v0

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    return v3
.end method

.method public final isPermissionsReviewRequired(ILjava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string/jumbo v1, "packageName"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    const-string v1, "Missing permissions state for "

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 11
    .line 12
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/16 v4, 0x17

    .line 25
    .line 26
    if-lt v3, v4, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 30
    .line 31
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 32
    .line 33
    monitor-enter v3

    .line 34
    :try_start_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    const-string p0, "PermissionManager"

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p2, " and user "

    .line 59
    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    monitor-exit v3

    .line 74
    goto :goto_2

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_3

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 78
    .line 79
    if-nez p1, :cond_4

    .line 80
    .line 81
    :cond_3
    move v0, v2

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    move p2, v2

    .line 88
    :goto_0
    if-ge p2, p1, :cond_3

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 91
    .line 92
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Lcom/android/server/pm/permission/PermissionState;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    and-int/lit8 v1, v1, 0x40

    .line 103
    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    add-int/2addr p2, v0

    .line 108
    goto :goto_0

    .line 109
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 111
    .line 112
    move v2, v0

    .line 113
    :goto_2
    return v2

    .line 114
    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 116
    .line 117
    throw p0
.end method

.method public final onPackageAdded(Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3
    .line 4
    .line 5
    move-result-object v4

    .line 6
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_3

    .line 18
    .line 19
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sub-int/2addr v1, v0

    .line 28
    :goto_0
    if-ltz v1, :cond_3

    .line 29
    .line 30
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/String;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_0
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    const-string v6, " to "

    .line 57
    .line 58
    const-string v7, "Unable to update from "

    .line 59
    .line 60
    const-string v8, "PermissionManager"

    .line 61
    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, ": old package not in system partition"

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 98
    .line 99
    iget-object v9, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    if-eqz v5, :cond_2

    .line 106
    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v3, ": old package still exists"

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    const-string v3, "PermissionManager"

    .line 141
    .line 142
    const-string v5, "Adopting permissions from "

    .line 143
    .line 144
    const-string v6, " to "

    .line 145
    .line 146
    invoke-static {v5, v2, v6}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 165
    .line 166
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 167
    .line 168
    monitor-enter v3

    .line 169
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 170
    .line 171
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-virtual {v5, v2, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->transferPermissions(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    monitor-exit v3

    .line 179
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :catchall_0
    move-exception p0

    .line 184
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 186
    .line 187
    throw p0

    .line 188
    :cond_3
    const/4 v1, 0x0

    .line 189
    const/4 v2, 0x0

    .line 190
    if-eqz p2, :cond_4

    .line 191
    .line 192
    const-string v3, "PermissionManager"

    .line 193
    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v6, "Permission groups from package "

    .line 197
    .line 198
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v6, " ignored: instant apps cannot define new permission groups."

    .line 209
    .line 210
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    goto/16 :goto_6

    .line 221
    .line 222
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 223
    .line 224
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 225
    .line 226
    monitor-enter v3

    .line 227
    :try_start_1
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    move v6, v2

    .line 236
    :goto_2
    if-ge v6, v5, :cond_8

    .line 237
    .line 238
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 247
    .line 248
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 249
    .line 250
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    iget-object v8, v8, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 255
    .line 256
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 261
    .line 262
    if-nez v8, :cond_5

    .line 263
    .line 264
    move-object v9, v1

    .line 265
    goto :goto_3

    .line 266
    :cond_5
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    :goto_3
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v9

    .line 278
    if-eqz v8, :cond_7

    .line 279
    .line 280
    if-eqz v9, :cond_6

    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_6
    const-string v9, "PermissionManager"

    .line 284
    .line 285
    new-instance v10, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    const-string v11, "Permission group "

    .line 291
    .line 292
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v11

    .line 299
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v11, " from package "

    .line 303
    .line 304
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v7, " ignored: original from "

    .line 315
    .line 316
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    goto :goto_5

    .line 334
    :catchall_1
    move-exception p0

    .line 335
    goto/16 :goto_11

    .line 336
    .line 337
    :cond_7
    :goto_4
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 338
    .line 339
    iget-object v8, v8, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 340
    .line 341
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v9

    .line 345
    invoke-virtual {v8, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    :goto_5
    add-int/2addr v6, v0

    .line 349
    goto :goto_2

    .line 350
    :cond_8
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 351
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 352
    .line 353
    :goto_6
    if-eqz p2, :cond_a

    .line 354
    .line 355
    const-string p1, "PermissionManager"

    .line 356
    .line 357
    new-instance p2, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    const-string v3, "Permissions from package "

    .line 360
    .line 361
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v3, " ignored: instant apps cannot define new permissions."

    .line 372
    .line 373
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p2

    .line 380
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    :cond_9
    move-object v7, v1

    .line 384
    goto/16 :goto_f

    .line 385
    .line 386
    :cond_a
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 387
    .line 388
    .line 389
    move-result-object p2

    .line 390
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 391
    .line 392
    .line 393
    move-result p2

    .line 394
    new-instance v1, Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .line 398
    .line 399
    move v3, v2

    .line 400
    :goto_7
    if-ge v3, p2, :cond_9

    .line 401
    .line 402
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 411
    .line 412
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 413
    .line 414
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 415
    .line 416
    monitor-enter v6

    .line 417
    :try_start_2
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 418
    .line 419
    .line 420
    move-result v7

    .line 421
    const/16 v8, 0x16

    .line 422
    .line 423
    if-le v7, v8, :cond_b

    .line 424
    .line 425
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 426
    .line 427
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v8

    .line 431
    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 432
    .line 433
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v7

    .line 437
    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 438
    .line 439
    invoke-static {v5, v7}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setParsedPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermission;Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)V

    .line 440
    .line 441
    .line 442
    goto :goto_8

    .line 443
    :catchall_2
    move-exception p0

    .line 444
    goto/16 :goto_e

    .line 445
    .line 446
    :cond_b
    :goto_8
    const-wide/16 v7, 0x80

    .line 447
    .line 448
    invoke-static {v5, v7, v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    .line 449
    .line 450
    .line 451
    move-result-object v7

    .line 452
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    .line 453
    .line 454
    .line 455
    move-result v8

    .line 456
    if-eqz v8, :cond_c

    .line 457
    .line 458
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 459
    .line 460
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v9

    .line 464
    iget-object v8, v8, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 465
    .line 466
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v8

    .line 470
    check-cast v8, Lcom/android/server/pm/permission/Permission;

    .line 471
    .line 472
    goto :goto_9

    .line 473
    :cond_c
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 474
    .line 475
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v9

    .line 479
    invoke-virtual {v8, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 480
    .line 481
    .line 482
    move-result-object v8

    .line 483
    :goto_9
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 484
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 485
    .line 486
    if-eqz v8, :cond_e

    .line 487
    .line 488
    iget-object v9, v8, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 489
    .line 490
    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 491
    .line 492
    iget-object v10, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 493
    .line 494
    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v9

    .line 498
    if-eqz v9, :cond_d

    .line 499
    .line 500
    goto :goto_a

    .line 501
    :cond_d
    iget-boolean v9, v8, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 502
    .line 503
    if-nez v9, :cond_f

    .line 504
    .line 505
    :cond_e
    :goto_a
    move v6, v2

    .line 506
    goto :goto_b

    .line 507
    :cond_f
    iget-object v9, v8, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 508
    .line 509
    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 510
    .line 511
    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 512
    .line 513
    .line 514
    move-result-object v6

    .line 515
    if-nez v6, :cond_10

    .line 516
    .line 517
    goto :goto_a

    .line 518
    :cond_10
    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 519
    .line 520
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 521
    .line 522
    .line 523
    move-result v6

    .line 524
    :goto_b
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 525
    .line 526
    monitor-enter v9

    .line 527
    :try_start_3
    iget-object v10, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 528
    .line 529
    iget-object v10, v10, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 530
    .line 531
    invoke-virtual {v10}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 532
    .line 533
    .line 534
    move-result-object v10

    .line 535
    invoke-static {v8, v7, p1, v10, v6}, Lcom/android/server/pm/permission/Permission;->createOrUpdate(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/pkg/PackageState;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/Permission;

    .line 536
    .line 537
    .line 538
    move-result-object v6

    .line 539
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    .line 540
    .line 541
    .line 542
    move-result v7

    .line 543
    if-eqz v7, :cond_11

    .line 544
    .line 545
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 546
    .line 547
    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 548
    .line 549
    iget-object v8, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 550
    .line 551
    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 552
    .line 553
    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    goto :goto_c

    .line 557
    :catchall_3
    move-exception p0

    .line 558
    goto :goto_d

    .line 559
    :cond_11
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 560
    .line 561
    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 562
    .line 563
    iget-object v8, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 564
    .line 565
    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 566
    .line 567
    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    :goto_c
    iget-boolean v7, v6, Lcom/android/server/pm/permission/Permission;->mDefinitionChanged:Z

    .line 571
    .line 572
    if-eqz v7, :cond_12

    .line 573
    .line 574
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    iput-boolean v2, v6, Lcom/android/server/pm/permission/Permission;->mDefinitionChanged:Z

    .line 582
    .line 583
    :cond_12
    monitor-exit v9

    .line 584
    add-int/2addr v3, v0

    .line 585
    goto/16 :goto_7

    .line 586
    .line 587
    :goto_d
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 588
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 589
    .line 590
    throw p0

    .line 591
    :goto_e
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 592
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 593
    .line 594
    throw p0

    .line 595
    :goto_f
    if-eqz p3, :cond_13

    .line 596
    .line 597
    move v3, v0

    .line 598
    goto :goto_10

    .line 599
    :cond_13
    move v3, v2

    .line 600
    :goto_10
    invoke-static {v7}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 601
    .line 602
    .line 603
    move-result p1

    .line 604
    xor-int/lit8 v6, p1, 0x1

    .line 605
    .line 606
    if-nez v3, :cond_14

    .line 607
    .line 608
    if-eqz v6, :cond_15

    .line 609
    .line 610
    :cond_14
    new-instance p1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;

    .line 611
    .line 612
    move-object v1, p1

    .line 613
    move-object v2, p0

    .line 614
    move-object v5, p3

    .line 615
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ZLcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/util/List;)V

    .line 616
    .line 617
    .line 618
    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 619
    .line 620
    .line 621
    :cond_15
    return-void

    .line 622
    :goto_11
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 623
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 624
    .line 625
    throw p0
.end method

.method public final onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move-object/from16 v11, p2

    .line 6
    .line 7
    move/from16 v1, p3

    .line 8
    .line 9
    const-string/jumbo v2, "pkg"

    .line 10
    .line 11
    .line 12
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string/jumbo v2, "params"

    .line 16
    .line 17
    .line 18
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const/4 v12, 0x0

    .line 22
    const/4 v2, -0x1

    .line 23
    const/4 v13, 0x1

    .line 24
    if-gez v1, :cond_1

    .line 25
    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v3, v12

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    move v3, v13

    .line 32
    :goto_1
    const-string/jumbo v4, "userId"

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    if-ne v1, v2, :cond_2

    .line 39
    .line 40
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds$1()[I

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move-object v14, v1

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    new-array v2, v13, [I

    .line 47
    .line 48
    aput v1, v2, v12

    .line 49
    .line 50
    move-object v14, v2

    .line 51
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 60
    .line 61
    const/4 v5, 0x2

    .line 62
    move-object/from16 v1, p0

    .line 63
    .line 64
    move-object/from16 v3, p1

    .line 65
    .line 66
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 67
    .line 68
    .line 69
    array-length v15, v14

    .line 70
    move v9, v12

    .line 71
    :goto_3
    if-ge v9, v15, :cond_15

    .line 72
    .line 73
    aget v8, v14, v9

    .line 74
    .line 75
    iget-object v1, v11, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 76
    .line 77
    const/4 v7, 0x2

    .line 78
    invoke-virtual {v0, v10, v7, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    new-instance v3, Landroid/util/ArraySet;

    .line 85
    .line 86
    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 90
    .line 91
    .line 92
    new-instance v1, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-virtual {v0, v10, v1, v7, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;II)V

    .line 98
    .line 99
    .line 100
    iget-object v6, v11, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mPermissionStates:Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    const/16 v2, 0x17

    .line 107
    .line 108
    if-lt v1, v2, :cond_4

    .line 109
    .line 110
    move/from16 v16, v13

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_4
    move/from16 v16, v12

    .line 114
    .line 115
    :goto_4
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 116
    .line 117
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v1, v2, v8}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    .line 122
    .line 123
    .line 124
    move-result v17

    .line 125
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v18

    .line 137
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_14

    .line 142
    .line 143
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    move-object v3, v1

    .line 148
    check-cast v3, Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Ljava/lang/Integer;

    .line 155
    .line 156
    if-eqz v1, :cond_11

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-nez v2, :cond_5

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_5
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 166
    .line 167
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 168
    .line 169
    monitor-enter v2

    .line 170
    :try_start_0
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 171
    .line 172
    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    if-nez v4, :cond_6

    .line 177
    .line 178
    monitor-exit v2

    .line 179
    goto :goto_5

    .line 180
    :catchall_0
    move-exception v0

    .line 181
    goto/16 :goto_c

    .line 182
    .line 183
    :cond_6
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 184
    .line 185
    .line 186
    move-result v19

    .line 187
    if-nez v19, :cond_7

    .line 188
    .line 189
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    .line 190
    .line 191
    .line 192
    move-result v19

    .line 193
    if-eqz v19, :cond_a

    .line 194
    .line 195
    :cond_7
    if-eqz v17, :cond_8

    .line 196
    .line 197
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    .line 198
    .line 199
    .line 200
    move-result v19

    .line 201
    if-eqz v19, :cond_a

    .line 202
    .line 203
    :cond_8
    if-nez v16, :cond_9

    .line 204
    .line 205
    iget-object v7, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 206
    .line 207
    iget v7, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 208
    .line 209
    and-int/lit16 v7, v7, 0x2000

    .line 210
    .line 211
    if-eqz v7, :cond_9

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    if-ne v7, v13, :cond_a

    .line 219
    .line 220
    move v7, v13

    .line 221
    goto :goto_7

    .line 222
    :cond_a
    :goto_6
    move v7, v12

    .line 223
    :goto_7
    iget-object v4, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 224
    .line 225
    iget v4, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 226
    .line 227
    and-int/lit8 v4, v4, 0x40

    .line 228
    .line 229
    if-eqz v4, :cond_b

    .line 230
    .line 231
    move v4, v13

    .line 232
    goto :goto_8

    .line 233
    :cond_b
    move v4, v12

    .line 234
    :goto_8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v0, v5, v8, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(IILjava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v7, :cond_f

    .line 244
    .line 245
    if-eqz v16, :cond_e

    .line 246
    .line 247
    and-int/lit8 v1, v2, 0x14

    .line 248
    .line 249
    if-nez v1, :cond_d

    .line 250
    .line 251
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 256
    .line 257
    const/4 v4, 0x0

    .line 258
    move-object/from16 v1, p0

    .line 259
    .line 260
    move/from16 v19, v5

    .line 261
    .line 262
    move-object/from16 v20, v6

    .line 263
    .line 264
    move v6, v8

    .line 265
    const/16 v21, 0x2

    .line 266
    .line 267
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 268
    .line 269
    .line 270
    :cond_c
    :goto_9
    move v12, v8

    .line 271
    move/from16 v22, v9

    .line 272
    .line 273
    goto :goto_a

    .line 274
    :cond_d
    move/from16 v19, v5

    .line 275
    .line 276
    move-object/from16 v20, v6

    .line 277
    .line 278
    const/16 v21, 0x2

    .line 279
    .line 280
    goto :goto_9

    .line 281
    :cond_e
    move/from16 v19, v5

    .line 282
    .line 283
    move-object/from16 v20, v6

    .line 284
    .line 285
    const/16 v21, 0x2

    .line 286
    .line 287
    and-int/lit8 v1, v2, 0x48

    .line 288
    .line 289
    if-eqz v1, :cond_c

    .line 290
    .line 291
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 296
    .line 297
    const/16 v4, 0x48

    .line 298
    .line 299
    const/4 v5, 0x0

    .line 300
    const/16 v22, 0x0

    .line 301
    .line 302
    move-object/from16 v1, p0

    .line 303
    .line 304
    move/from16 v6, v19

    .line 305
    .line 306
    move-object/from16 v23, v7

    .line 307
    .line 308
    move v7, v8

    .line 309
    move v12, v8

    .line 310
    move/from16 v8, v22

    .line 311
    .line 312
    move/from16 v22, v9

    .line 313
    .line 314
    move-object/from16 v9, v23

    .line 315
    .line 316
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 317
    .line 318
    .line 319
    goto :goto_a

    .line 320
    :cond_f
    move/from16 v19, v5

    .line 321
    .line 322
    move-object/from16 v20, v6

    .line 323
    .line 324
    move v12, v8

    .line 325
    move/from16 v22, v9

    .line 326
    .line 327
    const/16 v21, 0x2

    .line 328
    .line 329
    if-eqz v4, :cond_10

    .line 330
    .line 331
    sget-object v4, Lcom/android/server/pm/PackageInstallerService;->INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

    .line 332
    .line 333
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    if-eqz v4, :cond_10

    .line 338
    .line 339
    and-int/2addr v2, v13

    .line 340
    if-eqz v2, :cond_12

    .line 341
    .line 342
    :cond_10
    :goto_a
    move v8, v12

    .line 343
    move/from16 v5, v19

    .line 344
    .line 345
    move-object/from16 v6, v20

    .line 346
    .line 347
    move/from16 v7, v21

    .line 348
    .line 349
    move/from16 v9, v22

    .line 350
    .line 351
    :cond_11
    const/4 v12, 0x0

    .line 352
    goto/16 :goto_5

    .line 353
    .line 354
    :cond_12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-ne v1, v13, :cond_13

    .line 359
    .line 360
    const/4 v7, 0x0

    .line 361
    goto :goto_b

    .line 362
    :cond_13
    move/from16 v7, v21

    .line 363
    .line 364
    :goto_b
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    invoke-static {v12, v1}, Landroid/os/UserHandle;->getUid(II)I

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 377
    .line 378
    new-instance v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;

    .line 379
    .line 380
    invoke-direct {v4, v0, v2, v1, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Ljava/lang/String;II)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    .line 385
    .line 386
    goto :goto_a

    .line 387
    :goto_c
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 389
    .line 390
    throw v0

    .line 391
    :cond_14
    move/from16 v22, v9

    .line 392
    .line 393
    add-int/lit8 v9, v22, 0x1

    .line 394
    .line 395
    const/4 v12, 0x0

    .line 396
    goto/16 :goto_3

    .line 397
    .line 398
    :cond_15
    return-void
.end method

.method public final onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, v1, :cond_5

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 27
    .line 28
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 29
    .line 30
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    if-nez v5, :cond_0

    .line 39
    .line 40
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 41
    .line 42
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lcom/android/server/pm/permission/Permission;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_0
    :goto_1
    if-eqz v5, :cond_2

    .line 59
    .line 60
    iget-object v6, v5, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 61
    .line 62
    if-nez v6, :cond_1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 66
    .line 67
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_2

    .line 76
    .line 77
    iget-object v6, v5, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 78
    .line 79
    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_2

    .line 90
    .line 91
    new-instance v6, Landroid/content/pm/PermissionInfo;

    .line 92
    .line 93
    invoke-direct {v6}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-object v7, v5, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 97
    .line 98
    iget-object v8, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 99
    .line 100
    iput-object v8, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v8, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 103
    .line 104
    iput-object v8, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 105
    .line 106
    iget v7, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 107
    .line 108
    iput v7, v6, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 109
    .line 110
    iput-object v6, v5, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 111
    .line 112
    iput-boolean v2, v5, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 113
    .line 114
    :cond_2
    :goto_2
    invoke-static {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->isAppOp(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_4

    .line 119
    .line 120
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 121
    .line 122
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    iget-object v7, v5, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    .line 131
    .line 132
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    check-cast v7, Landroid/util/ArraySet;

    .line 137
    .line 138
    if-nez v7, :cond_3

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_3
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_4

    .line 146
    .line 147
    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-eqz v6, :cond_4

    .line 152
    .line 153
    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    .line 154
    .line 155
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_5
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_8

    .line 175
    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    check-cast v2, Ljava/lang/String;

    .line 181
    .line 182
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 183
    .line 184
    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    if-eqz v3, :cond_6

    .line 189
    .line 190
    iget-object v3, v3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 191
    .line 192
    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 193
    .line 194
    and-int/lit8 v3, v3, 0x40

    .line 195
    .line 196
    if-eqz v3, :cond_6

    .line 197
    .line 198
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 199
    .line 200
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    iget-object v5, v3, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    .line 205
    .line 206
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    check-cast v5, Landroid/util/ArraySet;

    .line 211
    .line 212
    if-nez v5, :cond_7

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_7
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-eqz v4, :cond_6

    .line 220
    .line 221
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-eqz v4, :cond_6

    .line 226
    .line 227
    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    .line 228
    .line 229
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 235
    .line 236
    return-void

    .line 237
    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 239
    .line 240
    throw p0
.end method

.method public final onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    move-object/from16 v9, p4

    .line 8
    .line 9
    move/from16 v1, p6

    .line 10
    .line 11
    const-string/jumbo v2, "packageState"

    .line 12
    .line 13
    .line 14
    move-object/from16 v3, p3

    .line 15
    .line 16
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const-string/jumbo v2, "packageName"

    .line 20
    .line 21
    .line 22
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string/jumbo v2, "sharedUserPkgs"

    .line 26
    .line 27
    .line 28
    move-object/from16 v10, p5

    .line 29
    .line 30
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const/4 v2, -0x1

    .line 34
    const/4 v11, 0x0

    .line 35
    const/4 v12, 0x1

    .line 36
    if-gez v1, :cond_1

    .line 37
    .line 38
    if-ne v1, v2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v4, v11

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    move v4, v12

    .line 44
    :goto_1
    const-string/jumbo v5, "userId"

    .line 45
    .line 46
    .line 47
    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    if-ne v1, v2, :cond_2

    .line 51
    .line 52
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds$1()[I

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v13, v1

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    new-array v2, v12, [I

    .line 59
    .line 60
    aput v1, v2, v11

    .line 61
    .line 62
    move-object v13, v2

    .line 63
    :goto_2
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    if-eqz v9, :cond_3

    .line 70
    .line 71
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 72
    .line 73
    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    array-length v1, v13

    .line 80
    :goto_3
    if-ge v11, v1, :cond_11

    .line 81
    .line 82
    aget v2, v13, v11

    .line 83
    .line 84
    invoke-virtual {v0, v9, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 85
    .line 86
    .line 87
    add-int/2addr v11, v12

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    const/4 v3, 0x0

    .line 90
    invoke-static {v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 95
    .line 96
    const/4 v5, 0x3

    .line 97
    move-object/from16 v1, p0

    .line 98
    .line 99
    move-object/from16 v2, p1

    .line 100
    .line 101
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 102
    .line 103
    .line 104
    array-length v1, v13

    .line 105
    move v2, v11

    .line 106
    :goto_4
    if-ge v2, v1, :cond_11

    .line 107
    .line 108
    aget v3, v13, v2

    .line 109
    .line 110
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_5

    .line 115
    .line 116
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 117
    .line 118
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 119
    .line 120
    monitor-enter v4

    .line 121
    :try_start_0
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    .line 122
    .line 123
    iget-object v5, v5, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 124
    .line 125
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    check-cast v3, Lcom/android/server/pm/permission/UserPermissionState;

    .line 130
    .line 131
    if-nez v3, :cond_4

    .line 132
    .line 133
    monitor-exit v4

    .line 134
    goto :goto_5

    .line 135
    :catchall_0
    move-exception v0

    .line 136
    goto :goto_6

    .line 137
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/permission/UserPermissionState;->checkAppId(I)V

    .line 138
    .line 139
    .line 140
    iget-object v5, v3, Lcom/android/server/pm/permission/UserPermissionState;->mUidStates:Landroid/util/SparseArray;

    .line 141
    .line 142
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->delete(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v7, v11}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 146
    .line 147
    .line 148
    monitor-exit v4

    .line 149
    :goto_5
    move/from16 v16, v1

    .line 150
    .line 151
    move v1, v12

    .line 152
    goto/16 :goto_f

    .line 153
    .line 154
    :goto_6
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 156
    .line 157
    throw v0

    .line 158
    :cond_5
    if-nez v9, :cond_6

    .line 159
    .line 160
    const-string v3, "PermissionManager"

    .line 161
    .line 162
    const-string v4, "Trying to update info for null package. Just ignoring"

    .line 163
    .line 164
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    :goto_7
    move/from16 v16, v1

    .line 168
    .line 169
    goto/16 :goto_e

    .line 170
    .line 171
    :cond_6
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-eqz v4, :cond_7

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_7
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 179
    .line 180
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 185
    .line 186
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 187
    .line 188
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-interface {v4, v5}, Lcom/android/server/pm/Computer;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    if-eqz v4, :cond_8

    .line 197
    .line 198
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 199
    .line 200
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-ne v5, v6, :cond_8

    .line 205
    .line 206
    move v5, v12

    .line 207
    goto :goto_8

    .line 208
    :cond_8
    move v5, v11

    .line 209
    :goto_8
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    move v14, v11

    .line 218
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v15

    .line 222
    if-eqz v15, :cond_f

    .line 223
    .line 224
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v15

    .line 228
    check-cast v15, Ljava/lang/String;

    .line 229
    .line 230
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v16

    .line 234
    :goto_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v17

    .line 238
    if-eqz v17, :cond_a

    .line 239
    .line 240
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v17

    .line 244
    check-cast v17, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 245
    .line 246
    if-eqz v17, :cond_9

    .line 247
    .line 248
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v11

    .line 252
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v11

    .line 260
    if-nez v11, :cond_9

    .line 261
    .line 262
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    invoke-interface {v11, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v11

    .line 270
    if-eqz v11, :cond_9

    .line 271
    .line 272
    :goto_b
    move/from16 v16, v1

    .line 273
    .line 274
    goto :goto_c

    .line 275
    :cond_9
    const/4 v11, 0x0

    .line 276
    const/4 v12, 0x1

    .line 277
    goto :goto_a

    .line 278
    :cond_a
    if-eqz v5, :cond_b

    .line 279
    .line 280
    iget-object v11, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 281
    .line 282
    invoke-interface {v11}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getRequestedPermissions()Ljava/util/Set;

    .line 283
    .line 284
    .line 285
    move-result-object v11

    .line 286
    invoke-interface {v11, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v11

    .line 290
    if-eqz v11, :cond_b

    .line 291
    .line 292
    goto :goto_b

    .line 293
    :cond_b
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 294
    .line 295
    sget-boolean v12, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 296
    .line 297
    monitor-enter v11

    .line 298
    :try_start_1
    invoke-virtual {v0, v8, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    .line 299
    .line 300
    .line 301
    move-result-object v12

    .line 302
    if-nez v12, :cond_c

    .line 303
    .line 304
    const-string v12, "PermissionManager"

    .line 305
    .line 306
    new-instance v15, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    move/from16 v16, v1

    .line 312
    .line 313
    const-string v1, "Missing permissions state for "

    .line 314
    .line 315
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v1, " and user "

    .line 326
    .line 327
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-static {v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    monitor-exit v11

    .line 341
    goto :goto_c

    .line 342
    :catchall_1
    move-exception v0

    .line 343
    goto :goto_d

    .line 344
    :cond_c
    move/from16 v16, v1

    .line 345
    .line 346
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 347
    .line 348
    invoke-virtual {v1, v15}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    if-nez v1, :cond_d

    .line 353
    .line 354
    monitor-exit v11

    .line 355
    :goto_c
    move/from16 v1, v16

    .line 356
    .line 357
    const/4 v11, 0x0

    .line 358
    const/4 v12, 0x1

    .line 359
    goto/16 :goto_9

    .line 360
    .line 361
    :cond_d
    iget-object v15, v1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 362
    .line 363
    iget-object v15, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {v12, v15}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    .line 366
    .line 367
    .line 368
    move-result v12

    .line 369
    if-eqz v12, :cond_e

    .line 370
    .line 371
    iget-object v1, v1, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 372
    .line 373
    array-length v1, v1

    .line 374
    if-eqz v1, :cond_e

    .line 375
    .line 376
    const/4 v14, 0x1

    .line 377
    :cond_e
    monitor-exit v11

    .line 378
    goto :goto_c

    .line 379
    :goto_d
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 380
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 381
    .line 382
    throw v0

    .line 383
    :cond_f
    move/from16 v16, v1

    .line 384
    .line 385
    if-eqz v14, :cond_10

    .line 386
    .line 387
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 388
    .line 389
    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda11;

    .line 390
    .line 391
    invoke-direct {v3, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda11;-><init>(I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    .line 396
    .line 397
    :cond_10
    :goto_e
    const/4 v1, 0x1

    .line 398
    :goto_f
    add-int/2addr v2, v1

    .line 399
    move v12, v1

    .line 400
    move/from16 v1, v16

    .line 401
    .line 402
    const/4 v11, 0x0

    .line 403
    goto/16 :goto_4

    .line 404
    .line 405
    :cond_11
    return-void
.end method

.method public final onStorageVolumeMounted(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onSystemReady()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    const-class v1, Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 15
    .line 16
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda15;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, v1, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v3

    .line 26
    :try_start_0
    iget-object v1, v1, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 27
    .line 28
    iput-object v2, v1, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda15;

    .line 29
    .line 30
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 32
    .line 33
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 34
    .line 35
    monitor-enter v1

    .line 36
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemReady:Z

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "We detected priv-permissions violations from below apps:"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    move v4, v0

    .line 59
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_0

    .line 64
    .line 65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Ljava/lang/String;

    .line 70
    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v7, "\n"

    .line 77
    .line 78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    add-int/lit8 v7, v4, 0x1

    .line 82
    .line 83
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v4, ") "

    .line 87
    .line 88
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    move v4, v7

    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    goto :goto_1

    .line 105
    :cond_0
    const-string v3, "\nPrivileged apps MUST put their \'signature|privileged\' permissions into the allowlist.\n"

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v3, "Please ASSIGN this issue to above apps to apply.\n"

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v3, "PermissionManager"

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-static {v2}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 133
    .line 134
    new-instance v1, Landroid/permission/PermissionControllerManager;

    .line 135
    .line 136
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 137
    .line 138
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-direct {v1, v2, v3}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 143
    .line 144
    .line 145
    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 146
    .line 147
    const-class v1, Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 148
    .line 149
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 154
    .line 155
    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 156
    .line 157
    sput-boolean v0, Lcom/android/server/pm/PmHook;->mSystemReady:Z

    .line 158
    .line 159
    return-void

    .line 160
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 162
    .line 163
    throw p0

    .line 164
    :catchall_1
    move-exception p0

    .line 165
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    throw p0
.end method

.method public final onUserCreated(I)V
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    const-string/jumbo v0, "userId"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 6
    .line 7
    .line 8
    sget-object p1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onUserRemoved(I)V
    .locals 2

    .line 1
    int-to-float v0, p1

    .line 2
    const-string/jumbo v1, "userId"

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 9
    .line 10
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 25
    .line 26
    throw p0
.end method

.method public final queryPermissionsByGroup(ILjava/lang/String;)Ljava/util/List;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/16 v4, 0xa

    .line 19
    .line 20
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 24
    .line 25
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 26
    .line 27
    monitor-enter v4

    .line 28
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 29
    .line 30
    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v5, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    if-nez v5, :cond_1

    .line 41
    .line 42
    monitor-exit v4

    .line 43
    return-object v3

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 47
    .line 48
    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_3

    .line 63
    .line 64
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    check-cast v7, Lcom/android/server/pm/permission/Permission;

    .line 69
    .line 70
    iget-object v8, v7, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 71
    .line 72
    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v8, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_2

    .line 79
    .line 80
    const/16 v8, 0x2710

    .line 81
    .line 82
    invoke-virtual {v7, p1, v8}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 92
    .line 93
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz v5, :cond_4

    .line 98
    .line 99
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 100
    .line 101
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {p2, v1, p1, v4, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-eqz p2, :cond_4

    .line 110
    .line 111
    return-object v3

    .line 112
    :cond_4
    new-instance p2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda1;

    .line 113
    .line 114
    invoke-direct {p2, p0, v1, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;III)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 118
    .line 119
    .line 120
    return-object v2

    .line 121
    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 123
    .line 124
    throw p0
.end method

.method public final readLegacyPermissionStateTEMP()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds$1()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 6
    .line 7
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final readLegacyPermissionStatesLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const-string v0, "Unknown permission: "

    .line 28
    .line 29
    const-string v2, "PermissionManager"

    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    .line 36
    .line 37
    iget v0, v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v3, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 43
    .line 44
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v4, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 47
    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    new-instance v4, Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v4, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :goto_1
    new-instance v4, Lcom/android/server/pm/permission/PermissionState;

    .line 62
    .line 63
    invoke-direct {v4, v2}, Lcom/android/server/pm/permission/PermissionState;-><init>(Lcom/android/server/pm/permission/Permission;)V

    .line 64
    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionState;->grant()Z

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {v4, v0, v0}, Lcom/android/server/pm/permission/PermissionState;->updateFlags(II)Z

    .line 72
    .line 73
    .line 74
    iget-object v0, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 75
    .line 76
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    return-void
.end method

.method public final readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    const/4 v3, 0x2

    .line 5
    if-ge v2, v3, :cond_4

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissions()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissionTrees()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 19
    .line 20
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 21
    .line 22
    monitor-enter v4

    .line 23
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    move v6, v1

    .line 28
    :goto_2
    if-ge v6, v5, :cond_3

    .line 29
    .line 30
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Lcom/android/server/pm/permission/LegacyPermission;

    .line 35
    .line 36
    new-instance v8, Lcom/android/server/pm/permission/Permission;

    .line 37
    .line 38
    iget-object v9, v7, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 39
    .line 40
    iget v7, v7, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    .line 41
    .line 42
    invoke-direct {v8, v9, v7}, Lcom/android/server/pm/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;I)V

    .line 43
    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 48
    .line 49
    iget-object v9, v8, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 50
    .line 51
    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v7, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    if-eqz v7, :cond_1

    .line 58
    .line 59
    iget v9, v7, Lcom/android/server/pm/permission/Permission;->mType:I

    .line 60
    .line 61
    if-ne v9, v0, :cond_1

    .line 62
    .line 63
    iget-object v9, v7, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 64
    .line 65
    iget-boolean v7, v7, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    .line 66
    .line 67
    iput-object v9, v8, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 68
    .line 69
    iput-boolean v7, v8, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    .line 70
    .line 71
    :cond_1
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 72
    .line 73
    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 74
    .line 75
    iget-object v9, v8, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 76
    .line 77
    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v7, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_4

    .line 85
    :cond_2
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 86
    .line 87
    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 88
    .line 89
    iget-object v9, v8, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 90
    .line 91
    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v7, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :goto_3
    add-int/2addr v6, v0

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 100
    .line 101
    add-int/2addr v2, v0

    .line 102
    goto :goto_0

    .line 103
    :goto_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 105
    .line 106
    throw p0

    .line 107
    :cond_4
    return-void
.end method

.method public final removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, p3, p1, p4, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissions(ILjava/lang/String;ILjava/util/List;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_1
    return v1
.end method

.method public final removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 22
    .line 23
    const-string p1, "Instant applications don\'t have access to this method"

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final removePackageGrantedPermissionsForMDM(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removePermission(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "Not allowed to modify non-dynamic permission "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 16
    .line 17
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 18
    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 21
    .line 22
    invoke-virtual {v3, v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->enforcePermissionTree(ILjava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    monitor-exit v2

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget v1, v1, Lcom/android/server/pm/permission/Permission;->mType:I

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    if-ne v1, v3, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    :try_start_1
    const-string p0, "PermissionManager"

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    monitor-exit v2

    .line 67
    return-void

    .line 68
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 70
    .line 71
    throw p0

    .line 72
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 73
    .line 74
    const-string p1, "Instant applications don\'t have access to this method"

    .line 75
    .line 76
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0
.end method

.method public final resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "pkg"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    int-to-float v0, p2

    .line 8
    const-string/jumbo v1, "userId"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final resetRuntimePermissionsForUser(I)V
    .locals 2

    .line 1
    int-to-float v0, p1

    .line 2
    const-string/jumbo v1, "userId"

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 12

    const/4 v0, 0x1

    .line 1
    new-array v7, v0, [Z

    .line 2
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 3
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 4
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 5
    new-instance v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;[Z)V

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$2;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p2, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$2;)V

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    :goto_0
    const/4 p1, 0x0

    .line 8
    aget-boolean p2, v7, p1

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 10
    iget-object p2, p2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 11
    iget-object p2, p2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 12
    :cond_1
    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 13
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result p2

    move v1, p1

    :goto_1
    if-ge v1, p2, :cond_2

    .line 14
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v2

    .line 15
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v3

    .line 16
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 17
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v3, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(III)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 18
    :cond_2
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Landroid/util/ArraySet;)[I

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 19
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Landroid/util/ArraySet;)[I

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    return-void
.end method

.method public final resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$2;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v10, p2

    .line 20
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 21
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    .line 22
    iget-boolean v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mIsLeanback:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v13}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    if-nez v2, :cond_1

    .line 25
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 26
    :cond_1
    iget-object v3, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 27
    monitor-exit v1

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v14

    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 31
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v1, v10, v2}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 33
    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_4

    .line 34
    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 35
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 36
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 37
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 38
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/16 v1, 0x3e8

    .line 39
    invoke-virtual {v0, v1, v10, v11, v13}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(IILjava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 40
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v11, v4, v5, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 41
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v9

    const/16 v1, 0x17

    if-ge v9, v1, :cond_5

    if-eqz v14, :cond_5

    const/16 v3, 0x48

    :cond_5
    move/from16 v16, v3

    const/4 v8, 0x0

    const v4, 0x9004b

    const/16 v6, 0x3e8

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v13

    move/from16 v5, v16

    move/from16 v7, p2

    move v10, v9

    move-object/from16 v9, p3

    .line 42
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    if-nez v14, :cond_7

    :cond_6
    :goto_2
    move/from16 v10, p2

    goto/16 :goto_0

    :cond_7
    and-int/lit8 v1, v15, 0x14

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    and-int/lit8 v1, v15, 0x20

    if-nez v1, :cond_a

    const v1, 0x8000

    and-int/2addr v1, v15

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    and-int/lit8 v1, v16, 0x40

    if-nez v1, :cond_6

    .line 43
    invoke-virtual {v0, v10, v13}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionSplitFromNonRuntime(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v6, 0x3e8

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v13

    move/from16 v7, p2

    move-object/from16 v9, p3

    .line 44
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    goto :goto_2

    :cond_a
    :goto_3
    const/4 v4, 0x0

    const/16 v5, 0x3e8

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v13

    move/from16 v6, p2

    move-object/from16 v7, p3

    .line 45
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    goto :goto_2

    .line 46
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_b
    return-void
.end method

.method public final restoreDelayedRuntimePermissions(Ljava/lang/String;I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "packageName"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    int-to-float v0, p2

    .line 8
    const-string/jumbo v1, "userId"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 15
    .line 16
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 34
    .line 35
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda4;

    .line 44
    .line 45
    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 54
    .line 55
    throw p0
.end method

.method public final restorePermissionState(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p3

    .line 6
    .line 7
    move-object/from16 v10, p4

    .line 8
    .line 9
    move/from16 v1, p5

    .line 10
    .line 11
    const/4 v12, -0x1

    .line 12
    const/4 v14, 0x1

    .line 13
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 14
    .line 15
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 20
    .line 21
    .line 22
    move-result-object v15

    .line 23
    if-nez v15, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const/4 v7, 0x0

    .line 27
    if-ne v1, v12, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds$1()[I

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    move-object v6, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-array v2, v14, [I

    .line 36
    .line 37
    aput v1, v2, v7

    .line 38
    .line 39
    move-object v6, v2

    .line 40
    :goto_0
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    .line 41
    .line 42
    new-instance v5, Landroid/util/ArraySet;

    .line 43
    .line 44
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v16

    .line 51
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/4 v3, 0x0

    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v12, 0x0

    .line 62
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v18

    .line 66
    if-eqz v18, :cond_20

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v18

    .line 72
    move-object/from16 v7, v18

    .line 73
    .line 74
    check-cast v7, Ljava/lang/String;

    .line 75
    .line 76
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 77
    .line 78
    sget-boolean v20, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 79
    .line 80
    monitor-enter v13

    .line 81
    :try_start_0
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 82
    .line 83
    invoke-virtual {v11, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    if-nez v11, :cond_2

    .line 89
    .line 90
    const/4 v7, 0x0

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {v11}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    if-eqz v13, :cond_19

    .line 97
    .line 98
    sget-boolean v13, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    .line 99
    .line 100
    if-eqz v13, :cond_3

    .line 101
    .line 102
    move-object/from16 v21, v1

    .line 103
    .line 104
    move-object/from16 v22, v2

    .line 105
    .line 106
    move-object/from16 v26, v4

    .line 107
    .line 108
    move-object/from16 v24, v6

    .line 109
    .line 110
    move-object/from16 v25, v12

    .line 111
    .line 112
    move v1, v14

    .line 113
    goto/16 :goto_e

    .line 114
    .line 115
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    const-string v14, "android"

    .line 120
    .line 121
    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    if-eqz v14, :cond_4

    .line 126
    .line 127
    move-object/from16 v21, v1

    .line 128
    .line 129
    move-object/from16 v22, v2

    .line 130
    .line 131
    :goto_2
    move-object/from16 v26, v4

    .line 132
    .line 133
    move-object/from16 v24, v6

    .line 134
    .line 135
    move-object/from16 v25, v12

    .line 136
    .line 137
    :goto_3
    const/4 v1, 0x1

    .line 138
    goto/16 :goto_e

    .line 139
    .line 140
    :cond_4
    move-object v14, v15

    .line 141
    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 142
    .line 143
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 144
    .line 145
    .line 146
    move-result v21

    .line 147
    if-eqz v21, :cond_5

    .line 148
    .line 149
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    .line 150
    .line 151
    .line 152
    move-result v21

    .line 153
    if-nez v21, :cond_6

    .line 154
    .line 155
    :cond_5
    move-object/from16 v21, v1

    .line 156
    .line 157
    move-object/from16 v22, v2

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_6
    move-object/from16 v21, v1

    .line 161
    .line 162
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    .line 163
    .line 164
    move-object/from16 v22, v2

    .line 165
    .line 166
    iget-object v2, v11, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 167
    .line 168
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_7

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_7
    iget-object v1, v11, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 178
    .line 179
    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 180
    .line 181
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 182
    .line 183
    invoke-virtual {v2, v13}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    iget-object v10, v10, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 192
    .line 193
    iget-object v9, v14, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 194
    .line 195
    if-eqz v2, :cond_b

    .line 196
    .line 197
    invoke-virtual {v10, v9, v1}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 198
    .line 199
    .line 200
    move-result-object v23

    .line 201
    if-eqz v23, :cond_8

    .line 202
    .line 203
    move-object/from16 v24, v6

    .line 204
    .line 205
    const-string v6, "Package "

    .line 206
    .line 207
    move-object/from16 v25, v12

    .line 208
    .line 209
    const-string v12, " is an APK in APEX, but has permission allowlist on the system image. Please bundle the allowlist in the "

    .line 210
    .line 211
    move-object/from16 v26, v4

    .line 212
    .line 213
    const-string v4, " APEX instead."

    .line 214
    .line 215
    invoke-static {v6, v9, v12, v2, v4}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    const-string v6, "PermissionManager"

    .line 220
    .line 221
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_8
    move-object/from16 v26, v4

    .line 226
    .line 227
    move-object/from16 v24, v6

    .line 228
    .line 229
    move-object/from16 v25, v12

    .line 230
    .line 231
    :goto_4
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 232
    .line 233
    invoke-virtual {v4, v2}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    iget-object v4, v10, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexPrivilegedAppAllowlists:Landroid/util/ArrayMap;

    .line 238
    .line 239
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    check-cast v2, Landroid/util/ArrayMap;

    .line 244
    .line 245
    if-nez v2, :cond_9

    .line 246
    .line 247
    :goto_5
    const/4 v2, 0x0

    .line 248
    goto :goto_6

    .line 249
    :cond_9
    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    check-cast v2, Landroid/util/ArrayMap;

    .line 254
    .line 255
    if-nez v2, :cond_a

    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_a
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    check-cast v2, Ljava/lang/Boolean;

    .line 263
    .line 264
    :goto_6
    if-eqz v2, :cond_13

    .line 265
    .line 266
    :goto_7
    move-object/from16 v23, v2

    .line 267
    .line 268
    goto :goto_a

    .line 269
    :cond_b
    move-object/from16 v26, v4

    .line 270
    .line 271
    move-object/from16 v24, v6

    .line 272
    .line 273
    move-object/from16 v25, v12

    .line 274
    .line 275
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isVendor()Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-nez v2, :cond_11

    .line 280
    .line 281
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isOdm()Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-eqz v2, :cond_c

    .line 286
    .line 287
    goto :goto_9

    .line 288
    :cond_c
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isProduct()Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_e

    .line 293
    .line 294
    iget-object v2, v10, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 295
    .line 296
    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    check-cast v2, Landroid/util/ArrayMap;

    .line 301
    .line 302
    if-nez v2, :cond_d

    .line 303
    .line 304
    :goto_8
    const/16 v23, 0x0

    .line 305
    .line 306
    goto :goto_a

    .line 307
    :cond_d
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    check-cast v2, Ljava/lang/Boolean;

    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_e
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isSystemExt()Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-eqz v2, :cond_10

    .line 319
    .line 320
    iget-object v2, v10, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 321
    .line 322
    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    check-cast v2, Landroid/util/ArrayMap;

    .line 327
    .line 328
    if-nez v2, :cond_f

    .line 329
    .line 330
    goto :goto_8

    .line 331
    :cond_f
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    check-cast v2, Ljava/lang/Boolean;

    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_10
    invoke-virtual {v10, v9, v1}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 339
    .line 340
    .line 341
    move-result-object v23

    .line 342
    goto :goto_a

    .line 343
    :cond_11
    :goto_9
    iget-object v2, v10, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 344
    .line 345
    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    check-cast v2, Landroid/util/ArrayMap;

    .line 350
    .line 351
    if-nez v2, :cond_12

    .line 352
    .line 353
    goto :goto_8

    .line 354
    :cond_12
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    check-cast v2, Ljava/lang/Boolean;

    .line 359
    .line 360
    goto :goto_7

    .line 361
    :cond_13
    :goto_a
    if-eqz v23, :cond_14

    .line 362
    .line 363
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    goto/16 :goto_e

    .line 368
    .line 369
    :cond_14
    iget-object v2, v14, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 370
    .line 371
    iget-boolean v4, v2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 372
    .line 373
    if-eqz v4, :cond_15

    .line 374
    .line 375
    goto/16 :goto_3

    .line 376
    .line 377
    :cond_15
    iget-boolean v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemReady:Z

    .line 378
    .line 379
    if-nez v4, :cond_17

    .line 380
    .line 381
    iget-boolean v2, v2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->apkInUpdatedApex:Z

    .line 382
    .line 383
    if-nez v2, :cond_17

    .line 384
    .line 385
    const-string v2, "PermissionManager"

    .line 386
    .line 387
    const-string v4, "Privileged permission "

    .line 388
    .line 389
    const-string v6, " for package "

    .line 390
    .line 391
    const-string v9, " ("

    .line 392
    .line 393
    invoke-static {v4, v1, v6, v13, v9}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v6

    .line 401
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v6, ") not in privapp-permissions allowlist"

    .line 405
    .line 406
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .line 415
    .line 416
    sget-boolean v2, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    .line 417
    .line 418
    if-eqz v2, :cond_17

    .line 419
    .line 420
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 421
    .line 422
    monitor-enter v2

    .line 423
    :try_start_1
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    .line 424
    .line 425
    if-nez v4, :cond_16

    .line 426
    .line 427
    new-instance v4, Landroid/util/ArraySet;

    .line 428
    .line 429
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 430
    .line 431
    .line 432
    iput-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    .line 433
    .line 434
    goto :goto_b

    .line 435
    :catchall_0
    move-exception v0

    .line 436
    goto :goto_c

    .line 437
    :cond_16
    :goto_b
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    .line 438
    .line 439
    new-instance v6, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    const-string v9, " ("

    .line 448
    .line 449
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v9

    .line 456
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    const-string v9, "): "

    .line 460
    .line 461
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    monitor-exit v2

    .line 475
    goto :goto_d

    .line 476
    :goto_c
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 478
    .line 479
    throw v0

    .line 480
    :cond_17
    :goto_d
    sget-boolean v1, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    .line 481
    .line 482
    const/4 v2, 0x1

    .line 483
    xor-int/2addr v1, v2

    .line 484
    :goto_e
    if-eqz v1, :cond_1a

    .line 485
    .line 486
    if-nez v3, :cond_18

    .line 487
    .line 488
    new-instance v3, Landroid/util/ArraySet;

    .line 489
    .line 490
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 491
    .line 492
    .line 493
    :cond_18
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    goto :goto_f

    .line 497
    :cond_19
    move-object/from16 v21, v1

    .line 498
    .line 499
    move-object/from16 v22, v2

    .line 500
    .line 501
    move-object/from16 v26, v4

    .line 502
    .line 503
    move-object/from16 v24, v6

    .line 504
    .line 505
    move-object/from16 v25, v12

    .line 506
    .line 507
    :cond_1a
    :goto_f
    invoke-virtual {v11}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    if-eqz v1, :cond_1d

    .line 512
    .line 513
    invoke-virtual {v0, v8, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionBySignature(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    if-nez v1, :cond_1b

    .line 518
    .line 519
    invoke-virtual {v0, v8, v15, v11, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    if-eqz v1, :cond_1d

    .line 524
    .line 525
    :cond_1b
    if-nez v26, :cond_1c

    .line 526
    .line 527
    new-instance v4, Landroid/util/ArraySet;

    .line 528
    .line 529
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 530
    .line 531
    .line 532
    goto :goto_10

    .line 533
    :cond_1c
    move-object/from16 v4, v26

    .line 534
    .line 535
    :goto_10
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    goto :goto_11

    .line 539
    :cond_1d
    move-object/from16 v4, v26

    .line 540
    .line 541
    :goto_11
    invoke-virtual {v11}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    if-eqz v1, :cond_1f

    .line 546
    .line 547
    invoke-virtual {v0, v8, v15, v11, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    if-eqz v1, :cond_1f

    .line 552
    .line 553
    if-nez v25, :cond_1e

    .line 554
    .line 555
    new-instance v12, Landroid/util/ArraySet;

    .line 556
    .line 557
    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 558
    .line 559
    .line 560
    goto :goto_12

    .line 561
    :cond_1e
    move-object/from16 v12, v25

    .line 562
    .line 563
    :goto_12
    invoke-virtual {v12, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    goto :goto_13

    .line 567
    :cond_1f
    move-object/from16 v12, v25

    .line 568
    .line 569
    :goto_13
    move-object/from16 v9, p3

    .line 570
    .line 571
    move-object/from16 v10, p4

    .line 572
    .line 573
    move-object/from16 v1, v21

    .line 574
    .line 575
    move-object/from16 v2, v22

    .line 576
    .line 577
    move-object/from16 v6, v24

    .line 578
    .line 579
    const/4 v7, 0x0

    .line 580
    const/4 v14, 0x1

    .line 581
    goto/16 :goto_1

    .line 582
    .line 583
    :catchall_1
    move-exception v0

    .line 584
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 585
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 586
    .line 587
    throw v0

    .line 588
    :cond_20
    move-object/from16 v21, v1

    .line 589
    .line 590
    move-object/from16 v26, v4

    .line 591
    .line 592
    move-object/from16 v24, v6

    .line 593
    .line 594
    move-object/from16 v25, v12

    .line 595
    .line 596
    new-instance v9, Landroid/util/SparseBooleanArray;

    .line 597
    .line 598
    invoke-direct {v9}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 599
    .line 600
    .line 601
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 602
    .line 603
    if-eqz v1, :cond_22

    .line 604
    .line 605
    array-length v1, v6

    .line 606
    const/4 v2, 0x0

    .line 607
    :goto_14
    if-ge v2, v1, :cond_22

    .line 608
    .line 609
    aget v4, v6, v2

    .line 610
    .line 611
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 612
    .line 613
    iget-object v7, v7, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 614
    .line 615
    invoke-virtual {v7, v4}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    .line 616
    .line 617
    .line 618
    move-result v7

    .line 619
    if-eqz v7, :cond_21

    .line 620
    .line 621
    const/4 v7, 0x1

    .line 622
    invoke-virtual {v9, v4, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 623
    .line 624
    .line 625
    goto :goto_15

    .line 626
    :cond_21
    const/4 v7, 0x1

    .line 627
    :goto_15
    add-int/2addr v2, v7

    .line 628
    goto :goto_14

    .line 629
    :cond_22
    move-object v10, v15

    .line 630
    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 631
    .line 632
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    .line 633
    .line 634
    .line 635
    move-result v1

    .line 636
    if-nez v1, :cond_23

    .line 637
    .line 638
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    .line 643
    .line 644
    .line 645
    move-result-object v2

    .line 646
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 647
    .line 648
    .line 649
    move-result v4

    .line 650
    move-object v11, v1

    .line 651
    move-object v12, v2

    .line 652
    move v13, v4

    .line 653
    goto :goto_19

    .line 654
    :cond_23
    new-instance v1, Landroid/util/ArraySet;

    .line 655
    .line 656
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 657
    .line 658
    .line 659
    new-instance v2, Landroid/util/ArraySet;

    .line 660
    .line 661
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 662
    .line 663
    .line 664
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 665
    .line 666
    iget v7, v10, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 667
    .line 668
    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 669
    .line 670
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 671
    .line 672
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 673
    .line 674
    .line 675
    move-result-object v4

    .line 676
    invoke-interface {v4, v7}, Lcom/android/server/pm/Computer;->getSharedUserPackages(I)Landroid/util/ArraySet;

    .line 677
    .line 678
    .line 679
    move-result-object v4

    .line 680
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 681
    .line 682
    .line 683
    move-result v7

    .line 684
    const/16 v11, 0x2710

    .line 685
    .line 686
    const/4 v12, 0x0

    .line 687
    :goto_16
    if-ge v12, v7, :cond_25

    .line 688
    .line 689
    invoke-virtual {v4, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v13

    .line 693
    check-cast v13, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 694
    .line 695
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 696
    .line 697
    .line 698
    move-result-object v13

    .line 699
    if-nez v13, :cond_24

    .line 700
    .line 701
    :goto_17
    const/4 v13, 0x1

    .line 702
    goto :goto_18

    .line 703
    :cond_24
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 704
    .line 705
    .line 706
    move-result-object v14

    .line 707
    invoke-virtual {v1, v14}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 708
    .line 709
    .line 710
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    .line 711
    .line 712
    .line 713
    move-result-object v14

    .line 714
    invoke-virtual {v2, v14}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 715
    .line 716
    .line 717
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 718
    .line 719
    .line 720
    move-result v13

    .line 721
    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    .line 722
    .line 723
    .line 724
    move-result v11

    .line 725
    goto :goto_17

    .line 726
    :goto_18
    add-int/2addr v12, v13

    .line 727
    goto :goto_16

    .line 728
    :cond_25
    move-object v12, v2

    .line 729
    move v13, v11

    .line 730
    move-object v11, v1

    .line 731
    :goto_19
    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 732
    .line 733
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 734
    .line 735
    monitor-enter v14

    .line 736
    :try_start_3
    array-length v7, v6

    .line 737
    move-object/from16 v1, v21

    .line 738
    .line 739
    const/4 v2, 0x0

    .line 740
    const/4 v4, 0x0

    .line 741
    const/16 v21, 0x0

    .line 742
    .line 743
    :goto_1a
    if-ge v4, v7, :cond_7b

    .line 744
    .line 745
    move/from16 v22, v7

    .line 746
    .line 747
    aget v7, v6, v4

    .line 748
    .line 749
    move/from16 v23, v4

    .line 750
    .line 751
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    .line 752
    .line 753
    invoke-virtual {v4, v7}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    .line 754
    .line 755
    .line 756
    move-result-object v4

    .line 757
    move-object/from16 v24, v6

    .line 758
    .line 759
    move-object v6, v15

    .line 760
    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 761
    .line 762
    iget v6, v6, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 763
    .line 764
    invoke-virtual {v4, v6}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    .line 765
    .line 766
    .line 767
    move-result-object v6

    .line 768
    move/from16 v27, v2

    .line 769
    .line 770
    iget-boolean v2, v6, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    .line 771
    .line 772
    move-object/from16 v28, v12

    .line 773
    .line 774
    if-eqz v2, :cond_2f

    .line 775
    .line 776
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 777
    .line 778
    .line 779
    move-result-object v2

    .line 780
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 781
    .line 782
    .line 783
    move-result v29

    .line 784
    if-eqz v29, :cond_2e

    .line 785
    .line 786
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v29

    .line 790
    move-object/from16 v12, v29

    .line 791
    .line 792
    check-cast v12, Ljava/lang/String;

    .line 793
    .line 794
    move-object/from16 v29, v2

    .line 795
    .line 796
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 797
    .line 798
    invoke-virtual {v2, v12}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 799
    .line 800
    .line 801
    move-result-object v2

    .line 802
    if-nez v2, :cond_26

    .line 803
    .line 804
    move-object/from16 v2, v29

    .line 805
    .line 806
    goto :goto_1b

    .line 807
    :cond_26
    move-object/from16 v30, v5

    .line 808
    .line 809
    iget-object v5, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 810
    .line 811
    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 812
    .line 813
    move-object/from16 v31, v3

    .line 814
    .line 815
    const-string v3, "android"

    .line 816
    .line 817
    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    move-result v3

    .line 821
    if-eqz v3, :cond_2c

    .line 822
    .line 823
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 824
    .line 825
    .line 826
    move-result v3

    .line 827
    if-eqz v3, :cond_2c

    .line 828
    .line 829
    iget-object v3, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 830
    .line 831
    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    .line 832
    .line 833
    and-int/lit8 v5, v3, 0x2

    .line 834
    .line 835
    if-eqz v5, :cond_27

    .line 836
    .line 837
    const/4 v5, 0x1

    .line 838
    goto :goto_1c

    .line 839
    :cond_27
    const/4 v5, 0x0

    .line 840
    :goto_1c
    if-nez v5, :cond_2c

    .line 841
    .line 842
    and-int/lit8 v5, v3, 0xc

    .line 843
    .line 844
    if-eqz v5, :cond_28

    .line 845
    .line 846
    const/4 v5, 0x1

    .line 847
    goto :goto_1d

    .line 848
    :cond_28
    const/4 v5, 0x0

    .line 849
    :goto_1d
    if-nez v5, :cond_2a

    .line 850
    .line 851
    and-int/lit8 v3, v3, 0x10

    .line 852
    .line 853
    if-eqz v3, :cond_29

    .line 854
    .line 855
    const/4 v3, 0x1

    .line 856
    goto :goto_1e

    .line 857
    :cond_29
    const/4 v3, 0x0

    .line 858
    :goto_1e
    if-eqz v3, :cond_2b

    .line 859
    .line 860
    :cond_2a
    const/16 v3, 0x2000

    .line 861
    .line 862
    goto :goto_20

    .line 863
    :cond_2b
    :goto_1f
    const/16 v3, 0x17

    .line 864
    .line 865
    goto :goto_21

    .line 866
    :goto_20
    invoke-virtual {v6, v2, v3, v3}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 867
    .line 868
    .line 869
    goto :goto_1f

    .line 870
    :goto_21
    if-ge v13, v3, :cond_2c

    .line 871
    .line 872
    const/16 v3, 0x48

    .line 873
    .line 874
    invoke-virtual {v6, v2, v3, v3}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 875
    .line 876
    .line 877
    invoke-virtual {v6, v2}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 878
    .line 879
    .line 880
    goto :goto_22

    .line 881
    :catchall_2
    move-exception v0

    .line 882
    goto/16 :goto_54

    .line 883
    .line 884
    :cond_2c
    :goto_22
    sget-boolean v3, Lcom/samsung/android/rune/PMRune;->PM_NAL_GET_APP_LIST:Z

    .line 885
    .line 886
    if-eqz v3, :cond_2d

    .line 887
    .line 888
    iget-object v3, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 889
    .line 890
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 891
    .line 892
    const-string v5, "com.samsung.android.permissioncontroller"

    .line 893
    .line 894
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 895
    .line 896
    .line 897
    move-result v3

    .line 898
    if-eqz v3, :cond_2d

    .line 899
    .line 900
    const-string v3, "com.samsung.android.permission.GET_APP_LIST"

    .line 901
    .line 902
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 903
    .line 904
    .line 905
    move-result v3

    .line 906
    if-eqz v3, :cond_2d

    .line 907
    .line 908
    const/16 v3, 0x17

    .line 909
    .line 910
    if-ge v13, v3, :cond_2d

    .line 911
    .line 912
    const/16 v3, 0x48

    .line 913
    .line 914
    invoke-virtual {v6, v2, v3, v3}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 915
    .line 916
    .line 917
    invoke-virtual {v6, v2}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 918
    .line 919
    .line 920
    :cond_2d
    move-object/from16 v2, v29

    .line 921
    .line 922
    move-object/from16 v5, v30

    .line 923
    .line 924
    move-object/from16 v3, v31

    .line 925
    .line 926
    goto/16 :goto_1b

    .line 927
    .line 928
    :cond_2e
    move-object/from16 v31, v3

    .line 929
    .line 930
    move-object/from16 v30, v5

    .line 931
    .line 932
    const/4 v2, 0x0

    .line 933
    iput-boolean v2, v6, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    .line 934
    .line 935
    invoke-static {v1, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 936
    .line 937
    .line 938
    move-result-object v1

    .line 939
    goto :goto_23

    .line 940
    :cond_2f
    move-object/from16 v31, v3

    .line 941
    .line 942
    move-object/from16 v30, v5

    .line 943
    .line 944
    :goto_23
    if-eqz p2, :cond_33

    .line 945
    .line 946
    move-object v2, v15

    .line 947
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 948
    .line 949
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 950
    .line 951
    const/4 v12, 0x0

    .line 952
    invoke-virtual {v4, v2, v12}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    .line 956
    .line 957
    .line 958
    move-result v2

    .line 959
    if-nez v2, :cond_30

    .line 960
    .line 961
    new-instance v2, Lcom/android/server/pm/permission/UidPermissionState;

    .line 962
    .line 963
    invoke-direct {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;-><init>(Lcom/android/server/pm/permission/UidPermissionState;)V

    .line 964
    .line 965
    .line 966
    iput-boolean v12, v6, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    .line 967
    .line 968
    const/4 v5, 0x0

    .line 969
    iput-object v5, v6, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 970
    .line 971
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 972
    .line 973
    .line 974
    move-object v5, v2

    .line 975
    const/4 v12, -0x1

    .line 976
    goto :goto_26

    .line 977
    :cond_30
    const/4 v5, 0x0

    .line 978
    invoke-virtual {v6}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    .line 979
    .line 980
    .line 981
    move-result-object v2

    .line 982
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 983
    .line 984
    .line 985
    move-result v3

    .line 986
    const/16 v19, 0x1

    .line 987
    .line 988
    add-int/lit8 v3, v3, -0x1

    .line 989
    .line 990
    move/from16 v19, v12

    .line 991
    .line 992
    :goto_24
    if-ltz v3, :cond_32

    .line 993
    .line 994
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 995
    .line 996
    .line 997
    move-result-object v29

    .line 998
    check-cast v29, Lcom/android/server/pm/permission/PermissionState;

    .line 999
    .line 1000
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v5

    .line 1004
    invoke-interface {v11, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 1005
    .line 1006
    .line 1007
    move-result v5

    .line 1008
    if-nez v5, :cond_31

    .line 1009
    .line 1010
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 1011
    .line 1012
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v12

    .line 1016
    invoke-virtual {v5, v12}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v5

    .line 1020
    if-eqz v5, :cond_31

    .line 1021
    .line 1022
    iget-object v12, v5, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1023
    .line 1024
    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1025
    .line 1026
    invoke-virtual {v6, v12}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    .line 1027
    .line 1028
    .line 1029
    move-result v12

    .line 1030
    if-eqz v12, :cond_31

    .line 1031
    .line 1032
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 1033
    .line 1034
    .line 1035
    move-result v5

    .line 1036
    if-eqz v5, :cond_31

    .line 1037
    .line 1038
    const/4 v12, -0x1

    .line 1039
    const/16 v19, 0x1

    .line 1040
    .line 1041
    goto :goto_25

    .line 1042
    :cond_31
    const/4 v12, -0x1

    .line 1043
    :goto_25
    add-int/2addr v3, v12

    .line 1044
    const/4 v5, 0x0

    .line 1045
    const/4 v12, 0x0

    .line 1046
    goto :goto_24

    .line 1047
    :cond_32
    const/4 v12, -0x1

    .line 1048
    if-eqz v19, :cond_34

    .line 1049
    .line 1050
    invoke-static {v1, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 1051
    .line 1052
    .line 1053
    move-result-object v1

    .line 1054
    move-object v5, v6

    .line 1055
    const/16 v21, 0x1

    .line 1056
    .line 1057
    goto :goto_26

    .line 1058
    :cond_33
    const/4 v12, -0x1

    .line 1059
    :cond_34
    move-object v5, v6

    .line 1060
    :goto_26
    new-instance v3, Landroid/util/ArraySet;

    .line 1061
    .line 1062
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1063
    .line 1064
    .line 1065
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 1069
    .line 1070
    .line 1071
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v2

    .line 1075
    const/16 v17, 0x0

    .line 1076
    .line 1077
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1078
    .line 1079
    .line 1080
    move-result v19

    .line 1081
    if-eqz v19, :cond_74

    .line 1082
    .line 1083
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v19

    .line 1087
    move-object/from16 v12, v19

    .line 1088
    .line 1089
    check-cast v12, Ljava/lang/String;

    .line 1090
    .line 1091
    move-object/from16 v19, v2

    .line 1092
    .line 1093
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 1094
    .line 1095
    invoke-virtual {v2, v12}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v2

    .line 1099
    move-object/from16 v32, v11

    .line 1100
    .line 1101
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 1102
    .line 1103
    .line 1104
    move-result v11

    .line 1105
    move/from16 v33, v13

    .line 1106
    .line 1107
    const/16 v13, 0x17

    .line 1108
    .line 1109
    if-lt v11, v13, :cond_35

    .line 1110
    .line 1111
    const/4 v11, 0x1

    .line 1112
    goto :goto_28

    .line 1113
    :cond_35
    const/4 v11, 0x0

    .line 1114
    :goto_28
    if-nez v2, :cond_37

    .line 1115
    .line 1116
    move-object/from16 v13, p3

    .line 1117
    .line 1118
    if-eqz v13, :cond_36

    .line 1119
    .line 1120
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v2

    .line 1124
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1125
    .line 1126
    .line 1127
    :cond_36
    move-object/from16 v35, v1

    .line 1128
    .line 1129
    move-object/from16 v34, v3

    .line 1130
    .line 1131
    const/16 v1, 0x2000

    .line 1132
    .line 1133
    goto :goto_2a

    .line 1134
    :cond_37
    move-object/from16 v13, p3

    .line 1135
    .line 1136
    invoke-virtual {v5, v12}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    .line 1137
    .line 1138
    .line 1139
    move-result v34

    .line 1140
    if-nez v34, :cond_38

    .line 1141
    .line 1142
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v13

    .line 1146
    invoke-interface {v13, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1147
    .line 1148
    .line 1149
    move-result v13

    .line 1150
    if-eqz v13, :cond_38

    .line 1151
    .line 1152
    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1153
    .line 1154
    .line 1155
    :cond_38
    iget-object v13, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1156
    .line 1157
    move-object/from16 v34, v3

    .line 1158
    .line 1159
    iget v3, v13, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 1160
    .line 1161
    move-object/from16 v35, v1

    .line 1162
    .line 1163
    move-object/from16 v20, v12

    .line 1164
    .line 1165
    const/16 v1, 0x2000

    .line 1166
    .line 1167
    and-int/lit16 v12, v3, 0x2000

    .line 1168
    .line 1169
    if-eqz v12, :cond_39

    .line 1170
    .line 1171
    const/4 v12, 0x1

    .line 1172
    goto :goto_29

    .line 1173
    :cond_39
    const/4 v12, 0x0

    .line 1174
    :goto_29
    if-eqz v12, :cond_3a

    .line 1175
    .line 1176
    if-nez v11, :cond_3a

    .line 1177
    .line 1178
    :goto_2a
    move-object/from16 v2, v19

    .line 1179
    .line 1180
    move-object/from16 v11, v32

    .line 1181
    .line 1182
    move/from16 v13, v33

    .line 1183
    .line 1184
    move-object/from16 v3, v34

    .line 1185
    .line 1186
    move-object/from16 v1, v35

    .line 1187
    .line 1188
    :goto_2b
    const/4 v12, -0x1

    .line 1189
    goto :goto_27

    .line 1190
    :cond_3a
    iget-object v12, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1191
    .line 1192
    and-int/lit8 v3, v3, 0x40

    .line 1193
    .line 1194
    if-eqz v3, :cond_3b

    .line 1195
    .line 1196
    const/4 v3, 0x1

    .line 1197
    goto :goto_2c

    .line 1198
    :cond_3b
    const/4 v3, 0x0

    .line 1199
    :goto_2c
    if-eqz v3, :cond_3d

    .line 1200
    .line 1201
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 1202
    .line 1203
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v13

    .line 1207
    iget-object v1, v3, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    .line 1208
    .line 1209
    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v1

    .line 1213
    check-cast v1, Landroid/util/ArraySet;

    .line 1214
    .line 1215
    if-nez v1, :cond_3c

    .line 1216
    .line 1217
    new-instance v1, Landroid/util/ArraySet;

    .line 1218
    .line 1219
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1220
    .line 1221
    .line 1222
    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    .line 1223
    .line 1224
    invoke-virtual {v3, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    .line 1226
    .line 1227
    :cond_3c
    invoke-virtual {v1, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1228
    .line 1229
    .line 1230
    :cond_3d
    iget-object v1, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1231
    .line 1232
    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 1233
    .line 1234
    and-int/lit8 v1, v1, 0xf

    .line 1235
    .line 1236
    if-nez v1, :cond_3e

    .line 1237
    .line 1238
    const/4 v1, 0x1

    .line 1239
    goto :goto_2d

    .line 1240
    :cond_3e
    const/4 v1, 0x0

    .line 1241
    :goto_2d
    if-eqz v1, :cond_3f

    .line 1242
    .line 1243
    invoke-virtual {v5, v12}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    .line 1244
    .line 1245
    .line 1246
    move-result v1

    .line 1247
    if-nez v1, :cond_3f

    .line 1248
    .line 1249
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 1250
    .line 1251
    .line 1252
    move-result v1

    .line 1253
    if-nez v1, :cond_3f

    .line 1254
    .line 1255
    move-object v1, v15

    .line 1256
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1257
    .line 1258
    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 1259
    .line 1260
    iget-object v3, v4, Lcom/android/server/pm/permission/UserPermissionState;->mInstallPermissionsFixed:Landroid/util/ArraySet;

    .line 1261
    .line 1262
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1263
    .line 1264
    .line 1265
    move-result v1

    .line 1266
    if-eqz v1, :cond_3f

    .line 1267
    .line 1268
    invoke-static {v8, v12}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isCompatPlatformPermissionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    .line 1269
    .line 1270
    .line 1271
    move-result v1

    .line 1272
    if-nez v1, :cond_3f

    .line 1273
    .line 1274
    const/4 v1, 0x0

    .line 1275
    goto :goto_2e

    .line 1276
    :cond_3f
    const/4 v1, 0x1

    .line 1277
    :goto_2e
    iget-object v3, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1278
    .line 1279
    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 1280
    .line 1281
    and-int/lit8 v3, v3, 0xf

    .line 1282
    .line 1283
    if-nez v3, :cond_40

    .line 1284
    .line 1285
    const/4 v3, 0x1

    .line 1286
    goto :goto_2f

    .line 1287
    :cond_40
    const/4 v3, 0x0

    .line 1288
    :goto_2f
    if-nez v3, :cond_41

    .line 1289
    .line 1290
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    .line 1291
    .line 1292
    .line 1293
    move-result v3

    .line 1294
    if-nez v3, :cond_41

    .line 1295
    .line 1296
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    .line 1297
    .line 1298
    .line 1299
    move-result v3

    .line 1300
    if-eqz v3, :cond_42

    .line 1301
    .line 1302
    :cond_41
    move-object/from16 v39, v9

    .line 1303
    .line 1304
    move-object/from16 v42, v10

    .line 1305
    .line 1306
    move-object/from16 v8, v20

    .line 1307
    .line 1308
    move-object/from16 v3, v35

    .line 1309
    .line 1310
    const/16 v0, 0x48

    .line 1311
    .line 1312
    goto/16 :goto_42

    .line 1313
    .line 1314
    :cond_42
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 1315
    .line 1316
    .line 1317
    move-result v1

    .line 1318
    if-eqz v1, :cond_60

    .line 1319
    .line 1320
    iget-object v1, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1321
    .line 1322
    iget v1, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 1323
    .line 1324
    and-int/lit8 v3, v1, 0x4

    .line 1325
    .line 1326
    if-eqz v3, :cond_43

    .line 1327
    .line 1328
    const/4 v3, 0x1

    .line 1329
    goto :goto_30

    .line 1330
    :cond_43
    const/4 v3, 0x0

    .line 1331
    :goto_30
    and-int/lit8 v1, v1, 0x8

    .line 1332
    .line 1333
    if-eqz v1, :cond_44

    .line 1334
    .line 1335
    const/4 v1, 0x1

    .line 1336
    goto :goto_31

    .line 1337
    :cond_44
    const/4 v1, 0x0

    .line 1338
    :goto_31
    invoke-virtual {v9, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 1339
    .line 1340
    .line 1341
    move-result v36

    .line 1342
    invoke-virtual {v5, v12}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v37

    .line 1346
    if-eqz v37, :cond_45

    .line 1347
    .line 1348
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    .line 1349
    .line 1350
    .line 1351
    move-result v38

    .line 1352
    move/from16 v13, v38

    .line 1353
    .line 1354
    goto :goto_32

    .line 1355
    :cond_45
    const/4 v13, 0x0

    .line 1356
    :goto_32
    iget-object v8, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1357
    .line 1358
    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1359
    .line 1360
    invoke-virtual {v5, v8}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    .line 1361
    .line 1362
    .line 1363
    move-result v8

    .line 1364
    and-int/lit16 v8, v8, 0x3800

    .line 1365
    .line 1366
    move-object/from16 v39, v9

    .line 1367
    .line 1368
    if-eqz v8, :cond_46

    .line 1369
    .line 1370
    const/4 v8, 0x1

    .line 1371
    goto :goto_33

    .line 1372
    :cond_46
    const/4 v8, 0x0

    .line 1373
    :goto_33
    iget-object v9, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1374
    .line 1375
    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1376
    .line 1377
    invoke-virtual {v5, v9}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    .line 1378
    .line 1379
    .line 1380
    move-result v9

    .line 1381
    and-int/lit16 v9, v9, 0x4000

    .line 1382
    .line 1383
    if-eqz v9, :cond_47

    .line 1384
    .line 1385
    const/4 v9, 0x1

    .line 1386
    goto :goto_34

    .line 1387
    :cond_47
    const/4 v9, 0x0

    .line 1388
    :goto_34
    if-eqz v11, :cond_53

    .line 1389
    .line 1390
    if-eqz v36, :cond_49

    .line 1391
    .line 1392
    if-eqz v3, :cond_49

    .line 1393
    .line 1394
    if-nez v8, :cond_4a

    .line 1395
    .line 1396
    if-eqz v37, :cond_48

    .line 1397
    .line 1398
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    .line 1399
    .line 1400
    .line 1401
    move-result v40

    .line 1402
    if-eqz v40, :cond_48

    .line 1403
    .line 1404
    invoke-virtual {v6, v2}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 1405
    .line 1406
    .line 1407
    move-result v40

    .line 1408
    if-eqz v40, :cond_48

    .line 1409
    .line 1410
    const/16 v40, 0x1

    .line 1411
    .line 1412
    goto :goto_35

    .line 1413
    :cond_48
    const/16 v40, 0x0

    .line 1414
    .line 1415
    :goto_35
    if-nez v9, :cond_4b

    .line 1416
    .line 1417
    :goto_36
    or-int/lit16 v13, v13, 0x4000

    .line 1418
    .line 1419
    const/16 v40, 0x1

    .line 1420
    .line 1421
    goto :goto_37

    .line 1422
    :cond_49
    if-eqz v36, :cond_4a

    .line 1423
    .line 1424
    if-eqz v1, :cond_4a

    .line 1425
    .line 1426
    if-nez v8, :cond_4a

    .line 1427
    .line 1428
    if-nez v9, :cond_4a

    .line 1429
    .line 1430
    goto :goto_36

    .line 1431
    :cond_4a
    const/16 v40, 0x0

    .line 1432
    .line 1433
    :cond_4b
    :goto_37
    sget-object v41, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    .line 1434
    .line 1435
    move-object/from16 v42, v10

    .line 1436
    .line 1437
    move-object/from16 v10, v41

    .line 1438
    .line 1439
    check-cast v10, Ljava/util/ArrayList;

    .line 1440
    .line 1441
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1442
    .line 1443
    .line 1444
    move-result v10

    .line 1445
    if-nez v10, :cond_4c

    .line 1446
    .line 1447
    and-int/lit8 v10, v13, 0x40

    .line 1448
    .line 1449
    if-eqz v10, :cond_4c

    .line 1450
    .line 1451
    and-int/lit8 v13, v13, -0x41

    .line 1452
    .line 1453
    const/16 v40, 0x1

    .line 1454
    .line 1455
    :cond_4c
    and-int/lit8 v10, v13, 0x8

    .line 1456
    .line 1457
    if-eqz v10, :cond_4d

    .line 1458
    .line 1459
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 1460
    .line 1461
    .line 1462
    move-result v10

    .line 1463
    move-object/from16 v12, v20

    .line 1464
    .line 1465
    invoke-virtual {v0, v10, v12}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionSplitFromNonRuntime(ILjava/lang/String;)Z

    .line 1466
    .line 1467
    .line 1468
    move-result v10

    .line 1469
    if-nez v10, :cond_4e

    .line 1470
    .line 1471
    and-int/lit8 v13, v13, -0x9

    .line 1472
    .line 1473
    :goto_38
    const/16 v40, 0x1

    .line 1474
    .line 1475
    goto :goto_39

    .line 1476
    :cond_4d
    move-object/from16 v12, v20

    .line 1477
    .line 1478
    :cond_4e
    if-eqz v36, :cond_4f

    .line 1479
    .line 1480
    if-eqz v3, :cond_4f

    .line 1481
    .line 1482
    if-eqz v8, :cond_50

    .line 1483
    .line 1484
    :cond_4f
    if-eqz v37, :cond_50

    .line 1485
    .line 1486
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    .line 1487
    .line 1488
    .line 1489
    move-result v10

    .line 1490
    if-eqz v10, :cond_50

    .line 1491
    .line 1492
    invoke-virtual {v6, v2}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 1493
    .line 1494
    .line 1495
    move-result v10

    .line 1496
    if-nez v10, :cond_50

    .line 1497
    .line 1498
    goto :goto_38

    .line 1499
    :cond_50
    :goto_39
    iget-boolean v10, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mIsLeanback:Z

    .line 1500
    .line 1501
    if-eqz v10, :cond_52

    .line 1502
    .line 1503
    move-object/from16 v10, v41

    .line 1504
    .line 1505
    check-cast v10, Ljava/util/ArrayList;

    .line 1506
    .line 1507
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1508
    .line 1509
    .line 1510
    move-result v10

    .line 1511
    if-eqz v10, :cond_52

    .line 1512
    .line 1513
    invoke-virtual {v6, v2}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 1514
    .line 1515
    .line 1516
    if-eqz v37, :cond_51

    .line 1517
    .line 1518
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    .line 1519
    .line 1520
    .line 1521
    move-result v10

    .line 1522
    if-nez v10, :cond_52

    .line 1523
    .line 1524
    :cond_51
    invoke-virtual {v6, v2}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 1525
    .line 1526
    .line 1527
    move-result v10

    .line 1528
    if-eqz v10, :cond_52

    .line 1529
    .line 1530
    const/16 v0, 0x48

    .line 1531
    .line 1532
    :goto_3a
    const/4 v10, 0x1

    .line 1533
    goto/16 :goto_3e

    .line 1534
    .line 1535
    :cond_52
    move/from16 v10, v40

    .line 1536
    .line 1537
    const/16 v0, 0x48

    .line 1538
    .line 1539
    goto/16 :goto_3e

    .line 1540
    .line 1541
    :cond_53
    move-object/from16 v42, v10

    .line 1542
    .line 1543
    if-nez v37, :cond_57

    .line 1544
    .line 1545
    const-string v10, "android"

    .line 1546
    .line 1547
    iget-object v12, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1548
    .line 1549
    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1550
    .line 1551
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1552
    .line 1553
    .line 1554
    move-result v10

    .line 1555
    if-eqz v10, :cond_55

    .line 1556
    .line 1557
    iget-object v10, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1558
    .line 1559
    iget v10, v10, Landroid/content/pm/PermissionInfo;->flags:I

    .line 1560
    .line 1561
    and-int/lit8 v10, v10, 0x2

    .line 1562
    .line 1563
    if-eqz v10, :cond_54

    .line 1564
    .line 1565
    const/4 v10, 0x1

    .line 1566
    goto :goto_3b

    .line 1567
    :cond_54
    const/4 v10, 0x0

    .line 1568
    :goto_3b
    if-nez v10, :cond_55

    .line 1569
    .line 1570
    const/16 v10, 0x48

    .line 1571
    .line 1572
    or-int/2addr v13, v10

    .line 1573
    const/4 v10, 0x1

    .line 1574
    goto :goto_3c

    .line 1575
    :cond_55
    const/4 v10, 0x0

    .line 1576
    :goto_3c
    sget-boolean v12, Lcom/samsung/android/rune/PMRune;->PM_NAL_GET_APP_LIST:Z

    .line 1577
    .line 1578
    if-eqz v12, :cond_56

    .line 1579
    .line 1580
    const-string v12, "com.samsung.android.permissioncontroller"

    .line 1581
    .line 1582
    iget-object v0, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1583
    .line 1584
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1585
    .line 1586
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1587
    .line 1588
    .line 1589
    move-result v0

    .line 1590
    if-eqz v0, :cond_56

    .line 1591
    .line 1592
    const-string v0, "com.samsung.android.permission.GET_APP_LIST"

    .line 1593
    .line 1594
    iget-object v12, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1595
    .line 1596
    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1597
    .line 1598
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1599
    .line 1600
    .line 1601
    move-result v0

    .line 1602
    if-eqz v0, :cond_56

    .line 1603
    .line 1604
    const/16 v0, 0x48

    .line 1605
    .line 1606
    or-int/2addr v13, v0

    .line 1607
    const/4 v10, 0x1

    .line 1608
    goto :goto_3d

    .line 1609
    :cond_56
    const/16 v0, 0x48

    .line 1610
    .line 1611
    goto :goto_3d

    .line 1612
    :cond_57
    const/16 v0, 0x48

    .line 1613
    .line 1614
    const/4 v10, 0x0

    .line 1615
    :goto_3d
    iget-object v12, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1616
    .line 1617
    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1618
    .line 1619
    invoke-virtual {v6, v12}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    .line 1620
    .line 1621
    .line 1622
    move-result v12

    .line 1623
    if-nez v12, :cond_58

    .line 1624
    .line 1625
    invoke-virtual {v6, v2}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 1626
    .line 1627
    .line 1628
    move-result v12

    .line 1629
    if-eqz v12, :cond_58

    .line 1630
    .line 1631
    const/4 v10, 0x1

    .line 1632
    :cond_58
    if-eqz v36, :cond_5a

    .line 1633
    .line 1634
    if-nez v3, :cond_59

    .line 1635
    .line 1636
    if-eqz v1, :cond_5a

    .line 1637
    .line 1638
    :cond_59
    if-nez v8, :cond_5a

    .line 1639
    .line 1640
    if-nez v9, :cond_5a

    .line 1641
    .line 1642
    or-int/lit16 v13, v13, 0x4000

    .line 1643
    .line 1644
    goto :goto_3a

    .line 1645
    :cond_5a
    :goto_3e
    if-eqz v36, :cond_5e

    .line 1646
    .line 1647
    if-nez v3, :cond_5b

    .line 1648
    .line 1649
    if-eqz v1, :cond_5c

    .line 1650
    .line 1651
    :cond_5b
    if-eqz v8, :cond_5e

    .line 1652
    .line 1653
    :cond_5c
    if-eqz v9, :cond_5e

    .line 1654
    .line 1655
    and-int/lit16 v1, v13, -0x4001

    .line 1656
    .line 1657
    if-nez v11, :cond_5d

    .line 1658
    .line 1659
    or-int/lit8 v1, v1, 0x40

    .line 1660
    .line 1661
    :cond_5d
    move v13, v1

    .line 1662
    const/4 v10, 0x1

    .line 1663
    :cond_5e
    if-eqz v10, :cond_5f

    .line 1664
    .line 1665
    move-object/from16 v3, v35

    .line 1666
    .line 1667
    invoke-static {v3, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 1668
    .line 1669
    .line 1670
    move-result-object v1

    .line 1671
    :goto_3f
    const v3, 0x3fbff

    .line 1672
    .line 1673
    .line 1674
    goto :goto_40

    .line 1675
    :cond_5f
    move-object/from16 v3, v35

    .line 1676
    .line 1677
    move-object v1, v3

    .line 1678
    goto :goto_3f

    .line 1679
    :goto_40
    invoke-virtual {v6, v2, v3, v13}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 1680
    .line 1681
    .line 1682
    :goto_41
    move-object/from16 v13, v25

    .line 1683
    .line 1684
    move-object/from16 v10, v26

    .line 1685
    .line 1686
    move-object/from16 v11, v30

    .line 1687
    .line 1688
    move-object/from16 v9, v31

    .line 1689
    .line 1690
    goto/16 :goto_50

    .line 1691
    .line 1692
    :cond_60
    move-object/from16 v39, v9

    .line 1693
    .line 1694
    move-object/from16 v42, v10

    .line 1695
    .line 1696
    move-object/from16 v3, v35

    .line 1697
    .line 1698
    const/16 v0, 0x48

    .line 1699
    .line 1700
    const-string v1, "PermissionManagerServiceImpl"

    .line 1701
    .line 1702
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1703
    .line 1704
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1705
    .line 1706
    .line 1707
    const-string v9, "Unknown permission protection "

    .line 1708
    .line 1709
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    .line 1711
    .line 1712
    iget-object v9, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1713
    .line 1714
    iget v9, v9, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 1715
    .line 1716
    and-int/lit8 v9, v9, 0xf

    .line 1717
    .line 1718
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1719
    .line 1720
    .line 1721
    const-string v9, " for permission "

    .line 1722
    .line 1723
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    .line 1725
    .line 1726
    iget-object v2, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1727
    .line 1728
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1729
    .line 1730
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    .line 1732
    .line 1733
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v2

    .line 1737
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    .line 1739
    .line 1740
    move-object v1, v3

    .line 1741
    goto :goto_41

    .line 1742
    :goto_42
    iget-object v9, v2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1743
    .line 1744
    iget v9, v9, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 1745
    .line 1746
    and-int/lit8 v9, v9, 0xf

    .line 1747
    .line 1748
    if-nez v9, :cond_61

    .line 1749
    .line 1750
    const/4 v9, 0x1

    .line 1751
    goto :goto_43

    .line 1752
    :cond_61
    const/4 v9, 0x0

    .line 1753
    :goto_43
    if-eqz v9, :cond_63

    .line 1754
    .line 1755
    if-nez v1, :cond_62

    .line 1756
    .line 1757
    goto :goto_44

    .line 1758
    :cond_62
    move-object/from16 v13, v25

    .line 1759
    .line 1760
    move-object/from16 v10, v26

    .line 1761
    .line 1762
    move-object/from16 v11, v30

    .line 1763
    .line 1764
    move-object/from16 v9, v31

    .line 1765
    .line 1766
    goto/16 :goto_4a

    .line 1767
    .line 1768
    :cond_63
    :goto_44
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    .line 1769
    .line 1770
    .line 1771
    move-result v1

    .line 1772
    if-eqz v1, :cond_6a

    .line 1773
    .line 1774
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    .line 1775
    .line 1776
    .line 1777
    move-result v1

    .line 1778
    if-eqz v1, :cond_65

    .line 1779
    .line 1780
    move-object/from16 v9, v31

    .line 1781
    .line 1782
    invoke-static {v9, v8}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 1783
    .line 1784
    .line 1785
    move-result v1

    .line 1786
    move-object/from16 v10, v26

    .line 1787
    .line 1788
    if-eqz v1, :cond_64

    .line 1789
    .line 1790
    goto :goto_45

    .line 1791
    :cond_64
    move-object/from16 v11, v30

    .line 1792
    .line 1793
    goto :goto_48

    .line 1794
    :cond_65
    move-object/from16 v9, v31

    .line 1795
    .line 1796
    move-object/from16 v10, v26

    .line 1797
    .line 1798
    :goto_45
    invoke-static {v10, v8}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 1799
    .line 1800
    .line 1801
    move-result v1

    .line 1802
    if-nez v1, :cond_69

    .line 1803
    .line 1804
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    .line 1805
    .line 1806
    .line 1807
    move-result v1

    .line 1808
    if-eqz v1, :cond_66

    .line 1809
    .line 1810
    move-object/from16 v11, v30

    .line 1811
    .line 1812
    invoke-static {v11, v8}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 1813
    .line 1814
    .line 1815
    move-result v1

    .line 1816
    if-nez v1, :cond_67

    .line 1817
    .line 1818
    goto :goto_46

    .line 1819
    :cond_66
    move-object/from16 v11, v30

    .line 1820
    .line 1821
    :goto_46
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    .line 1822
    .line 1823
    .line 1824
    move-result v1

    .line 1825
    if-nez v1, :cond_67

    .line 1826
    .line 1827
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    .line 1828
    .line 1829
    .line 1830
    move-result v1

    .line 1831
    if-eqz v1, :cond_6b

    .line 1832
    .line 1833
    :cond_67
    invoke-virtual {v5, v8}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    .line 1834
    .line 1835
    .line 1836
    move-result v1

    .line 1837
    if-nez v1, :cond_68

    .line 1838
    .line 1839
    goto :goto_48

    .line 1840
    :cond_68
    :goto_47
    move-object/from16 v13, v25

    .line 1841
    .line 1842
    goto :goto_4a

    .line 1843
    :cond_69
    move-object/from16 v11, v30

    .line 1844
    .line 1845
    goto :goto_47

    .line 1846
    :cond_6a
    move-object/from16 v10, v26

    .line 1847
    .line 1848
    move-object/from16 v11, v30

    .line 1849
    .line 1850
    move-object/from16 v9, v31

    .line 1851
    .line 1852
    :cond_6b
    :goto_48
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    .line 1853
    .line 1854
    .line 1855
    move-result v1

    .line 1856
    if-eqz v1, :cond_6d

    .line 1857
    .line 1858
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    .line 1859
    .line 1860
    .line 1861
    move-result v1

    .line 1862
    if-eqz v1, :cond_6c

    .line 1863
    .line 1864
    invoke-static {v9, v8}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 1865
    .line 1866
    .line 1867
    move-result v1

    .line 1868
    if-eqz v1, :cond_6d

    .line 1869
    .line 1870
    :cond_6c
    move-object/from16 v13, v25

    .line 1871
    .line 1872
    goto :goto_49

    .line 1873
    :cond_6d
    move-object/from16 v13, v25

    .line 1874
    .line 1875
    goto :goto_4c

    .line 1876
    :goto_49
    invoke-static {v13, v8}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 1877
    .line 1878
    .line 1879
    move-result v1

    .line 1880
    if-nez v1, :cond_70

    .line 1881
    .line 1882
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    .line 1883
    .line 1884
    .line 1885
    move-result v1

    .line 1886
    if-eqz v1, :cond_6e

    .line 1887
    .line 1888
    invoke-static {v11, v8}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 1889
    .line 1890
    .line 1891
    move-result v1

    .line 1892
    if-nez v1, :cond_6f

    .line 1893
    .line 1894
    :cond_6e
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    .line 1895
    .line 1896
    .line 1897
    move-result v1

    .line 1898
    if-nez v1, :cond_6f

    .line 1899
    .line 1900
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    .line 1901
    .line 1902
    .line 1903
    move-result v1

    .line 1904
    if-eqz v1, :cond_71

    .line 1905
    .line 1906
    :cond_6f
    invoke-virtual {v5, v8}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    .line 1907
    .line 1908
    .line 1909
    move-result v1

    .line 1910
    if-eqz v1, :cond_71

    .line 1911
    .line 1912
    :cond_70
    :goto_4a
    invoke-virtual {v6, v2}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 1913
    .line 1914
    .line 1915
    move-result v1

    .line 1916
    if-eqz v1, :cond_72

    .line 1917
    .line 1918
    :goto_4b
    const/16 v17, 0x1

    .line 1919
    .line 1920
    goto :goto_4d

    .line 1921
    :cond_71
    :goto_4c
    invoke-virtual {v6, v2}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 1922
    .line 1923
    .line 1924
    move-result v1

    .line 1925
    if-eqz v1, :cond_72

    .line 1926
    .line 1927
    goto :goto_4b

    .line 1928
    :cond_72
    :goto_4d
    invoke-virtual {v5, v12}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    .line 1929
    .line 1930
    .line 1931
    move-result-object v1

    .line 1932
    if-eqz v1, :cond_73

    .line 1933
    .line 1934
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    .line 1935
    .line 1936
    .line 1937
    move-result v1

    .line 1938
    :goto_4e
    const v8, 0x3fbff

    .line 1939
    .line 1940
    .line 1941
    goto :goto_4f

    .line 1942
    :cond_73
    const/4 v1, 0x0

    .line 1943
    goto :goto_4e

    .line 1944
    :goto_4f
    invoke-virtual {v6, v2, v8, v1}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 1945
    .line 1946
    .line 1947
    move-object v1, v3

    .line 1948
    :goto_50
    move-object/from16 v0, p0

    .line 1949
    .line 1950
    move-object/from16 v8, p1

    .line 1951
    .line 1952
    move-object/from16 v31, v9

    .line 1953
    .line 1954
    move-object/from16 v26, v10

    .line 1955
    .line 1956
    move-object/from16 v30, v11

    .line 1957
    .line 1958
    move-object/from16 v25, v13

    .line 1959
    .line 1960
    move-object/from16 v2, v19

    .line 1961
    .line 1962
    move-object/from16 v11, v32

    .line 1963
    .line 1964
    move/from16 v13, v33

    .line 1965
    .line 1966
    move-object/from16 v3, v34

    .line 1967
    .line 1968
    move-object/from16 v9, v39

    .line 1969
    .line 1970
    move-object/from16 v10, v42

    .line 1971
    .line 1972
    goto/16 :goto_2b

    .line 1973
    .line 1974
    :cond_74
    move-object/from16 v34, v3

    .line 1975
    .line 1976
    move-object/from16 v39, v9

    .line 1977
    .line 1978
    move-object/from16 v42, v10

    .line 1979
    .line 1980
    move-object/from16 v32, v11

    .line 1981
    .line 1982
    move/from16 v33, v13

    .line 1983
    .line 1984
    move-object/from16 v13, v25

    .line 1985
    .line 1986
    move-object/from16 v10, v26

    .line 1987
    .line 1988
    move-object/from16 v11, v30

    .line 1989
    .line 1990
    move-object/from16 v9, v31

    .line 1991
    .line 1992
    const/16 v0, 0x48

    .line 1993
    .line 1994
    move-object v3, v1

    .line 1995
    if-nez v17, :cond_75

    .line 1996
    .line 1997
    if-eqz p2, :cond_76

    .line 1998
    .line 1999
    :cond_75
    move-object v1, v15

    .line 2000
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 2001
    .line 2002
    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 2003
    .line 2004
    iget-object v2, v4, Lcom/android/server/pm/permission/UserPermissionState;->mInstallPermissionsFixed:Landroid/util/ArraySet;

    .line 2005
    .line 2006
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 2007
    .line 2008
    .line 2009
    move-result v1

    .line 2010
    if-nez v1, :cond_76

    .line 2011
    .line 2012
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 2013
    .line 2014
    .line 2015
    move-result v1

    .line 2016
    if-eqz v1, :cond_77

    .line 2017
    .line 2018
    :cond_76
    move-object v1, v15

    .line 2019
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 2020
    .line 2021
    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 2022
    .line 2023
    iget-boolean v1, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 2024
    .line 2025
    if-eqz v1, :cond_78

    .line 2026
    .line 2027
    :cond_77
    move-object v1, v15

    .line 2028
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 2029
    .line 2030
    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 2031
    .line 2032
    const/4 v2, 0x1

    .line 2033
    invoke-virtual {v4, v1, v2}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 2034
    .line 2035
    .line 2036
    :cond_78
    if-eqz v17, :cond_7a

    .line 2037
    .line 2038
    if-eqz p3, :cond_79

    .line 2039
    .line 2040
    if-eqz p2, :cond_79

    .line 2041
    .line 2042
    invoke-static {v3, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 2043
    .line 2044
    .line 2045
    move-result-object v1

    .line 2046
    move-object v8, v1

    .line 2047
    :goto_51
    const/16 v27, 0x1

    .line 2048
    .line 2049
    goto :goto_52

    .line 2050
    :cond_79
    move-object v8, v3

    .line 2051
    goto :goto_51

    .line 2052
    :cond_7a
    move-object v8, v3

    .line 2053
    :goto_52
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 2054
    .line 2055
    .line 2056
    const/16 v12, 0x2000

    .line 2057
    .line 2058
    move-object/from16 v1, p0

    .line 2059
    .line 2060
    move-object v2, v6

    .line 2061
    move-object/from16 v17, v34

    .line 2062
    .line 2063
    move-object/from16 v3, v28

    .line 2064
    .line 2065
    move-object/from16 v18, v10

    .line 2066
    .line 2067
    move/from16 v19, v23

    .line 2068
    .line 2069
    const/4 v10, 0x0

    .line 2070
    move/from16 v4, v33

    .line 2071
    .line 2072
    move-object/from16 v20, v5

    .line 2073
    .line 2074
    move v5, v7

    .line 2075
    move-object/from16 v23, v24

    .line 2076
    .line 2077
    move-object/from16 v24, v6

    .line 2078
    .line 2079
    move-object v6, v8

    .line 2080
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;II[I)[I

    .line 2081
    .line 2082
    .line 2083
    move-result-object v8

    .line 2084
    move-object/from16 v1, p0

    .line 2085
    .line 2086
    move-object/from16 v2, v20

    .line 2087
    .line 2088
    move-object/from16 v3, v24

    .line 2089
    .line 2090
    move-object/from16 v4, p1

    .line 2091
    .line 2092
    move-object/from16 v5, v17

    .line 2093
    .line 2094
    move v6, v7

    .line 2095
    move/from16 v20, v22

    .line 2096
    .line 2097
    const/16 v17, 0x0

    .line 2098
    .line 2099
    move-object v7, v8

    .line 2100
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArraySet;I[I)[I

    .line 2101
    .line 2102
    .line 2103
    move-result-object v1

    .line 2104
    const/4 v2, 0x1

    .line 2105
    add-int/lit8 v4, v19, 0x1

    .line 2106
    .line 2107
    move-object/from16 v0, p0

    .line 2108
    .line 2109
    move-object/from16 v8, p1

    .line 2110
    .line 2111
    move-object v3, v9

    .line 2112
    move-object v5, v11

    .line 2113
    move-object/from16 v25, v13

    .line 2114
    .line 2115
    move-object/from16 v26, v18

    .line 2116
    .line 2117
    move/from16 v7, v20

    .line 2118
    .line 2119
    move-object/from16 v6, v23

    .line 2120
    .line 2121
    move/from16 v2, v27

    .line 2122
    .line 2123
    move-object/from16 v12, v28

    .line 2124
    .line 2125
    move-object/from16 v11, v32

    .line 2126
    .line 2127
    move/from16 v13, v33

    .line 2128
    .line 2129
    move-object/from16 v9, v39

    .line 2130
    .line 2131
    move-object/from16 v10, v42

    .line 2132
    .line 2133
    goto/16 :goto_1a

    .line 2134
    .line 2135
    :cond_7b
    move/from16 v27, v2

    .line 2136
    .line 2137
    move-object/from16 v23, v6

    .line 2138
    .line 2139
    const/4 v2, 0x1

    .line 2140
    const/16 v17, 0x0

    .line 2141
    .line 2142
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2143
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2144
    .line 2145
    if-eqz p2, :cond_7d

    .line 2146
    .line 2147
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    .line 2148
    .line 2149
    .line 2150
    move-result v0

    .line 2151
    if-eqz v0, :cond_7d

    .line 2152
    .line 2153
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 2154
    .line 2155
    .line 2156
    move-result-object v0

    .line 2157
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2158
    .line 2159
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2160
    .line 2161
    .line 2162
    move-result v0

    .line 2163
    if-nez v0, :cond_7c

    .line 2164
    .line 2165
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 2166
    .line 2167
    .line 2168
    move-result-object v0

    .line 2169
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2170
    .line 2171
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2172
    .line 2173
    .line 2174
    move-result v0

    .line 2175
    if-eqz v0, :cond_7d

    .line 2176
    .line 2177
    :cond_7c
    invoke-virtual/range {v23 .. v23}, [I->clone()Ljava/lang/Object;

    .line 2178
    .line 2179
    .line 2180
    move-result-object v0

    .line 2181
    move-object v1, v0

    .line 2182
    check-cast v1, [I

    .line 2183
    .line 2184
    :cond_7d
    move-object/from16 v0, p4

    .line 2185
    .line 2186
    if-eqz v0, :cond_81

    .line 2187
    .line 2188
    if-eqz p3, :cond_7e

    .line 2189
    .line 2190
    if-eqz p2, :cond_7e

    .line 2191
    .line 2192
    if-nez v27, :cond_7f

    .line 2193
    .line 2194
    :cond_7e
    if-eqz v21, :cond_80

    .line 2195
    .line 2196
    :cond_7f
    move v14, v2

    .line 2197
    goto :goto_53

    .line 2198
    :cond_80
    move/from16 v14, v17

    .line 2199
    .line 2200
    :goto_53
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 2201
    .line 2202
    .line 2203
    move-result v2

    .line 2204
    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionUpdated([IZI)V

    .line 2205
    .line 2206
    .line 2207
    :cond_81
    return-void

    .line 2208
    :goto_54
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2209
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2210
    .line 2211
    throw v0
.end method

.method public final restoreRuntimePermissions([BI)V
    .locals 2

    .line 1
    const-string v0, "backup"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    int-to-float v0, p2

    .line 7
    const-string/jumbo v1, "userId"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 14
    .line 15
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    .line 19
    .line 20
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 21
    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 25
    .line 26
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/permission/PermissionControllerManager;->stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 37
    .line 38
    throw p0
.end method

.method public final revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const-wide/16 v3, 0x0

    .line 5
    .line 6
    const/16 v1, 0x3e8

    .line 7
    .line 8
    move-object v5, p1

    .line 9
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 16
    .line 17
    const/16 v1, 0x17

    .line 18
    .line 19
    if-ge v0, v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string v0, "default:0"

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const/16 v6, 0x3e8

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    move-object v1, p0

    .line 35
    move-object v2, p1

    .line 36
    move-object v3, p2

    .line 37
    move v4, p3

    .line 38
    move v7, p4

    .line 39
    move-object v9, p5

    .line 40
    :try_start_0
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    const-string p3, "Failed to revoke "

    .line 46
    .line 47
    const-string p4, " from "

    .line 48
    .line 49
    invoke-static {p3, p2, p4, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p2, "PermissionManager"

    .line 54
    .line 55
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public final revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;II[I)[I
    .locals 7

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-lt p3, v0, :cond_0

    .line 6
    .line 7
    move p3, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p3, v2

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_4

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {p2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 37
    .line 38
    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    and-int/lit16 v6, v5, 0x80

    .line 55
    .line 56
    if-eqz v6, :cond_1

    .line 57
    .line 58
    sget-object v6, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

    .line 59
    .line 60
    invoke-static {v6, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    const-string v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 67
    .line 68
    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_2

    .line 73
    .line 74
    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    and-int/lit16 v3, v3, 0x88

    .line 79
    .line 80
    if-nez v3, :cond_2

    .line 81
    .line 82
    move v3, v1

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    move v3, v2

    .line 85
    :goto_2
    and-int/lit8 v5, v5, 0x34

    .line 86
    .line 87
    if-nez v5, :cond_3

    .line 88
    .line 89
    if-eqz p3, :cond_3

    .line 90
    .line 91
    if-nez v3, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1, v4}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 94
    .line 95
    .line 96
    const/16 v3, 0x83

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_3
    const/16 v3, 0x80

    .line 100
    .line 101
    :goto_3
    invoke-virtual {p1, v4, v3, v2}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 102
    .line 103
    .line 104
    invoke-static {p5, p4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 105
    .line 106
    .line 107
    move-result-object p5

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    return-object p5
.end method

.method public final revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v5

    .line 5
    const-string v0, "default:0"

    .line 6
    .line 7
    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 8
    .line 9
    invoke-virtual {p0, v5, v1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    :goto_0
    move v3, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-string v1, "android.permission.REVOKE_POST_NOTIFICATIONS_WITHOUT_KILL"

    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    const-string/jumbo v7, "skip permission revoke app kill for notification test"

    .line 33
    .line 34
    .line 35
    const-string v2, "android.permission.POST_NOTIFICATIONS"

    .line 36
    .line 37
    move-object v0, p0

    .line 38
    move-object v1, p1

    .line 39
    move v6, p2

    .line 40
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v5

    .line 5
    const-string p3, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 6
    .line 7
    const-string v0, "default:0"

    .line 8
    .line 9
    invoke-virtual {p0, v5, p3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    const/4 p3, 0x1

    .line 16
    :goto_0
    move v3, p3

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 p3, 0x0

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    move-object v0, p0

    .line 24
    move-object v1, p1

    .line 25
    move-object v2, p2

    .line 26
    move v6, p4

    .line 27
    move-object v7, p5

    .line 28
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    move/from16 v2, p5

    .line 8
    .line 9
    move/from16 v4, p6

    .line 10
    .line 11
    const-string v3, "Cannot revoke policy fixed permission "

    .line 12
    .line 13
    const-string v6, "Non-System UID cannot revoke system fixed permission "

    .line 14
    .line 15
    const-string v7, "Package "

    .line 16
    .line 17
    const-string v8, "Missing permissions state for "

    .line 18
    .line 19
    const-string v9, "Permission "

    .line 20
    .line 21
    const-string v10, "Permission "

    .line 22
    .line 23
    const-string v11, "Unknown permission: "

    .line 24
    .line 25
    const-string v12, "Unknown permission: "

    .line 26
    .line 27
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 28
    .line 29
    invoke-virtual {v13, v4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 30
    .line 31
    .line 32
    move-result v13

    .line 33
    if-nez v13, :cond_0

    .line 34
    .line 35
    const-string v0, "PermissionManager"

    .line 36
    .line 37
    const-string v1, "No such user:"

    .line 38
    .line 39
    invoke-static {v4, v1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const-string v14, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 46
    .line 47
    const-string/jumbo v15, "revokeRuntimePermission"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v13, "revokeRuntimePermission"

    .line 54
    .line 55
    .line 56
    const/4 v14, 0x1

    .line 57
    invoke-virtual {v0, v2, v4, v13, v14}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IILjava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 61
    .line 62
    invoke-virtual {v13, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 63
    .line 64
    .line 65
    move-result-object v13

    .line 66
    if-nez v13, :cond_1

    .line 67
    .line 68
    const-string v0, "PermissionManager"

    .line 69
    .line 70
    const-string v2, "Unknown package: "

    .line 71
    .line 72
    invoke-static {v2, v1, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 77
    .line 78
    const/4 v14, 0x0

    .line 79
    invoke-virtual {v15, v2, v4, v1, v14}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v15

    .line 83
    if-nez v15, :cond_1a

    .line 84
    .line 85
    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 86
    .line 87
    sget-boolean v16, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 88
    .line 89
    monitor-enter v15

    .line 90
    :try_start_0
    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 91
    .line 92
    invoke-virtual {v14, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    if-eqz v14, :cond_19

    .line 97
    .line 98
    invoke-virtual {v14}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    if-eqz v12, :cond_4

    .line 104
    .line 105
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    if-eq v2, v12, :cond_3

    .line 110
    .line 111
    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    invoke-virtual {v12, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-nez v2, :cond_2

    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v12}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v12

    .line 129
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    :goto_0
    if-eqz v2, :cond_4

    .line 138
    .line 139
    :cond_3
    const/4 v2, 0x1

    .line 140
    goto :goto_1

    .line 141
    :cond_4
    const/4 v2, 0x0

    .line 142
    :goto_1
    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 143
    .line 144
    monitor-enter v12

    .line 145
    :try_start_1
    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 146
    .line 147
    invoke-virtual {v14, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 148
    .line 149
    .line 150
    move-result-object v14

    .line 151
    if-eqz v14, :cond_18

    .line 152
    .line 153
    invoke-virtual {v14}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    if-nez v11, :cond_8

    .line 158
    .line 159
    invoke-virtual {v14}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    if-eqz v15, :cond_5

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_5
    invoke-virtual {v14}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    .line 167
    .line 168
    .line 169
    move-result v15

    .line 170
    if-eqz v15, :cond_7

    .line 171
    .line 172
    if-eqz v2, :cond_6

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    .line 176
    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v2, " is managed by role"

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw v0

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    goto/16 :goto_8

    .line 200
    .line 201
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    .line 202
    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v2, " requested by "

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v2, " is not a changeable permission type"

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v0

    .line 236
    :cond_8
    :goto_2
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    invoke-virtual {v0, v2, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    if-nez v2, :cond_9

    .line 245
    .line 246
    const-string v0, "PermissionManager"

    .line 247
    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v2, " and user "

    .line 261
    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    monitor-exit v12

    .line 276
    return-void

    .line 277
    :cond_9
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    if-nez v8, :cond_b

    .line 282
    .line 283
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v8

    .line 291
    if-eqz v8, :cond_a

    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    .line 295
    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v2, " has not requested permission "

    .line 309
    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw v0

    .line 324
    :cond_b
    :goto_3
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    const/16 v8, 0x17

    .line 329
    .line 330
    if-ge v7, v8, :cond_c

    .line 331
    .line 332
    invoke-virtual {v14}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    if-eqz v7, :cond_c

    .line 337
    .line 338
    monitor-exit v12

    .line 339
    return-void

    .line 340
    :cond_c
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    move-result v7

    .line 344
    and-int/lit8 v8, v7, 0x10

    .line 345
    .line 346
    if-eqz v8, :cond_e

    .line 347
    .line 348
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    .line 349
    .line 350
    .line 351
    move-result v9

    .line 352
    const/16 v10, 0x3e8

    .line 353
    .line 354
    if-ne v9, v10, :cond_d

    .line 355
    .line 356
    goto :goto_4

    .line 357
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    .line 358
    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v3, " for package "

    .line 368
    .line 369
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    throw v0

    .line 383
    :cond_e
    :goto_4
    if-nez p3, :cond_10

    .line 384
    .line 385
    and-int/lit8 v6, v7, 0x4

    .line 386
    .line 387
    if-nez v6, :cond_f

    .line 388
    .line 389
    goto :goto_5

    .line 390
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    .line 391
    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v3, " for package "

    .line 401
    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    throw v0

    .line 416
    :cond_10
    :goto_5
    invoke-virtual {v2, v14}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-nez v2, :cond_11

    .line 421
    .line 422
    monitor-exit v12

    .line 423
    return-void

    .line 424
    :cond_11
    if-eqz v8, :cond_12

    .line 425
    .line 426
    const/4 v14, 0x1

    .line 427
    goto :goto_6

    .line 428
    :cond_12
    const/4 v14, 0x0

    .line 429
    :goto_6
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    if-eqz v11, :cond_15

    .line 431
    .line 432
    if-eqz v14, :cond_14

    .line 433
    .line 434
    const/4 v2, -0x1

    .line 435
    if-eq v4, v2, :cond_13

    .line 436
    .line 437
    if-nez v4, :cond_14

    .line 438
    .line 439
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    const-string v3, " system_fixed permission revoked for package "

    .line 448
    .line 449
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    const-string v3, ", pid: "

    .line 456
    .line 457
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 461
    .line 462
    .line 463
    move-result v3

    .line 464
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    const-string v3, ", uid: "

    .line 468
    .line 469
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string v3, ", "

    .line 480
    .line 481
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    new-instance v3, Ljava/lang/Exception;

    .line 485
    .line 486
    const-string/jumbo v6, "revoke was called by"

    .line 487
    .line 488
    .line 489
    invoke-direct {v3, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    const/4 v3, 0x3

    .line 504
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 505
    .line 506
    .line 507
    :cond_14
    new-instance v2, Landroid/metrics/LogMaker;

    .line 508
    .line 509
    const/16 v3, 0x4dd

    .line 510
    .line 511
    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v2, v1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 515
    .line 516
    .line 517
    const/16 v1, 0x4d9

    .line 518
    .line 519
    invoke-virtual {v2, v1, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 520
    .line 521
    .line 522
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 523
    .line 524
    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 525
    .line 526
    .line 527
    :cond_15
    if-eqz p8, :cond_17

    .line 528
    .line 529
    if-eqz v11, :cond_16

    .line 530
    .line 531
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    move-object/from16 v0, p8

    .line 540
    .line 541
    move-object/from16 v1, p7

    .line 542
    .line 543
    move/from16 v3, p4

    .line 544
    .line 545
    move/from16 v4, p6

    .line 546
    .line 547
    move-object/from16 v5, p2

    .line 548
    .line 549
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(Ljava/lang/String;IZILjava/lang/String;)V

    .line 550
    .line 551
    .line 552
    goto :goto_7

    .line 553
    :cond_16
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 554
    .line 555
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 556
    .line 557
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 558
    .line 559
    const/4 v1, 0x1

    .line 560
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 561
    .line 562
    .line 563
    :cond_17
    :goto_7
    return-void

    .line 564
    :cond_18
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 565
    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    throw v0

    .line 582
    :goto_8
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 583
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 584
    .line 585
    throw v0

    .line 586
    :catchall_1
    move-exception v0

    .line 587
    goto :goto_9

    .line 588
    :cond_19
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 589
    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    .line 591
    .line 592
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    throw v0

    .line 606
    :goto_9
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 607
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 608
    .line 609
    throw v0

    .line 610
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 611
    .line 612
    const-string v2, "Unknown package: "

    .line 613
    .line 614
    invoke-static {v2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    throw v0
.end method

.method public final setAllowlistedRestrictedPermissions(ILjava/lang/String;ILjava/util/List;)Z
    .locals 7

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 20
    .line 21
    .line 22
    int-to-float v0, p3

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eq v0, p3, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string/jumbo v4, "setAllowlistedRestrictedPermissions for user "

    .line 38
    .line 39
    .line 40
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    .line 51
    .line 52
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 56
    .line 57
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    return v1

    .line 64
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 69
    .line 70
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    invoke-virtual {v4, v3, v5, p2, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_3

    .line 79
    .line 80
    return v1

    .line 81
    :cond_3
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    const-string v4, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 84
    .line 85
    invoke-virtual {p2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_4

    .line 90
    .line 91
    move p2, v2

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    move p2, v1

    .line 94
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 95
    .line 96
    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 97
    .line 98
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-interface {v4, v0, v3}, Lcom/android/server/pm/Computer;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    and-int/lit8 v4, p1, 0x1

    .line 109
    .line 110
    if-eqz v4, :cond_6

    .line 111
    .line 112
    if-eqz p2, :cond_5

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 116
    .line 117
    const-string p1, "Modifying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 118
    .line 119
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0

    .line 123
    :cond_6
    :goto_2
    and-int/lit8 v4, p1, 0x4

    .line 124
    .line 125
    if-eqz v4, :cond_e

    .line 126
    .line 127
    if-nez p2, :cond_8

    .line 128
    .line 129
    if-eqz v3, :cond_7

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    .line 133
    .line 134
    const-string p1, "Modifying upgrade allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 135
    .line 136
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :cond_8
    :goto_3
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {p0, v4, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_a

    .line 153
    .line 154
    if-eqz v4, :cond_9

    .line 155
    .line 156
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_e

    .line 161
    .line 162
    :cond_9
    return v2

    .line 163
    :cond_a
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    :goto_4
    if-ge v1, v5, :cond_e

    .line 168
    .line 169
    if-eqz v4, :cond_b

    .line 170
    .line 171
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    if-nez v6, :cond_c

    .line 180
    .line 181
    :cond_b
    if-eqz p2, :cond_d

    .line 182
    .line 183
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    .line 187
    .line 188
    const-string p1, "Adding to upgrade allowlist requiresandroid.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 189
    .line 190
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p0

    .line 194
    :cond_e
    and-int/lit8 v1, p1, 0x2

    .line 195
    .line 196
    if-eqz v1, :cond_10

    .line 197
    .line 198
    if-nez p2, :cond_10

    .line 199
    .line 200
    if-eqz v3, :cond_f

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    .line 204
    .line 205
    const-string p1, "Modifying installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 206
    .line 207
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p0

    .line 211
    :cond_10
    :goto_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 212
    .line 213
    .line 214
    move-result-wide v3

    .line 215
    :try_start_0
    invoke-virtual {p0, v0, p4, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .line 217
    .line 218
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 219
    .line 220
    .line 221
    return v2

    .line 222
    :catchall_0
    move-exception p0

    .line 223
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    .line 225
    .line 226
    throw p0
.end method

.method public final setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;II)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    move/from16 v11, p4

    .line 6
    .line 7
    const/4 v12, 0x1

    .line 8
    const/4 v13, 0x4

    .line 9
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 10
    .line 11
    .line 12
    move-result v14

    .line 13
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v15

    .line 21
    const/4 v1, 0x0

    .line 22
    const/16 v16, 0x0

    .line 23
    .line 24
    move-object v7, v1

    .line 25
    move/from16 v1, v16

    .line 26
    .line 27
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_10

    .line 32
    .line 33
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v3, v2

    .line 38
    check-cast v3, Ljava/lang/String;

    .line 39
    .line 40
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 41
    .line 42
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 43
    .line 44
    monitor-enter v2

    .line 45
    :try_start_0
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 46
    .line 47
    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_f

    .line 52
    .line 53
    iget-object v4, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 54
    .line 55
    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    .line 56
    .line 57
    and-int/lit8 v4, v4, 0xc

    .line 58
    .line 59
    if-eqz v4, :cond_f

    .line 60
    .line 61
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-virtual {v0, v4, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    if-nez v4, :cond_0

    .line 70
    .line 71
    const-string v3, "PermissionManager"

    .line 72
    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v5, "Missing permissions state for "

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v5, " and user "

    .line 91
    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    monitor-exit v2

    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto/16 :goto_6

    .line 109
    .line 110
    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    if-eqz v4, :cond_2

    .line 116
    .line 117
    if-nez v7, :cond_1

    .line 118
    .line 119
    new-instance v7, Landroid/util/ArraySet;

    .line 120
    .line 121
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 122
    .line 123
    .line 124
    :cond_1
    invoke-virtual {v7, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    :cond_2
    move-object/from16 v17, v7

    .line 128
    .line 129
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v0, v14, v11, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(IILjava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    move/from16 v5, p3

    .line 138
    .line 139
    move v6, v2

    .line 140
    move/from16 v7, v16

    .line 141
    .line 142
    :goto_1
    if-eqz v5, :cond_9

    .line 143
    .line 144
    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    shl-int v8, v12, v8

    .line 149
    .line 150
    not-int v9, v8

    .line 151
    and-int/2addr v5, v9

    .line 152
    if-eq v8, v12, :cond_7

    .line 153
    .line 154
    const/4 v9, 0x2

    .line 155
    if-eq v8, v9, :cond_5

    .line 156
    .line 157
    if-eq v8, v13, :cond_3

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_3
    or-int/lit16 v7, v7, 0x2000

    .line 161
    .line 162
    if-eqz v10, :cond_4

    .line 163
    .line 164
    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-eqz v8, :cond_4

    .line 169
    .line 170
    or-int/lit16 v6, v6, 0x2000

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_4
    and-int/lit16 v6, v6, -0x2001

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_5
    or-int/lit16 v7, v7, 0x800

    .line 177
    .line 178
    if-eqz v10, :cond_6

    .line 179
    .line 180
    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-eqz v8, :cond_6

    .line 185
    .line 186
    or-int/lit16 v6, v6, 0x800

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_6
    and-int/lit16 v6, v6, -0x801

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_7
    or-int/lit16 v7, v7, 0x1000

    .line 193
    .line 194
    if-eqz v10, :cond_8

    .line 195
    .line 196
    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    if-eqz v8, :cond_8

    .line 201
    .line 202
    or-int/lit16 v6, v6, 0x1000

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_8
    and-int/lit16 v6, v6, -0x1001

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_9
    if-ne v2, v6, :cond_a

    .line 209
    .line 210
    :goto_2
    move-object/from16 v7, v17

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_a
    and-int/lit16 v1, v2, 0x3800

    .line 215
    .line 216
    if-eqz v1, :cond_b

    .line 217
    .line 218
    move v1, v12

    .line 219
    goto :goto_3

    .line 220
    :cond_b
    move/from16 v1, v16

    .line 221
    .line 222
    :goto_3
    and-int/lit16 v5, v6, 0x3800

    .line 223
    .line 224
    if-eqz v5, :cond_c

    .line 225
    .line 226
    move v5, v12

    .line 227
    goto :goto_4

    .line 228
    :cond_c
    move/from16 v5, v16

    .line 229
    .line 230
    :goto_4
    and-int/2addr v2, v13

    .line 231
    if-eqz v2, :cond_d

    .line 232
    .line 233
    if-nez v5, :cond_d

    .line 234
    .line 235
    if-eqz v4, :cond_d

    .line 236
    .line 237
    or-int/2addr v7, v13

    .line 238
    and-int/lit8 v6, v6, -0x5

    .line 239
    .line 240
    :cond_d
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    const/16 v4, 0x17

    .line 245
    .line 246
    if-ge v2, v4, :cond_e

    .line 247
    .line 248
    if-nez v1, :cond_e

    .line 249
    .line 250
    if-eqz v5, :cond_e

    .line 251
    .line 252
    or-int/lit8 v1, v7, 0x40

    .line 253
    .line 254
    or-int/lit8 v2, v6, 0x40

    .line 255
    .line 256
    move v4, v1

    .line 257
    move v5, v2

    .line 258
    goto :goto_5

    .line 259
    :cond_e
    move v5, v6

    .line 260
    move v4, v7

    .line 261
    :goto_5
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    const/4 v8, 0x0

    .line 266
    const/4 v9, 0x0

    .line 267
    move-object/from16 v1, p0

    .line 268
    .line 269
    move v6, v14

    .line 270
    move/from16 v7, p4

    .line 271
    .line 272
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 273
    .line 274
    .line 275
    move v1, v12

    .line 276
    goto :goto_2

    .line 277
    :cond_f
    :try_start_1
    monitor-exit v2

    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :goto_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 282
    .line 283
    throw v0

    .line 284
    :cond_10
    if-eqz v1, :cond_14

    .line 285
    .line 286
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 291
    .line 292
    const/4 v3, 0x0

    .line 293
    move-object/from16 v1, p0

    .line 294
    .line 295
    move-object/from16 v2, p1

    .line 296
    .line 297
    move/from16 v6, p4

    .line 298
    .line 299
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restorePermissionState(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V

    .line 300
    .line 301
    .line 302
    if-nez v7, :cond_11

    .line 303
    .line 304
    return-void

    .line 305
    :cond_11
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    move/from16 v2, v16

    .line 310
    .line 311
    :goto_7
    if-ge v2, v1, :cond_14

    .line 312
    .line 313
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    check-cast v3, Ljava/lang/String;

    .line 318
    .line 319
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 320
    .line 321
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 322
    .line 323
    monitor-enter v4

    .line 324
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    invoke-virtual {v0, v5, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    if-nez v5, :cond_12

    .line 333
    .line 334
    const-string v3, "PermissionManager"

    .line 335
    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .line 340
    .line 341
    const-string v6, "Missing permissions state for "

    .line 342
    .line 343
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v6, " and user "

    .line 354
    .line 355
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    monitor-exit v4

    .line 369
    goto :goto_8

    .line 370
    :catchall_1
    move-exception v0

    .line 371
    goto :goto_9

    .line 372
    :cond_12
    invoke-virtual {v5, v3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 377
    if-nez v3, :cond_13

    .line 378
    .line 379
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 380
    .line 381
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    invoke-static {v11, v1}, Landroid/os/UserHandle;->getUid(II)I

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    const/4 v5, 0x0

    .line 390
    const/4 v1, 0x0

    .line 391
    const/4 v3, 0x0

    .line 392
    move/from16 v4, p4

    .line 393
    .line 394
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->onPermissionRevoked(Ljava/lang/String;IZILjava/lang/String;)V

    .line 395
    .line 396
    .line 397
    goto :goto_a

    .line 398
    :cond_13
    :goto_8
    add-int/2addr v2, v12

    .line 399
    goto :goto_7

    .line 400
    :goto_9
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 401
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 402
    .line 403
    throw v0

    .line 404
    :cond_14
    :goto_a
    return-void
.end method

.method public final setDefaultPermissionGrantFingerprint(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArraySet;I[I)[I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    new-instance v3, Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v4, v4, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v7, 0x0

    .line 26
    :goto_0
    if-ge v7, v5, :cond_2

    .line 27
    .line 28
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    check-cast v8, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 33
    .line 34
    invoke-virtual {v8}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    const/4 v11, 0x0

    .line 43
    :goto_1
    if-ge v11, v10, :cond_1

    .line 44
    .line 45
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v12

    .line 49
    check-cast v12, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    check-cast v13, Landroid/util/ArraySet;

    .line 56
    .line 57
    if-nez v13, :cond_0

    .line 58
    .line 59
    new-instance v13, Landroid/util/ArraySet;

    .line 60
    .line 61
    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {v8}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    add-int/lit8 v11, v11, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->size()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    move-object/from16 v5, p6

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    :goto_2
    if-ge v7, v4, :cond_11

    .line 88
    .line 89
    move-object/from16 v8, p4

    .line 90
    .line 91
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    check-cast v9, Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    check-cast v10, Landroid/util/ArraySet;

    .line 102
    .line 103
    if-eqz v10, :cond_e

    .line 104
    .line 105
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 106
    .line 107
    invoke-virtual {v11, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    if-eqz v11, :cond_f

    .line 112
    .line 113
    invoke-virtual {v11}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    if-eqz v12, :cond_e

    .line 118
    .line 119
    const-string v12, "android.permission.ACTIVITY_RECOGNITION"

    .line 120
    .line 121
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    if-nez v12, :cond_3

    .line 126
    .line 127
    sget-object v12, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    .line 128
    .line 129
    check-cast v12, Landroid/util/ArraySet;

    .line 130
    .line 131
    invoke-virtual {v12, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    if-nez v12, :cond_3

    .line 136
    .line 137
    sget-object v12, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    .line 138
    .line 139
    check-cast v12, Landroid/util/ArraySet;

    .line 140
    .line 141
    invoke-virtual {v12, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    if-nez v12, :cond_3

    .line 146
    .line 147
    const/16 v12, 0x80

    .line 148
    .line 149
    invoke-virtual {v2, v11, v12, v12}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 150
    .line 151
    .line 152
    :cond_3
    move/from16 v11, p5

    .line 153
    .line 154
    invoke-static {v5, v11}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    iget-object v12, v1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 159
    .line 160
    if-nez v12, :cond_4

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_4
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 164
    .line 165
    .line 166
    move-result v12

    .line 167
    const/4 v13, 0x0

    .line 168
    :goto_3
    if-ge v13, v12, :cond_6

    .line 169
    .line 170
    invoke-virtual {v10, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v14

    .line 174
    check-cast v14, Ljava/lang/String;

    .line 175
    .line 176
    iget-object v15, v1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 177
    .line 178
    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v14

    .line 182
    if-eqz v14, :cond_5

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_6
    :goto_4
    const/4 v12, 0x0

    .line 189
    :goto_5
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 190
    .line 191
    .line 192
    move-result v13

    .line 193
    if-ge v12, v13, :cond_10

    .line 194
    .line 195
    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v13

    .line 199
    check-cast v13, Ljava/lang/String;

    .line 200
    .line 201
    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 202
    .line 203
    invoke-virtual {v14, v13}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    if-eqz v14, :cond_d

    .line 208
    .line 209
    invoke-virtual {v14}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 210
    .line 211
    .line 212
    move-result v13

    .line 213
    if-nez v13, :cond_c

    .line 214
    .line 215
    :goto_6
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    const/4 v13, 0x0

    .line 223
    const/4 v14, 0x0

    .line 224
    const/4 v15, 0x0

    .line 225
    :goto_7
    if-ge v13, v12, :cond_a

    .line 226
    .line 227
    invoke-virtual {v10, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v16

    .line 231
    move-object/from16 v6, v16

    .line 232
    .line 233
    check-cast v6, Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v16

    .line 239
    if-eqz v16, :cond_8

    .line 240
    .line 241
    if-nez v14, :cond_7

    .line 242
    .line 243
    const/4 v15, 0x0

    .line 244
    :cond_7
    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    or-int/2addr v15, v6

    .line 249
    const/4 v14, 0x1

    .line 250
    goto :goto_8

    .line 251
    :cond_8
    if-nez v14, :cond_9

    .line 252
    .line 253
    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    or-int/2addr v15, v6

    .line 258
    :cond_9
    :goto_8
    add-int/lit8 v13, v13, 0x1

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_a
    if-eqz v14, :cond_b

    .line 262
    .line 263
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 264
    .line 265
    invoke-virtual {v6, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 270
    .line 271
    .line 272
    :cond_b
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 273
    .line 274
    invoke-virtual {v6, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    invoke-virtual {v2, v6, v15, v15}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 279
    .line 280
    .line 281
    goto :goto_9

    .line 282
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 286
    .line 287
    const-string v1, "Unknown source permission in split permission: "

    .line 288
    .line 289
    invoke-static {v1, v13}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw v0

    .line 297
    :cond_e
    move/from16 v11, p5

    .line 298
    .line 299
    goto :goto_9

    .line 300
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 301
    .line 302
    const-string v1, "Unknown new permission in split permission: "

    .line 303
    .line 304
    invoke-static {v1, v9}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw v0

    .line 312
    :cond_10
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 313
    .line 314
    goto/16 :goto_2

    .line 315
    .line 316
    :cond_11
    return-object v5
.end method

.method public final setLicensePermissionsForMDM(Ljava/lang/String;Ljava/util/Set;)I
    .locals 13

    .line 1
    const-string v0, "PermissionManager"

    .line 2
    .line 3
    const-string/jumbo v1, "setLicensePermissions : packageName = "

    .line 4
    .line 5
    .line 6
    invoke-static {v1, p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds$1()[I

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string v2, "PermissionManager"

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string/jumbo v4, "setLicensePermissions : "

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, " is invalid (NULL)"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    const/4 v2, 0x0

    .line 47
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    .line 58
    .line 59
    .line 60
    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    :try_start_1
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    .line 62
    .line 63
    .line 64
    move-result v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v3

    .line 67
    goto :goto_0

    .line 68
    :catch_1
    move-exception v3

    .line 69
    move v4, v2

    .line 70
    :goto_0
    const-string v5, "PermissionManager"

    .line 71
    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v7, "Package name: "

    .line 75
    .line 76
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v7, " cannot be found."

    .line 83
    .line 84
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move v3, v2

    .line 98
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 99
    .line 100
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    if-nez v5, :cond_1

    .line 105
    .line 106
    const/4 p0, -0x3

    .line 107
    return p0

    .line 108
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eqz v7, :cond_6

    .line 122
    .line 123
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    check-cast v7, Ljava/lang/String;

    .line 128
    .line 129
    const-string v8, ","

    .line 130
    .line 131
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    if-eqz v8, :cond_5

    .line 136
    .line 137
    array-length v9, v8

    .line 138
    if-lez v9, :cond_5

    .line 139
    .line 140
    move v7, v2

    .line 141
    :goto_3
    array-length v9, v8

    .line 142
    if-ge v7, v9, :cond_2

    .line 143
    .line 144
    aget-object v9, v8, v7

    .line 145
    .line 146
    iget-object v10, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 147
    .line 148
    invoke-virtual {v10, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    if-eqz v10, :cond_4

    .line 153
    .line 154
    iget-object v11, v10, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 155
    .line 156
    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v12, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 159
    .line 160
    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    if-eqz v11, :cond_4

    .line 165
    .line 166
    if-eqz v4, :cond_3

    .line 167
    .line 168
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 169
    .line 170
    .line 171
    move-result-object v11

    .line 172
    invoke-interface {v11, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    if-eqz v9, :cond_3

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_3
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_5
    const-string v8, "PermissionManager"

    .line 186
    .line 187
    new-instance v9, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string/jumbo v10, "setLicensePermissions : "

    .line 190
    .line 191
    .line 192
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v10, " : invalid permission "

    .line 199
    .line 200
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_6
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 215
    .line 216
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 217
    .line 218
    monitor-enter p2

    .line 219
    :try_start_2
    array-length v7, v1

    .line 220
    move v8, v2

    .line 221
    :goto_5
    if-ge v8, v7, :cond_8

    .line 222
    .line 223
    aget v9, v1, v8

    .line 224
    .line 225
    iget-object v10, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    .line 226
    .line 227
    invoke-virtual {v10, v9}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    move-object v10, v5

    .line 232
    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 233
    .line 234
    iget v10, v10, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 235
    .line 236
    invoke-virtual {v9, v10}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v11

    .line 248
    if-eqz v11, :cond_7

    .line 249
    .line 250
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    check-cast v11, Lcom/android/server/pm/permission/Permission;

    .line 255
    .line 256
    invoke-virtual {v9, v11}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :catchall_0
    move-exception p0

    .line 261
    goto/16 :goto_11

    .line 262
    .line 263
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_8
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    sget-boolean p2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 268
    .line 269
    const-string p2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 270
    .line 271
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 272
    .line 273
    invoke-virtual {v6, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    if-eqz p2, :cond_a

    .line 278
    .line 279
    iget-object v6, p2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 280
    .line 281
    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 282
    .line 283
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 284
    .line 285
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    if-eqz v6, :cond_a

    .line 290
    .line 291
    if-nez v3, :cond_a

    .line 292
    .line 293
    if-nez v4, :cond_a

    .line 294
    .line 295
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 296
    .line 297
    monitor-enter v3

    .line 298
    :try_start_3
    array-length v4, v1

    .line 299
    move v6, v2

    .line 300
    :goto_7
    if-ge v6, v4, :cond_9

    .line 301
    .line 302
    aget v7, v1, v6

    .line 303
    .line 304
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    .line 305
    .line 306
    invoke-virtual {v8, v7}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    move-object v8, v5

    .line 311
    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 312
    .line 313
    iget v8, v8, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 314
    .line 315
    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    invoke-virtual {v7, p2}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 320
    .line 321
    .line 322
    add-int/lit8 v6, v6, 0x1

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :catchall_1
    move-exception p0

    .line 326
    goto :goto_8

    .line 327
    :cond_9
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 328
    sget-boolean p2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 329
    .line 330
    goto :goto_9

    .line 331
    :goto_8
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 332
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 333
    .line 334
    throw p0

    .line 335
    :cond_a
    :goto_9
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 336
    .line 337
    invoke-static {p2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 342
    .line 343
    .line 344
    move-result-object p2

    .line 345
    :try_start_5
    const-string v3, "enterprise_policy"

    .line 346
    .line 347
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    invoke-static {v3}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    invoke-interface {v3, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getMamPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    if-eqz v3, :cond_c

    .line 360
    .line 361
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    if-nez v4, :cond_c

    .line 366
    .line 367
    const-string v4, "PermissionManager"

    .line 368
    .line 369
    new-instance v6, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    const-string v7, "getMamPermissions: "

    .line 375
    .line 376
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string p1, ": "

    .line 383
    .line 384
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    if-nez p2, :cond_b

    .line 398
    .line 399
    new-instance p1, Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 402
    .line 403
    .line 404
    move-object p2, p1

    .line 405
    goto :goto_b

    .line 406
    :catch_2
    move-exception p1

    .line 407
    goto :goto_a

    .line 408
    :cond_b
    invoke-interface {p2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 409
    .line 410
    .line 411
    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 412
    .line 413
    .line 414
    goto :goto_b

    .line 415
    :goto_a
    const-string v3, "PermissionManager"

    .line 416
    .line 417
    const-string v4, "Error while getting MAM permissions"

    .line 418
    .line 419
    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    .line 421
    .line 422
    :cond_c
    :goto_b
    if-nez p2, :cond_d

    .line 423
    .line 424
    const/4 p0, -0x4

    .line 425
    return p0

    .line 426
    :cond_d
    new-instance p1, Ljava/util/ArrayList;

    .line 427
    .line 428
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .line 430
    .line 431
    new-instance p1, Ljava/util/ArrayList;

    .line 432
    .line 433
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 437
    .line 438
    .line 439
    move-result-object p2

    .line 440
    :cond_e
    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 441
    .line 442
    .line 443
    move-result v3

    .line 444
    if-eqz v3, :cond_11

    .line 445
    .line 446
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    check-cast v3, Ljava/lang/String;

    .line 451
    .line 452
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 453
    .line 454
    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    if-eqz v4, :cond_e

    .line 459
    .line 460
    iget-object v6, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 461
    .line 462
    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 463
    .line 464
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 465
    .line 466
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 467
    .line 468
    .line 469
    move-result-object v6

    .line 470
    if-eqz v6, :cond_e

    .line 471
    .line 472
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    .line 473
    .line 474
    .line 475
    move-result-object v6

    .line 476
    if-nez v6, :cond_f

    .line 477
    .line 478
    move v6, v2

    .line 479
    goto :goto_d

    .line 480
    :cond_f
    const-string v7, "com.samsung.knoxlicense.permissions"

    .line 481
    .line 482
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 483
    .line 484
    .line 485
    move-result v6

    .line 486
    :goto_d
    if-eqz v6, :cond_10

    .line 487
    .line 488
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 489
    .line 490
    .line 491
    move-result-object v6

    .line 492
    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    move-result v6

    .line 496
    if-eqz v6, :cond_e

    .line 497
    .line 498
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    const-string v4, "PermissionManager"

    .line 502
    .line 503
    new-instance v6, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    const-string v7, "hasSelectivePermissionsForMdm(): permission granted = "

    .line 506
    .line 507
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .line 519
    .line 520
    goto :goto_c

    .line 521
    :cond_10
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    goto :goto_c

    .line 525
    :cond_11
    new-instance p2, Ljava/util/ArrayList;

    .line 526
    .line 527
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .line 529
    .line 530
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 531
    .line 532
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 533
    .line 534
    monitor-enter v3

    .line 535
    :try_start_6
    array-length v4, v1

    .line 536
    move v6, v2

    .line 537
    :goto_e
    if-ge v6, v4, :cond_14

    .line 538
    .line 539
    aget v7, v1, v6

    .line 540
    .line 541
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    .line 542
    .line 543
    invoke-virtual {v8, v7}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    move-object v8, v5

    .line 548
    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 549
    .line 550
    iget v8, v8, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 551
    .line 552
    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    .line 553
    .line 554
    .line 555
    move-result-object v7

    .line 556
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 557
    .line 558
    .line 559
    move-result-object v8

    .line 560
    :cond_12
    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 561
    .line 562
    .line 563
    move-result v9

    .line 564
    if-eqz v9, :cond_13

    .line 565
    .line 566
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v9

    .line 570
    check-cast v9, Lcom/android/server/pm/permission/Permission;

    .line 571
    .line 572
    invoke-virtual {v7, v9}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 573
    .line 574
    .line 575
    move-result v10

    .line 576
    if-eqz v10, :cond_12

    .line 577
    .line 578
    iget-object v9, v9, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 579
    .line 580
    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 581
    .line 582
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    goto :goto_f

    .line 586
    :catchall_2
    move-exception p0

    .line 587
    goto :goto_10

    .line 588
    :cond_13
    add-int/lit8 v6, v6, 0x1

    .line 589
    .line 590
    goto :goto_e

    .line 591
    :cond_14
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 592
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 593
    .line 594
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    .line 595
    .line 596
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object p1

    .line 600
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    return v2

    .line 604
    :goto_10
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 605
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 606
    .line 607
    throw p0

    .line 608
    :goto_11
    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 609
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 610
    .line 611
    throw p0
.end method

.method public final shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z
    .locals 8

    .line 1
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 6
    .line 7
    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0x4000

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    move v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v3

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    if-eqz v1, :cond_c

    .line 21
    .line 22
    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_c

    .line 27
    .line 28
    iget-object v4, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 29
    .line 30
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_8

    .line 37
    .line 38
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 39
    .line 40
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v5, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 45
    .line 46
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v5, v6}, Lcom/android/server/pm/Computer;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-nez v5, :cond_2

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 61
    .line 62
    :goto_1
    if-eqz v6, :cond_7

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-nez v7, :cond_4

    .line 71
    .line 72
    :cond_3
    if-eqz v1, :cond_7

    .line 73
    .line 74
    invoke-static {v5, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->canGrantOemPermission(Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_7

    .line 79
    .line 80
    :cond_4
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    :cond_5
    :goto_2
    move p4, v2

    .line 91
    goto :goto_3

    .line 92
    :cond_6
    invoke-virtual {p4, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_7
    move p4, v3

    .line 96
    goto :goto_3

    .line 97
    :cond_8
    if-eqz v0, :cond_9

    .line 98
    .line 99
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    .line 100
    .line 101
    .line 102
    move-result p4

    .line 103
    if-nez p4, :cond_5

    .line 104
    .line 105
    :cond_9
    if-eqz v1, :cond_7

    .line 106
    .line 107
    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->canGrantOemPermission(Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result p4

    .line 111
    if-eqz p4, :cond_7

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :goto_3
    if-eqz p4, :cond_d

    .line 115
    .line 116
    if-eqz v0, :cond_d

    .line 117
    .line 118
    iget-object v0, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 119
    .line 120
    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 121
    .line 122
    const v1, 0x8000

    .line 123
    .line 124
    .line 125
    and-int/2addr v0, v1

    .line 126
    if-eqz v0, :cond_a

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_a
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_b

    .line 134
    .line 135
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_d

    .line 140
    .line 141
    :cond_b
    const-string p4, "Permission "

    .line 142
    .line 143
    const-string v0, " cannot be granted to privileged vendor apk "

    .line 144
    .line 145
    invoke-static {p4, v4, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    move-result-object p4

    .line 149
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v0, " because it isn\'t a \'vendorPrivileged\' permission."

    .line 157
    .line 158
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p4

    .line 165
    const-string v0, "PermissionManager"

    .line 166
    .line 167
    invoke-static {v0, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_c
    move p4, v3

    .line 171
    :cond_d
    :goto_4
    if-nez p4, :cond_e

    .line 172
    .line 173
    iget-object v0, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 174
    .line 175
    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 176
    .line 177
    and-int/lit16 v0, v0, 0x80

    .line 178
    .line 179
    if-eqz v0, :cond_e

    .line 180
    .line 181
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    const/16 v1, 0x17

    .line 186
    .line 187
    if-ge v0, v1, :cond_e

    .line 188
    .line 189
    move p4, v2

    .line 190
    :cond_e
    if-nez p4, :cond_10

    .line 191
    .line 192
    iget-object v0, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 193
    .line 194
    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 195
    .line 196
    and-int/lit16 v0, v0, 0x100

    .line 197
    .line 198
    if-eqz v0, :cond_10

    .line 199
    .line 200
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 201
    .line 202
    const/4 v1, 0x2

    .line 203
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-nez v0, :cond_f

    .line 216
    .line 217
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 218
    .line 219
    const/4 v1, 0x7

    .line 220
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_10

    .line 233
    .line 234
    :cond_f
    move p4, v2

    .line 235
    :cond_10
    if-nez p4, :cond_11

    .line 236
    .line 237
    iget-object v0, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 238
    .line 239
    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 240
    .line 241
    and-int/lit16 v0, v0, 0x200

    .line 242
    .line 243
    if-eqz v0, :cond_11

    .line 244
    .line 245
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 246
    .line 247
    const/4 v1, 0x4

    .line 248
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_11

    .line 261
    .line 262
    move p4, v2

    .line 263
    :cond_11
    if-nez p4, :cond_12

    .line 264
    .line 265
    iget-object v0, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 266
    .line 267
    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 268
    .line 269
    and-int/lit16 v0, v0, 0x400

    .line 270
    .line 271
    if-eqz v0, :cond_12

    .line 272
    .line 273
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    if-eqz p2, :cond_12

    .line 278
    .line 279
    move p4, v2

    .line 280
    :cond_12
    if-nez p4, :cond_13

    .line 281
    .line 282
    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 283
    .line 284
    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 285
    .line 286
    const/high16 v0, 0x8000000

    .line 287
    .line 288
    and-int/2addr p2, v0

    .line 289
    if-eqz p2, :cond_13

    .line 290
    .line 291
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    iget-object p4, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 296
    .line 297
    iget-object p4, p4, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 298
    .line 299
    invoke-virtual {p2, p4}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    .line 300
    .line 301
    .line 302
    move-result p4

    .line 303
    :cond_13
    if-nez p4, :cond_14

    .line 304
    .line 305
    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 306
    .line 307
    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 308
    .line 309
    and-int/lit16 p2, p2, 0x800

    .line 310
    .line 311
    if-eqz p2, :cond_14

    .line 312
    .line 313
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 314
    .line 315
    invoke-virtual {p2, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p2

    .line 319
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result p2

    .line 327
    if-eqz p2, :cond_14

    .line 328
    .line 329
    move p4, v2

    .line 330
    :cond_14
    if-nez p4, :cond_15

    .line 331
    .line 332
    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 333
    .line 334
    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 335
    .line 336
    const/high16 v0, 0x10000

    .line 337
    .line 338
    and-int/2addr p2, v0

    .line 339
    if-eqz p2, :cond_15

    .line 340
    .line 341
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 342
    .line 343
    const/4 v0, 0x6

    .line 344
    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p2

    .line 348
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result p2

    .line 356
    if-eqz p2, :cond_15

    .line 357
    .line 358
    move p4, v2

    .line 359
    :cond_15
    if-nez p4, :cond_16

    .line 360
    .line 361
    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 362
    .line 363
    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 364
    .line 365
    const/high16 v0, 0x80000

    .line 366
    .line 367
    and-int/2addr p2, v0

    .line 368
    if-eqz p2, :cond_16

    .line 369
    .line 370
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 371
    .line 372
    const/16 v0, 0xa

    .line 373
    .line 374
    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p2

    .line 378
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result p2

    .line 386
    if-eqz p2, :cond_16

    .line 387
    .line 388
    move p4, v2

    .line 389
    :cond_16
    if-nez p4, :cond_17

    .line 390
    .line 391
    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 392
    .line 393
    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 394
    .line 395
    const/high16 v0, 0x100000

    .line 396
    .line 397
    and-int/2addr p2, v0

    .line 398
    if-eqz p2, :cond_17

    .line 399
    .line 400
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 401
    .line 402
    const/16 v0, 0xb

    .line 403
    .line 404
    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object p2

    .line 408
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result p2

    .line 416
    if-eqz p2, :cond_17

    .line 417
    .line 418
    move p4, v2

    .line 419
    :cond_17
    if-nez p4, :cond_18

    .line 420
    .line 421
    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 422
    .line 423
    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 424
    .line 425
    const/high16 v0, 0x200000

    .line 426
    .line 427
    and-int/2addr p2, v0

    .line 428
    if-eqz p2, :cond_18

    .line 429
    .line 430
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 431
    .line 432
    const/16 v0, 0xc

    .line 433
    .line 434
    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p2

    .line 438
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result p2

    .line 446
    if-eqz p2, :cond_18

    .line 447
    .line 448
    move p4, v2

    .line 449
    :cond_18
    if-nez p4, :cond_19

    .line 450
    .line 451
    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 452
    .line 453
    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 454
    .line 455
    const/high16 v0, 0x800000

    .line 456
    .line 457
    and-int/2addr p2, v0

    .line 458
    if-eqz p2, :cond_19

    .line 459
    .line 460
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 461
    .line 462
    const/16 v0, 0xf

    .line 463
    .line 464
    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object p2

    .line 468
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result p2

    .line 476
    if-eqz p2, :cond_19

    .line 477
    .line 478
    move p4, v2

    .line 479
    :cond_19
    if-nez p4, :cond_1b

    .line 480
    .line 481
    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 482
    .line 483
    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 484
    .line 485
    const/high16 v0, 0x1000000

    .line 486
    .line 487
    and-int/2addr p2, v0

    .line 488
    if-eqz p2, :cond_1b

    .line 489
    .line 490
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 491
    .line 492
    const/16 v0, 0x10

    .line 493
    .line 494
    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object p2

    .line 498
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result p2

    .line 506
    if-eqz p2, :cond_1b

    .line 507
    .line 508
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 509
    .line 510
    .line 511
    move-result p2

    .line 512
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 513
    .line 514
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 519
    .line 520
    if-eqz v0, :cond_1b

    .line 521
    .line 522
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    if-nez v1, :cond_1a

    .line 527
    .line 528
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    .line 529
    .line 530
    .line 531
    move-result p2

    .line 532
    if-eqz p2, :cond_1b

    .line 533
    .line 534
    :cond_1a
    move p4, v2

    .line 535
    :cond_1b
    if-nez p4, :cond_1c

    .line 536
    .line 537
    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 538
    .line 539
    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 540
    .line 541
    const/high16 v0, 0x2000000

    .line 542
    .line 543
    and-int/2addr p2, v0

    .line 544
    if-eqz p2, :cond_1c

    .line 545
    .line 546
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 547
    .line 548
    const/16 v0, 0x11

    .line 549
    .line 550
    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object p2

    .line 554
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result p2

    .line 562
    if-eqz p2, :cond_1c

    .line 563
    .line 564
    move p4, v2

    .line 565
    :cond_1c
    if-nez p4, :cond_1d

    .line 566
    .line 567
    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 568
    .line 569
    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 570
    .line 571
    const/high16 p3, 0x400000

    .line 572
    .line 573
    and-int/2addr p2, p3

    .line 574
    if-eqz p2, :cond_1d

    .line 575
    .line 576
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 577
    .line 578
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object p1

    .line 582
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object p0

    .line 586
    if-eqz p0, :cond_1d

    .line 587
    .line 588
    goto :goto_5

    .line 589
    :cond_1d
    move v2, p4

    .line 590
    :goto_5
    return v2
.end method

.method public final shouldGrantPermissionBySignature(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/String;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object p2, p2, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 21
    .line 22
    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 25
    .line 26
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    sget-object p0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 40
    .line 41
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-virtual {p0, p2, v2}, Landroid/content/pm/SigningDetails;->hasCommonSignerWithCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_1

    .line 51
    .line 52
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_1

    .line 65
    .line 66
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_2

    .line 79
    .line 80
    :cond_1
    const/4 v1, 0x1

    .line 81
    :cond_2
    return v1
.end method

.method public final shouldShowRequestPermissionRationale(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eq v0, p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "canShowRequestPermissionRationale for user "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 33
    .line 34
    const-wide/32 v1, 0x10000000

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v2, 0x0

    .line 50
    if-eq v1, v0, :cond_1

    .line 51
    .line 52
    return v2

    .line 53
    :cond_1
    const-string v0, "default:0"

    .line 54
    .line 55
    invoke-virtual {p0, p2, p3, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    return v2

    .line 62
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    :try_start_0
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(IILjava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 70
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    and-int/lit8 v0, p4, 0x16

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    return v2

    .line 78
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 79
    .line 80
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 81
    .line 82
    monitor-enter v3

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 84
    .line 85
    invoke-virtual {v0, p3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    monitor-exit v3

    .line 92
    return v2

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto :goto_4

    .line 95
    :cond_4
    iget-object v0, v0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 96
    .line 97
    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 98
    .line 99
    and-int/lit8 v0, v0, 0x4

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    and-int/lit16 v0, p4, 0x3800

    .line 104
    .line 105
    if-nez v0, :cond_5

    .line 106
    .line 107
    monitor-exit v3

    .line 108
    return v2

    .line 109
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    const/4 v3, 0x1

    .line 115
    :try_start_2
    const-string v4, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 116
    .line 117
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    if-eqz p3, :cond_6

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 124
    .line 125
    const-wide/32 v4, 0x8c7dff3

    .line 126
    .line 127
    .line 128
    invoke-interface {p0, v4, v5, p2, p1}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    .line 129
    .line 130
    .line 131
    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 132
    if-eqz p0, :cond_6

    .line 133
    .line 134
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    .line 136
    .line 137
    return v3

    .line 138
    :catchall_1
    move-exception p0

    .line 139
    goto :goto_3

    .line 140
    :catch_0
    move-exception p0

    .line 141
    goto :goto_1

    .line 142
    :cond_6
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :goto_1
    :try_start_3
    const-string p1, "PermissionManager"

    .line 147
    .line 148
    const-string p2, "Unable to check if compatibility change is enabled."

    .line 149
    .line 150
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :goto_2
    and-int/lit8 p0, p4, 0x1

    .line 155
    .line 156
    if-eqz p0, :cond_7

    .line 157
    .line 158
    move v2, v3

    .line 159
    :cond_7
    return v2

    .line 160
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    .line 162
    .line 163
    throw p0

    .line 164
    :goto_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 166
    .line 167
    throw p0

    .line 168
    :catchall_2
    move-exception p0

    .line 169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    .line 171
    .line 172
    throw p0
.end method

.method public final updateAllPermissions(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    const/4 p2, 0x6

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    :goto_0
    const/4 v0, 0x1

    .line 10
    or-int v5, v0, p2

    .line 11
    .line 12
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v1, p0

    .line 17
    move-object v4, p1

    .line 18
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public final updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 3
    .line 4
    .line 5
    move-result v5

    .line 6
    const/16 v1, 0x3e8

    .line 7
    .line 8
    if-eq v5, v1, :cond_2

    .line 9
    .line 10
    if-eqz v5, :cond_2

    .line 11
    .line 12
    and-int/lit8 v1, p3, 0x4

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    if-eqz p5, :cond_0

    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v2, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 21
    .line 22
    const-string v3, "Need android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY to change policy flags"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 29
    .line 30
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/16 v2, 0x1d

    .line 35
    .line 36
    if-ge v1, v2, :cond_1

    .line 37
    .line 38
    :goto_0
    const/4 v1, 0x1

    .line 39
    :goto_1
    move v7, v1

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY needs  to be checked for packages targeting 29 or later when changing policy flags"

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_2
    const/4 v1, 0x0

    .line 50
    goto :goto_1

    .line 51
    :goto_2
    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 52
    .line 53
    move-object v0, p0

    .line 54
    move-object v1, p1

    .line 55
    move-object v2, p2

    .line 56
    move v3, p3

    .line 57
    move v4, p4

    .line 58
    move/from16 v6, p7

    .line 59
    .line 60
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final updatePermissionFlagsForAllApps(III)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 6
    .line 7
    invoke-virtual {v1, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string/jumbo v1, "updatePermissionFlagsForAllApps"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {p0, v0, p3, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IILjava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x3e8

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    :goto_0
    move v7, p1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    and-int/lit8 p1, p1, -0x11

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    if-eq v0, v1, :cond_2

    .line 34
    .line 35
    :goto_2
    move v8, p2

    .line 36
    goto :goto_3

    .line 37
    :cond_2
    and-int/lit8 p2, p2, -0x11

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_3
    new-array p1, v2, [Z

    .line 41
    .line 42
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 43
    .line 44
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    move-object v3, v0

    .line 47
    move-object v4, p0

    .line 48
    move v5, p3

    .line 49
    move-object v6, p1

    .line 50
    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I[ZII)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 54
    .line 55
    .line 56
    const/4 p2, 0x0

    .line 57
    aget-boolean p1, p1, p2

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 62
    .line 63
    filled-new-array {p3}, [I

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

.method public final updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 3
    .line 4
    invoke-virtual {v1, p6}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string/jumbo v1, "updatePermissionFlags"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "updatePermissionFlags"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p5, p6, v1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IILjava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    and-int/lit8 v1, p3, 0x4

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    if-eqz p7, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 31
    .line 32
    const-string/jumbo p1, "updatePermissionFlags requires android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_2
    :goto_0
    const/16 p7, 0x3e8

    .line 40
    .line 41
    if-eq p5, p7, :cond_3

    .line 42
    .line 43
    and-int/lit8 p3, p3, -0x31

    .line 44
    .line 45
    and-int/lit16 p4, p4, -0x7831

    .line 46
    .line 47
    :cond_3
    iget-object p7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 48
    .line 49
    invoke-virtual {p7, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 50
    .line 51
    .line 52
    move-result-object p7

    .line 53
    if-nez p7, :cond_4

    .line 54
    .line 55
    const-string p0, "PermissionManager"

    .line 56
    .line 57
    const-string p2, "Unknown package: "

    .line 58
    .line 59
    invoke-static {p2, p1, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {v1, p5, p6, p1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 67
    .line 68
    .line 69
    move-result p5

    .line 70
    if-nez p5, :cond_c

    .line 71
    .line 72
    invoke-interface {p7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 73
    .line 74
    .line 75
    move-result-object p5

    .line 76
    invoke-interface {p5, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p5

    .line 80
    if-nez p5, :cond_6

    .line 81
    .line 82
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 83
    .line 84
    invoke-virtual {v1, p6, p1}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(ILjava/lang/String;)[Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    array-length v3, v1

    .line 89
    move v4, v2

    .line 90
    :goto_1
    if-ge v4, v3, :cond_6

    .line 91
    .line 92
    aget-object v5, v1, v4

    .line 93
    .line 94
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 95
    .line 96
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    if-eqz v5, :cond_5

    .line 101
    .line 102
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-interface {v5, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_5

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_5
    add-int/2addr v4, v0

    .line 114
    goto :goto_1

    .line 115
    :cond_6
    move v0, p5

    .line 116
    :goto_2
    iget-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 117
    .line 118
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 119
    .line 120
    monitor-enter p5

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 122
    .line 123
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-eqz v1, :cond_b

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-interface {p7}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    invoke-virtual {p0, v4, p6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    if-nez p0, :cond_7

    .line 142
    .line 143
    const-string p0, "PermissionManager"

    .line 144
    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string p3, "Missing permissions state for "

    .line 151
    .line 152
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string p1, " and user "

    .line 159
    .line 160
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    monitor-exit p5

    .line 174
    return-void

    .line 175
    :catchall_0
    move-exception p0

    .line 176
    goto :goto_4

    .line 177
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-nez v4, :cond_8

    .line 182
    .line 183
    if-nez v0, :cond_8

    .line 184
    .line 185
    const-string p0, "PermissionManager"

    .line 186
    .line 187
    new-instance p3, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string p4, "Permission "

    .line 193
    .line 194
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string p2, " isn\'t requested by package "

    .line 201
    .line 202
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    monitor-exit p5

    .line 216
    return-void

    .line 217
    :cond_8
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    if-eqz p0, :cond_a

    .line 223
    .line 224
    if-eqz p8, :cond_a

    .line 225
    .line 226
    if-nez v3, :cond_9

    .line 227
    .line 228
    invoke-virtual {p8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionUpdated()V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_9
    filled-new-array {p6}, [I

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-interface {p7}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    invoke-virtual {p8, p0, v2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionUpdated([IZI)V

    .line 241
    .line 242
    .line 243
    :cond_a
    :goto_3
    return-void

    .line 244
    :cond_b
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 245
    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string p3, "Unknown permission: "

    .line 252
    .line 253
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw p0

    .line 267
    :goto_4
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 269
    .line 270
    throw p0

    .line 271
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 272
    .line 273
    const-string p2, "Unknown package: "

    .line 274
    .line 275
    invoke-static {p2, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw p0
.end method

.method public final updatePermissionStatesAndFlagsInternalForMDM(IIILjava/lang/String;Ljava/util/List;Z)Z
    .locals 18

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v9, p1

    .line 4
    .line 5
    move/from16 v10, p3

    .line 6
    .line 7
    move-object/from16 v0, p4

    .line 8
    .line 9
    const/4 v11, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 13
    .line 14
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v2, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    const/4 v13, 0x1

    .line 55
    move v0, v13

    .line 56
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_6

    .line 61
    .line 62
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 67
    .line 68
    :try_start_1
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 69
    .line 70
    .line 71
    move-result-object v14

    .line 72
    const-string v1, "AndroidPackage is null "

    .line 73
    .line 74
    invoke-static {v14, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iget-object v15, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 78
    .line 79
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 80
    .line 81
    monitor-enter v15
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 82
    :try_start_2
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {v8, v1, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    .line 87
    .line 88
    .line 89
    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v2, "Missing permissions state for "

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v2, " and user "

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    .line 121
    .line 122
    move-object/from16 v6, p5

    .line 123
    .line 124
    :try_start_4
    invoke-virtual {v8, v14, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getRequestedRuntimePermissionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-eqz p6, :cond_1

    .line 129
    .line 130
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 131
    .line 132
    move-object v3, v1

    .line 133
    check-cast v3, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_1

    .line 140
    .line 141
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 142
    .line 143
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    goto :goto_2

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    move/from16 v2, p2

    .line 150
    .line 151
    goto/16 :goto_9

    .line 152
    .line 153
    :cond_1
    :goto_2
    check-cast v1, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v16

    .line 159
    move/from16 v17, v0

    .line 160
    .line 161
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    move-object v5, v0

    .line 172
    check-cast v5, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 173
    .line 174
    :try_start_5
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 175
    .line 176
    invoke-virtual {v0, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v2, "BasePermission is null: "

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    invoke-static {v10, v14, v7, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPossibleToModify(ILcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    if-ne v9, v13, :cond_2

    .line 204
    .line 205
    move-object/from16 v1, p0

    .line 206
    .line 207
    move/from16 v2, p3

    .line 208
    .line 209
    move-object v3, v14

    .line 210
    move-object v4, v7

    .line 211
    move-object v6, v0

    .line 212
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->handleGrantLocked(ILcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)Z

    .line 213
    .line 214
    .line 215
    move-result v1
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 216
    move-object v13, v7

    .line 217
    goto :goto_4

    .line 218
    :catch_0
    move-exception v0

    .line 219
    move/from16 v2, p2

    .line 220
    .line 221
    move-object v13, v7

    .line 222
    goto :goto_5

    .line 223
    :catch_1
    move-exception v0

    .line 224
    move/from16 v2, p2

    .line 225
    .line 226
    move-object v13, v7

    .line 227
    goto :goto_6

    .line 228
    :cond_2
    const/4 v1, 0x2

    .line 229
    if-ne v9, v1, :cond_3

    .line 230
    .line 231
    move-object/from16 v1, p0

    .line 232
    .line 233
    move/from16 v2, p3

    .line 234
    .line 235
    move-object v3, v14

    .line 236
    move-object v4, v7

    .line 237
    move-object v6, v0

    .line 238
    move-object v13, v7

    .line 239
    move/from16 v7, p6

    .line 240
    .line 241
    :try_start_6
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->handleDenyLocked(ILcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;Z)Z

    .line 242
    .line 243
    .line 244
    move-result v1
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 245
    goto :goto_4

    .line 246
    :catch_2
    move-exception v0

    .line 247
    move/from16 v2, p2

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :catch_3
    move-exception v0

    .line 251
    move/from16 v2, p2

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_3
    move-object v13, v7

    .line 255
    const/4 v1, 0x1

    .line 256
    :goto_4
    if-eqz v1, :cond_4

    .line 257
    .line 258
    const/4 v1, 0x4

    .line 259
    move/from16 v2, p2

    .line 260
    .line 261
    :try_start_7
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 262
    .line 263
    .line 264
    goto :goto_8

    .line 265
    :catchall_1
    move-exception v0

    .line 266
    goto :goto_9

    .line 267
    :catch_4
    move-exception v0

    .line 268
    goto :goto_5

    .line 269
    :catch_5
    move-exception v0

    .line 270
    goto :goto_6

    .line 271
    :cond_4
    move/from16 v2, p2

    .line 272
    .line 273
    goto :goto_7

    .line 274
    :goto_5
    :try_start_8
    const-string v1, "PermissionManager"

    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    goto :goto_8

    .line 284
    :goto_6
    const-string v1, "PermissionManager"

    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    :goto_7
    move/from16 v17, v11

    .line 294
    .line 295
    :goto_8
    move-object/from16 v6, p5

    .line 296
    .line 297
    move-object v7, v13

    .line 298
    const/4 v13, 0x1

    .line 299
    goto/16 :goto_3

    .line 300
    .line 301
    :cond_5
    move/from16 v2, p2

    .line 302
    .line 303
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 304
    :try_start_9
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 305
    .line 306
    move/from16 v0, v17

    .line 307
    .line 308
    goto :goto_b

    .line 309
    :catch_6
    move-exception v0

    .line 310
    goto :goto_c

    .line 311
    :catch_7
    move-exception v0

    .line 312
    goto :goto_a

    .line 313
    :catch_8
    move-exception v0

    .line 314
    move/from16 v2, p2

    .line 315
    .line 316
    :try_start_a
    const-string v1, "PermissionManager"

    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 326
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 327
    .line 328
    return v11

    .line 329
    :goto_9
    :try_start_b
    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 330
    :try_start_c
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 331
    .line 332
    throw v0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 333
    :catch_9
    move-exception v0

    .line 334
    move/from16 v2, p2

    .line 335
    .line 336
    :goto_a
    :try_start_d
    const-string v1, "PermissionManager"

    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    move v0, v11

    .line 346
    :goto_b
    const/4 v13, 0x1

    .line 347
    goto/16 :goto_1

    .line 348
    .line 349
    :cond_6
    iget-object v1, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 350
    .line 351
    filled-new-array/range {p3 .. p3}, [I

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    const/4 v3, 0x1

    .line 356
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 357
    .line 358
    .line 359
    return v0

    .line 360
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    .line 362
    .line 363
    const-string v1, "PermissionManager"

    .line 364
    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    const-string v3, "Failed with Exception "

    .line 368
    .line 369
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-static {v0, v2, v1}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    return v11
.end method

.method public final updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    const/4 v10, 0x2

    .line 8
    const/4 v11, 0x1

    .line 9
    if-nez v8, :cond_0

    .line 10
    .line 11
    move v3, v11

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 14
    .line 15
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_4

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/android/server/pm/permission/Permission;

    .line 42
    .line 43
    iget-object v5, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 44
    .line 45
    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    if-eqz v9, :cond_2

    .line 55
    .line 56
    iget-object v3, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 57
    .line 58
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v9, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->hasPermission(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    goto/16 :goto_f

    .line 69
    .line 70
    :cond_2
    :goto_1
    const-string v3, "PermissionManager"

    .line 71
    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v6, "Removing permission tree "

    .line 78
    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v6, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 83
    .line 84
    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v6, " that used to be declared by "

    .line 90
    .line 91
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v4, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 95
    .line 96
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 109
    .line 110
    .line 111
    :cond_3
    move v3, v11

    .line 112
    goto :goto_0

    .line 113
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 115
    .line 116
    :goto_2
    if-nez v8, :cond_5

    .line 117
    .line 118
    move-object/from16 v10, p5

    .line 119
    .line 120
    move v5, v11

    .line 121
    goto/16 :goto_a

    .line 122
    .line 123
    :cond_5
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 124
    .line 125
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 126
    .line 127
    monitor-enter v2

    .line 128
    :try_start_1
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 129
    .line 130
    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const/4 v4, 0x0

    .line 141
    const/4 v5, 0x0

    .line 142
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-eqz v6, :cond_9

    .line 147
    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    check-cast v6, Lcom/android/server/pm/permission/Permission;

    .line 153
    .line 154
    iget v7, v6, Lcom/android/server/pm/permission/Permission;->mType:I

    .line 155
    .line 156
    if-ne v7, v10, :cond_6

    .line 157
    .line 158
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 159
    .line 160
    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 161
    .line 162
    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    iget v13, v6, Lcom/android/server/pm/permission/Permission;->mType:I

    .line 167
    .line 168
    if-ne v13, v10, :cond_6

    .line 169
    .line 170
    iget-object v13, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 171
    .line 172
    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v13, v7}, Lcom/android/server/pm/permission/Permission;->findPermissionTree(Ljava/lang/String;Ljava/util/Collection;)Lcom/android/server/pm/permission/Permission;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    if-eqz v7, :cond_6

    .line 179
    .line 180
    iget-object v13, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 181
    .line 182
    iget-object v14, v7, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 183
    .line 184
    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 185
    .line 186
    iput-object v14, v13, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 187
    .line 188
    iput-boolean v11, v6, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 189
    .line 190
    iget v7, v7, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 191
    .line 192
    iput v7, v6, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :catchall_1
    move-exception v0

    .line 196
    goto/16 :goto_e

    .line 197
    .line 198
    :cond_6
    :goto_4
    iget-object v7, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 199
    .line 200
    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    if-nez v7, :cond_7

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_7
    if-nez v4, :cond_8

    .line 210
    .line 211
    new-instance v4, Landroid/util/ArraySet;

    .line 212
    .line 213
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 214
    .line 215
    .line 216
    :cond_8
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move v5, v11

    .line 220
    goto :goto_3

    .line 221
    :cond_9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 223
    .line 224
    if-eqz v4, :cond_11

    .line 225
    .line 226
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 227
    .line 228
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_11

    .line 241
    .line 242
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    check-cast v4, Lcom/android/server/pm/permission/Permission;

    .line 247
    .line 248
    if-eqz v1, :cond_c

    .line 249
    .line 250
    iget-object v6, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 251
    .line 252
    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 253
    .line 254
    invoke-static {v1, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->hasPermission(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    if-nez v6, :cond_a

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_a
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 262
    .line 263
    iget-object v7, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 264
    .line 265
    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 272
    .line 273
    iget-object v13, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 274
    .line 275
    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v7, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 282
    .line 283
    sget-boolean v14, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 284
    .line 285
    monitor-enter v13

    .line 286
    if-eqz v6, :cond_b

    .line 287
    .line 288
    if-eqz v7, :cond_b

    .line 289
    .line 290
    :try_start_2
    monitor-exit v13

    .line 291
    goto :goto_5

    .line 292
    :catchall_2
    move-exception v0

    .line 293
    goto :goto_6

    .line 294
    :cond_b
    const-string v6, "PermissionManager"

    .line 295
    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    const-string v14, "Removing dangling permission: "

    .line 302
    .line 303
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    iget-object v14, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 307
    .line 308
    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v14, " from package "

    .line 314
    .line 315
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    iget-object v14, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 319
    .line 320
    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 333
    .line 334
    iget-object v4, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 335
    .line 336
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 337
    .line 338
    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 339
    .line 340
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    monitor-exit v13

    .line 344
    goto :goto_5

    .line 345
    :goto_6
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 346
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 347
    .line 348
    throw v0

    .line 349
    :cond_c
    :goto_7
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 350
    .line 351
    iget-object v7, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 352
    .line 353
    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 354
    .line 355
    check-cast v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 356
    .line 357
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 358
    .line 359
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    invoke-interface {v6, v7}, Lcom/android/server/pm/Computer;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    if-eqz v6, :cond_f

    .line 368
    .line 369
    iget-object v6, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 370
    .line 371
    if-eqz v6, :cond_f

    .line 372
    .line 373
    iget-object v7, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 374
    .line 375
    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 376
    .line 377
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPermissions()Ljava/util/List;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 386
    .line 387
    .line 388
    move-result v13

    .line 389
    if-eqz v13, :cond_f

    .line 390
    .line 391
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v13

    .line 395
    check-cast v13, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 396
    .line 397
    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v14

    .line 401
    invoke-static {v7, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 402
    .line 403
    .line 404
    move-result v14

    .line 405
    if-eqz v14, :cond_d

    .line 406
    .line 407
    iget-object v14, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 408
    .line 409
    iget v14, v14, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 410
    .line 411
    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    .line 412
    .line 413
    .line 414
    move-result v13

    .line 415
    if-ne v14, v13, :cond_d

    .line 416
    .line 417
    :cond_e
    move-object/from16 v10, p5

    .line 418
    .line 419
    goto :goto_9

    .line 420
    :cond_f
    const-string v6, "PermissionManager"

    .line 421
    .line 422
    new-instance v7, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    const-string v13, "Removing permission "

    .line 425
    .line 426
    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    iget-object v13, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 430
    .line 431
    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 432
    .line 433
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    const-string v13, " that used to be declared by "

    .line 437
    .line 438
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    iget-object v13, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 442
    .line 443
    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 444
    .line 445
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v7

    .line 452
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .line 454
    .line 455
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 456
    .line 457
    .line 458
    move-result v6

    .line 459
    if-eqz v6, :cond_10

    .line 460
    .line 461
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 462
    .line 463
    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    array-length v7, v6

    .line 468
    const/4 v13, 0x0

    .line 469
    :goto_8
    if-ge v13, v7, :cond_e

    .line 470
    .line 471
    aget v14, v6, v13

    .line 472
    .line 473
    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 474
    .line 475
    new-instance v12, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;

    .line 476
    .line 477
    move-object/from16 v10, p5

    .line 478
    .line 479
    invoke-direct {v12, v0, v4, v14, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v15, v12}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 483
    .line 484
    .line 485
    add-int/2addr v13, v11

    .line 486
    const/4 v10, 0x2

    .line 487
    goto :goto_8

    .line 488
    :cond_10
    move-object/from16 v10, p5

    .line 489
    .line 490
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 491
    .line 492
    new-instance v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;

    .line 493
    .line 494
    const/4 v12, 0x2

    .line 495
    invoke-direct {v7, v0, v4, v12}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Ljava/lang/Object;I)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 499
    .line 500
    .line 501
    :goto_9
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 502
    .line 503
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 504
    .line 505
    monitor-enter v6

    .line 506
    :try_start_3
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 507
    .line 508
    iget-object v4, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 509
    .line 510
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 511
    .line 512
    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 513
    .line 514
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    monitor-exit v6

    .line 518
    const/4 v10, 0x2

    .line 519
    goto/16 :goto_5

    .line 520
    .line 521
    :catchall_3
    move-exception v0

    .line 522
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 523
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 524
    .line 525
    throw v0

    .line 526
    :cond_11
    move-object/from16 v10, p5

    .line 527
    .line 528
    :goto_a
    or-int v1, v3, v5

    .line 529
    .line 530
    if-eqz v1, :cond_12

    .line 531
    .line 532
    const-string v1, "PermissionManager"

    .line 533
    .line 534
    const-string v2, "Permission ownership changed. Updating all permissions."

    .line 535
    .line 536
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    or-int/lit8 v1, p4, 0x1

    .line 540
    .line 541
    move v12, v1

    .line 542
    goto :goto_b

    .line 543
    :cond_12
    move/from16 v12, p4

    .line 544
    .line 545
    :goto_b
    const-string/jumbo v1, "restorePermissionState"

    .line 546
    .line 547
    .line 548
    const-wide/32 v13, 0x40000

    .line 549
    .line 550
    .line 551
    invoke-static {v13, v14, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 552
    .line 553
    .line 554
    and-int/lit8 v1, v12, 0x1

    .line 555
    .line 556
    if-eqz v1, :cond_14

    .line 557
    .line 558
    and-int/lit8 v1, v12, 0x4

    .line 559
    .line 560
    if-eqz v1, :cond_13

    .line 561
    .line 562
    move v4, v11

    .line 563
    goto :goto_c

    .line 564
    :cond_13
    const/4 v4, 0x0

    .line 565
    :goto_c
    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 566
    .line 567
    new-instance v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;

    .line 568
    .line 569
    move-object v1, v7

    .line 570
    move-object/from16 v2, p0

    .line 571
    .line 572
    move-object/from16 v3, p2

    .line 573
    .line 574
    move-object/from16 v5, p3

    .line 575
    .line 576
    move-object/from16 v6, p1

    .line 577
    .line 578
    move-object v11, v7

    .line 579
    move-object/from16 v7, p5

    .line 580
    .line 581
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v15, v11}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 585
    .line 586
    .line 587
    :cond_14
    if-eqz v9, :cond_16

    .line 588
    .line 589
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    const/4 v2, 0x2

    .line 594
    and-int/2addr v2, v12

    .line 595
    if-eqz v2, :cond_15

    .line 596
    .line 597
    move-object/from16 v2, p3

    .line 598
    .line 599
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result v1

    .line 603
    if-eqz v1, :cond_15

    .line 604
    .line 605
    const/4 v3, 0x1

    .line 606
    goto :goto_d

    .line 607
    :cond_15
    const/4 v3, 0x0

    .line 608
    :goto_d
    const/4 v6, -0x1

    .line 609
    move-object/from16 v1, p0

    .line 610
    .line 611
    move-object/from16 v2, p2

    .line 612
    .line 613
    move-object/from16 v4, p1

    .line 614
    .line 615
    move-object/from16 v5, p5

    .line 616
    .line 617
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restorePermissionState(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V

    .line 618
    .line 619
    .line 620
    :cond_16
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 621
    .line 622
    .line 623
    return-void

    .line 624
    :goto_e
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 625
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 626
    .line 627
    throw v0

    .line 628
    :goto_f
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 629
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 630
    .line 631
    throw v0
.end method

.method public final writeLegacyPermissionStateTEMP()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 3
    .line 4
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    .line 8
    .line 9
    iget-object v3, v2, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    new-array v4, v3, [I

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    :goto_0
    if-ge v5, v3, :cond_0

    .line 19
    .line 20
    iget-object v6, v2, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    aput v6, v4, v5

    .line 27
    .line 28
    add-int/2addr v5, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 32
    .line 33
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;

    .line 34
    .line 35
    invoke-direct {v2, p0, v4, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackageSetting(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 45
    .line 46
    throw p0
.end method

.method public final writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x2

    .line 4
    if-ge v1, v2, :cond_3

    .line 5
    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 12
    .line 13
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 14
    .line 15
    monitor-enter v3

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 19
    .line 20
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_4

    .line 29
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 30
    .line 31
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    :goto_1
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lcom/android/server/pm/permission/Permission;

    .line 52
    .line 53
    new-instance v6, Lcom/android/server/pm/permission/LegacyPermission;

    .line 54
    .line 55
    iget-object v7, v5, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 56
    .line 57
    iget v5, v5, Lcom/android/server/pm/permission/Permission;->mType:I

    .line 58
    .line 59
    sget-object v8, Llibcore/util/EmptyArray;->INT:[I

    .line 60
    .line 61
    invoke-direct {v6, v7, v5, v0, v8}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 70
    .line 71
    if-nez v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissions(Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissionTrees(Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 85
    .line 86
    throw p0

    .line 87
    :cond_3
    return-void
.end method
