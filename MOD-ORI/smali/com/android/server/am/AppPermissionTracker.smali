.class public final Lcom/android/server/am/AppPermissionTracker;
.super Lcom/android/server/am/BaseAppStateTracker;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# instance fields
.field public final mAppOpsCallbacks:Landroid/util/SparseArray;

.field public final mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

.field public volatile mLockedBootCompleted:Z

.field public final mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$mhandlePermissionsInit(Lcom/android/server/am/AppPermissionTracker;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 8
    .line 9
    .line 10
    move-result-object v8

    .line 11
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 12
    .line 13
    iget-object v9, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 16
    .line 17
    check-cast v1, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    .line 18
    .line 19
    iget-object v10, v1, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    .line 20
    .line 21
    iget-object v11, v0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 22
    .line 23
    array-length v12, v8

    .line 24
    const/4 v14, 0x0

    .line 25
    :goto_0
    if-ge v14, v12, :cond_5

    .line 26
    .line 27
    aget v1, v8, v14

    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    const/16 v4, 0x3e8

    .line 32
    .line 33
    invoke-virtual {v9, v1, v4, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(IIJ)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v15

    .line 37
    if-nez v15, :cond_0

    .line 38
    .line 39
    goto/16 :goto_6

    .line 40
    .line 41
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v16

    .line 45
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    const/4 v6, 0x0

    .line 50
    :goto_1
    if-ge v6, v7, :cond_4

    .line 51
    .line 52
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v4, v1

    .line 57
    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 58
    .line 59
    array-length v5, v10

    .line 60
    const/4 v3, 0x0

    .line 61
    :goto_2
    if-ge v3, v5, :cond_3

    .line 62
    .line 63
    aget-object v1, v10, v3

    .line 64
    .line 65
    new-instance v2, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    .line 66
    .line 67
    iget v13, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 68
    .line 69
    move/from16 v18, v3

    .line 70
    .line 71
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v3, Ljava/lang/String;

    .line 74
    .line 75
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-direct {v2, v0, v13, v3, v1}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;-><init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    iget-boolean v1, v2, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermissionGranted:Z

    .line 87
    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    iget-boolean v1, v2, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z

    .line 91
    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    iget-object v13, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 95
    .line 96
    monitor-enter v13

    .line 97
    :try_start_0
    iget v1, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 98
    .line 99
    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Landroid/util/ArraySet;

    .line 104
    .line 105
    if-nez v1, :cond_1

    .line 106
    .line 107
    new-instance v3, Landroid/util/ArraySet;

    .line 108
    .line 109
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 110
    .line 111
    .line 112
    iget v1, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 113
    .line 114
    invoke-virtual {v11, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget v1, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 118
    .line 119
    const-string v19, ""

    .line 120
    .line 121
    const/16 v20, 0x1

    .line 122
    .line 123
    const/16 v21, 0x10

    .line 124
    .line 125
    move/from16 v22, v1

    .line 126
    .line 127
    move-object/from16 v1, p0

    .line 128
    .line 129
    move-object/from16 v23, v2

    .line 130
    .line 131
    move/from16 v2, v22

    .line 132
    .line 133
    move-object/from16 v22, v3

    .line 134
    .line 135
    move/from16 v3, v21

    .line 136
    .line 137
    move-object/from16 v21, v4

    .line 138
    .line 139
    move/from16 v24, v5

    .line 140
    .line 141
    move-wide/from16 v4, v16

    .line 142
    .line 143
    move/from16 v25, v6

    .line 144
    .line 145
    move-object/from16 v6, v19

    .line 146
    .line 147
    move/from16 v19, v7

    .line 148
    .line 149
    move/from16 v7, v20

    .line 150
    .line 151
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    move-object/from16 v1, v22

    .line 155
    .line 156
    move-object/from16 v2, v23

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    goto :goto_4

    .line 161
    :cond_1
    move-object/from16 v21, v4

    .line 162
    .line 163
    move/from16 v24, v5

    .line 164
    .line 165
    move/from16 v25, v6

    .line 166
    .line 167
    move/from16 v19, v7

    .line 168
    .line 169
    :goto_3
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    monitor-exit v13

    .line 173
    goto :goto_5

    .line 174
    :goto_4
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    throw v0

    .line 176
    :cond_2
    move-object/from16 v21, v4

    .line 177
    .line 178
    move/from16 v24, v5

    .line 179
    .line 180
    move/from16 v25, v6

    .line 181
    .line 182
    move/from16 v19, v7

    .line 183
    .line 184
    :goto_5
    add-int/lit8 v3, v18, 0x1

    .line 185
    .line 186
    move/from16 v7, v19

    .line 187
    .line 188
    move-object/from16 v4, v21

    .line 189
    .line 190
    move/from16 v5, v24

    .line 191
    .line 192
    move/from16 v6, v25

    .line 193
    .line 194
    goto/16 :goto_2

    .line 195
    .line 196
    :cond_3
    move/from16 v25, v6

    .line 197
    .line 198
    move/from16 v19, v7

    .line 199
    .line 200
    add-int/lit8 v6, v25, 0x1

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_4
    :goto_6
    add-int/lit8 v14, v14, 0x1

    .line 205
    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :cond_5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance p1, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/android/server/am/AppPermissionTracker;->mLockedBootCompleted:Z

    .line 20
    .line 21
    new-instance p1, Lcom/android/server/am/AppPermissionTracker$MyHandler;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    .line 31
    .line 32
    iput-object p0, p1, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 37
    .line 38
    new-instance p2, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    .line 39
    .line 40
    const-string v0, "bg_permission_monitor_enabled"

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-direct {p2, p1, p0, v0, v1}, Lcom/android/server/am/BaseAppStatePolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTracker;Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->DEFAULT_BG_PERMISSIONS_IN_MONITOR:[Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->parsePermissionConfig([Ljava/lang/String;)[Landroid/util/Pair;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iput-object p0, p2, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    .line 53
    .line 54
    iput-object p2, p1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 20

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
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v3, "APP PERMISSIONS TRACKER:"

    .line 11
    .line 12
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 16
    .line 17
    iget-object v3, v3, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 18
    .line 19
    check-cast v3, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    .line 20
    .line 21
    iget-object v3, v3, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    .line 22
    .line 23
    const-string v4, "  "

    .line 24
    .line 25
    invoke-static {v4, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v5, "  "

    .line 30
    .line 31
    invoke-static {v5, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    array-length v6, v3

    .line 36
    const/4 v8, 0x0

    .line 37
    :goto_0
    if-ge v8, v6, :cond_7

    .line 38
    .line 39
    aget-object v9, v3, v8

    .line 40
    .line 41
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v10, Ljava/lang/CharSequence;

    .line 47
    .line 48
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    if-nez v10, :cond_0

    .line 53
    .line 54
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v11, Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v11, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const/4 v12, -0x1

    .line 70
    if-eq v11, v12, :cond_2

    .line 71
    .line 72
    if-nez v10, :cond_1

    .line 73
    .line 74
    const/16 v10, 0x2b

    .line 75
    .line 76
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v10, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    invoke-static {v10}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    const/16 v10, 0x3a

    .line 95
    .line 96
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(C)V

    .line 97
    .line 98
    .line 99
    iget-object v10, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 100
    .line 101
    monitor-enter v10

    .line 102
    :try_start_0
    iget-object v11, v0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 103
    .line 104
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const/16 v12, 0x5b

    .line 108
    .line 109
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    const/4 v13, 0x0

    .line 117
    const/4 v14, 0x0

    .line 118
    :goto_1
    if-ge v13, v12, :cond_6

    .line 119
    .line 120
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v15

    .line 124
    check-cast v15, Landroid/util/ArraySet;

    .line 125
    .line 126
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    .line 127
    .line 128
    .line 129
    move-result v16

    .line 130
    const/16 v17, 0x1

    .line 131
    .line 132
    add-int/lit8 v16, v16, -0x1

    .line 133
    .line 134
    move/from16 v7, v16

    .line 135
    .line 136
    :goto_2
    if-ltz v7, :cond_5

    .line 137
    .line 138
    invoke-virtual {v15, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v16

    .line 142
    move-object/from16 v18, v3

    .line 143
    .line 144
    move-object/from16 v3, v16

    .line 145
    .line 146
    check-cast v3, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    .line 147
    .line 148
    move-object/from16 v16, v4

    .line 149
    .line 150
    iget v4, v3, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    .line 151
    .line 152
    move-object/from16 v19, v5

    .line 153
    .line 154
    iget-object v5, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v5, Ljava/lang/Integer;

    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-ne v4, v5, :cond_4

    .line 163
    .line 164
    iget-object v4, v3, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    .line 165
    .line 166
    iget-object v5, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v5, Ljava/lang/CharSequence;

    .line 169
    .line 170
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_4

    .line 175
    .line 176
    if-eqz v14, :cond_3

    .line 177
    .line 178
    const/16 v4, 0x2c

    .line 179
    .line 180
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    goto :goto_5

    .line 186
    :cond_3
    :goto_3
    iget v3, v3, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    .line 187
    .line 188
    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    move/from16 v14, v17

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_4
    add-int/lit8 v7, v7, -0x1

    .line 199
    .line 200
    move-object/from16 v4, v16

    .line 201
    .line 202
    move-object/from16 v3, v18

    .line 203
    .line 204
    move-object/from16 v5, v19

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_5
    move-object/from16 v18, v3

    .line 208
    .line 209
    move-object/from16 v16, v4

    .line 210
    .line 211
    move-object/from16 v19, v5

    .line 212
    .line 213
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 214
    .line 215
    move-object/from16 v4, v16

    .line 216
    .line 217
    move-object/from16 v3, v18

    .line 218
    .line 219
    move-object/from16 v5, v19

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_6
    move-object/from16 v18, v3

    .line 223
    .line 224
    move-object/from16 v16, v4

    .line 225
    .line 226
    move-object/from16 v19, v5

    .line 227
    .line 228
    const/16 v3, 0x5d

    .line 229
    .line 230
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 231
    .line 232
    .line 233
    monitor-exit v10

    .line 234
    add-int/lit8 v8, v8, 0x1

    .line 235
    .line 236
    move-object/from16 v4, v16

    .line 237
    .line 238
    move-object/from16 v3, v18

    .line 239
    .line 240
    move-object/from16 v5, v19

    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :goto_5
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    throw v0

    .line 246
    :cond_7
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 247
    .line 248
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 249
    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v4, "  "

    .line 253
    .line 254
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    return-void
.end method

.method public final getType()I
    .locals 0

    .line 1
    const/4 p0, 0x5

    .line 2
    return p0
.end method

.method public final handlePermissionsChangedLocked(I[Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/util/ArraySet;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v9

    .line 23
    const/4 v11, 0x0

    .line 24
    move v12, v11

    .line 25
    :goto_1
    array-length v2, p2

    .line 26
    if-ge v12, v2, :cond_6

    .line 27
    .line 28
    aget-object v2, p2, v12

    .line 29
    .line 30
    iget-boolean v3, v2, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermissionGranted:Z

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-boolean v2, v2, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    move v8, v4

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    move v8, v11

    .line 42
    :goto_2
    if-eqz v8, :cond_3

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    new-instance v1, Landroid/util/ArraySet;

    .line 47
    .line 48
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_2
    move v4, v11

    .line 58
    :goto_3
    aget-object v2, p2, v12

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_3
    if-eqz v1, :cond_4

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_4

    .line 71
    .line 72
    aget-object v2, p2, v12

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    iget-object v2, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_4
    move v4, v11

    .line 93
    :goto_4
    if-eqz v4, :cond_5

    .line 94
    .line 95
    const-string v7, ""

    .line 96
    .line 97
    const/16 v4, 0x10

    .line 98
    .line 99
    move-object v2, p0

    .line 100
    move v3, p1

    .line 101
    move-wide v5, v9

    .line 102
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_6
    return-void
.end method

.method public final onLockedBootCompleted()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/am/AppPermissionTracker;->mLockedBootCompleted:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionTracker;->onPermissionTrackerEnabled(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onPermissionTrackerEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/AppPermissionTracker;->mLockedBootCompleted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/permission/PermissionManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0, p0}, Landroid/permission/PermissionManager;->removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final onPermissionsChanged(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final stopWatchingMode()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    add-int/lit8 v2, v2, -0x1

    .line 15
    .line 16
    :goto_0
    if-ltz v2, :cond_0

    .line 17
    .line 18
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/android/internal/app/IAppOpsCallback;

    .line 25
    .line 26
    invoke-interface {v1, v3}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :catch_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw p0
.end method
