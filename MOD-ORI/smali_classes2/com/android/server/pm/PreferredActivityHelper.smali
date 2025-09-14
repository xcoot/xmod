.class public final Lcom/android/server/pm/PreferredActivityHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/BroadcastHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 7
    .line 8
    return-void
.end method

.method public static isHomeFilter(Lcom/android/server/pm/WatchedIntentFilter;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v1, "android.intent.action.MAIN"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 12
    .line 13
    const-string v1, "android.intent.category.HOME"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 22
    .line 23
    const-string v0, "android.intent.category.DEFAULT"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method public static restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda1;)V
    .locals 3

    .line 1
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    const/4 v0, 0x4

    .line 31
    if-ne p2, v0, :cond_3

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    iget p2, p3, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 35
    .line 36
    packed-switch p2, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    iget-object p2, p3, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/PreferredActivityHelper;

    .line 40
    .line 41
    iget-object p3, p2, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 42
    .line 43
    iget-object v0, p3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 44
    .line 45
    sget-boolean p3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 46
    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    iget-object p3, p2, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 49
    .line 50
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 51
    .line 52
    invoke-virtual {p3, p1, p0}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(ILcom/android/modules/utils/TypedXmlPullParser;)V

    .line 53
    .line 54
    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object p0, p2, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p2, p0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 69
    .line 70
    throw p0

    .line 71
    :pswitch_0
    iget-object p2, p3, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/PreferredActivityHelper;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {p0}, Lcom/android/server/pm/Settings;->readDefaultApps(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    if-eqz p0, :cond_5

    .line 81
    .line 82
    iget-object p3, p2, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 83
    .line 84
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-interface {p3, p0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    if-eqz p3, :cond_4

    .line 93
    .line 94
    invoke-interface {p3, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    if-eqz p3, :cond_4

    .line 103
    .line 104
    iget-object p2, p2, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 105
    .line 106
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 107
    .line 108
    invoke-virtual {p2, p1, p0}, Lcom/android/server/pm/DefaultAppProvider;->setDefaultBrowser(ILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    iget-object p3, p2, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 113
    .line 114
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 115
    .line 116
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 117
    .line 118
    monitor-enter p3

    .line 119
    :try_start_2
    iget-object p2, p2, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 120
    .line 121
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 122
    .line 123
    iget-object p2, p2, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    .line 124
    .line 125
    invoke-virtual {p2, p1, p0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    monitor-exit p3

    .line 129
    goto :goto_2

    .line 130
    :catchall_1
    move-exception p0

    .line 131
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 132
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 133
    .line 134
    throw p0

    .line 135
    :cond_5
    :goto_2
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addPreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;Z)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v7, p2

    .line 3
    move/from16 v8, p7

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v9

    .line 9
    const-string v2, "add preferred activity"

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, p1

    .line 14
    move v3, v9

    .line 15
    move/from16 v4, p7

    .line 16
    .line 17
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    move-object v1, p1

    .line 33
    invoke-interface {p1, v9}, Lcom/android/server/pm/Computer;->getUidTargetSdkVersion(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/16 v2, 0x8

    .line 38
    .line 39
    if-ge v1, v2, :cond_0

    .line 40
    .line 41
    const-string v0, "PackageManager"

    .line 42
    .line 43
    const-string v1, "Ignoring addPreferredActivity() from uid "

    .line 44
    .line 45
    invoke-static {v9, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object v1, v7, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    const-string v0, "PackageManager"

    .line 68
    .line 69
    const-string v1, "Cannot set a preferred activity with no filter actions"

    .line 70
    .line 71
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 76
    .line 77
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 78
    .line 79
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 80
    .line 81
    monitor-enter v9

    .line 82
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 83
    .line 84
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 85
    .line 86
    invoke-virtual {v1, v8}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    invoke-virtual {v10, p2}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz p9, :cond_3

    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    const-string v2, "Removing prefs while adding by removeExisting"

    .line 99
    .line 100
    invoke-static {v2}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v10, v1}, Lcom/android/server/pm/Settings;->removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    :goto_0
    new-instance v11, Lcom/android/server/pm/PreferredActivity;

    .line 110
    .line 111
    move-object v1, v11

    .line 112
    move-object v2, p2

    .line 113
    move/from16 v3, p3

    .line 114
    .line 115
    move-object/from16 v4, p4

    .line 116
    .line 117
    move-object/from16 v5, p5

    .line 118
    .line 119
    move/from16 v6, p6

    .line 120
    .line 121
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 122
    .line 123
    .line 124
    move-object/from16 v1, p8

    .line 125
    .line 126
    invoke-static {v11, v1}, Lcom/android/server/pm/PreferredActivityLog;->logPreferenceChange(Lcom/android/server/pm/PreferredActivity;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    new-instance v12, Lcom/android/server/pm/PreferredActivity;

    .line 136
    .line 137
    move-object v1, v12

    .line 138
    move-object v2, p2

    .line 139
    move/from16 v3, p3

    .line 140
    .line 141
    move-object/from16 v4, p4

    .line 142
    .line 143
    move-object/from16 v5, p5

    .line 144
    .line 145
    move/from16 v6, p6

    .line 146
    .line 147
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v10, v11, v12}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 154
    .line 155
    invoke-virtual {v1, v8}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 156
    .line 157
    .line 158
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-static {p2}, Lcom/android/server/pm/PreferredActivityHelper;->isHomeFilter(Lcom/android/server/pm/WatchedIntentFilter;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_4

    .line 164
    .line 165
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 166
    .line 167
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p0, v1, v8}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_5

    .line 176
    .line 177
    :cond_4
    iget-object v0, v0, Lcom/android/server/pm/PreferredActivityHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 178
    .line 179
    invoke-virtual {v0, v8}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    .line 180
    .line 181
    .line 182
    :cond_5
    return-void

    .line 183
    :goto_1
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 185
    .line 186
    throw v0
.end method

.method public final clearPackagePreferredActivities(ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 9
    .line 10
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 14
    .line 15
    invoke-virtual {v2, p2, v0, p1}, Lcom/android/server/pm/PackageManagerService;->clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    .line 16
    .line 17
    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-lez p2, :cond_0

    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;Landroid/util/SparseBooleanArray;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 48
    .line 49
    throw p0
.end method

.method public final findPreferredActivityNotLocked(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZI)Landroid/content/pm/ResolveInfo;
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v11, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p8

    .line 2
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public final findPreferredActivityNotLocked(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;
    .locals 15

    move-object v0, p0

    move/from16 v13, p9

    .line 3
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is holding mLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 6
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 7
    invoke-virtual {v1, v13}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move v12, v2

    goto :goto_0

    :cond_2
    move v12, v3

    .line 10
    :goto_0
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v14

    .line 11
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v1 .. v12}, Lcom/android/server/pm/Computer;->findPreferredActivityInternal2(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object v1

    .line 12
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-boolean v2, v1, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    if-eqz v2, :cond_3

    .line 14
    iget-object v0, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    :cond_3
    if-eqz p8, :cond_4

    .line 15
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_4

    .line 16
    const-string v0, "PackageManager"

    const-string v2, "No preferred activity to return"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_4
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0

    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final replacePreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v5, p4

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const-string v2, "Ignoring replacePreferredActivity() from uid "

    .line 9
    .line 10
    iget-object v4, v3, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 11
    .line 12
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countActions()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-ne v4, v1, :cond_c

    .line 17
    .line 18
    iget-object v4, v3, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countDataAuthorities()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_b

    .line 25
    .line 26
    iget-object v4, v3, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countDataPaths()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_b

    .line 33
    .line 34
    iget-object v4, v3, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countDataSchemes()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-gt v4, v1, :cond_b

    .line 41
    .line 42
    iget-object v4, v3, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 43
    .line 44
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countDataTypes()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_b

    .line 49
    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    const-string/jumbo v7, "replace preferred activity"

    .line 55
    .line 56
    .line 57
    const/4 v10, 0x1

    .line 58
    const/4 v11, 0x0

    .line 59
    move-object/from16 v6, p1

    .line 60
    .line 61
    move v8, v4

    .line 62
    move/from16 v9, p6

    .line 63
    .line 64
    invoke-interface/range {v6 .. v11}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 65
    .line 66
    .line 67
    iget-object v6, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 68
    .line 69
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    const-string v7, "android.permission.SET_PREFERRED_APPLICATIONS"

    .line 72
    .line 73
    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_1

    .line 78
    .line 79
    iget-object v6, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 80
    .line 81
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 82
    .line 83
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 84
    .line 85
    monitor-enter v6

    .line 86
    :try_start_0
    iget-object v7, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 87
    .line 88
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-interface {v7, v4}, Lcom/android/server/pm/Computer;->getUidTargetSdkVersion(I)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const/16 v7, 0x8

    .line 97
    .line 98
    if-ge v4, v7, :cond_0

    .line 99
    .line 100
    const-string v0, "PackageManager"

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    monitor-exit v6

    .line 122
    return-void

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    goto :goto_0

    .line 125
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object v2, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 127
    .line 128
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 129
    .line 130
    const-string v4, "android.permission.SET_PREFERRED_APPLICATIONS"

    .line 131
    .line 132
    const/4 v6, 0x0

    .line 133
    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :goto_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 139
    .line 140
    throw v0

    .line 141
    :cond_1
    :goto_1
    iget-object v2, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 142
    .line 143
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 144
    .line 145
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 146
    .line 147
    monitor-enter v2

    .line 148
    :try_start_2
    iget-object v4, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 149
    .line 150
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 151
    .line 152
    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 153
    .line 154
    iget-object v4, v4, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 155
    .line 156
    move/from16 v8, p6

    .line 157
    .line 158
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, Lcom/android/server/pm/PreferredIntentResolver;

    .line 163
    .line 164
    if-eqz v4, :cond_9

    .line 165
    .line 166
    invoke-virtual {v4, v3}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    if-eqz v6, :cond_7

    .line 171
    .line 172
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-ne v7, v1, :cond_7

    .line 177
    .line 178
    const/4 v7, 0x0

    .line 179
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    check-cast v9, Lcom/android/server/pm/PreferredActivity;

    .line 184
    .line 185
    iget-object v10, v9, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 186
    .line 187
    iget-boolean v11, v10, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    .line 188
    .line 189
    if-eqz v11, :cond_7

    .line 190
    .line 191
    iget-object v10, v10, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 192
    .line 193
    move-object/from16 v11, p5

    .line 194
    .line 195
    invoke-virtual {v10, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    if-eqz v10, :cond_8

    .line 200
    .line 201
    iget-object v9, v9, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 202
    .line 203
    iget v10, v9, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 204
    .line 205
    const/high16 v12, 0xfff0000

    .line 206
    .line 207
    and-int v12, p3, v12

    .line 208
    .line 209
    if-ne v10, v12, :cond_8

    .line 210
    .line 211
    iget-object v10, v9, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 212
    .line 213
    if-nez v10, :cond_2

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_2
    array-length v12, v5

    .line 217
    array-length v13, v10

    .line 218
    move v14, v7

    .line 219
    move v15, v14

    .line 220
    :goto_2
    if-ge v14, v12, :cond_6

    .line 221
    .line 222
    aget-object v16, v5, v14

    .line 223
    .line 224
    :goto_3
    if-ge v7, v13, :cond_4

    .line 225
    .line 226
    aget-object v1, v10, v7

    .line 227
    .line 228
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_3

    .line 237
    .line 238
    iget-object v1, v9, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 239
    .line 240
    aget-object v1, v1, v7

    .line 241
    .line 242
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-eqz v1, :cond_3

    .line 251
    .line 252
    const/4 v1, 0x1

    .line 253
    add-int/2addr v15, v1

    .line 254
    const/4 v1, 0x1

    .line 255
    goto :goto_4

    .line 256
    :cond_3
    const/4 v1, 0x1

    .line 257
    add-int/2addr v7, v1

    .line 258
    move-object/from16 v3, p2

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_4
    const/4 v1, 0x0

    .line 262
    :goto_4
    if-nez v1, :cond_5

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_5
    const/4 v1, 0x1

    .line 266
    add-int/2addr v14, v1

    .line 267
    move-object/from16 v3, p2

    .line 268
    .line 269
    const/4 v7, 0x0

    .line 270
    goto :goto_2

    .line 271
    :cond_6
    if-ne v15, v13, :cond_8

    .line 272
    .line 273
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 275
    .line 276
    return-void

    .line 277
    :catchall_1
    move-exception v0

    .line 278
    goto :goto_7

    .line 279
    :cond_7
    move-object/from16 v11, p5

    .line 280
    .line 281
    :cond_8
    :goto_5
    if-eqz v6, :cond_a

    .line 282
    .line 283
    :try_start_3
    const-string v1, "Removing prefs while replacing"

    .line 284
    .line 285
    invoke-static {v1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-static {v4, v6}, Lcom/android/server/pm/Settings;->removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Ljava/util/List;)V

    .line 289
    .line 290
    .line 291
    goto :goto_6

    .line 292
    :cond_9
    move-object/from16 v11, p5

    .line 293
    .line 294
    :cond_a
    :goto_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 295
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 296
    .line 297
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 298
    .line 299
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    const-string v9, "Replacing preferred"

    .line 304
    .line 305
    const/4 v10, 0x0

    .line 306
    const/4 v7, 0x1

    .line 307
    move-object/from16 v1, p0

    .line 308
    .line 309
    move-object/from16 v3, p2

    .line 310
    .line 311
    move/from16 v4, p3

    .line 312
    .line 313
    move-object/from16 v5, p4

    .line 314
    .line 315
    move-object/from16 v6, p5

    .line 316
    .line 317
    move/from16 v8, p6

    .line 318
    .line 319
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/PreferredActivityHelper;->addPreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;Z)V

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :goto_7
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 324
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 325
    .line 326
    throw v0

    .line 327
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 328
    .line 329
    const-string/jumbo v1, "replacePreferredActivity expects filter to have no data authorities, paths, or types; and at most one scheme."

    .line 330
    .line 331
    .line 332
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw v0

    .line 336
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 337
    .line 338
    const-string/jumbo v1, "replacePreferredActivity expects filter to have only 1 action."

    .line 339
    .line 340
    .line 341
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw v0
.end method

.method public final resetNetworkPolicies(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 4
    .line 5
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 8
    .line 9
    invoke-interface {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUserStateUL(IZZ)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 29
    .line 30
    invoke-virtual {v2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundAllowlistUidsUL(I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :try_start_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 46
    .line 47
    .line 48
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    :try_start_4
    throw p0

    .line 56
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    throw p0
.end method

.method public final updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;Landroid/util/SparseBooleanArray;)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling thread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is holding mLock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "PackageManager"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 30
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 31
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling thread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is holding mLock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "PackageManager"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4
    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/32 v5, 0xc0000

    move-object v2, p1

    move-object v3, v0

    move v7, p2

    .line 6
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v7

    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p0

    move v10, p2

    .line 7
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 11
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 12
    invoke-virtual {v0, p2}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 14
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 15
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    if-nez v4, :cond_5

    return v1

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v8, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, p2}, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PreferredActivityHelper;I)V

    .line 17
    iget-object p0, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    .line 19
    iget-object p0, p1, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    iget-object p0, p0, Lcom/android/server/pm/DefaultAppProvider;->mRoleManagerSupplier:Ljava/util/function/Supplier;

    .line 20
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/app/role/RoleManager;

    if-nez v2, :cond_6

    goto :goto_2

    .line 21
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    .line 22
    :try_start_0
    const-string v3, "android.app.role.HOME"

    .line 23
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const/4 v5, 0x0

    .line 24
    invoke-virtual/range {v2 .. v8}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x1

    :goto_2
    return v1

    :catchall_0
    move-exception p2

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    throw p2
.end method
