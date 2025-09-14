.class public final Lcom/android/server/slice/SliceManagerService;
.super Landroid/app/slice/ISliceManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field public final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field public final mAssistantLookup:Landroid/util/SparseArray;

.field public mCachedDefaultHome:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mHomeLookup:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPermissions:Lcom/android/server/slice/SlicePermissionManager;

.field public final mPinnedSlicesByUri:Landroid/util/ArrayMap;

.field public final mReceiver:Lcom/android/server/slice/SliceManagerService$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/app/slice/ISliceManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mCachedDefaultHome:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v2, Lcom/android/server/slice/SliceManagerService$1;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/android/server/slice/SliceManagerService$1;-><init>(Lcom/android/server/slice/SliceManagerService;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 49
    .line 50
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 54
    .line 55
    const-class v0, Landroid/app/AppOpsManager;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/app/AppOpsManager;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 64
    .line 65
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    .line 66
    .line 67
    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 71
    .line 72
    new-instance v6, Landroid/os/Handler;

    .line 73
    .line 74
    invoke-direct {v6, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 75
    .line 76
    .line 77
    iput-object v6, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    .line 78
    .line 79
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 88
    .line 89
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager;

    .line 90
    .line 91
    new-instance v1, Ljava/io/File;

    .line 92
    .line 93
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    const-string/jumbo v4, "system/slice"

    .line 98
    .line 99
    .line 100
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/slice/SlicePermissionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    .line 107
    .line 108
    new-instance v4, Landroid/content/IntentFilter;

    .line 109
    .line 110
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string p2, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 114
    .line 115
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    .line 119
    .line 120
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string/jumbo p2, "package"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance p2, Lcom/android/server/slice/SliceManagerService$RoleObserver;

    .line 130
    .line 131
    invoke-direct {p2, p0}, Lcom/android/server/slice/SliceManagerService$RoleObserver;-><init>(Lcom/android/server/slice/SliceManagerService;)V

    .line 132
    .line 133
    .line 134
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 135
    .line 136
    const/4 v5, 0x0

    .line 137
    move-object v1, p1

    .line 138
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    return-void
.end method


# virtual methods
.method public final applyRestore([BI)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    const-string v0, "SliceManagerService"

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p0, "applyRestore: no payload to restore for user "

    .line 14
    .line 15
    invoke-static {p2, p0, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    if-eqz p2, :cond_1

    .line 20
    .line 21
    const-string p0, "applyRestore: cannot restore policy for user "

    .line 22
    .line 23
    invoke-static {p2, p0, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance p2, Ljava/io/ByteArrayInputStream;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {p1, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SlicePermissionManager;->readRestore(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    const-string p1, "applyRestore: error reading payload"

    .line 57
    .line 58
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void

    .line 62
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 63
    .line 64
    const-string p1, "Caller must be system"

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;II[Ljava/lang/String;)I
    .locals 7

    .line 1
    const/4 v3, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v4, p3

    .line 6
    move v5, p4

    .line 7
    move-object v6, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/slice/SliceManagerService;->checkSlicePermissionInternal(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final checkSlicePermissionInternal(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I
    .locals 17

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
    move-object/from16 v1, p3

    .line 8
    .line 9
    move/from16 v10, p5

    .line 10
    .line 11
    move-object/from16 v11, p6

    .line 12
    .line 13
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v12, -0x1

    .line 18
    const/4 v13, 0x0

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v14

    .line 31
    array-length v15, v14

    .line 32
    move v7, v13

    .line 33
    :goto_0
    if-ge v7, v15, :cond_1

    .line 34
    .line 35
    aget-object v4, v14, v7

    .line 36
    .line 37
    move-object/from16 v1, p0

    .line 38
    .line 39
    move-object/from16 v2, p1

    .line 40
    .line 41
    move-object/from16 v3, p2

    .line 42
    .line 43
    move/from16 v5, p4

    .line 44
    .line 45
    move/from16 v6, p5

    .line 46
    .line 47
    move/from16 v16, v7

    .line 48
    .line 49
    move-object/from16 v7, p6

    .line 50
    .line 51
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/slice/SliceManagerService;->checkSlicePermissionInternal(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_0

    .line 56
    .line 57
    return v13

    .line 58
    :cond_0
    add-int/lit8 v7, v16, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return v12

    .line 62
    :cond_2
    invoke-virtual {v0, v2, v1}, Lcom/android/server/slice/SliceManagerService;->hasFullSliceAccess(ILjava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    return v13

    .line 69
    :cond_3
    iget-object v3, v0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    new-instance v4, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 75
    .line 76
    invoke-direct {v4, v1, v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v4}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v8, v2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    iget-boolean v5, v3, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    .line 88
    .line 89
    const/4 v6, 0x1

    .line 90
    if-nez v5, :cond_8

    .line 91
    .line 92
    invoke-static/range {p1 .. p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    monitor-enter v3

    .line 97
    :try_start_0
    const-string v7, "content"

    .line 98
    .line 99
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v14

    .line 103
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    if-nez v7, :cond_4

    .line 108
    .line 109
    monitor-exit v3

    .line 110
    move v4, v13

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    :try_start_1
    new-instance v7, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 113
    .line 114
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v14

    .line 118
    invoke-direct {v7, v14, v4}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :try_start_2
    iget-object v4, v3, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 123
    .line 124
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    .line 130
    :try_start_3
    monitor-exit v3

    .line 131
    if-eqz v4, :cond_6

    .line 132
    .line 133
    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    iget-object v4, v4, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 138
    .line 139
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-eqz v7, :cond_6

    .line 148
    .line 149
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    check-cast v7, [Ljava/lang/String;

    .line 154
    .line 155
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result v14

    .line 159
    new-array v14, v14, [Ljava/lang/String;

    .line 160
    .line 161
    invoke-interface {v5, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v14

    .line 165
    check-cast v14, [Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v7, v14}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    if-eqz v7, :cond_5

    .line 172
    .line 173
    move v4, v6

    .line 174
    goto :goto_1

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    goto :goto_3

    .line 177
    :cond_6
    move v4, v13

    .line 178
    :goto_1
    monitor-exit v3

    .line 179
    :goto_2
    if-eqz v4, :cond_7

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_7
    move v6, v13

    .line 183
    goto :goto_4

    .line 184
    :catchall_1
    move-exception v0

    .line 185
    :try_start_4
    monitor-exit v3

    .line 186
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 187
    :goto_3
    monitor-exit v3

    .line 188
    throw v0

    .line 189
    :cond_8
    :goto_4
    if-eqz v6, :cond_9

    .line 190
    .line 191
    return v13

    .line 192
    :cond_9
    if-eqz v11, :cond_b

    .line 193
    .line 194
    if-eqz v9, :cond_b

    .line 195
    .line 196
    invoke-virtual {v0, v9, v8, v2}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v9}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    array-length v3, v11

    .line 203
    move v4, v13

    .line 204
    :goto_5
    if-ge v4, v3, :cond_b

    .line 205
    .line 206
    aget-object v5, v11, v4

    .line 207
    .line 208
    iget-object v6, v0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    .line 209
    .line 210
    move/from16 v7, p4

    .line 211
    .line 212
    invoke-virtual {v6, v5, v7, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-nez v5, :cond_a

    .line 217
    .line 218
    invoke-static {v8, v2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    invoke-virtual {v0, v4, v8}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(ILandroid/net/Uri;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    iget-object v0, v0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    .line 227
    .line 228
    move-object/from16 v1, p3

    .line 229
    .line 230
    move-object/from16 v5, p1

    .line 231
    .line 232
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    .line 233
    .line 234
    .line 235
    return v13

    .line 236
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_b
    return v12
.end method

.method public createPinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/slice/PinnedSliceState;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/slice/PinnedSliceState;-><init>(Lcom/android/server/slice/SliceManagerService;Landroid/net/Uri;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final enforceAccess(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v5

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    move-object v3, p2

    .line 14
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/slice/SliceManagerService;->checkSlicePermissionInternal(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(ILandroid/net/Uri;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 44
    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v0, "Access to slice "

    .line 48
    .line 49
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, " is required"

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-static {p1, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eq p1, p2, :cond_2

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 85
    .line 86
    const-string p2, "Slice interaction across users requires INTERACT_ACROSS_USERS_FULL"

    .line 87
    .line 88
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method

.method public final enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p2}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(ILandroid/net/Uri;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p3, "Caller must own "

    .line 19
    .line 20
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
.end method

.method public final getAllPackagesGranted(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "content"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0, p1}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(ILandroid/net/Uri;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    new-array p0, v0, [Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v1, Landroid/util/ArraySet;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 41
    .line 42
    invoke-direct {v2, p1, v0}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Lcom/android/server/slice/SlicePermissionManager;->getProvider(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceProviderPermissions;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    .line 60
    .line 61
    monitor-exit p0

    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 77
    .line 78
    monitor-enter p1

    .line 79
    :try_start_1
    new-instance v0, Landroid/util/ArraySet;

    .line 80
    .line 81
    iget-object v2, p1, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    .line 82
    .line 83
    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    monitor-exit p1

    .line 87
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    monitor-exit p1

    .line 111
    throw p0

    .line 112
    :cond_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    new-array p0, p0, [Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    check-cast p0, [Ljava/lang/String;

    .line 123
    .line 124
    :goto_1
    return-object p0

    .line 125
    :catchall_1
    move-exception p1

    .line 126
    monitor-exit p0

    .line 127
    throw p1
.end method

.method public final getBackupPayload(I)[B
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const-string v1, "SliceManagerService"

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p0, "getBackupPayload: cannot backup policy for user "

    .line 15
    .line 16
    invoke-static {p1, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    sget-object v4, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    .line 34
    .line 35
    invoke-virtual {v4}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    .line 43
    .line 44
    invoke-virtual {p0, v3}, Lcom/android/server/slice/SlicePermissionManager;->writeBackup(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 51
    .line 52
    .line 53
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-object p0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v3, "getBackupPayload: error writing payload for user "

    .line 59
    .line 60
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 75
    .line 76
    const-string p1, "Caller must be system"

    .line 77
    .line 78
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public getDefaultHome(I)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mCachedDefaultHome:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 16
    .line 17
    check-cast v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 18
    .line 19
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v3, p1, v2}, Lcom/android/server/pm/Computer;->getHomeActivitiesAsUser(ILjava/util/List;)Landroid/content/ComponentName;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_3

    .line 39
    :cond_1
    move-object v4, v3

    .line 40
    :goto_0
    iput-object v4, p0, Lcom/android/server/slice/SliceManagerService;->mCachedDefaultHome:Ljava/lang/String;

    .line 41
    .line 42
    if-nez p1, :cond_4

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    const/high16 v4, -0x80000000

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    :goto_1
    if-ge v5, p0, :cond_4

    .line 52
    .line 53
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 58
    .line 59
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 60
    .line 61
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 62
    .line 63
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-nez v7, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    iget v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    .line 71
    .line 72
    if-ge v7, v4, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iget-object p1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget v4, v6, Landroid/content/pm/ResolveInfo;->priority:I

    .line 82
    .line 83
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    if-eqz p1, :cond_5

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    .line 94
    .line 95
    return-object v3

    .line 96
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    .line 98
    .line 99
    throw p0
.end method

.method public final getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;
    .locals 3

    .line 1
    const-string v0, "Slice "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/slice/PinnedSliceState;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    monitor-exit v1

    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " not pinned"

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public final getPinnedSlices(Ljava/lang/String;)[Landroid/net/Uri;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/android/server/slice/PinnedSliceState;

    .line 41
    .line 42
    iget-object v4, v3, Lcom/android/server/slice/PinnedSliceState;->mPkg:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_0

    .line 49
    .line 50
    iget-object v3, v3, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    .line 51
    .line 52
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-ne v4, v0, :cond_0

    .line 57
    .line 58
    invoke-static {v3}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    new-array p0, p0, [Landroid/net/Uri;

    .line 74
    .line 75
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, [Landroid/net/Uri;

    .line 80
    .line 81
    return-object p0

    .line 82
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    throw p0
.end method

.method public final getPinnedSpecs(Landroid/net/Uri;Ljava/lang/String;)[Landroid/app/slice/SliceSpec;
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Landroid/net/Uri;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-static {p1, p2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    .line 24
    .line 25
    return-object p0
.end method

.method public final getProviderPkg(ILandroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p2, p1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-virtual {p0, v2, p2, p1}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final grantPermissionFromUser(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v0, "android.permission.MANAGE_SLICE_PERMISSIONS"

    .line 7
    .line 8
    const-string v1, "Slice granting requires MANAGE_SLICE_PERMISSIONS"

    .line 9
    .line 10
    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz p4, :cond_1

    .line 22
    .line 23
    iget-object p3, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance p4, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 29
    .line 30
    invoke-direct {p4, p2, v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p4}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iget-boolean p3, p2, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    .line 38
    .line 39
    const/4 p4, 0x1

    .line 40
    if-ne p3, p4, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput-boolean p4, p2, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    .line 44
    .line 45
    iget-object p3, p2, Lcom/android/server/slice/SliceClientPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    .line 46
    .line 47
    invoke-interface {p3, p2}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    const-string p4, ""

    .line 56
    .line 57
    invoke-virtual {p3, p4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-static {v5, v2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {p0, v4, v5}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(ILandroid/net/Uri;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    .line 74
    .line 75
    move-object v1, p2

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 80
    .line 81
    .line 82
    move-result-wide p2

    .line 83
    :try_start_0
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const/4 p4, 0x0

    .line 90
    invoke-virtual {p0, p1, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    .line 100
    .line 101
    throw p0
.end method

.method public final grantSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    invoke-virtual {p0, p1, p3, v5}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    .line 16
    .line 17
    move-object v2, p2

    .line 18
    move v3, v5

    .line 19
    move-object v4, p1

    .line 20
    move-object v6, p3

    .line 21
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final hasFullSliceAccess(ILjava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->isDefaultHomeApp(ILjava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->isAssistant(ILjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v2, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 23
    .line 24
    invoke-direct {v2, p2, p1}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-boolean p0, p0, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 41
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    return p0

    .line 45
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final hasSliceAccess(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/android/server/slice/SliceManagerService;->hasFullSliceAccess(ILjava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final isAssistant(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/slice/SliceManagerService;II)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;-><init>(Ljava/util/function/Supplier;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    if-nez p2, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p0, v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->mCurrentPkg:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object p0, v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->mPkgSource:Ljava/util/function/Supplier;

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Ljava/lang/String;

    .line 48
    .line 49
    iput-object p0, v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->mCurrentPkg:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    :goto_0
    return p0
.end method

.method public final isDefaultHomeApp(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/slice/SliceManagerService;II)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;-><init>(Ljava/util/function/Supplier;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    if-nez p2, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p0, v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->mCurrentPkg:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object p0, v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->mPkgSource:Ljava/util/function/Supplier;

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Ljava/lang/String;

    .line 48
    .line 49
    iput-object p0, v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->mCurrentPkg:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    :goto_0
    return p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/slice/SliceShellCommand;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/slice/SliceShellCommand;-><init>(Lcom/android/server/slice/SliceManagerService;)V

    .line 4
    .line 5
    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p5

    .line 12
    move-object v7, p6

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final pinSlice(Ljava/lang/String;Landroid/net/Uri;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Landroid/net/Uri;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p0, v0, p2}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(ILandroid/net/Uri;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v2

    .line 26
    :try_start_0
    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/android/server/slice/PinnedSliceState;

    .line 33
    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0, p2, v1}, Lcom/android/server/slice/SliceManagerService;->createPinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-object v4, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {v4, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_3

    .line 48
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iget-object p2, v3, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter p2

    .line 52
    :try_start_1
    iget-object v2, v3, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    .line 53
    .line 54
    new-instance v4, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;

    .line 55
    .line 56
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 60
    .line 61
    .line 62
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p4, v4, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->token:Landroid/os/IBinder;

    .line 66
    .line 67
    invoke-virtual {v2, p4, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    .line 69
    .line 70
    :try_start_2
    iget-object v2, v3, Lcom/android/server/slice/PinnedSliceState;->mDeathRecipient:Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    invoke-interface {p4, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :catch_0
    :goto_1
    :try_start_3
    invoke-virtual {v3, p3}, Lcom/android/server/slice/PinnedSliceState;->mergeSpecs([Landroid/app/slice/SliceSpec;)V

    .line 80
    .line 81
    .line 82
    const/4 p3, 0x1

    .line 83
    invoke-virtual {v3, p3}, Lcom/android/server/slice/PinnedSliceState;->setSlicePinned(Z)V

    .line 84
    .line 85
    .line 86
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    iget-object p2, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    .line 88
    .line 89
    new-instance p3, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;

    .line 90
    .line 91
    invoke-direct {p3, p0, v1, p1, v0}, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/slice/SliceManagerService;Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :goto_2
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 99
    throw p0

    .line 100
    :goto_3
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    throw p0
.end method

.method public final removePinnedSlice(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/slice/PinnedSliceState;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/slice/PinnedSliceState;->setSlicePinned(Z)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final revokeSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 21
    .line 22
    invoke-direct {v1, p2, v0}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance p2, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 26
    .line 27
    invoke-direct {p2, p1, v0}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    new-instance p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 35
    .line 36
    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {p1, v1, v0}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceClientPermissions;->getOrCreateAuthority(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    new-array p2, p2, [Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, [Ljava/lang/String;

    .line 62
    .line 63
    iget-object p2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    const/4 p3, 0x1

    .line 70
    sub-int/2addr p2, p3

    .line 71
    const/4 v0, 0x0

    .line 72
    :goto_0
    if-ltz p2, :cond_1

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 75
    .line 76
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, [Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p1, v1}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_0

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 89
    .line 90
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move v0, p3

    .line 94
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    if-eqz v0, :cond_2

    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mTracker:Lcom/android/server/slice/DirtyTracker;

    .line 100
    .line 101
    invoke-interface {p1, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    return-void
.end method

.method public final unpinSlice(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Landroid/net/Uri;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p2, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget-object v0, p2, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :try_start_1
    iget-object v1, p2, Lcom/android/server/slice/PinnedSliceState;->mDeathRecipient:Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-interface {p3, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 30
    .line 31
    .line 32
    iget-object v1, p2, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    invoke-virtual {p2}, Lcom/android/server/slice/PinnedSliceState;->hasPinOrListener()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    xor-int/lit8 p2, p2, 0x1

    .line 43
    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->removePinnedSlice(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception p0

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 55
    :goto_0
    const-string p1, "SliceManagerService"

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_0
    :goto_1
    return-void
.end method

.method public final verifyCaller(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
