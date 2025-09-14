.class public final Lcom/android/server/am/ContentProviderHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PROCESS_STATE_STATS_FORMAT:[I


# instance fields
.field public final mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

.field public final mLaunchingProviders:Ljava/util/ArrayList;

.field public final mProcessStateStatsLongs:[J

.field public final mProviderMap:Lcom/android/server/am/ProviderMap;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mSystemProvidersInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x220

    .line 2
    .line 3
    const/16 v1, 0x2820

    .line 4
    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/server/am/ContentProviderHelper;->PROCESS_STATE_STATS_FORMAT:[I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    new-array v0, v0, [J

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    new-instance p2, Lcom/android/server/am/ProviderMap;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Lcom/android/server/am/ProviderMap;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p2, 0x0

    .line 34
    :goto_0
    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    .line 35
    .line 36
    return-void
.end method

.method public static checkTime(JLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p0

    .line 6
    const-wide/16 p0, 0x32

    .line 7
    .line 8
    cmp-long p0, v0, p0

    .line 9
    .line 10
    if-lez p0, :cond_0

    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p1, "Slow operation: "

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string/jumbo p1, "ms so far, now at "

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, "ContentProviderHelper"

    .line 36
    .line 37
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public static hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    sub-int/2addr v0, v1

    .line 11
    :goto_0
    if-ltz v0, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return p0
.end method


# virtual methods
.method public final checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-wide/from16 v7, p7

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 14
    .line 15
    iget-object v6, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 16
    .line 17
    move v9, p3

    .line 18
    invoke-virtual {v6, v5, p3, v4, v3}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(IILjava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    move-object v4, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v4, "<null>"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance v4, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;

    .line 30
    .line 31
    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;)V

    .line 32
    .line 33
    .line 34
    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 35
    .line 36
    invoke-virtual {v5, v4}, Lcom/android/server/am/PackageList;->searchEachPackage(Ljava/util/function/Function;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/String;

    .line 41
    .line 42
    :goto_0
    if-nez v4, :cond_4

    .line 43
    .line 44
    const-string/jumbo v4, "getContentProviderImpl: before checkContentProviderPermission"

    .line 45
    .line 46
    .line 47
    invoke-static {v7, v8, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    move-object v6, v1

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object v6, v3

    .line 67
    :goto_1
    move-object v0, p0

    .line 68
    move-object v1, p2

    .line 69
    move v2, v4

    .line 70
    move v3, v5

    .line 71
    move v4, p4

    .line 72
    move v5, p5

    .line 73
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    const-string/jumbo v0, "getContentProviderImpl: after checkContentProviderPermission"

    .line 80
    .line 81
    .line 82
    invoke-static {v7, v8, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    new-instance v1, Ljava/lang/SecurityException;

    .line 87
    .line 88
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v1

    .line 92
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    .line 93
    .line 94
    const-string v1, "Content provider lookup "

    .line 95
    .line 96
    const-string v2, " failed: association not allowed with package "

    .line 97
    .line 98
    move-object/from16 v3, p6

    .line 99
    .line 100
    invoke-static {v1, v3, v2, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0
.end method

.method public final checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v9, p3

    .line 4
    .line 5
    move/from16 v4, p4

    .line 6
    .line 7
    move/from16 v10, p5

    .line 8
    .line 9
    invoke-static/range {p3 .. p3}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-class v1, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    .line 25
    .line 26
    if-eqz v1, :cond_11

    .line 27
    .line 28
    invoke-interface {v1, v0}, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;->canAccessContentProviderFromSdkSandbox(Landroid/content/pm/ProviderInfo;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :goto_0
    if-nez v1, :cond_1

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "ContentProvider access not allowed from sdk sandbox UID. ProviderInfo: "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ProviderInfo;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    :cond_1
    const/4 v11, 0x0

    .line 54
    move-object/from16 v1, p0

    .line 55
    .line 56
    iget-object v12, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 57
    .line 58
    const/4 v13, 0x0

    .line 59
    if-eqz v10, :cond_7

    .line 60
    .line 61
    iget-object v1, v12, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    const/4 v3, -0x2

    .line 67
    if-eq v4, v3, :cond_3

    .line 68
    .line 69
    const/4 v3, -0x3

    .line 70
    if-ne v4, v3, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move v14, v4

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    move v14, v1

    .line 80
    :goto_2
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eq v14, v1, :cond_5

    .line 85
    .line 86
    iget-object v1, v12, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 87
    .line 88
    check-cast v1, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 89
    .line 90
    invoke-virtual {v1, v9, v0, v14, v10}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    return-object v13

    .line 97
    :cond_4
    move v15, v2

    .line 98
    goto :goto_3

    .line 99
    :cond_5
    move v15, v11

    .line 100
    :goto_3
    iget-object v1, v12, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string/jumbo v3, "checkContentProviderPermissionLocked "

    .line 105
    .line 106
    .line 107
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    const/4 v5, 0x0

    .line 120
    const/4 v6, 0x0

    .line 121
    const/4 v8, 0x0

    .line 122
    move/from16 v2, p2

    .line 123
    .line 124
    move/from16 v3, p3

    .line 125
    .line 126
    move/from16 v4, p4

    .line 127
    .line 128
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    move v7, v1

    .line 133
    if-eq v1, v14, :cond_6

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_6
    move v11, v15

    .line 137
    goto :goto_4

    .line 138
    :cond_7
    move v7, v4

    .line 139
    :goto_4
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 142
    .line 143
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 144
    .line 145
    iget-boolean v6, v0, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    move/from16 v1, p2

    .line 149
    .line 150
    move/from16 v2, p3

    .line 151
    .line 152
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_8

    .line 157
    .line 158
    return-object v13

    .line 159
    :cond_8
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 160
    .line 161
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 162
    .line 163
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 164
    .line 165
    iget-boolean v6, v0, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 166
    .line 167
    const/4 v4, 0x0

    .line 168
    move/from16 v1, p2

    .line 169
    .line 170
    move/from16 v2, p3

    .line 171
    .line 172
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-nez v1, :cond_9

    .line 177
    .line 178
    return-object v13

    .line 179
    :cond_9
    iget-object v8, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 180
    .line 181
    if-eqz v8, :cond_c

    .line 182
    .line 183
    array-length v1, v8

    .line 184
    :goto_5
    if-lez v1, :cond_c

    .line 185
    .line 186
    add-int/lit8 v14, v1, -0x1

    .line 187
    .line 188
    aget-object v15, v8, v14

    .line 189
    .line 190
    invoke-virtual {v15}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    if-eqz v3, :cond_a

    .line 195
    .line 196
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 197
    .line 198
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 199
    .line 200
    iget-boolean v6, v0, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 201
    .line 202
    const/4 v4, 0x0

    .line 203
    move/from16 v1, p2

    .line 204
    .line 205
    move/from16 v2, p3

    .line 206
    .line 207
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-nez v1, :cond_a

    .line 212
    .line 213
    return-object v13

    .line 214
    :cond_a
    invoke-virtual {v15}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    if-eqz v3, :cond_b

    .line 219
    .line 220
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 221
    .line 222
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 223
    .line 224
    iget-boolean v6, v0, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 225
    .line 226
    const/4 v4, 0x0

    .line 227
    move/from16 v1, p2

    .line 228
    .line 229
    move/from16 v2, p3

    .line 230
    .line 231
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-nez v1, :cond_b

    .line 236
    .line 237
    return-object v13

    .line 238
    :cond_b
    move v1, v14

    .line 239
    goto :goto_5

    .line 240
    :cond_c
    if-nez v11, :cond_d

    .line 241
    .line 242
    iget-object v1, v12, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 243
    .line 244
    check-cast v1, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 245
    .line 246
    invoke-virtual {v1, v9, v0, v7, v10}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-eqz v1, :cond_d

    .line 251
    .line 252
    return-object v13

    .line 253
    :cond_d
    iget-boolean v1, v0, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 254
    .line 255
    if-nez v1, :cond_e

    .line 256
    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string v2, " that is not exported from UID "

    .line 260
    .line 261
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 265
    .line 266
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    goto :goto_6

    .line 276
    :cond_e
    const-string v1, "android.permission.MANAGE_DOCUMENTS"

    .line 277
    .line 278
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_f

    .line 285
    .line 286
    const-string v1, " requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    const-string v2, " requires "

    .line 292
    .line 293
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v2, " or "

    .line 302
    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    const-string v3, "Permission Denial: opening provider "

    .line 318
    .line 319
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v0, " from "

    .line 328
    .line 329
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    if-eqz p6, :cond_10

    .line 333
    .line 334
    move-object/from16 v0, p6

    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_10
    const-string v0, "(null)"

    .line 338
    .line 339
    :goto_7
    const-string v3, " (pid="

    .line 340
    .line 341
    const-string v4, ", uid="

    .line 342
    .line 343
    move/from16 v5, p2

    .line 344
    .line 345
    invoke-static {v5, v0, v3, v4, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v0, ")"

    .line 352
    .line 353
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    const-string v1, "ContentProviderHelper"

    .line 364
    .line 365
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    return-object v0

    .line 369
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 370
    .line 371
    const-string v1, "SdkSandboxManagerLocal not found when checking whether SDK sandbox uid may access the contentprovider."

    .line 372
    .line 373
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    throw v0
.end method

.method public final cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ltz v0, :cond_4

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .line 19
    .line 20
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 21
    .line 22
    if-eq v4, p1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget v4, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    .line 26
    .line 27
    add-int/2addr v4, v1

    .line 28
    iput v4, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    .line 29
    .line 30
    const/4 v5, 0x3

    .line 31
    if-le v4, v5, :cond_1

    .line 32
    .line 33
    move p2, v1

    .line 34
    :cond_1
    if-nez p2, :cond_3

    .line 35
    .line 36
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 37
    .line 38
    iget-boolean v4, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    .line 39
    .line 40
    if-nez v4, :cond_3

    .line 41
    .line 42
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    :cond_2
    move v2, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/am/ContentProviderHelper;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    .line 59
    .line 60
    .line 61
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    return v2
.end method

.method public final decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2, p3}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z

    .line 5
    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-object p2, p1, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter p2

    .line 11
    :try_start_0
    iget p3, p1, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 12
    .line 13
    iget v1, p1, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 14
    .line 15
    add-int/2addr p3, v1

    .line 16
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const/4 p2, 0x1

    .line 18
    if-le p3, p2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, p4}, Lcom/android/server/am/ContentProviderConnection;->decrementCount(Z)I

    .line 21
    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    if-eqz p5, :cond_2

    .line 25
    .line 26
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    new-instance p5, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;

    .line 31
    .line 32
    invoke-direct {p5, p0, p1, p4, p6}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ContentProviderConnection;ZZ)V

    .line 33
    .line 34
    .line 35
    const-wide/16 p0, 0x1388

    .line 36
    .line 37
    invoke-virtual {p3, p5, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p0, p1, p4, p6}, Lcom/android/server/am/ContentProviderHelper;->handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return p2

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p0
.end method

.method public final dumpProvidersLocked(Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v7, p1

    .line 3
    move-object v1, p2

    .line 4
    move-object/from16 v8, p5

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    move-object v3, v2

    .line 8
    move-object v4, v3

    .line 9
    move-object v5, v4

    .line 10
    move/from16 v2, p3

    .line 11
    .line 12
    :goto_0
    array-length v6, v1

    .line 13
    if-ge v2, v6, :cond_5

    .line 14
    .line 15
    aget-object v6, v1, v2

    .line 16
    .line 17
    const-string v9, "--"

    .line 18
    .line 19
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v9

    .line 23
    if-eqz v9, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    if-eqz v9, :cond_2

    .line 31
    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    new-instance v3, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/16 v9, 0x10

    .line 44
    .line 45
    :try_start_0
    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    if-nez v4, :cond_3

    .line 50
    .line 51
    new-instance v10, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    move-object v4, v10

    .line 57
    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_0
    if-nez v5, :cond_4

    .line 66
    .line 67
    new-instance v5, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    :goto_2
    const-string v1, "ACTIVITY MANAGER CONTENT PROVIDERS (dumpsys activity providers)"

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    .line 84
    .line 85
    iget-object v1, v9, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const/4 v5, 0x0

    .line 92
    if-lez v1, :cond_6

    .line 93
    .line 94
    iget-object v6, v9, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    .line 95
    .line 96
    const-string v4, "  Published single-user content providers (by class):"

    .line 97
    .line 98
    move-object v1, p1

    .line 99
    move/from16 v2, p4

    .line 100
    .line 101
    move-object/from16 v3, p5

    .line 102
    .line 103
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProviderMap;->dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    :cond_6
    const/4 v10, 0x0

    .line 108
    move v11, v5

    .line 109
    move v12, v10

    .line 110
    :goto_3
    iget-object v1, v9, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-ge v12, v1, :cond_7

    .line 117
    .line 118
    iget-object v1, v9, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 119
    .line 120
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    move-object v6, v1

    .line 125
    check-cast v6, Ljava/util/HashMap;

    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v2, "  Published user "

    .line 130
    .line 131
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v2, v9, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 135
    .line 136
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->keyAt(I)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v2, " content providers (by class):"

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    move-object v1, p1

    .line 153
    move/from16 v2, p4

    .line 154
    .line 155
    move-object/from16 v3, p5

    .line 156
    .line 157
    move v5, v11

    .line 158
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProviderMap;->dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    or-int/2addr v11, v1

    .line 163
    add-int/lit8 v12, v12, 0x1

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_7
    if-eqz p4, :cond_8

    .line 167
    .line 168
    iget-object v1, v9, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    .line 169
    .line 170
    const-string v2, "  Single-user authority to provider mappings:"

    .line 171
    .line 172
    invoke-static {p1, v8, v2, v11, v1}, Lcom/android/server/am/ProviderMap;->dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    or-int/2addr v1, v11

    .line 177
    move v11, v1

    .line 178
    move v1, v10

    .line 179
    :goto_4
    iget-object v2, v9, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 180
    .line 181
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-ge v1, v2, :cond_8

    .line 186
    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v3, "  User "

    .line 190
    .line 191
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object v3, v9, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 195
    .line 196
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v3, " authority to provider mappings:"

    .line 204
    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    iget-object v3, v9, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 213
    .line 214
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Ljava/util/HashMap;

    .line 219
    .line 220
    invoke-static {p1, v8, v2, v11, v3}, Lcom/android/server/am/ProviderMap;->dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    or-int/2addr v11, v2

    .line 225
    add-int/lit8 v1, v1, 0x1

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_8
    iget-object v1, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-lez v1, :cond_c

    .line 235
    .line 236
    iget-object v1, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    const/4 v2, 0x1

    .line 243
    sub-int/2addr v1, v2

    .line 244
    move v3, v11

    .line 245
    :goto_5
    if-ltz v1, :cond_c

    .line 246
    .line 247
    iget-object v4, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    check-cast v4, Lcom/android/server/am/ContentProviderRecord;

    .line 254
    .line 255
    if-eqz v8, :cond_9

    .line 256
    .line 257
    iget-object v5, v4, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 258
    .line 259
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    if-nez v5, :cond_9

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_9
    if-nez v10, :cond_b

    .line 271
    .line 272
    if-eqz v3, :cond_a

    .line 273
    .line 274
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 275
    .line 276
    .line 277
    :cond_a
    const-string v3, "  Launching content providers:"

    .line 278
    .line 279
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    move v3, v2

    .line 283
    move v10, v3

    .line 284
    move v11, v10

    .line 285
    :cond_b
    const-string v5, "  Launching #"

    .line 286
    .line 287
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 291
    .line 292
    .line 293
    const-string v5, ": "

    .line 294
    .line 295
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    :goto_6
    add-int/lit8 v1, v1, -0x1

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_c
    if-nez v11, :cond_d

    .line 305
    .line 306
    const-string v0, "  (nothing)"

    .line 307
    .line 308
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    :cond_d
    return-void
.end method

.method public final generateApplicationProvidersLocked(Lcom/android/server/am/ProcessRecord;)Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 11
    .line 12
    iget v5, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 13
    .line 14
    const-wide/32 v6, 0x10000c00

    .line 15
    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 34
    .line 35
    iget-object v6, v5, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    add-int/2addr v6, v4

    .line 42
    iget-object v7, v5, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 45
    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    :goto_0
    if-ge v7, v4, :cond_8

    .line 49
    .line 50
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    check-cast v8, Landroid/content/pm/ProviderInfo;

    .line 55
    .line 56
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 57
    .line 58
    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v11, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 61
    .line 62
    iget-object v12, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 63
    .line 64
    iget v13, v8, Landroid/content/pm/ProviderInfo;->flags:I

    .line 65
    .line 66
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {v10, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    .line 70
    .line 71
    .line 72
    move-result v14

    .line 73
    invoke-virtual {v0, v8}, Lcom/android/server/am/ContentProviderHelper;->isSingletonOrSystemUserOnly(Landroid/content/pm/ProviderInfo;)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    const/4 v15, 0x1

    .line 78
    if-eqz v9, :cond_1

    .line 79
    .line 80
    iget v9, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 81
    .line 82
    if-eqz v9, :cond_1

    .line 83
    .line 84
    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 88
    .line 89
    add-int/lit8 v7, v7, -0x1

    .line 90
    .line 91
    goto/16 :goto_4

    .line 92
    .line 93
    :cond_1
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 94
    .line 95
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    .line 100
    .line 101
    if-eqz v10, :cond_3

    .line 102
    .line 103
    iget-object v11, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 104
    .line 105
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    if-eqz v10, :cond_2

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    const/4 v10, 0x0

    .line 115
    goto :goto_3

    .line 116
    :cond_3
    :goto_2
    move v10, v15

    .line 117
    :goto_3
    if-eqz v9, :cond_4

    .line 118
    .line 119
    if-nez v10, :cond_4

    .line 120
    .line 121
    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    new-instance v13, Landroid/content/ComponentName;

    .line 126
    .line 127
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 130
    .line 131
    invoke-direct {v13, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    .line 135
    .line 136
    iget v10, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 137
    .line 138
    invoke-virtual {v9, v10, v13}, Lcom/android/server/am/ProviderMap;->getProviderByClass(ILandroid/content/ComponentName;)Lcom/android/server/am/ContentProviderRecord;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    if-nez v9, :cond_5

    .line 143
    .line 144
    new-instance v12, Lcom/android/server/am/ContentProviderRecord;

    .line 145
    .line 146
    iget-object v10, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 147
    .line 148
    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 149
    .line 150
    move-object v9, v12

    .line 151
    move-object/from16 v16, v11

    .line 152
    .line 153
    move-object v11, v8

    .line 154
    move-object v6, v12

    .line 155
    move-object/from16 v12, v16

    .line 156
    .line 157
    move-object/from16 v16, v13

    .line 158
    .line 159
    invoke-direct/range {v9 .. v14}, Lcom/android/server/am/ContentProviderRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V

    .line 160
    .line 161
    .line 162
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    .line 163
    .line 164
    move-object/from16 v10, v16

    .line 165
    .line 166
    invoke-virtual {v9, v10, v6}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    .line 167
    .line 168
    .line 169
    move-object v9, v6

    .line 170
    :cond_5
    iget-object v6, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v10, v5, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 173
    .line 174
    invoke-virtual {v10, v6, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    iget-boolean v6, v8, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 178
    .line 179
    if-eqz v6, :cond_6

    .line 180
    .line 181
    const-string v6, "android"

    .line 182
    .line 183
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-nez v6, :cond_7

    .line 190
    .line 191
    :cond_6
    iget-object v6, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 192
    .line 193
    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 194
    .line 195
    iget-wide v10, v6, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 196
    .line 197
    iget-object v6, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 198
    .line 199
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 200
    .line 201
    invoke-virtual {v1, v9, v10, v11, v6}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)V

    .line 202
    .line 203
    .line 204
    :cond_7
    iget-object v6, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 205
    .line 206
    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 207
    .line 208
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 209
    .line 210
    const/4 v9, 0x4

    .line 211
    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    :goto_4
    add-int/2addr v7, v15

    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_9

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_9
    move-object v2, v3

    .line 225
    :catch_0
    :goto_5
    return-object v2
.end method

.method public final getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;
    .locals 10

    .line 1
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "getContentProvider"

    .line 7
    .line 8
    .line 9
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 21
    .line 22
    invoke-virtual {v1, v4, p2}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 30
    .line 31
    const-string v1, "Given calling package "

    .line 32
    .line 33
    const-string v2, " does not match caller\'s uid "

    .line 34
    .line 35
    invoke-static {v4, v1, p2, v2}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v9, -0x1

    .line 46
    move-object v0, p0

    .line 47
    move-object v1, p1

    .line 48
    move-object v2, p3

    .line 49
    move-object v5, p2

    .line 50
    move v7, p5

    .line 51
    move v8, p4

    .line 52
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZII)Landroid/app/ContentProviderHolder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string/jumbo v1, "null IApplicationThread when getting content provider "

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "ContentProviderHelper"

    .line 73
    .line 74
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    new-instance v1, Ljava/lang/SecurityException;

    .line 78
    .line 79
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1
.end method

.method public final getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZII)Landroid/app/ContentProviderHolder;
    .locals 64

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move/from16 v12, p4

    move-object/from16 v10, p5

    move/from16 v11, p8

    move/from16 v1, p9

    .line 1
    const-string v8, "No package info for content provider "

    const-string v9, "Unable to launch app "

    const-string v7, "Cannot access system provider: \'"

    const-string v6, "Existing provider "

    const-string v2, "Unable to find app for caller "

    .line 2
    iget-object v5, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v15, :cond_1

    .line 5
    :try_start_1
    iget-object v12, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12, v15}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    if-eqz v12, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") when getting content provider "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    :goto_0
    move-object v1, v0

    move-object/from16 v22, v5

    goto/16 :goto_49

    :cond_1
    const/4 v12, 0x0

    :goto_1
    const/4 v2, -0x1

    if-nez v15, :cond_2

    if-eq v1, v2, :cond_2

    .line 8
    iget-object v2, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v20, v6

    .line 9
    :try_start_2
    iget-object v6, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v6, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 10
    monitor-exit v2

    move-object v6, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move-object/from16 v20, v6

    move-object v6, v12

    .line 11
    :goto_2
    :try_start_4
    const-string/jumbo v1, "getContentProviderImpl: getProviderByName"

    invoke-static {v3, v4, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 12
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 13
    invoke-virtual {v1, v11}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v2, :cond_3

    .line 14
    :try_start_5
    invoke-virtual {v2}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 15
    :goto_3
    :try_start_6
    invoke-virtual {v14, v13}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    if-nez v2, :cond_4

    goto :goto_5

    :cond_4
    move-wide/from16 v22, v3

    const/4 v3, 0x0

    :goto_4
    const/4 v15, 0x1

    goto :goto_6

    .line 16
    :cond_5
    :goto_5
    iget-object v15, v14, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v15, v11, v13}, Lcom/android/server/am/ProviderMap;->getProviderByName(ILjava/lang/String;)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v15

    .line 17
    invoke-virtual {v14, v13}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v22, :cond_6

    move-wide/from16 v22, v3

    .line 18
    :try_start_7
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 19
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 20
    invoke-virtual {v4}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 21
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v3

    if-ne v3, v11, :cond_7

    move-object v3, v15

    const/4 v15, 0x0

    goto :goto_6

    :cond_6
    move-wide/from16 v22, v3

    :cond_7
    move-object v3, v15

    goto :goto_4

    :goto_6
    if-nez v3, :cond_c

    if-eqz v11, :cond_c

    .line 22
    iget-object v3, v14, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v13}, Lcom/android/server/am/ProviderMap;->getProviderByName(ILjava/lang/String;)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 23
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v24, v3

    .line 24
    iget-object v3, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v25, v7

    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-wide/from16 v26, v8

    iget-object v8, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v10, v4, Landroid/content/pm/ProviderInfo;->flags:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_9

    :try_start_9
    iget-object v3, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    if-nez v12, :cond_8

    move/from16 v7, p4

    goto :goto_7

    .line 25
    :cond_8
    iget v7, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    :goto_7
    iget-object v8, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 26
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v3, :cond_9

    move-object/from16 v15, v24

    const/4 v7, 0x0

    const/4 v10, 0x0

    goto :goto_8

    :catchall_2
    move-exception v0

    goto/16 :goto_0

    .line 27
    :cond_9
    :try_start_b
    invoke-virtual {v14, v13}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    .line 28
    invoke-virtual {v1, v11}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v1

    move v10, v1

    move-object/from16 v15, v24

    const/4 v7, 0x0

    goto :goto_8

    :cond_a
    move v10, v11

    move v7, v15

    const/4 v4, 0x0

    const/4 v15, 0x0

    goto :goto_8

    :cond_b
    move-object/from16 v24, v3

    move-object/from16 v25, v7

    move-wide/from16 v26, v8

    move v10, v11

    move v7, v15

    move-object/from16 v15, v24

    const/4 v4, 0x0

    goto :goto_8

    :cond_c
    move-object/from16 v25, v7

    move-wide/from16 v26, v8

    move v10, v11

    move v7, v15

    const/4 v4, 0x0

    move-object v15, v3

    :goto_8
    if-eqz v15, :cond_e

    .line 29
    iget-object v1, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_e

    .line 30
    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    xor-int/lit8 v3, v2, 0x1

    if-eqz v2, :cond_d

    .line 31
    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-eqz v1, :cond_d

    .line 32
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " was killed by AM but isn\'t really dead"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v1, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v40, v1

    move/from16 v24, v3

    goto :goto_a

    :cond_d
    move/from16 v24, v3

    :goto_9
    const/16 v40, 0x0

    goto :goto_a

    :cond_e
    const/16 v24, 0x0

    goto :goto_9

    :goto_a
    if-eqz v12, :cond_f

    .line 34
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 35
    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move/from16 v41, v1

    goto :goto_b

    :cond_f
    const/16 v41, -0x1

    :goto_b
    if-eqz v24, :cond_1a

    .line 36
    :try_start_c
    iget-object v4, v15, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 37
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v1, :cond_13

    if-eqz v4, :cond_13

    .line 38
    :try_start_d
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-eqz v6, :cond_10

    .line 39
    iget-object v2, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_10

    .line 40
    iget-object v1, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 41
    iget v2, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 42
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    .line 43
    iget-object v8, v6, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    move-object/from16 v30, v1

    move/from16 v31, v2

    move/from16 v38, v3

    goto :goto_c

    :cond_10
    move/from16 v31, v1

    const/4 v8, 0x0

    const/16 v30, 0x0

    const/16 v38, 0x0

    :goto_c
    if-eqz v8, :cond_11

    .line 44
    invoke-virtual {v8}, Lcom/android/server/am/HostingRecord;->toStringForTracker()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v37, v1

    goto :goto_d

    :cond_11
    const/16 v37, 0x0

    .line 45
    :goto_d
    sget-object v28, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    .line 46
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v32, "provider"

    .line 47
    iget-object v2, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    move/from16 v39, v2

    goto :goto_e

    :cond_12
    const/16 v39, 0x0

    :goto_e
    const/16 v36, 0x0

    const/16 v35, 0x0

    const/16 v33, 0x0

    move-object/from16 v29, v1

    move/from16 v34, v10

    .line 48
    invoke-virtual/range {v28 .. v39}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 49
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_f
    const/4 v1, 0x0

    return-object v1

    :cond_13
    if-eqz v12, :cond_14

    .line 50
    :try_start_e
    invoke-virtual {v15, v12}, Lcom/android/server/am/ContentProviderRecord;->canRunHere(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 51
    iget-object v1, v15, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 52
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide/from16 v13, v22

    move-object v3, v4

    move-object v11, v4

    move/from16 v4, p4

    move-object/from16 v22, v5

    move v5, v10

    move v6, v7

    move-object v7, v8

    move-wide v8, v13

    .line 53
    :try_start_f
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 54
    invoke-virtual {v15, v1, v2}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v13

    .line 55
    iput-object v1, v13, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 56
    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v11, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/16 v1, 0x1dd

    move/from16 v3, p4

    move-object/from16 v7, p5

    move/from16 v8, v41

    move/from16 v9, v41

    invoke-static/range {v1 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V

    .line 57
    monitor-exit v22
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v13

    :catchall_3
    move-exception v0

    :goto_10
    move-object v1, v0

    goto/16 :goto_49

    :catchall_4
    move-exception v0

    move-object/from16 v22, v5

    goto :goto_10

    :cond_14
    move-object v8, v4

    move-wide/from16 v62, v22

    move-object/from16 v22, v5

    move-wide/from16 v4, v62

    .line 58
    :try_start_10
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    const-wide/16 v2, 0x0

    .line 59
    :try_start_11
    invoke-interface {v1, v13, v2, v3, v10}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-nez v1, :cond_15

    .line 60
    :try_start_12
    monitor-exit v22
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/16 v18, 0x0

    return-object v18

    :catch_0
    :cond_15
    :goto_11
    const/16 v18, 0x0

    goto :goto_12

    :catch_1
    const-wide/16 v2, 0x0

    goto :goto_11

    .line 61
    :goto_12
    :try_start_13
    iget-object v1, v15, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 62
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, p0

    move-wide/from16 v28, v2

    const/4 v3, -0x1

    move-object v2, v12

    move-object v3, v8

    move-wide/from16 v30, v4

    move/from16 v4, p4

    move v5, v10

    move-object/from16 v43, v6

    move-object/from16 v42, v20

    move v6, v7

    move-object/from16 v44, v25

    move-object v7, v9

    move-object/from16 v49, v8

    move-object/from16 v45, v16

    move-object/from16 v46, v17

    move-wide/from16 v47, v26

    move-wide/from16 v8, v30

    .line 63
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    .line 64
    iget-object v1, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 65
    iget v9, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 66
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 67
    :try_start_14
    const-string/jumbo v1, "getContentProviderImpl: incProviderCountLocked"

    move-wide/from16 v7, v30

    invoke-static {v7, v8, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 68
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/16 v19, 0x1

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v15

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v20, v6

    move-object/from16 v6, p5

    move-wide/from16 v30, v7

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v23, v9

    move/from16 v9, v19

    move/from16 v50, v10

    move-wide/from16 v10, v30

    move-object/from16 v51, v12

    move-object/from16 v12, v20

    move/from16 v13, p8

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ContentProviderHelper;->incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v13

    .line 69
    const-string/jumbo v1, "getContentProviderImpl: before updateOomAdj"

    move-wide/from16 v11, v30

    invoke-static {v11, v12, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 70
    iget-object v1, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getVerifiedAdj()I

    move-result v1

    .line 71
    invoke-static {}, Lcom/android/server/am/Flags;->serviceBindingOomAdjPolicy()Z

    iget-object v2, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v3, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v10, v51

    .line 72
    invoke-virtual {v2, v10, v3}, Lcom/android/server/am/OomAdjuster;->evaluateProviderConnectionAdd(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 73
    iget-object v2, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x7

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(ILcom/android/server/am/ProcessRecord;)Z

    goto :goto_14

    :goto_13
    move-object v1, v0

    goto/16 :goto_17

    :catchall_5
    move-exception v0

    goto :goto_13

    .line 74
    :cond_16
    :goto_14
    iget-object v2, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 75
    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    if-eq v1, v3, :cond_17

    .line 76
    invoke-virtual {v14, v2}, Lcom/android/server/am/ContentProviderHelper;->isProcessAliveLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_15

    :cond_17
    const/4 v1, 0x1

    .line 77
    :goto_15
    iget-object v2, v15, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v9, p2

    invoke-virtual {v14, v10, v2, v9}, Lcom/android/server/am/ContentProviderHelper;->maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v2, "getContentProviderImpl: after updateOomAdj"

    invoke-static {v11, v12, v2}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-nez v1, :cond_19

    .line 79
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v42

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is crashing; detaching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v15

    move-object/from16 v4, p3

    move/from16 v5, p7

    .line 80
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ContentProviderHelper;->decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z

    move-result v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    if-nez v1, :cond_18

    .line 81
    :try_start_15
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v22
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 82
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v8, 0x0

    return-object v8

    :cond_18
    const/4 v8, 0x0

    .line 83
    :try_start_16
    iget-object v1, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v40, v1

    move-object/from16 v52, v10

    move-wide v13, v11

    move-object/from16 v25, v49

    const/16 v24, 0x0

    move-object v12, v8

    goto :goto_16

    :cond_19
    const/4 v8, 0x0

    .line 84
    iget-object v1, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 85
    iget v3, v2, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 86
    iput v3, v2, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    .line 87
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    move-object/from16 v7, v49

    iget-object v6, v7, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v1, 0x1dd

    move/from16 v3, p4

    move-object/from16 v25, v7

    move-object/from16 v7, p5

    move/from16 v8, v41

    move/from16 v9, v23

    move-object/from16 v52, v10

    move/from16 v10, v18

    move-object/from16 v18, v13

    move-wide v13, v11

    move-wide/from16 v11, v19

    invoke-static/range {v1 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    move-object/from16 v12, v18

    .line 88
    :goto_16
    :try_start_17
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v11, v24

    move-object/from16 v4, v25

    move-object/from16 v10, v40

    goto :goto_18

    :goto_17
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    throw v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :cond_1a
    move-object/from16 v43, v6

    move/from16 v50, v10

    move-object/from16 v52, v12

    move-object/from16 v45, v16

    move-object/from16 v46, v17

    move-wide/from16 v13, v22

    move-object/from16 v44, v25

    move-wide/from16 v47, v26

    move-object/from16 v22, v5

    move/from16 v11, v24

    move-object/from16 v10, v40

    const/4 v12, 0x0

    :goto_18
    if-nez v11, :cond_44

    const-wide/16 v1, 0xc00

    .line 90
    :try_start_18
    const-string/jumbo v3, "getContentProviderImpl: before resolveContentProvider"

    invoke-static {v13, v14, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 91
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    move-object/from16 v15, p2

    move/from16 v5, v50

    :try_start_19
    invoke-interface {v3, v15, v1, v2, v5}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 92
    const-string/jumbo v3, "getContentProviderImpl: after resolveContentProvider"

    invoke-static {v13, v14, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto :goto_19

    :catch_2
    move-object/from16 v15, p2

    move/from16 v5, v50

    .line 93
    :catch_3
    :goto_19
    :try_start_1a
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 94
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    if-nez v3, :cond_1b

    const/16 v3, 0x3e8

    move/from16 v12, p4

    if-ne v12, v3, :cond_1c

    goto :goto_1a

    :cond_1b
    move/from16 v12, p4

    :goto_1a
    if-nez v4, :cond_1c

    .line 95
    :try_start_1b
    const-string/jumbo v3, "getContentProviderImpl: before resolveContentProvider - dualApp"

    invoke-static {v13, v14, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 96
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v15, v1, v2, v6}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 97
    const-string/jumbo v1, "getContentProviderImpl: after resolveContentProvider - dualApp"

    invoke-static {v13, v14, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    move-object v8, v4

    const/4 v5, 0x0

    goto :goto_1c

    :catch_4
    :cond_1c
    :goto_1b
    move-object v8, v4

    goto :goto_1c

    :cond_1d
    move/from16 v12, p4

    goto :goto_1b

    :goto_1c
    if-nez v8, :cond_1e

    .line 98
    :try_start_1c
    monitor-exit v22
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v14, 0x0

    return-object v14

    :cond_1e
    move-wide v6, v13

    const/4 v14, 0x0

    move-object/from16 v13, p0

    .line 99
    :try_start_1d
    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v3, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v9, v8, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4, v9}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v9, v52

    if-nez v9, :cond_1f

    move v2, v12

    goto :goto_1d

    .line 100
    :cond_1f
    iget v2, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    :goto_1d
    iget-object v3, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v1

    if-eqz v1, :cond_21

    const/16 v28, 0x1

    goto :goto_1e

    :cond_20
    move-object/from16 v9, v52

    :cond_21
    const/16 v28, 0x0

    :goto_1e
    if-eqz v28, :cond_22

    const/4 v5, 0x0

    .line 102
    :cond_22
    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_23

    move-object v1, v14

    goto :goto_1f

    .line 103
    :cond_23
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v2}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 104
    invoke-virtual {v1, v5}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 105
    :goto_1f
    iput-object v1, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 106
    const-string/jumbo v1, "getContentProviderImpl: got app info for user"

    invoke-static {v6, v7, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    xor-int/lit8 v16, v28, 0x1

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v8

    move/from16 v4, p4

    move/from16 v17, v5

    move-wide/from16 v18, v6

    move/from16 v6, v16

    move-object/from16 v7, p2

    move-object v12, v8

    move/from16 v16, v11

    move-object v11, v9

    move-wide/from16 v8, v18

    .line 107
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    .line 108
    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v1, :cond_25

    iget-object v1, v12, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_20

    .line 109
    :cond_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Attempt to launch content provider before system ready"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_25
    :goto_20
    monitor-enter p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    .line 111
    :try_start_1e
    iget-boolean v1, v13, Lcom/android/server/am/ContentProviderHelper;->mSystemProvidersInstalled:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    if-nez v1, :cond_27

    :try_start_1f
    iget-object v1, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_27

    const-string/jumbo v1, "system"

    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_21

    .line 113
    :cond_26
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v44

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v12, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' before system providers are installed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object v15, v13

    goto/16 :goto_3a

    .line 114
    :cond_27
    :goto_21
    :try_start_20
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    .line 115
    :try_start_21
    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move/from16 v9, v17

    const/4 v2, 0x0

    invoke-virtual {v1, v9, v2}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v1

    if-nez v1, :cond_28

    .line 116
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v46

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    monitor-exit v22
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 118
    :cond_28
    :try_start_22
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v1, :cond_2b

    .line 119
    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    move-object/from16 v8, v43

    if-eqz v8, :cond_29

    .line 120
    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_29

    .line 121
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 122
    iget v2, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 123
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    .line 124
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    move-object/from16 v31, v1

    move/from16 v32, v2

    move/from16 v39, v4

    goto :goto_22

    :cond_29
    move/from16 v32, v1

    move-object v3, v14

    move-object/from16 v31, v3

    const/16 v39, 0x0

    :goto_22
    if-eqz v3, :cond_2a

    .line 125
    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->toStringForTracker()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v38, v1

    goto :goto_23

    :cond_2a
    move-object/from16 v38, v14

    .line 126
    :goto_23
    sget-object v29, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    .line 127
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v33, "provider"

    const/16 v37, 0x0

    const/16 v36, 0x0

    const/16 v34, 0x0

    const/16 v40, 0x0

    move-object/from16 v30, v1

    move/from16 v35, v9

    .line 128
    invoke-virtual/range {v29 .. v40}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 129
    monitor-exit v22
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    :cond_2b
    move-object/from16 v8, v43

    .line 130
    :cond_2c
    :try_start_23
    new-instance v7, Landroid/content/ComponentName;

    iget-object v1, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v1, "getContentProviderImpl: before getProviderByClass"

    move-wide/from16 v5, v18

    invoke-static {v5, v6, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 132
    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, v9, v7}, Lcom/android/server/am/ProviderMap;->getProviderByClass(ILandroid/content/ComponentName;)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v1

    .line 133
    const-string/jumbo v2, "getContentProviderImpl: after getProviderByClass"

    invoke-static {v5, v6, v2}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-eqz v1, :cond_2e

    .line 134
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-ne v10, v2, :cond_2d

    if-eqz v10, :cond_2d

    goto :goto_24

    :cond_2d
    const/16 v17, 0x0

    goto :goto_25

    :cond_2e
    :goto_24
    const/16 v17, 0x1

    :goto_25
    if-eqz v17, :cond_31

    .line 135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 136
    iget-object v4, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v12, v11, v9, v4}, Lcom/android/server/am/ContentProviderHelper;->requestTargetProviderPermissionsReviewIfNeededLocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/am/ProcessRecord;ILandroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 137
    monitor-exit v22
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 138
    :cond_2f
    :try_start_24
    const-string/jumbo v4, "getContentProviderImpl: before getApplicationInfo"

    invoke-static {v5, v6, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 139
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iget-object v14, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_5
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    move-object/from16 v18, v10

    move-object/from16 v51, v11

    const-wide/16 v10, 0x400

    :try_start_25
    invoke-interface {v4, v14, v10, v11, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 140
    const-string/jumbo v10, "getContentProviderImpl: after getApplicationInfo"

    invoke-static {v5, v6, v10}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-nez v4, :cond_30

    .line 141
    const-string v4, "ContentProviderHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v11, v45

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_6
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    .line 142
    :try_start_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v22
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    .line 143
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_f

    :catchall_7
    move-exception v0

    move-object v1, v0

    goto :goto_26

    .line 144
    :cond_30
    :try_start_27
    iget-object v10, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    new-instance v10, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v10, v4}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 146
    invoke-virtual {v10, v9}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 147
    new-instance v4, Lcom/android/server/am/ContentProviderRecord;

    iget-object v11, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v4

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v10

    move-object/from16 v27, v7

    invoke-direct/range {v23 .. v28}, Lcom/android/server/am/ContentProviderRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_6
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    .line 148
    :try_start_28
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v14, v4

    goto :goto_29

    :catch_5
    move-object/from16 v18, v10

    move-object/from16 v51, v11

    goto :goto_27

    :goto_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    throw v1

    .line 150
    :catch_6
    :goto_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_28

    :cond_31
    move-object/from16 v18, v10

    move-object/from16 v51, v11

    :goto_28
    move-object v14, v1

    .line 151
    :goto_29
    const-string/jumbo v1, "getContentProviderImpl: now have ContentProviderRecord"

    invoke-static {v5, v6, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-eqz v51, :cond_32

    move-object/from16 v11, v51

    .line 152
    invoke-virtual {v14, v11}, Lcom/android/server/am/ContentProviderRecord;->canRunHere(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 153
    invoke-virtual {v14, v1, v2}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v1

    monitor-exit v22
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :cond_32
    move-object/from16 v11, v51

    .line 154
    :cond_33
    :try_start_29
    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_2a
    if-ge v4, v1, :cond_35

    .line 155
    iget-object v2, v13, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v14, :cond_34

    goto :goto_2b

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_35
    :goto_2b
    if-lt v4, v1, :cond_3f

    .line 156
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    .line 157
    :try_start_2a
    iget-object v1, v14, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v10, p5

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 158
    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v2, v14, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x1f

    invoke-virtual {v1, v9, v3, v2}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(IILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_8

    goto :goto_2c

    :catchall_8
    move-exception v0

    move-object v1, v0

    goto/16 :goto_35

    .line 159
    :cond_36
    :goto_2c
    :try_start_2b
    const-string/jumbo v1, "getContentProviderImpl: before set stopped state"

    invoke-static {v5, v6, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 160
    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v2, v14, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 161
    invoke-virtual {v14}, Lcom/android/server/am/ContentProviderRecord;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-virtual {v1, v9, v2, v10, v3}, Landroid/content/pm/PackageManagerInternal;->notifyComponentUsed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v1, "getContentProviderImpl: after set stopped state"

    invoke-static {v5, v6, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_2b} :catch_7
    .catchall {:try_start_2b .. :try_end_2b} :catchall_8

    goto :goto_2d

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 164
    :try_start_2c
    const-string v2, "ContentProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed trying to unstop package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_2d
    const-string/jumbo v1, "getContentProviderImpl: looking for process record"

    invoke-static {v5, v6, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 166
    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v3, v14, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 167
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 168
    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 169
    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_3b

    .line 170
    iget-boolean v2, v4, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v2, :cond_3b

    move-object/from16 v2, v18

    if-eq v2, v4, :cond_3a

    .line 171
    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 172
    iget-object v3, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessProviderRecord;->hasProvider(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v7

    .line 173
    iget-object v7, v2, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    if-eq v3, v14, :cond_39

    goto :goto_2e

    :cond_37
    move-object/from16 v18, v7

    .line 174
    :goto_2e
    const-string/jumbo v3, "getContentProviderImpl: scheduling install"

    invoke-static {v5, v6, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 175
    iget-object v3, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 176
    iget-object v2, v2, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_8

    .line 177
    :try_start_2d
    invoke-interface {v1, v12}, Landroid/app/IApplicationThread;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_8
    .catchall {:try_start_2d .. :try_end_2d} :catchall_8

    goto :goto_2f

    :catch_8
    move-exception v0

    move-object v1, v0

    .line 178
    :try_start_2e
    const-string v2, "ContentProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to schedule install provider "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    :goto_2f
    iget-boolean v1, v4, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_38

    const/4 v7, 0x0

    .line 180
    iput-boolean v7, v4, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 181
    iput-wide v2, v4, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    .line 182
    const-string v1, "ContentProviderHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reset AL flag for provider call"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_38
    iget v1, v4, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    if-nez v1, :cond_39

    const/4 v1, -0x1

    .line 184
    iput v1, v4, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    const-wide/16 v1, -0x1

    .line 185
    iput-wide v1, v4, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    .line 186
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reset ML flag for provider call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_39
    iget v2, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 188
    iget v3, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v1, 0x1dd

    move/from16 v28, v3

    move/from16 v3, p4

    move-object/from16 v53, v4

    move/from16 v4, v23

    move-wide/from16 v54, v5

    move/from16 v5, v24

    move-object v6, v7

    move-object/from16 v56, v18

    const/16 v18, 0x0

    move-object/from16 v7, p5

    move-object/from16 v57, v8

    move/from16 v8, v41

    move/from16 v23, v9

    move/from16 v9, v28

    move/from16 v10, v25

    move-object v15, v12

    move/from16 v58, v16

    move-object/from16 v16, v11

    move-wide/from16 v11, v26

    .line 189
    invoke-static/range {v1 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V

    move-object/from16 v27, v15

    move-object/from16 v4, v53

    move-wide/from16 v60, v54

    move-object/from16 v15, p2

    goto/16 :goto_34

    :cond_3a
    move-object/from16 v53, v4

    move-wide/from16 v54, v5

    move-object/from16 v56, v7

    move-object/from16 v57, v8

    move/from16 v23, v9

    move-object v15, v12

    move/from16 v58, v16

    :goto_30
    const/16 v18, 0x0

    move-object/from16 v16, v11

    goto :goto_31

    :cond_3b
    move-object/from16 v53, v4

    move-wide/from16 v54, v5

    move-object/from16 v56, v7

    move-object/from16 v57, v8

    move/from16 v23, v9

    move-object v15, v12

    move/from16 v58, v16

    move-object/from16 v2, v18

    goto :goto_30

    .line 190
    :goto_31
    iget-object v1, v14, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x2

    move v5, v1

    goto :goto_32

    :cond_3c
    const/4 v5, 0x1

    .line 191
    :goto_32
    iget-object v1, v14, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    move-result v10

    .line 192
    const-string/jumbo v1, "getContentProviderImpl: before start process"

    move-wide/from16 v11, v54

    invoke-static {v11, v12, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 193
    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v15, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v4, v14, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v6, v53

    if-eqz v6, :cond_3d

    if-ne v6, v2, :cond_3d

    const/16 v27, 0x1

    goto :goto_33

    :cond_3d
    move/from16 v27, v18

    :goto_33
    new-instance v2, Lcom/android/server/am/HostingRecord;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v15, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v15, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v6}, Lcom/android/server/am/HostingRecord;-><init>(Landroid/content/ComponentName;)V

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v24, v1

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v29, v2

    invoke-virtual/range {v24 .. v32}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    .line 194
    const-string/jumbo v1, "getContentProviderImpl: after start process"

    invoke-static {v11, v12, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-nez v9, :cond_3e

    .line 195
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": process is bad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_8

    .line 196
    :try_start_2f
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v22
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_3

    .line 197
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_f

    :cond_3e
    move-object v8, v15

    move-object/from16 v15, p2

    .line 198
    :try_start_30
    iget v2, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x1dd

    const/4 v4, 0x3

    const/16 v24, 0x14

    const-wide/16 v25, 0x0

    move/from16 v3, p4

    move-object/from16 v7, p5

    move-object/from16 v27, v8

    move/from16 v8, v41

    move-object/from16 v59, v9

    move/from16 v9, v24

    move-wide/from16 v60, v11

    move-wide/from16 v11, v25

    invoke-static/range {v1 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V

    .line 199
    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 200
    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    move-wide/from16 v2, v47

    move-object/from16 v4, v59

    .line 201
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/am/AppStartInfoTracker;->handleProcessContentProviderStart(Lcom/android/server/am/ProcessRecord;J)V

    .line 202
    :goto_34
    iput-object v4, v14, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 203
    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_8

    .line 204
    :try_start_31
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_36

    :goto_35
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    throw v1

    :cond_3f
    move-wide/from16 v60, v5

    move-object/from16 v56, v7

    move-object/from16 v57, v8

    move/from16 v23, v9

    move-object/from16 v27, v12

    move/from16 v58, v16

    const/16 v18, 0x0

    move-object/from16 v16, v11

    .line 206
    :goto_36
    const-string/jumbo v1, "getContentProviderImpl: updating data structures"

    move-wide/from16 v10, v60

    invoke-static {v10, v11, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-eqz v17, :cond_40

    .line 207
    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move-object/from16 v2, v56

    invoke-virtual {v1, v2, v14}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    .line 208
    :cond_40
    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    iget-boolean v2, v14, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    if-eqz v2, :cond_41

    .line 210
    iget-object v1, v1, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v1, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 211
    :cond_41
    iget-object v2, v14, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 212
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :goto_37
    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v3, v14

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v30, v10

    move-object v15, v13

    move/from16 v13, p8

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ContentProviderHelper;->incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v12

    if-eqz v12, :cond_42

    const/4 v1, 0x1

    .line 214
    iput-boolean v1, v12, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 215
    :cond_42
    iget-object v1, v14, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v4, v18

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;

    .line 216
    invoke-virtual {v2}, Lcom/android/server/am/ContentProviderConnection;->getStableCount()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/am/ContentProviderConnection;->getUnstableCount()I

    move-result v2
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_3

    add-int/2addr v3, v2

    add-int/2addr v4, v3

    goto :goto_38

    :cond_43
    move-object/from16 v1, p2

    move v2, v4

    move/from16 v10, v23

    move-object/from16 v4, v27

    goto :goto_3b

    :catchall_9
    move-exception v0

    move-object v15, v13

    :goto_39
    move-object v1, v0

    .line 217
    :goto_3a
    :try_start_32
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_a

    :try_start_33
    throw v1

    :catchall_a
    move-exception v0

    goto :goto_39

    :cond_44
    move-object/from16 v1, p2

    move/from16 v58, v11

    move-wide/from16 v30, v13

    move-object/from16 v24, v15

    move-object/from16 v57, v43

    move/from16 v5, v50

    const/16 v18, 0x0

    move-object/from16 v15, p0

    move v10, v5

    move/from16 v2, v18

    move-object/from16 v14, v24

    .line 218
    :goto_3b
    const-string/jumbo v3, "getContentProviderImpl: done!"

    move-wide/from16 v5, v30

    invoke-static {v5, v6, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 219
    iget-object v3, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 220
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    move/from16 v6, p4

    const/4 v7, 0x0

    .line 221
    invoke-virtual {v3, v10, v7, v6, v5}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V

    const/16 v3, 0x7554

    move-object/from16 v6, p1

    move/from16 v5, v18

    if-eqz v6, :cond_49

    .line 222
    monitor-enter v14
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_3

    .line 223
    :try_start_34
    iget-object v6, v14, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-nez v6, :cond_48

    .line 224
    iget-object v6, v14, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-nez v6, :cond_45

    .line 225
    const-string v2, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to launch app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": launching app became null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 227
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 228
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v5, v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 229
    monitor-exit v14
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_b

    :try_start_35
    monitor-exit v22
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_f

    :catchall_b
    move-exception v0

    move-object v1, v0

    goto :goto_3c

    :cond_45
    const/4 v1, 0x1

    if-le v2, v1, :cond_46

    .line 230
    :try_start_36
    const-string v1, "ContentProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wait for provider publish: waiters="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callerApp="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v57

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cpr="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    if-eqz v12, :cond_47

    const/4 v1, 0x1

    .line 231
    iput-boolean v1, v12, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 232
    :cond_47
    iget-object v1, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 233
    iput-object v14, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 234
    iget-object v2, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    sget v3, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 235
    :cond_48
    monitor-exit v14
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_b

    .line 236
    :try_start_37
    invoke-virtual {v14, v12, v5}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v1

    monitor-exit v22
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 237
    :goto_3c
    :try_start_38
    monitor-exit v14
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_b

    :try_start_39
    throw v1

    .line 238
    :cond_49
    monitor-exit v22
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sget v2, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v9, v2

    add-long/2addr v7, v9

    .line 240
    monitor-enter v14

    .line 241
    :goto_3d
    :try_start_3a
    iget-object v2, v14, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-nez v2, :cond_4f

    .line 242
    iget-object v2, v14, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_4a

    .line 243
    const-string v2, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to launch app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": launching app became null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v2, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 245
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 246
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v5, v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 247
    monitor-exit v14
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_c

    const/4 v1, 0x0

    return-object v1

    :catchall_c
    move-exception v0

    move-object v1, v0

    goto/16 :goto_48

    .line 248
    :cond_4a
    :try_start_3b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3b} :catch_a
    .catchall {:try_start_3b .. :try_end_3b} :catchall_d

    sub-long v9, v7, v9

    move-object v2, v4

    const-wide/16 v3, 0x0

    :try_start_3c
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_3c} :catch_9
    .catchall {:try_start_3c .. :try_end_3c} :catchall_d

    if-eqz v12, :cond_4b

    const/4 v11, 0x1

    .line 249
    :try_start_3d
    iput-boolean v11, v12, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto :goto_3e

    :catchall_d
    move-exception v0

    move-object v1, v0

    goto :goto_41

    :cond_4b
    const/4 v11, 0x1

    .line 250
    :goto_3e
    invoke-virtual {v14, v9, v10}, Ljava/lang/Object;->wait(J)V

    .line 251
    iget-object v9, v14, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_3d} :catch_b
    .catchall {:try_start_3d .. :try_end_3d} :catchall_d

    if-nez v9, :cond_4c

    if-eqz v12, :cond_50

    .line 252
    :try_start_3e
    iput-boolean v5, v12, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto :goto_44

    :cond_4c
    if-eqz v12, :cond_4e

    :goto_3f
    iput-boolean v5, v12, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto :goto_43

    :catch_9
    :goto_40
    const/4 v11, 0x1

    goto :goto_42

    :goto_41
    if-eqz v12, :cond_4d

    iput-boolean v5, v12, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 253
    :cond_4d
    throw v1

    :catch_a
    move-object v2, v4

    const-wide/16 v3, 0x0

    goto :goto_40

    :catch_b
    :goto_42
    if-eqz v12, :cond_4e

    goto :goto_3f

    :cond_4e
    :goto_43
    move-object v4, v2

    const/16 v3, 0x7554

    goto/16 :goto_3d

    :cond_4f
    move-object v2, v4

    move v11, v5

    .line 254
    :cond_50
    :goto_44
    monitor-exit v14
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_c

    if-eqz v11, :cond_53

    .line 255
    const-string/jumbo v3, "unknown"

    if-eqz v6, :cond_52

    .line 256
    iget-object v4, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v4

    .line 257
    :try_start_3f
    iget-object v5, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 258
    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessList;->getLRURecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    if-eqz v5, :cond_51

    .line 259
    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_45

    :catchall_e
    move-exception v0

    move-object v1, v0

    goto :goto_46

    .line 260
    :cond_51
    :goto_45
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_47

    :goto_46
    :try_start_40
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1

    .line 261
    :cond_52
    :goto_47
    const-string v4, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Timeout waiting for provider "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v6, " for provider "

    const-string v7, " providerRunning="

    .line 262
    invoke-static {v2, v6, v1, v7, v5}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    move/from16 v1, v58

    .line 263
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " caller="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 266
    :cond_53
    invoke-virtual {v14, v12, v5}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v1

    return-object v1

    .line 267
    :goto_48
    :try_start_41
    monitor-exit v14
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_c

    throw v1

    .line 268
    :goto_49
    :try_start_42
    monitor-exit v22
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public final handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    if-eqz p1, :cond_7

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 10
    .line 11
    if-eqz v1, :cond_7

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/android/server/am/ContentProviderConnection;->decrementCount(Z)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    iget-object p2, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 22
    .line 23
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->mProcStatsLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    :try_start_1
    iget-object v2, p1, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stop()V

    .line 33
    .line 34
    .line 35
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    const/4 v1, 0x0

    .line 37
    :try_start_2
    iput-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    :try_start_4
    throw p0

    .line 43
    :cond_1
    :goto_0
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-static {v1}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 61
    .line 62
    const/16 v2, 0x40

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    goto/16 :goto_5

    .line 70
    .line 71
    :cond_2
    :goto_1
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 81
    .line 82
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 83
    .line 84
    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 85
    .line 86
    const/16 v2, 0xf

    .line 87
    .line 88
    if-ge v1, v2, :cond_3

    .line 89
    .line 90
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 95
    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    iput-wide v2, v1, Lcom/android/server/am/ProcessProviderRecord;->mLastProviderTime:J

    .line 101
    .line 102
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 103
    .line 104
    iget-object v2, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 105
    .line 106
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 107
    .line 108
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 109
    .line 110
    iget v4, p2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 111
    .line 112
    iget-object v5, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 113
    .line 114
    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 115
    .line 116
    iget-object v5, p2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 117
    .line 118
    iget-object v6, p2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 119
    .line 120
    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 123
    .line 124
    .line 125
    if-eqz p3, :cond_6

    .line 126
    .line 127
    invoke-static {}, Lcom/android/server/am/Flags;->serviceBindingOomAdjPolicy()Z

    .line 128
    .line 129
    .line 130
    iget-object p3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 131
    .line 132
    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 133
    .line 134
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 135
    .line 136
    iget-object p2, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 137
    .line 138
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-static {v1, p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    .line 142
    .line 143
    .line 144
    move-result p3

    .line 145
    if-eqz p3, :cond_4

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 149
    .line 150
    iget p3, p2, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 151
    .line 152
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 153
    .line 154
    iget v2, v1, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 155
    .line 156
    if-ge p3, v2, :cond_5

    .line 157
    .line 158
    iget p2, p2, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 159
    .line 160
    iget p3, v1, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 161
    .line 162
    if-ge p2, p3, :cond_5

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 166
    .line 167
    iget-object p1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 168
    .line 169
    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 170
    .line 171
    const/16 p2, 0x8

    .line 172
    .line 173
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(ILcom/android/server/am/ProcessRecord;)Z

    .line 174
    .line 175
    .line 176
    :cond_6
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 177
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_7
    :goto_4
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 182
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :goto_5
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 187
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 188
    .line 189
    .line 190
    throw p0
.end method

.method public final incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-wide/from16 v3, p9

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget v0, v1, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    .line 16
    .line 17
    add-int/2addr v0, v6

    .line 18
    iput v0, v1, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, v1, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 31
    .line 32
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    new-instance v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 43
    .line 44
    move/from16 v3, p4

    .line 45
    .line 46
    move-object/from16 v4, p6

    .line 47
    .line 48
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;-><init>(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v3, v1, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->startAssociationIfNeeded(Lcom/android/server/am/ContentProviderRecord;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget v1, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    .line 60
    .line 61
    add-int/2addr v1, v6

    .line 62
    iput v1, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    .line 63
    .line 64
    :goto_0
    return-object v5

    .line 65
    :cond_3
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 66
    .line 67
    iget-object v7, v2, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    const/4 v8, 0x0

    .line 74
    move v9, v8

    .line 75
    :goto_1
    if-ge v9, v7, :cond_6

    .line 76
    .line 77
    iget-object v10, v2, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    check-cast v10, Lcom/android/server/am/ContentProviderConnection;

    .line 84
    .line 85
    iget-object v11, v10, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 86
    .line 87
    if-ne v11, v1, :cond_5

    .line 88
    .line 89
    iget-object v11, v10, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    .line 90
    .line 91
    monitor-enter v11

    .line 92
    if-eqz p7, :cond_4

    .line 93
    .line 94
    :try_start_0
    iget v0, v10, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 95
    .line 96
    add-int/2addr v0, v6

    .line 97
    iput v0, v10, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 98
    .line 99
    iget v0, v10, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    .line 100
    .line 101
    add-int/2addr v0, v6

    .line 102
    iput v0, v10, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    goto :goto_3

    .line 107
    :cond_4
    iget v0, v10, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 108
    .line 109
    add-int/2addr v0, v6

    .line 110
    iput v0, v10, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 111
    .line 112
    iget v0, v10, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    .line 113
    .line 114
    add-int/2addr v0, v6

    .line 115
    iput v0, v10, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    .line 116
    .line 117
    :goto_2
    monitor-exit v11

    .line 118
    return-object v10

    .line 119
    :goto_3
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    throw v0

    .line 121
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    new-instance v7, Lcom/android/server/am/ContentProviderConnection;

    .line 125
    .line 126
    move-object/from16 v9, p5

    .line 127
    .line 128
    move/from16 v10, p12

    .line 129
    .line 130
    invoke-direct {v7, v1, v0, v9, v10}, Lcom/android/server/am/ContentProviderConnection;-><init>(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7}, Lcom/android/server/am/ContentProviderConnection;->startAssociationIfNeeded()V

    .line 134
    .line 135
    .line 136
    iget-object v9, v7, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    .line 137
    .line 138
    monitor-enter v9

    .line 139
    if-eqz p7, :cond_7

    .line 140
    .line 141
    :try_start_1
    iput v6, v7, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 142
    .line 143
    iput v6, v7, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    .line 144
    .line 145
    iput v8, v7, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 146
    .line 147
    iput v8, v7, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :catchall_1
    move-exception v0

    .line 151
    goto :goto_5

    .line 152
    :cond_7
    iput v8, v7, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 153
    .line 154
    iput v8, v7, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    .line 155
    .line 156
    iput v6, v7, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 157
    .line 158
    iput v6, v7, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    .line 159
    .line 160
    :goto_4
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    iget-object v6, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    iget-object v6, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 167
    .line 168
    if-eqz v6, :cond_8

    .line 169
    .line 170
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 171
    .line 172
    const/16 v9, 0x40

    .line 173
    .line 174
    invoke-virtual {v6, v9}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    .line 175
    .line 176
    .line 177
    :cond_8
    iget-object v2, v2, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-object/from16 v2, p0

    .line 183
    .line 184
    iget-object v9, v2, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 185
    .line 186
    iget v10, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 187
    .line 188
    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 189
    .line 190
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 191
    .line 192
    iget v12, v2, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 193
    .line 194
    iget v13, v1, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 195
    .line 196
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 197
    .line 198
    iget-wide v14, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 199
    .line 200
    iget-object v14, v1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 201
    .line 202
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 203
    .line 204
    iget-object v15, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IILandroid/content/ComponentName;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    if-eqz p8, :cond_9

    .line 210
    .line 211
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 212
    .line 213
    if-eqz v2, :cond_9

    .line 214
    .line 215
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 216
    .line 217
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 218
    .line 219
    const/16 v2, 0xfa

    .line 220
    .line 221
    if-gt v0, v2, :cond_9

    .line 222
    .line 223
    const-string/jumbo v0, "getContentProviderImpl: before updateLruProcess"

    .line 224
    .line 225
    .line 226
    invoke-static {v3, v4, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 230
    .line 231
    move-object/from16 v1, p11

    .line 232
    .line 233
    invoke-virtual {v1, v0, v5, v8}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    .line 234
    .line 235
    .line 236
    const-string/jumbo v0, "getContentProviderImpl: after updateLruProcess"

    .line 237
    .line 238
    .line 239
    invoke-static {v3, v4, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :cond_9
    return-object v7

    .line 243
    :goto_5
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 244
    throw v0
.end method

.method public final installSystemProviders()V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    .line 4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5
    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 13
    .line 14
    const-string/jumbo v3, "system"

    .line 15
    .line 16
    .line 17
    const/16 v4, 0x3e8

    .line 18
    .line 19
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lcom/android/server/am/ContentProviderHelper;->generateApplicationProvidersLocked(Lcom/android/server/am/ProcessRecord;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    sub-int/2addr v3, v0

    .line 36
    :goto_0
    if-ltz v3, :cond_1

    .line 37
    .line 38
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Landroid/content/pm/ProviderInfo;

    .line 43
    .line 44
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 45
    .line 46
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 47
    .line 48
    and-int/2addr v5, v0

    .line 49
    if-nez v5, :cond_0

    .line 50
    .line 51
    const-string v5, "ContentProviderHelper"

    .line 52
    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v7, "Not installing system proc provider "

    .line 59
    .line 60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v4, ": not system .apk"

    .line 69
    .line 70
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto/16 :goto_8

    .line 86
    .line 87
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 92
    .line 93
    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/app/ActivityThread;->installSystemProviders(Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    monitor-enter p0

    .line 104
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderHelper;->mSystemProvidersInstalled:Z

    .line 105
    .line 106
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 107
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 108
    .line 109
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 110
    .line 111
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iput-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 118
    .line 119
    sget-object v3, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 126
    .line 127
    sget-object v3, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    .line 128
    .line 129
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 133
    .line 134
    sget-object v3, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    .line 135
    .line 136
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 137
    .line 138
    .line 139
    iget-boolean v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    .line 140
    .line 141
    if-eqz v1, :cond_3

    .line 142
    .line 143
    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 144
    .line 145
    sget-object v3, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    .line 146
    .line 147
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 151
    .line 152
    sget-object v3, Lcom/android/server/am/ActivityManagerConstants;->FORCE_ENABLE_PSS_PROFILING_URI:Landroid/net/Uri;

    .line 153
    .line 154
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerConstants;->updateConstants()V

    .line 158
    .line 159
    .line 160
    iget-boolean v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    .line 161
    .line 162
    if-eqz v1, :cond_4

    .line 163
    .line 164
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableAutomaticSystemServerHeapDumps()V

    .line 165
    .line 166
    .line 167
    :cond_4
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Lcom/android/server/am/ActivityManagerConstants$1;

    .line 176
    .line 177
    const-string v5, "activity_manager"

    .line 178
    .line 179
    invoke-static {v5, v1, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 180
    .line 181
    .line 182
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedForComponentAliasListener:Lcom/android/server/am/ActivityManagerConstants$1;

    .line 191
    .line 192
    const-string v6, "activity_manager_ca"

    .line 193
    .line 194
    invoke-static {v6, v1, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Lcom/android/server/am/ActivityManagerConstants$1;

    .line 198
    .line 199
    new-array v3, v4, [Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {v5, v3}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerConstants$1;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedForComponentAliasListener:Lcom/android/server/am/ActivityManagerConstants$1;

    .line 209
    .line 210
    new-array v3, v4, [Ljava/lang/String;

    .line 211
    .line 212
    invoke-static {v6, v3}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerConstants$1;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 220
    .line 221
    const-string v3, "activity_starts_logging_enabled"

    .line 222
    .line 223
    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-ne v1, v0, :cond_5

    .line 228
    .line 229
    move v1, v0

    .line 230
    goto :goto_2

    .line 231
    :cond_5
    move v1, v4

    .line 232
    :goto_2
    iput-boolean v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mFlagActivityStartsLoggingEnabled:Z

    .line 233
    .line 234
    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 235
    .line 236
    const-string/jumbo v3, "foreground_service_starts_logging_enabled"

    .line 237
    .line 238
    .line 239
    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 240
    .line 241
    .line 242
    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    .line 243
    .line 244
    const-string/jumbo v3, "force_enable_pss_profiling"

    .line 245
    .line 246
    .line 247
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-ne v1, v0, :cond_6

    .line 252
    .line 253
    move v1, v0

    .line 254
    goto :goto_3

    .line 255
    :cond_6
    move v1, v4

    .line 256
    :goto_3
    iput-boolean v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mForceEnablePssProfiling:Z

    .line 257
    .line 258
    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 259
    .line 260
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    .line 261
    .line 262
    invoke-virtual {v1}, Lcom/android/server/am/DropboxRateLimiter;->init()V

    .line 263
    .line 264
    .line 265
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 266
    .line 267
    new-instance v2, Lcom/android/server/am/CoreSettingsObserver;

    .line 268
    .line 269
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 270
    .line 271
    invoke-direct {v2, v3}, Lcom/android/server/am/CoreSettingsObserver;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 272
    .line 273
    .line 274
    iput-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mCoreSettingsObserver:Lcom/android/server/am/CoreSettingsObserver;

    .line 275
    .line 276
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 277
    .line 278
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;

    .line 284
    .line 285
    invoke-direct {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 286
    .line 287
    .line 288
    new-instance v1, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;

    .line 289
    .line 290
    invoke-direct {v1, p0}, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;-><init>(Lcom/android/server/am/ContentProviderHelper;)V

    .line 291
    .line 292
    .line 293
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 294
    .line 295
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 296
    .line 297
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    new-instance v2, Lcom/android/server/am/SettingsToPropertiesMapper;

    .line 302
    .line 303
    sget-object v3, Lcom/android/server/am/SettingsToPropertiesMapper;->sGlobalSettings:[Ljava/lang/String;

    .line 304
    .line 305
    sget-object v5, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigScopes:[Ljava/lang/String;

    .line 306
    .line 307
    sget-object v6, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigAconfigScopes:[Ljava/lang/String;

    .line 308
    .line 309
    invoke-direct {v2, v1, v3, v5, v6}, Lcom/android/server/am/SettingsToPropertiesMapper;-><init>(Landroid/content/ContentResolver;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertiesFromSettings()V

    .line 313
    .line 314
    .line 315
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 316
    .line 317
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 318
    .line 319
    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 320
    .line 321
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    const-string v3, "activity_manager"

    .line 325
    .line 326
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    invoke-virtual {v5}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    iget-object v6, v2, Lcom/android/server/am/CachedAppOptimizer;->mOnFlagsChangedListener:Lcom/android/server/am/CachedAppOptimizer$1;

    .line 335
    .line 336
    invoke-static {v3, v5, v6}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 337
    .line 338
    .line 339
    const-string v3, "activity_manager_native_boot"

    .line 340
    .line 341
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-virtual {v5}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    iget-object v6, v2, Lcom/android/server/am/CachedAppOptimizer;->mOnNativeBootFlagsChangedListener:Lcom/android/server/am/CachedAppOptimizer$1;

    .line 350
    .line 351
    invoke-static {v3, v5, v6}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 352
    .line 353
    .line 354
    iget-object v3, v2, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 355
    .line 356
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 357
    .line 358
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    sget-object v5, Lcom/android/server/am/CachedAppOptimizer;->CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

    .line 363
    .line 364
    iget-object v6, v2, Lcom/android/server/am/CachedAppOptimizer;->mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    .line 365
    .line 366
    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 367
    .line 368
    .line 369
    iget-object v3, v2, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 370
    .line 371
    monitor-enter v3

    .line 372
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/am/CachedAppOptimizer;->updateUseCompaction()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionThrottles()V

    .line 376
    .line 377
    .line 378
    const-string/jumbo v5, "compact_statsd_sample_rate"

    .line 379
    .line 380
    .line 381
    const-string v6, "activity_manager"

    .line 382
    .line 383
    const v7, 0x3dcccccd    # 0.1f

    .line 384
    .line 385
    .line 386
    invoke-static {v6, v5, v7}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    iput v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 391
    .line 392
    iget v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 393
    .line 394
    const/4 v6, 0x0

    .line 395
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    const/high16 v8, 0x3f800000    # 1.0f

    .line 400
    .line 401
    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    .line 402
    .line 403
    .line 404
    move-result v5

    .line 405
    iput v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 406
    .line 407
    const-string/jumbo v5, "freeze_statsd_sample_rate"

    .line 408
    .line 409
    .line 410
    const-string v9, "activity_manager"

    .line 411
    .line 412
    invoke-static {v9, v5, v7}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    iput v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 417
    .line 418
    iget v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 419
    .line 420
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    iput v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 429
    .line 430
    const-string v5, "activity_manager"

    .line 431
    .line 432
    const-string/jumbo v6, "compact_full_rss_throttle_kb"

    .line 433
    .line 434
    .line 435
    const-wide/16 v7, 0x2ee0

    .line 436
    .line 437
    invoke-static {v5, v6, v7, v8}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 438
    .line 439
    .line 440
    move-result-wide v5

    .line 441
    iput-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 442
    .line 443
    iget-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 444
    .line 445
    const-wide/16 v9, 0x0

    .line 446
    .line 447
    cmp-long v5, v5, v9

    .line 448
    .line 449
    if-gez v5, :cond_7

    .line 450
    .line 451
    iput-wide v7, v2, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 452
    .line 453
    :cond_7
    const-string v5, "activity_manager"

    .line 454
    .line 455
    const-string/jumbo v6, "compact_full_delta_rss_throttle_kb"

    .line 456
    .line 457
    .line 458
    const-wide/16 v7, 0x1f40

    .line 459
    .line 460
    invoke-static {v5, v6, v7, v8}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 461
    .line 462
    .line 463
    move-result-wide v5

    .line 464
    iput-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 465
    .line 466
    iget-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 467
    .line 468
    cmp-long v5, v5, v9

    .line 469
    .line 470
    if-gez v5, :cond_8

    .line 471
    .line 472
    iput-wide v7, v2, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 473
    .line 474
    :cond_8
    invoke-virtual {v2}, Lcom/android/server/am/CachedAppOptimizer;->updateProcStateThrottle()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v2}, Lcom/android/server/am/CachedAppOptimizer;->updateUseFreezer()V

    .line 478
    .line 479
    .line 480
    const-string v5, "activity_manager"

    .line 481
    .line 482
    const-string/jumbo v6, "compact_throttle_min_oom_adj"

    .line 483
    .line 484
    .line 485
    const-wide/16 v7, 0x352

    .line 486
    .line 487
    invoke-static {v5, v6, v7, v8}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 488
    .line 489
    .line 490
    move-result-wide v5

    .line 491
    iput-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 492
    .line 493
    iget-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 494
    .line 495
    cmp-long v5, v5, v7

    .line 496
    .line 497
    if-gez v5, :cond_9

    .line 498
    .line 499
    iput-wide v7, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 500
    .line 501
    :cond_9
    const-string v5, "activity_manager"

    .line 502
    .line 503
    const-string/jumbo v6, "compact_throttle_max_oom_adj"

    .line 504
    .line 505
    .line 506
    const-wide/16 v7, 0x3e7

    .line 507
    .line 508
    invoke-static {v5, v6, v7, v8}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 509
    .line 510
    .line 511
    move-result-wide v5

    .line 512
    iput-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    .line 513
    .line 514
    iget-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    .line 515
    .line 516
    cmp-long v5, v5, v7

    .line 517
    .line 518
    if-lez v5, :cond_a

    .line 519
    .line 520
    iput-wide v7, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    .line 521
    .line 522
    :cond_a
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 523
    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    .line 524
    .line 525
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    invoke-virtual {v3}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    const-string v5, "activity_manager"

    .line 534
    .line 535
    iget-object v6, v2, Lcom/android/server/am/CacheOomRanker;->mOnFlagsChangedListener:Lcom/android/server/am/CacheOomRanker$1;

    .line 536
    .line 537
    invoke-static {v5, v3, v6}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 538
    .line 539
    .line 540
    iget-object v5, v2, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 541
    .line 542
    monitor-enter v5

    .line 543
    :try_start_3
    const-string/jumbo v3, "use_oom_re_ranking"

    .line 544
    .line 545
    .line 546
    const-string v6, "activity_manager"

    .line 547
    .line 548
    invoke-static {v6, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 549
    .line 550
    .line 551
    move-result v3

    .line 552
    iput-boolean v3, v2, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    .line 553
    .line 554
    invoke-virtual {v2}, Lcom/android/server/am/CacheOomRanker;->updateNumberToReRank()V

    .line 555
    .line 556
    .line 557
    const-string/jumbo v3, "oom_re_ranking_lru_weight"

    .line 558
    .line 559
    .line 560
    const-string v6, "activity_manager"

    .line 561
    .line 562
    const v7, 0x3eb33333    # 0.35f

    .line 563
    .line 564
    .line 565
    invoke-static {v6, v3, v7}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 566
    .line 567
    .line 568
    move-result v3

    .line 569
    iput v3, v2, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    .line 570
    .line 571
    const-string/jumbo v3, "oom_re_ranking_uses_weight"

    .line 572
    .line 573
    .line 574
    const-string v6, "activity_manager"

    .line 575
    .line 576
    const/high16 v7, 0x3f000000    # 0.5f

    .line 577
    .line 578
    invoke-static {v6, v3, v7}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    iput v3, v2, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    .line 583
    .line 584
    const-string/jumbo v3, "oom_re_ranking_rss_weight"

    .line 585
    .line 586
    .line 587
    const-string v6, "activity_manager"

    .line 588
    .line 589
    const v7, 0x3e19999a    # 0.15f

    .line 590
    .line 591
    .line 592
    invoke-static {v6, v3, v7}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 593
    .line 594
    .line 595
    move-result v3

    .line 596
    iput v3, v2, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    .line 597
    .line 598
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 599
    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 600
    .line 601
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 602
    .line 603
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    .line 604
    .line 605
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    if-lez v2, :cond_b

    .line 610
    .line 611
    new-instance v2, Landroid/content/IntentFilter;

    .line 612
    .line 613
    const-string v3, "android.intent.action.USER_SWITCHED"

    .line 614
    .line 615
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 619
    .line 620
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 621
    .line 622
    new-instance v5, Lcom/android/server/am/OomAdjuster$1;

    .line 623
    .line 624
    invoke-direct {v5, v1}, Lcom/android/server/am/OomAdjuster$1;-><init>(Lcom/android/server/am/OomAdjuster;)V

    .line 625
    .line 626
    .line 627
    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 628
    .line 629
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 630
    .line 631
    const/4 v6, 0x0

    .line 632
    invoke-virtual {v3, v5, v2, v6, v1}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 633
    .line 634
    .line 635
    :cond_b
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 636
    .line 637
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 638
    .line 639
    sget v1, Lcom/android/server/RescueParty;->LEVEL_ISRB_BOOT:I

    .line 640
    .line 641
    const-string/jumbo v1, "device_config.reset_performed"

    .line 642
    .line 643
    .line 644
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    const-string/jumbo v2, "true"

    .line 649
    .line 650
    .line 651
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    move-result v1

    .line 655
    if-eqz v1, :cond_11

    .line 656
    .line 657
    const-string/jumbo v1, "device_config.reset_performed"

    .line 658
    .line 659
    .line 660
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    const-string/jumbo v2, "true"

    .line 665
    .line 666
    .line 667
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    move-result v1

    .line 671
    if-nez v1, :cond_c

    .line 672
    .line 673
    new-array v1, v4, [Ljava/lang/String;

    .line 674
    .line 675
    goto :goto_6

    .line 676
    :cond_c
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->getResetFlagsFileContent()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 681
    .line 682
    .line 683
    move-result v2

    .line 684
    if-eqz v2, :cond_d

    .line 685
    .line 686
    new-array v1, v4, [Ljava/lang/String;

    .line 687
    .line 688
    goto :goto_6

    .line 689
    :cond_d
    const-string v2, ";"

    .line 690
    .line 691
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    new-instance v2, Ljava/util/HashSet;

    .line 696
    .line 697
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 698
    .line 699
    .line 700
    array-length v3, v1

    .line 701
    move v5, v4

    .line 702
    :goto_4
    if-ge v5, v3, :cond_f

    .line 703
    .line 704
    aget-object v6, v1, v5

    .line 705
    .line 706
    const-string v7, "\\."

    .line 707
    .line 708
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v7

    .line 712
    array-length v8, v7

    .line 713
    const/4 v9, 0x3

    .line 714
    if-ge v8, v9, :cond_e

    .line 715
    .line 716
    const-string/jumbo v7, "failed to extract category name from property "

    .line 717
    .line 718
    .line 719
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v6

    .line 723
    invoke-static {v6}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    goto :goto_5

    .line 727
    :cond_e
    const/4 v6, 0x2

    .line 728
    aget-object v6, v7, v6

    .line 729
    .line 730
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    :goto_5
    add-int/2addr v5, v0

    .line 734
    goto :goto_4

    .line 735
    :cond_f
    new-array v1, v4, [Ljava/lang/String;

    .line 736
    .line 737
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    check-cast v1, [Ljava/lang/String;

    .line 742
    .line 743
    :goto_6
    array-length v2, v1

    .line 744
    if-ge v4, v2, :cond_11

    .line 745
    .line 746
    const-string/jumbo v2, "configuration"

    .line 747
    .line 748
    .line 749
    aget-object v3, v1, v4

    .line 750
    .line 751
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    move-result v2

    .line 755
    if-eqz v2, :cond_10

    .line 756
    .line 757
    goto :goto_7

    .line 758
    :cond_10
    const/4 v2, 0x4

    .line 759
    aget-object v3, v1, v4

    .line 760
    .line 761
    invoke-static {v2, v3}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    .line 762
    .line 763
    .line 764
    :goto_7
    add-int/2addr v4, v0

    .line 765
    goto :goto_6

    .line 766
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 771
    .line 772
    .line 773
    move-result-object v1

    .line 774
    new-instance v2, Lcom/android/server/RescueParty$RescuePartyMonitorCallback;

    .line 775
    .line 776
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 777
    .line 778
    .line 779
    iput-object p0, v2, Lcom/android/server/RescueParty$RescuePartyMonitorCallback;->mContext:Landroid/content/Context;

    .line 780
    .line 781
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->setMonitorCallback(Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;)V

    .line 782
    .line 783
    .line 784
    return-void

    .line 785
    :catchall_1
    move-exception p0

    .line 786
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 787
    throw p0

    .line 788
    :catchall_2
    move-exception p0

    .line 789
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 790
    throw p0

    .line 791
    :catchall_3
    move-exception v0

    .line 792
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 793
    throw v0

    .line 794
    :goto_8
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 795
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 796
    .line 797
    .line 798
    throw p0
.end method

.method public final isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    .line 12
    .line 13
    check-cast p0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Boolean;

    .line 20
    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    :goto_0
    return p0

    .line 30
    :cond_1
    invoke-static {p1}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast p0, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return v0
.end method

.method public final isHolderVisibleToCaller(Landroid/app/ContentProviderHolder;II)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    iget-object v1, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 27
    .line 28
    invoke-virtual {v1, p3}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v1, p3}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    move v1, p3

    .line 47
    :goto_1
    if-eq v1, p3, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    iget-object p1, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 54
    .line 55
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0, p2, p3, p1, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    xor-int/2addr p0, v2

    .line 62
    return p0

    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iget-object p1, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 68
    .line 69
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p0, p2, p3, p1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    xor-int/2addr p0, v2

    .line 76
    return p0

    .line 77
    :cond_4
    :goto_2
    return v0
.end method

.method public final isProcessAliveLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 6

    .line 1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-gtz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const-string v2, "/proc/"

    .line 8
    .line 9
    const-string v3, "/stat"

    .line 10
    .line 11
    invoke-static {v0, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    .line 18
    .line 19
    aput-wide v3, p0, v1

    .line 20
    .line 21
    sget-object v3, Lcom/android/server/am/ContentProviderHelper;->PROCESS_STATE_STATS_FORMAT:[I

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static {v2, v3, v4, p0, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    aget-wide v2, p0, v1

    .line 32
    .line 33
    const-wide/16 v4, 0x5a

    .line 34
    .line 35
    cmp-long p0, v2, v4

    .line 36
    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    const-wide/16 v4, 0x58

    .line 40
    .line 41
    cmp-long p0, v2, v4

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    const-wide/16 v4, 0x78

    .line 46
    .line 47
    cmp-long p0, v2, v4

    .line 48
    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    const-wide/16 v4, 0x4b

    .line 52
    .line 53
    cmp-long p0, v2, v4

    .line 54
    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    invoke-static {v0}, Landroid/os/Process;->getUidForPid(I)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 62
    .line 63
    if-ne p0, p1, :cond_2

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    :cond_2
    return v1
.end method

.method public final isSingletonOrSystemUserOnly(Landroid/content/pm/ProviderInfo;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/multiuser/Flags;->enableSystemUserOnlyForServicesAndProviders()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/multiuser/Flags;->enableSystemUserOnlyForServicesAndProviders()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/high16 v1, 0x20000000

    .line 21
    .line 22
    and-int/2addr v0, v1

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 29
    .line 30
    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 31
    .line 32
    iget p1, p1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    :goto_0
    const/4 p0, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    :goto_1
    return p0
.end method

.method public final maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4
    .line 5
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 14
    .line 15
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    iget-object v3, v0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/Long;

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    const-wide/32 v5, 0xea60

    .line 43
    .line 44
    .line 45
    sub-long v5, v1, v5

    .line 46
    .line 47
    cmp-long v3, v3, v5

    .line 48
    .line 49
    if-gez v3, :cond_4

    .line 50
    .line 51
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 52
    .line 53
    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    .line 54
    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 60
    .line 61
    iget p1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 62
    .line 63
    check-cast p0, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 68
    .line 69
    invoke-interface {p0, p3, p2, p1}, Lcom/android/server/usage/AppStandbyInternal;->postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object p0, v0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    .line 73
    .line 74
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p0, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_0
    return-void
.end method

.method public final publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .locals 16

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
    const-string v3, "Unable to find app for caller "

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v4, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 13
    .line 14
    const-string/jumbo v5, "publishContentProviders"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static {v4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_f

    .line 32
    .line 33
    iget-object v4, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 34
    .line 35
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 36
    .line 37
    .line 38
    monitor-enter v4

    .line 39
    :try_start_0
    iget-object v5, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 40
    .line 41
    invoke-virtual {v5, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    if-eqz v5, :cond_e

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v9, 0x0

    .line 57
    :goto_0
    if-ge v8, v1, :cond_a

    .line 58
    .line 59
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    check-cast v10, Landroid/app/ContentProviderHolder;

    .line 64
    .line 65
    if-eqz v10, :cond_1

    .line 66
    .line 67
    iget-object v11, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 68
    .line 69
    if-eqz v11, :cond_1

    .line 70
    .line 71
    iget-object v12, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 72
    .line 73
    if-nez v12, :cond_2

    .line 74
    .line 75
    :cond_1
    :goto_1
    move-object v13, v4

    .line 76
    const/4 v3, 0x0

    .line 77
    goto/16 :goto_7

    .line 78
    .line 79
    :cond_2
    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 80
    .line 81
    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v12, v12, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 84
    .line 85
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    check-cast v11, Lcom/android/server/am/ContentProviderRecord;

    .line 90
    .line 91
    if-nez v11, :cond_3

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    new-instance v9, Landroid/content/ComponentName;

    .line 95
    .line 96
    iget-object v12, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 97
    .line 98
    iget-object v13, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 101
    .line 102
    invoke-direct {v9, v13, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v12, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    .line 106
    .line 107
    invoke-virtual {v12, v9, v11}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    .line 108
    .line 109
    .line 110
    iget-object v9, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 111
    .line 112
    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 113
    .line 114
    const-string v12, ";"

    .line 115
    .line 116
    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    const/4 v12, 0x0

    .line 121
    :goto_2
    array-length v13, v9

    .line 122
    if-ge v12, v13, :cond_5

    .line 123
    .line 124
    iget-object v13, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    .line 125
    .line 126
    aget-object v14, v9, v12

    .line 127
    .line 128
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    iget-boolean v15, v11, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    .line 132
    .line 133
    if-eqz v15, :cond_4

    .line 134
    .line 135
    iget-object v13, v13, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    .line 136
    .line 137
    invoke-virtual {v13, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_4
    iget-object v15, v11, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 142
    .line 143
    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 144
    .line 145
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 146
    .line 147
    .line 148
    move-result v15

    .line 149
    invoke-virtual {v13, v15}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    .line 150
    .line 151
    .line 152
    move-result-object v13

    .line 153
    invoke-virtual {v13, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :goto_4
    move-object v13, v4

    .line 160
    goto/16 :goto_a

    .line 161
    .line 162
    :catchall_0
    move-exception v0

    .line 163
    goto :goto_4

    .line 164
    :cond_5
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    const/4 v12, 0x0

    .line 171
    const/4 v13, 0x0

    .line 172
    :goto_5
    const/4 v14, 0x1

    .line 173
    if-ge v12, v9, :cond_7

    .line 174
    .line 175
    iget-object v15, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v15

    .line 181
    if-ne v15, v11, :cond_6

    .line 182
    .line 183
    iget-object v13, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    add-int/lit8 v12, v12, -0x1

    .line 189
    .line 190
    add-int/lit8 v9, v9, -0x1

    .line 191
    .line 192
    move v13, v14

    .line 193
    :cond_6
    add-int/2addr v12, v14

    .line 194
    goto :goto_5

    .line 195
    :cond_7
    if-eqz v13, :cond_8

    .line 196
    .line 197
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 198
    .line 199
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 200
    .line 201
    const/16 v12, 0x49

    .line 202
    .line 203
    invoke-virtual {v9, v12, v11}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 207
    .line 208
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 209
    .line 210
    const/16 v12, 0x39

    .line 211
    .line 212
    invoke-virtual {v9, v12, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_8
    iget-object v9, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 216
    .line 217
    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 218
    .line 219
    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    .line 221
    move-object v13, v4

    .line 222
    :try_start_1
    iget-wide v3, v9, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 223
    .line 224
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 225
    .line 226
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 227
    .line 228
    invoke-virtual {v5, v12, v3, v4, v9}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)V

    .line 229
    .line 230
    .line 231
    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 232
    :try_start_2
    iget-object v3, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 233
    .line 234
    iput-object v3, v11, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 235
    .line 236
    invoke-virtual {v11, v5}, Lcom/android/server/am/ContentProviderRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v11, v14}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 243
    .line 244
    .line 245
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 246
    const/4 v3, 0x0

    .line 247
    :try_start_3
    iput v3, v11, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    .line 248
    .line 249
    invoke-static {v5}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-eqz v4, :cond_9

    .line 254
    .line 255
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 256
    .line 257
    const/16 v9, 0x40

    .line 258
    .line 259
    invoke-virtual {v4, v9}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 260
    .line 261
    .line 262
    goto :goto_6

    .line 263
    :catchall_1
    move-exception v0

    .line 264
    goto :goto_a

    .line 265
    :cond_9
    :goto_6
    move v9, v14

    .line 266
    goto :goto_7

    .line 267
    :catchall_2
    move-exception v0

    .line 268
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 269
    :try_start_5
    throw v0

    .line 270
    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 271
    .line 272
    move-object v4, v13

    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :cond_a
    move-object v13, v4

    .line 276
    const/4 v3, 0x0

    .line 277
    if-eqz v9, :cond_d

    .line 278
    .line 279
    iget-object v1, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 280
    .line 281
    const/4 v4, 0x7

    .line 282
    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(ILcom/android/server/am/ProcessRecord;)Z

    .line 283
    .line 284
    .line 285
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    :goto_8
    if-ge v3, v1, :cond_d

    .line 290
    .line 291
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    check-cast v4, Landroid/app/ContentProviderHolder;

    .line 296
    .line 297
    if-eqz v4, :cond_c

    .line 298
    .line 299
    iget-object v8, v4, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 300
    .line 301
    if-eqz v8, :cond_c

    .line 302
    .line 303
    iget-object v4, v4, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 304
    .line 305
    if-nez v4, :cond_b

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_b
    iget-object v4, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 309
    .line 310
    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v0, v5, v4, v8}, Lcom/android/server/am/ContentProviderHelper;->maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :cond_c
    :goto_9
    add-int/lit8 v3, v3, 0x1

    .line 316
    .line 317
    goto :goto_8

    .line 318
    :cond_d
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 319
    .line 320
    .line 321
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 322
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 323
    .line 324
    .line 325
    return-void

    .line 326
    :cond_e
    move-object v13, v4

    .line 327
    :try_start_6
    new-instance v0, Ljava/lang/SecurityException;

    .line 328
    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    const-string v1, " (pid="

    .line 338
    .line 339
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v1, ") when publishing content providers"

    .line 350
    .line 351
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw v0

    .line 362
    :goto_a
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 363
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 364
    .line 365
    .line 366
    throw v0

    .line 367
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    .line 368
    .line 369
    const-string v1, "SDK sandbox process not allowed to call publishContentProviders"

    .line 370
    .line 371
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    throw v0
.end method

.method public final removeContentProviderExternalUnchecked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Attempt to remove content provider: "

    .line 2
    .line 3
    const-string v1, "Attempt to remove content provider "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    .line 12
    .line 13
    invoke-virtual {v3, p1, p3}, Lcom/android/server/am/ProviderMap;->getProviderByName(ILjava/lang/String;)Lcom/android/server/am/ContentProviderRecord;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :try_start_1
    new-instance v3, Landroid/content/ComponentName;

    .line 27
    .line 28
    iget-object p3, p3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 29
    .line 30
    iget-object v4, p3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    iget-object p3, p3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {v3, v4, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p3, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    .line 38
    .line 39
    invoke-virtual {p3, p1, v3}, Lcom/android/server/am/ProviderMap;->getProviderByClass(ILandroid/content/ComponentName;)Lcom/android/server/am/ContentProviderRecord;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-eqz p3, :cond_1

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 58
    .line 59
    const/16 p2, 0x8

    .line 60
    .line 61
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(ILcom/android/server/am/ProcessRecord;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const-string p0, "ContentProviderHelper"

    .line 66
    .line 67
    new-instance p3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, " with no external reference for token: "

    .line 76
    .line 77
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p1, "."

    .line 84
    .line 85
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    const-string p0, "ContentProviderHelper"

    .line 97
    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p1, " with no external references."

    .line 107
    .line 108
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 125
    .line 126
    .line 127
    throw p0
.end method

.method public final removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z
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
    iget-object v3, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    if-nez p3, :cond_0

    .line 17
    .line 18
    iget v5, v2, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    .line 19
    .line 20
    add-int/2addr v5, v4

    .line 21
    iput v5, v2, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    .line 22
    .line 23
    const/4 v6, 0x3

    .line 24
    if-le v5, v6, :cond_0

    .line 25
    .line 26
    move v5, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move/from16 v5, p3

    .line 29
    .line 30
    :goto_0
    const/4 v6, 0x0

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    if-eqz v5, :cond_b

    .line 34
    .line 35
    :cond_1
    monitor-enter p2

    .line 36
    const/4 v7, 0x0

    .line 37
    :try_start_0
    iput-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 38
    .line 39
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->notifyAll()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v6}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v7, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 46
    .line 47
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 48
    .line 49
    const/16 v8, 0x49

    .line 50
    .line 51
    invoke-virtual {v7, v8, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    iget v7, v2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 56
    .line 57
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    .line 62
    .line 63
    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 64
    .line 65
    invoke-virtual {v8, v7, v9}, Lcom/android/server/am/ProviderMap;->getProviderByClass(ILandroid/content/ComponentName;)Lcom/android/server/am/ContentProviderRecord;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    if-ne v8, v2, :cond_5

    .line 70
    .line 71
    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    .line 72
    .line 73
    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 74
    .line 75
    iget-object v10, v8, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-eqz v10, :cond_2

    .line 82
    .line 83
    iget-object v8, v8, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    if-ltz v7, :cond_4

    .line 90
    .line 91
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-nez v9, :cond_3

    .line 103
    .line 104
    iget-object v8, v8, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 105
    .line 106
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_1
    move v8, v4

    .line 110
    goto :goto_2

    .line 111
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 112
    .line 113
    const-string v1, "Bad user "

    .line 114
    .line 115
    invoke-static {v7, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :cond_5
    move v8, v6

    .line 124
    :goto_2
    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 125
    .line 126
    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 127
    .line 128
    const-string v10, ";"

    .line 129
    .line 130
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    move v10, v6

    .line 135
    :goto_3
    array-length v11, v9

    .line 136
    if-ge v10, v11, :cond_a

    .line 137
    .line 138
    iget-object v11, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    .line 139
    .line 140
    aget-object v12, v9, v10

    .line 141
    .line 142
    invoke-virtual {v11, v7, v12}, Lcom/android/server/am/ProviderMap;->getProviderByName(ILjava/lang/String;)Lcom/android/server/am/ContentProviderRecord;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    if-ne v11, v2, :cond_9

    .line 147
    .line 148
    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    .line 149
    .line 150
    aget-object v11, v9, v10

    .line 151
    .line 152
    iget-object v12, v8, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    .line 153
    .line 154
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v12

    .line 158
    if-eqz v12, :cond_6

    .line 159
    .line 160
    iget-object v8, v8, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    .line 161
    .line 162
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_6
    if-ltz v7, :cond_8

    .line 167
    .line 168
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    .line 169
    .line 170
    .line 171
    move-result-object v12

    .line 172
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    if-nez v11, :cond_7

    .line 180
    .line 181
    iget-object v8, v8, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 182
    .line 183
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 184
    .line 185
    .line 186
    :cond_7
    :goto_4
    move v8, v4

    .line 187
    goto :goto_5

    .line 188
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 189
    .line 190
    const-string v1, "Bad user "

    .line 191
    .line 192
    invoke-static {v7, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw v0

    .line 200
    :cond_9
    :goto_5
    add-int/lit8 v10, v10, 0x1

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_a
    if-eqz v8, :cond_b

    .line 204
    .line 205
    iget-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 206
    .line 207
    if-eqz v7, :cond_b

    .line 208
    .line 209
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 210
    .line 211
    iget-object v8, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 212
    .line 213
    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 214
    .line 215
    iget-object v7, v7, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 216
    .line 217
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    :cond_b
    iget-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    sub-int/2addr v7, v4

    .line 227
    :goto_6
    if-ltz v7, :cond_12

    .line 228
    .line 229
    iget-object v8, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    check-cast v8, Lcom/android/server/am/ContentProviderConnection;

    .line 236
    .line 237
    iget-boolean v9, v8, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 238
    .line 239
    if-eqz v9, :cond_c

    .line 240
    .line 241
    if-eqz v3, :cond_c

    .line 242
    .line 243
    if-nez v5, :cond_c

    .line 244
    .line 245
    goto/16 :goto_9

    .line 246
    .line 247
    :cond_c
    iget-object v10, v8, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 248
    .line 249
    iget-object v9, v10, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 250
    .line 251
    iput-boolean v4, v8, Lcom/android/server/am/ContentProviderConnection;->dead:Z

    .line 252
    .line 253
    iget-object v11, v8, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    .line 254
    .line 255
    monitor-enter v11

    .line 256
    :try_start_1
    iget v12, v8, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 257
    .line 258
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    if-lez v12, :cond_f

    .line 260
    .line 261
    iget v8, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 262
    .line 263
    iget-boolean v11, v10, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 264
    .line 265
    if-nez v11, :cond_11

    .line 266
    .line 267
    if-eqz v9, :cond_11

    .line 268
    .line 269
    if-eqz v8, :cond_11

    .line 270
    .line 271
    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 272
    .line 273
    if-eq v8, v9, :cond_11

    .line 274
    .line 275
    new-instance v8, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string/jumbo v9, "depends on provider "

    .line 278
    .line 279
    .line 280
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 284
    .line 285
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v9, " in dying proc "

    .line 293
    .line 294
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    if-eqz v1, :cond_d

    .line 298
    .line 299
    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 300
    .line 301
    goto :goto_7

    .line 302
    :cond_d
    const-string v9, "??"

    .line 303
    .line 304
    :goto_7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v9, " (adj "

    .line 308
    .line 309
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    if-eqz v1, :cond_e

    .line 313
    .line 314
    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 315
    .line 316
    iget v9, v9, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 317
    .line 318
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    goto :goto_8

    .line 323
    :cond_e
    const-string v9, "??"

    .line 324
    .line 325
    :goto_8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v9, ")"

    .line 329
    .line 330
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v14

    .line 337
    const/4 v12, 0x0

    .line 338
    const/4 v15, 0x1

    .line 339
    const/16 v11, 0xc

    .line 340
    .line 341
    const/16 v16, 0x1

    .line 342
    .line 343
    move-object v13, v14

    .line 344
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 345
    .line 346
    .line 347
    goto :goto_9

    .line 348
    :cond_f
    if-eqz v9, :cond_11

    .line 349
    .line 350
    iget-object v11, v8, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 351
    .line 352
    iget-object v11, v11, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 353
    .line 354
    if-eqz v11, :cond_11

    .line 355
    .line 356
    :try_start_2
    invoke-interface {v11}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    .line 357
    .line 358
    .line 359
    move-result-object v11

    .line 360
    invoke-interface {v9, v11}, Landroid/app/IApplicationThread;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 361
    .line 362
    .line 363
    :catch_0
    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 364
    .line 365
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 369
    .line 370
    if-eqz v9, :cond_10

    .line 371
    .line 372
    invoke-static {v9}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 373
    .line 374
    .line 375
    move-result v9

    .line 376
    if-nez v9, :cond_10

    .line 377
    .line 378
    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 379
    .line 380
    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 381
    .line 382
    const/16 v11, 0x40

    .line 383
    .line 384
    invoke-virtual {v9, v11}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 385
    .line 386
    .line 387
    :cond_10
    iget-object v9, v8, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 388
    .line 389
    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 390
    .line 391
    iget-object v9, v9, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 392
    .line 393
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v8

    .line 397
    if-eqz v8, :cond_11

    .line 398
    .line 399
    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 400
    .line 401
    iget v9, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 402
    .line 403
    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 404
    .line 405
    iget v11, v2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 406
    .line 407
    iget-object v12, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 408
    .line 409
    iget-wide v12, v12, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 410
    .line 411
    iget-object v12, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 412
    .line 413
    iget-object v13, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 414
    .line 415
    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {v8, v12, v10, v9, v11}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 418
    .line 419
    .line 420
    :cond_11
    :goto_9
    add-int/lit8 v7, v7, -0x1

    .line 421
    .line 422
    goto/16 :goto_6

    .line 423
    .line 424
    :catchall_0
    move-exception v0

    .line 425
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 426
    throw v0

    .line 427
    :cond_12
    if-eqz v3, :cond_13

    .line 428
    .line 429
    if-eqz v5, :cond_13

    .line 430
    .line 431
    iget-object v0, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    .line 432
    .line 433
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    iput v6, v2, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    .line 437
    .line 438
    move v3, v6

    .line 439
    :cond_13
    return v3

    .line 440
    :catchall_1
    move-exception v0

    .line 441
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 442
    throw v0
.end method

.method public final requestTargetProviderPermissionsReviewIfNeededLocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/am/ProcessRecord;ILandroid/content/Context;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(ILjava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 21
    .line 22
    iget p2, p2, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string/jumbo p0, "u"

    .line 28
    .line 29
    .line 30
    const-string p2, " Instantiating a provider in package "

    .line 31
    .line 32
    invoke-static {p3, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 37
    .line 38
    const-string p2, " requires a permissions review"

    .line 39
    .line 40
    const-string p3, "ContentProviderHelper"

    .line 41
    .line 42
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v0

    .line 46
    :cond_2
    :goto_0
    const-string p2, "android.intent.action.REVIEW_PERMISSIONS"

    .line 47
    .line 48
    const/high16 v1, 0x10800000

    .line 49
    .line 50
    invoke-static {v1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    .line 55
    .line 56
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    new-instance p1, Landroid/os/UserHandle;

    .line 62
    .line 63
    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 67
    .line 68
    new-instance p3, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;

    .line 69
    .line 70
    invoke-direct {p3, p4, p2, p1}, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    return v0
.end method
