.class public final Lcom/android/server/am/BaseRestrictionMgr;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mRestrictActivityTheme:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    .line 7
    new-instance v0, Lcom/android/server/am/BaseRestrictionMgr$1;

    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/am/BaseRestrictionMgr$1;-><init>(Lcom/android/server/am/BaseRestrictionMgr;)V

    .line 12
    iput-object v0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mRestrictActivityTheme:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public final getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 9
    const-string v1, "android.intent.action.MAIN"

    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v1, "android.intent.category.INFO"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_0

    .line 29
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 35
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 38
    const-string v1, "android.intent.category.LAUNCHER"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 49
    move-result-object v3

    .line 50
    :cond_1
    if-eqz v3, :cond_3

    .line 52
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance p0, Landroid/content/Intent;

    .line 61
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 64
    const/high16 p1, 0x10000000

    .line 66
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 75
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 77
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 79
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 85
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 87
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    return-object p0

    .line 93
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 94
    return-object p0
.end method

.method public final isBlockAssociatedActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 3
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 13
    if-eqz p1, :cond_2

    .line 15
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 17
    if-eqz v0, :cond_2

    .line 19
    iget-object p0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mRestrictActivityTheme:Ljava/util/ArrayList;

    .line 21
    iget v0, p1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 33
    sget-object p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 35
    sget-object p0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 37
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 39
    const/16 v2, 0x1b

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {p0, v2, v0, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    move-result v0

    .line 46
    const/4 v4, 0x1

    .line 47
    if-eqz v0, :cond_0

    .line 49
    return v4

    .line 50
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 52
    const-string v5, ":"

    .line 54
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    array-length v5, v0

    .line 59
    if-gt v5, v4, :cond_1

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    const-string v0, "Failed to analyze taskAffinity: ["

    .line 65
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string p1, "]"

    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    const-string p1, "BaseRestrictionMgr"

    .line 84
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v1

    .line 88
    :cond_1
    aget-object p1, v0, v4

    .line 90
    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_2

    .line 96
    return v4

    .line 97
    :cond_2
    return v1
.end method

.method public final isLauncherableApp(ILjava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "BaseRestrictionMgr"

    .line 3
    const-string v1, "AutoRun Policy isLauncherableApp -- Not launcherable system package:"

    .line 5
    const-string v2, "AutoRun Policy isLauncherableApp -- Not launcherable 3rd party package:"

    .line 7
    const-string/jumbo v3, "com.baidu.searchbox_samsung"

    .line 10
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    if-nez v3, :cond_4

    .line 17
    const-string/jumbo v3, "com.bst.floatingmsgproxy"

    .line 20
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/BaseRestrictionMgr;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    move-result-object p0

    .line 31
    if-nez p0, :cond_4

    .line 33
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 35
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_2

    .line 43
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 45
    if-eqz p0, :cond_1

    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    return v4

    .line 66
    :cond_2
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 68
    if-eqz p0, :cond_3

    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_3
    const/4 p0, 0x0

    .line 86
    return p0

    .line 87
    :goto_1
    const-string/jumbo p1, "isLaucherableApp exception="

    .line 90
    invoke-static {p0, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_4
    :goto_2
    return v4
.end method

.method public final isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    move-object/from16 v4, p4

    .line 11
    move-object/from16 v5, p5

    .line 13
    move/from16 v6, p7

    .line 15
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 18
    move-result-object v7

    .line 19
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 22
    move-result v8

    .line 23
    const-string v9, "Blocked by policy:"

    .line 25
    const-string v10, "BaseRestrictionMgr"

    .line 27
    const/4 v11, -0x1

    .line 28
    if-nez v1, :cond_1

    .line 30
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 32
    if-eqz v0, :cond_0

    .line 34
    const-string v0, " -- Caller is null!!"

    .line 36
    invoke-static {v6, v9, v0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    return v11

    .line 40
    :cond_1
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v12

    .line 44
    const/4 v13, 0x1

    .line 45
    if-eqz v12, :cond_2

    .line 47
    sget-boolean v12, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 49
    sget-object v12, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 51
    iget-boolean v12, v12, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 53
    if-nez v12, :cond_2

    .line 55
    return v13

    .line 56
    :cond_2
    const/4 v12, 0x4

    .line 57
    if-eq v6, v12, :cond_4

    .line 59
    sget-boolean v14, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 61
    sget-object v14, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 63
    iget-boolean v14, v14, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 65
    if-nez v14, :cond_4

    .line 67
    sget-boolean v14, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 69
    sget-object v14, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 71
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    sget-boolean v14, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 76
    if-eqz v14, :cond_3

    .line 78
    sget-object v14, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 80
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v15

    .line 84
    iget-object v14, v14, Lcom/android/server/am/mars/util/UidStateMgr;->mUidGoneList:Lcom/android/server/am/mars/util/ConcurrentList;

    .line 86
    invoke-virtual {v14, v15}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    .line 89
    move-result v14

    .line 90
    if-nez v14, :cond_3

    .line 92
    return v13

    .line 93
    :cond_3
    sget-boolean v14, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 95
    if-nez v14, :cond_4

    .line 97
    sget-object v14, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 99
    move/from16 v15, p6

    .line 101
    invoke-virtual {v14, v15}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    .line 104
    move-result v14

    .line 105
    if-eqz v14, :cond_4

    .line 107
    return v13

    .line 108
    :cond_4
    const-string/jumbo v14, "startService"

    .line 111
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v14

    .line 115
    const-string v15, "bindService"

    .line 117
    const-string v12, "android"

    .line 119
    const/16 v16, 0x0

    .line 121
    if-nez v14, :cond_6

    .line 123
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v14

    .line 127
    if-eqz v14, :cond_5

    .line 129
    goto :goto_0

    .line 130
    :cond_5
    move v3, v13

    .line 131
    goto/16 :goto_6

    .line 133
    :cond_6
    :goto_0
    if-eqz v5, :cond_7

    .line 135
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 138
    move-result-object v14

    .line 139
    if-eqz v14, :cond_7

    .line 141
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 144
    move-result-object v14

    .line 145
    goto :goto_1

    .line 146
    :cond_7
    move-object/from16 v14, v16

    .line 148
    :goto_1
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    move-result v17

    .line 152
    if-eqz v17, :cond_9

    .line 154
    if-nez v14, :cond_9

    .line 156
    sget-object v11, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$AccessibilityAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    .line 158
    iget-object v13, v11, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 160
    monitor-enter v13

    .line 161
    :try_start_0
    iget-object v11, v11, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 166
    move-result v11

    .line 167
    if-eqz v11, :cond_8

    .line 169
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    const-string/jumbo v0, "isShouldSkipCase: Enable AccessibilityService callee = "

    .line 173
    invoke-static {v0, v7, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_2
    const/4 v3, 0x1

    .line 177
    goto :goto_5

    .line 178
    :catchall_0
    move-exception v0

    .line 179
    goto :goto_3

    .line 180
    :cond_8
    :try_start_1
    monitor-exit v13

    .line 181
    goto :goto_4

    .line 182
    :goto_3
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    throw v0

    .line 184
    :cond_9
    :goto_4
    sget-boolean v11, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 186
    sget-object v11, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 188
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 194
    move-result v13

    .line 195
    if-eqz v13, :cond_a

    .line 197
    sget-object v13, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 199
    sget-object v13, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 201
    const/4 v3, 0x1

    .line 202
    invoke-virtual {v13, v3, v7, v1, v14}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    move-result v13

    .line 206
    if-eqz v13, :cond_a

    .line 208
    goto :goto_2

    .line 209
    :cond_a
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 212
    move-result v3

    .line 213
    if-eqz v3, :cond_b

    .line 215
    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 217
    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 219
    const/4 v13, 0x7

    .line 220
    invoke-virtual {v3, v13, v7, v1, v14}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_b

    .line 226
    invoke-virtual {v11, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(ILjava/lang/String;)Z

    .line 229
    move-result v3

    .line 230
    if-eqz v3, :cond_b

    .line 232
    const-string/jumbo v0, "isShouldSkipCase: Foreground caller and callee = "

    .line 235
    invoke-static {v0, v7, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    goto :goto_2

    .line 239
    :goto_5
    return v3

    .line 240
    :cond_b
    const/4 v3, 0x1

    .line 241
    :goto_6
    const-string/jumbo v11, "com.sec.android.app.samsungapps"

    .line 244
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    move-result v11

    .line 248
    if-eqz v11, :cond_c

    .line 250
    return v3

    .line 251
    :cond_c
    invoke-virtual {v0, v8, v7}, Lcom/android/server/am/BaseRestrictionMgr;->isLauncherableApp(ILjava/lang/String;)Z

    .line 254
    move-result v3

    .line 255
    const/4 v11, 0x0

    .line 256
    if-eqz v3, :cond_16

    .line 258
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/BaseRestrictionMgr;->isLauncherableApp(ILjava/lang/String;)Z

    .line 261
    move-result v3

    .line 262
    if-eqz v3, :cond_16

    .line 264
    const-string/jumbo v3, "system"

    .line 267
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    move-result v3

    .line 271
    const-string/jumbo v13, "is Blocked by Policy:"

    .line 274
    if-nez v3, :cond_d

    .line 276
    const-string/jumbo v3, "com.sec."

    .line 279
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 282
    move-result v3

    .line 283
    if-nez v3, :cond_d

    .line 285
    const-string/jumbo v3, "com.samsung."

    .line 288
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 291
    move-result v3

    .line 292
    if-eqz v3, :cond_e

    .line 294
    :cond_d
    const/4 v3, 0x1

    .line 295
    goto :goto_8

    .line 296
    :cond_e
    const-string/jumbo v3, "com.baidu.BaiduMap"

    .line 299
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    move-result v3

    .line 303
    if-nez v3, :cond_12

    .line 305
    const-string/jumbo v3, "com.baidu.searchbox_samsung"

    .line 308
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    move-result v3

    .line 312
    if-nez v3, :cond_12

    .line 314
    const-string/jumbo v3, "com.baidu.netdisk_ss"

    .line 317
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    move-result v3

    .line 321
    if-eqz v3, :cond_f

    .line 323
    goto :goto_7

    .line 324
    :cond_f
    :try_start_2
    iget-object v3, v0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    .line 326
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 329
    move-result-object v3

    .line 330
    invoke-virtual {v3, v1, v11, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 333
    move-result-object v2

    .line 334
    if-nez v2, :cond_10

    .line 336
    goto :goto_7

    .line 337
    :cond_10
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 339
    const/4 v3, 0x1

    .line 340
    and-int/2addr v2, v3

    .line 341
    if-nez v2, :cond_11

    .line 343
    goto :goto_7

    .line 344
    :cond_11
    iget-object v0, v0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    .line 346
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 349
    move-result-object v0

    .line 350
    const-string v2, "android"

    .line 352
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    move-result v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 356
    if-ltz v0, :cond_12

    .line 358
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 360
    if-eqz v0, :cond_14

    .line 362
    const-string/jumbo v0, "isSamsungService -- SystemPackage:"

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    move-result-object v0

    .line 369
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    goto :goto_9

    .line 373
    :catch_0
    move-exception v0

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    .line 376
    const-string/jumbo v2, "isSystemPackage exception="

    .line 379
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    move-result-object v0

    .line 389
    const-string v1, "BaseRestrictionMgr"

    .line 391
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_12
    :goto_7
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 396
    if-eqz v0, :cond_13

    .line 398
    const-string v0, " -- Caller is not samsung!!"

    .line 400
    invoke-static {v6, v13, v0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_13
    const/4 v1, -0x1

    .line 404
    return v1

    .line 405
    :goto_8
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 407
    if-eqz v0, :cond_14

    .line 409
    const-string/jumbo v0, "isSamsungService -- SamsungService:"

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    move-result-object v0

    .line 416
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_14
    :goto_9
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 421
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 423
    iget-boolean v0, v0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 425
    if-eqz v0, :cond_17

    .line 427
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 429
    if-eqz v0, :cond_15

    .line 431
    const-string v0, " -- isCalmMode!!"

    .line 433
    invoke-static {v6, v13, v0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_15
    const/4 v1, -0x1

    .line 437
    return v1

    .line 438
    :cond_16
    const/4 v3, 0x1

    .line 439
    :cond_17
    if-eqz v5, :cond_18

    .line 441
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 444
    move-result-object v0

    .line 445
    if-eqz v0, :cond_18

    .line 447
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 450
    move-result-object v16

    .line 451
    :cond_18
    move-object/from16 v0, v16

    .line 453
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    move-result v2

    .line 457
    if-eqz v2, :cond_1c

    .line 459
    const-string v2, "android.accounts.AccountAuthenticator"

    .line 461
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    move-result v2

    .line 465
    if-nez v2, :cond_19

    .line 467
    const-string v2, "android.media.MediaRoute2ProviderService"

    .line 469
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    move-result v2

    .line 473
    if-eqz v2, :cond_1c

    .line 475
    :cond_19
    const-string v2, "binderCallingUid"

    .line 477
    const/16 v13, 0x3e8

    .line 479
    invoke-virtual {v5, v2, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 482
    move-result v2

    .line 483
    if-ne v2, v13, :cond_1b

    .line 485
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 487
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 489
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    sget-boolean v13, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 494
    if-eqz v13, :cond_1a

    .line 496
    invoke-virtual {v2, v7, v8}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    .line 499
    move-result v2

    .line 500
    if-eqz v2, :cond_1a

    .line 502
    goto :goto_a

    .line 503
    :cond_1a
    const-string/jumbo v2, "isShouldBlockCase: not block AccountAuthenticator"

    .line 506
    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    goto :goto_b

    .line 510
    :cond_1b
    :goto_a
    const-string/jumbo v0, "isShouldBlockCase: block AccountAuthenticator"

    .line 513
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    goto :goto_c

    .line 517
    :cond_1c
    :goto_b
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 519
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 521
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 524
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 527
    move-result v2

    .line 528
    const/4 v13, 0x2

    .line 529
    if-eqz v2, :cond_1e

    .line 531
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 533
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 535
    invoke-virtual {v2, v13, v7, v1, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 538
    move-result v0

    .line 539
    if-eqz v0, :cond_1e

    .line 541
    :goto_c
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 543
    if-eqz v0, :cond_1d

    .line 545
    const-string v0, " -- should Block cases!!"

    .line 547
    invoke-static {v6, v9, v0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_1d
    const/4 v1, -0x1

    .line 551
    return v1

    .line 552
    :cond_1e
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 555
    move-result v0

    .line 556
    if-eqz v0, :cond_29

    .line 558
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    move-result v0

    .line 562
    if-eqz v0, :cond_29

    .line 564
    const-wide/16 v14, 0x0

    .line 566
    const/4 v0, 0x4

    .line 567
    if-eq v6, v0, :cond_22

    .line 569
    const-string v0, "AutoRun Policy isJobSchedulerPackage -- package = "

    .line 571
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 574
    move-result-object v2

    .line 575
    if-eqz v2, :cond_1f

    .line 577
    move-object/from16 v4, p3

    .line 579
    :try_start_3
    invoke-interface {v2, v4, v14, v15, v8}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 582
    move-result-object v2

    .line 583
    if-eqz v2, :cond_20

    .line 585
    const-string v7, "android.permission.BIND_JOB_SERVICE"

    .line 587
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 589
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    move-result v2

    .line 593
    if-eqz v2, :cond_20

    .line 595
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 598
    move-result v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 599
    if-eqz v2, :cond_20

    .line 601
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 603
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 609
    move-result-object v0

    .line 610
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    move-result-object v0

    .line 617
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 620
    move v0, v3

    .line 621
    goto :goto_e

    .line 622
    :catch_1
    move-exception v0

    .line 623
    move-object v2, v0

    .line 624
    move v0, v3

    .line 625
    goto :goto_d

    .line 626
    :catch_2
    move-exception v0

    .line 627
    move-object v2, v0

    .line 628
    move v0, v11

    .line 629
    :goto_d
    const-string/jumbo v7, "isJobSchedulerPackage exception="

    .line 632
    invoke-static {v7, v2, v10}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 635
    goto :goto_e

    .line 636
    :cond_1f
    move-object/from16 v4, p3

    .line 638
    :cond_20
    move v0, v11

    .line 639
    :goto_e
    if-eqz v0, :cond_23

    .line 641
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 643
    if-eqz v0, :cond_21

    .line 645
    const-string v0, " -- JobSchedulerPackage!!"

    .line 647
    invoke-static {v6, v9, v0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_21
    const/4 v1, -0x1

    .line 651
    return v1

    .line 652
    :cond_22
    move-object/from16 v4, p3

    .line 654
    :cond_23
    const-string v0, "AutoRun Policy isSyncManagerPackage -- package = "

    .line 656
    :try_start_5
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 659
    move-result-object v2

    .line 660
    if-eqz v2, :cond_24

    .line 662
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 665
    move-result v2

    .line 666
    if-eqz v2, :cond_24

    .line 668
    const-string v2, "android.content.SyncAdapter"

    .line 670
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 673
    move-result-object v5

    .line 674
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 677
    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 678
    if-eqz v2, :cond_24

    .line 680
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 682
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 688
    move-result-object v0

    .line 689
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 695
    move-result-object v0

    .line 696
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 699
    move v0, v3

    .line 700
    goto :goto_10

    .line 701
    :catch_3
    move-exception v0

    .line 702
    move-object v2, v0

    .line 703
    move v0, v3

    .line 704
    goto :goto_f

    .line 705
    :catch_4
    move-exception v0

    .line 706
    move-object v2, v0

    .line 707
    move v0, v11

    .line 708
    goto :goto_f

    .line 709
    :cond_24
    move v0, v11

    .line 710
    goto :goto_10

    .line 711
    :goto_f
    const-string/jumbo v5, "isSyncManagerPackage exception="

    .line 714
    invoke-static {v2, v5, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :goto_10
    if-eqz v0, :cond_26

    .line 719
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 721
    if-eqz v0, :cond_25

    .line 723
    const-string v0, " -- SyncManagerPackage!!"

    .line 725
    invoke-static {v6, v9, v0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :cond_25
    const/4 v1, -0x1

    .line 729
    return v1

    .line 730
    :cond_26
    const-string v0, "AutoRun Policy isBindNotificationListenerPackage -- package = "

    .line 732
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 735
    move-result-object v2

    .line 736
    if-eqz v2, :cond_27

    .line 738
    :try_start_7
    invoke-interface {v2, v4, v14, v15, v8}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 741
    move-result-object v2

    .line 742
    if-eqz v2, :cond_27

    .line 744
    const-string v5, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 746
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 748
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 751
    move-result v2

    .line 752
    if-eqz v2, :cond_27

    .line 754
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 757
    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    .line 758
    if-eqz v1, :cond_27

    .line 760
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 762
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 768
    move-result-object v0

    .line 769
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    move-result-object v0

    .line 776
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    .line 779
    goto :goto_12

    .line 780
    :catch_5
    move-exception v0

    .line 781
    goto :goto_11

    .line 782
    :catch_6
    move-exception v0

    .line 783
    move v3, v11

    .line 784
    :goto_11
    const-string/jumbo v1, "isBindNotificationListenerPackage exception="

    .line 787
    invoke-static {v1, v0, v10}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 790
    :goto_12
    move v11, v3

    .line 791
    :cond_27
    if-eqz v11, :cond_29

    .line 793
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 795
    if-eqz v0, :cond_28

    .line 797
    const-string v0, " -- isBindNotificationListenerPackage!!"

    .line 799
    invoke-static {v6, v9, v0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :cond_28
    const/4 v1, -0x1

    .line 803
    return v1

    .line 804
    :cond_29
    return v13
.end method

.method public final isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v9, p2

    .line 5
    move/from16 v10, p3

    .line 7
    move-object/from16 v11, p4

    .line 9
    move/from16 v1, p6

    .line 11
    const/4 v12, 0x1

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 15
    move-result-object v13

    .line 16
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 18
    const/4 v14, 0x0

    .line 19
    if-eqz p5, :cond_0

    .line 21
    const-string/jumbo v3, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    .line 24
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 34
    const-string/jumbo v3, "com.samsung.android.game.gos"

    .line 37
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v3

    .line 41
    xor-int/2addr v3, v12

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v3, v14

    .line 44
    :goto_0
    if-eqz v3, :cond_1

    .line 46
    return v12

    .line 47
    :cond_1
    const-string/jumbo v3, "com.google.android.projection.gearhead"

    .line 50
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 56
    const-string v3, "bindService"

    .line 58
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 64
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 66
    invoke-virtual {v3, v1, v13, v14}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(ILjava/lang/String;Z)V

    .line 69
    :cond_2
    if-eqz p5, :cond_4

    .line 71
    const-string v3, "android.intent.action.MEDIA_BUTTON"

    .line 73
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_4

    .line 83
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 85
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 90
    monitor-enter v4

    .line 91
    :try_start_0
    iget-object v5, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 93
    invoke-static {v5, v13, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 96
    move-result-object v5

    .line 97
    if-eqz v5, :cond_3

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 102
    move-result-wide v6

    .line 103
    iput-wide v6, v5, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 105
    invoke-virtual {v3, v5, v14}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;Z)V

    .line 108
    goto :goto_1

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    :goto_1
    monitor-exit v4

    .line 112
    goto :goto_3

    .line 113
    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw v0

    .line 115
    :cond_4
    :goto_3
    sget-object v15, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 117
    monitor-enter v15

    .line 118
    :try_start_1
    sget-object v3, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 120
    iget-boolean v3, v3, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 122
    if-eqz v3, :cond_5

    .line 124
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 126
    iget-object v4, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 128
    if-eqz v4, :cond_5

    .line 130
    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 132
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_5

    .line 138
    iget-object v3, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 140
    invoke-static {v3, v13, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 143
    goto :goto_4

    .line 144
    :catchall_1
    move-exception v0

    .line 145
    goto/16 :goto_3d

    .line 147
    :cond_5
    :goto_4
    sget-boolean v3, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 149
    sget-object v3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 151
    iget-boolean v4, v3, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 153
    const/4 v6, -0x1

    .line 154
    if-eqz v4, :cond_a

    .line 156
    iget-object v3, v3, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 158
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    .line 160
    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    move-result-object v3

    .line 164
    check-cast v3, Landroid/util/SparseArray;

    .line 166
    if-eqz v3, :cond_a

    .line 168
    move v4, v14

    .line 169
    const/4 v7, 0x0

    .line 170
    :goto_5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 173
    move-result v8

    .line 174
    if-ge v4, v8, :cond_9

    .line 176
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 179
    move-result-object v7

    .line 180
    check-cast v7, Lcom/android/server/am/FreecessPkgStatus;

    .line 182
    iget-object v8, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 184
    if-nez v8, :cond_6

    .line 186
    const-string v8, "BaseRestrictionMgr"

    .line 188
    const-string v5, "Abnomal case in isRestrictedPackage package name is null"

    .line 190
    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    goto :goto_6

    .line 194
    :cond_6
    iget v5, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 196
    if-eq v1, v5, :cond_8

    .line 198
    if-ne v1, v6, :cond_7

    .line 200
    goto :goto_7

    .line 201
    :cond_7
    :goto_6
    add-int/2addr v4, v12

    .line 202
    goto :goto_5

    .line 203
    :cond_8
    :goto_7
    iget v3, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 205
    move v4, v12

    .line 206
    :goto_8
    move/from16 v17, v4

    .line 208
    goto :goto_9

    .line 209
    :cond_9
    move v3, v6

    .line 210
    move v5, v3

    .line 211
    move v4, v14

    .line 212
    goto :goto_8

    .line 213
    :cond_a
    move v3, v6

    .line 214
    move v5, v3

    .line 215
    move v4, v14

    .line 216
    move/from16 v17, v4

    .line 218
    const/4 v7, 0x0

    .line 219
    :goto_9
    if-nez v4, :cond_e

    .line 221
    sget-object v8, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 223
    iget-object v2, v8, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 225
    if-eqz v2, :cond_e

    .line 227
    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 229
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_e

    .line 235
    iget-object v2, v8, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 237
    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 239
    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    move-result-object v2

    .line 243
    check-cast v2, Landroid/util/SparseArray;

    .line 245
    if-eqz v2, :cond_e

    .line 247
    move v8, v14

    .line 248
    :goto_a
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 251
    move-result v14

    .line 252
    if-ge v8, v14, :cond_e

    .line 254
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 257
    move-result-object v14

    .line 258
    check-cast v14, Lcom/android/server/am/MARsPackageInfo;

    .line 260
    iget-object v12, v14, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 262
    if-nez v12, :cond_c

    .line 264
    const-string v12, "BaseRestrictionMgr"

    .line 266
    const-string v14, "Abnomal case in isRestrictedPackage package name is null"

    .line 268
    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_b
    const/16 v18, 0x1

    .line 273
    goto :goto_b

    .line 274
    :cond_c
    iget v12, v14, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 276
    if-eq v1, v12, :cond_d

    .line 278
    if-ne v1, v6, :cond_b

    .line 280
    :cond_d
    const/16 v18, 0x1

    .line 282
    goto :goto_c

    .line 283
    :goto_b
    add-int/lit8 v8, v8, 0x1

    .line 285
    move/from16 v12, v18

    .line 287
    goto :goto_a

    .line 288
    :goto_c
    iget v3, v14, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 290
    iget-boolean v1, v14, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 292
    xor-int/lit8 v6, v1, 0x1

    .line 294
    move-object v8, v14

    .line 295
    const/4 v4, 0x1

    .line 296
    move v14, v12

    .line 297
    move v12, v3

    .line 298
    goto :goto_d

    .line 299
    :cond_e
    move v12, v3

    .line 300
    move v14, v5

    .line 301
    const/4 v8, 0x0

    .line 302
    :goto_d
    if-nez v4, :cond_11

    .line 304
    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 306
    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 308
    if-eqz v0, :cond_10

    .line 310
    if-eqz p5, :cond_f

    .line 312
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 315
    move-result-object v0

    .line 316
    :goto_e
    move-object v4, v0

    .line 317
    goto :goto_f

    .line 318
    :cond_f
    const-string v0, ""

    .line 320
    goto :goto_e

    .line 321
    :goto_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 324
    move-object v0, v13

    .line 325
    move-object/from16 v1, p2

    .line 327
    move-object/from16 v2, p4

    .line 329
    move/from16 v3, p11

    .line 331
    move/from16 v5, p10

    .line 333
    move-object/from16 v6, p9

    .line 335
    invoke-static/range {v0 .. v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 338
    :cond_10
    monitor-exit v15

    .line 339
    const/4 v0, 0x0

    .line 340
    return v0

    .line 341
    :cond_11
    if-eqz p7, :cond_14

    .line 343
    if-eqz v8, :cond_14

    .line 345
    if-nez v17, :cond_14

    .line 347
    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 349
    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 351
    if-eqz v0, :cond_13

    .line 353
    if-eqz p5, :cond_12

    .line 355
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 358
    move-result-object v0

    .line 359
    :goto_10
    move-object v4, v0

    .line 360
    goto :goto_11

    .line 361
    :cond_12
    const-string v0, ""

    .line 363
    goto :goto_10

    .line 364
    :goto_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 367
    move-object v0, v13

    .line 368
    move-object/from16 v1, p2

    .line 370
    move-object/from16 v2, p4

    .line 372
    move/from16 v3, p11

    .line 374
    move/from16 v5, p10

    .line 376
    move-object/from16 v6, p9

    .line 378
    invoke-static/range {v0 .. v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 381
    :cond_13
    monitor-exit v15

    .line 382
    const/4 v0, 0x0

    .line 383
    return v0

    .line 384
    :cond_14
    if-eqz v8, :cond_17

    .line 386
    iget-object v1, v8, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 388
    if-nez v1, :cond_17

    .line 390
    if-nez v7, :cond_17

    .line 392
    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 394
    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 396
    if-eqz v0, :cond_16

    .line 398
    if-eqz p5, :cond_15

    .line 400
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 403
    move-result-object v0

    .line 404
    :goto_12
    move-object v4, v0

    .line 405
    goto :goto_13

    .line 406
    :cond_15
    const-string v0, ""

    .line 408
    goto :goto_12

    .line 409
    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 412
    move-object v0, v13

    .line 413
    move-object/from16 v1, p2

    .line 415
    move-object/from16 v2, p4

    .line 417
    move/from16 v3, p11

    .line 419
    move/from16 v5, p10

    .line 421
    move-object/from16 v6, p9

    .line 423
    invoke-static/range {v0 .. v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 426
    :cond_16
    monitor-exit v15

    .line 427
    const/4 v0, 0x0

    .line 428
    return v0

    .line 429
    :cond_17
    if-eqz v17, :cond_18

    .line 431
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 433
    invoke-virtual {v1, v14, v13}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(ILjava/lang/String;)I

    .line 436
    move-result v6

    .line 437
    :cond_18
    if-eqz v8, :cond_19

    .line 439
    iget-object v2, v8, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 441
    if-eqz v2, :cond_19

    .line 443
    iget v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 445
    move v5, v2

    .line 446
    goto :goto_14

    .line 447
    :cond_19
    if-eqz v17, :cond_1a

    .line 449
    const/4 v5, 0x4

    .line 450
    goto :goto_14

    .line 451
    :cond_1a
    const/4 v5, 0x0

    .line 452
    :goto_14
    if-eqz v8, :cond_1b

    .line 454
    iget v2, v8, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 456
    goto :goto_15

    .line 457
    :cond_1b
    if-eqz v17, :cond_1c

    .line 459
    if-nez v6, :cond_1c

    .line 461
    const/4 v2, 0x2

    .line 462
    goto :goto_15

    .line 463
    :cond_1c
    const/4 v2, 0x1

    .line 464
    :goto_15
    if-eqz v7, :cond_1d

    .line 466
    iget-boolean v3, v7, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 468
    if-eqz v3, :cond_1d

    .line 470
    const/16 v2, 0x8

    .line 472
    :cond_1d
    if-eqz v17, :cond_1e

    .line 474
    if-eqz v7, :cond_1e

    .line 476
    iget-object v3, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 478
    iget-boolean v3, v3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 480
    if-eqz v3, :cond_1e

    .line 482
    const/4 v3, 0x1

    .line 483
    goto :goto_16

    .line 484
    :cond_1e
    const/4 v3, 0x0

    .line 485
    :goto_16
    const/4 v7, 0x3

    .line 486
    const v19, 0x20000008

    .line 489
    const/4 v1, 0x1

    .line 490
    if-eq v2, v1, :cond_26

    .line 492
    const/4 v1, 0x2

    .line 493
    if-eq v2, v1, :cond_25

    .line 495
    if-eq v2, v7, :cond_23

    .line 497
    const/4 v1, 0x4

    .line 498
    if-eq v2, v1, :cond_21

    .line 500
    const/4 v1, 0x7

    .line 501
    if-eq v2, v1, :cond_20

    .line 503
    const/16 v1, 0x8

    .line 505
    if-eq v2, v1, :cond_1f

    .line 507
    const/4 v3, 0x0

    .line 508
    goto :goto_19

    .line 509
    :cond_1f
    const v1, 0x501c0888

    .line 512
    :goto_17
    move v3, v1

    .line 513
    goto :goto_19

    .line 514
    :cond_20
    const v1, 0x1000112

    .line 517
    goto :goto_17

    .line 518
    :cond_21
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 520
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 522
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 528
    move-result v1

    .line 529
    if-nez v1, :cond_22

    .line 531
    const/16 v1, 0x2220

    .line 533
    goto :goto_17

    .line 534
    :cond_22
    const v1, 0x401c0888

    .line 537
    goto :goto_17

    .line 538
    :cond_23
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 540
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 542
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 548
    move-result v1

    .line 549
    if-nez v1, :cond_24

    .line 551
    const v1, 0x14148110

    .line 554
    goto :goto_17

    .line 555
    :cond_24
    const v3, -0x2fe3f778

    .line 558
    goto :goto_19

    .line 559
    :cond_25
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 561
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 563
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 569
    move-result v2

    .line 570
    if-nez v2, :cond_27

    .line 572
    :cond_26
    :goto_18
    move/from16 v3, v19

    .line 574
    goto :goto_19

    .line 575
    :cond_27
    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    .line 578
    move-result v1

    .line 579
    if-eqz v1, :cond_24

    .line 581
    if-eqz v3, :cond_24

    .line 583
    goto :goto_18

    .line 584
    :goto_19
    const/high16 v1, 0x4000000

    .line 586
    and-int/2addr v1, v3

    .line 587
    if-eqz v1, :cond_28

    .line 589
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 591
    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    .line 594
    move-result v1

    .line 595
    if-eqz v1, :cond_28

    .line 597
    const/4 v4, 0x0

    .line 598
    :cond_28
    const/high16 v1, 0x10000000

    .line 600
    and-int/2addr v1, v3

    .line 601
    if-eqz v1, :cond_29

    .line 603
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 605
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 606
    :try_start_2
    iget-boolean v2, v1, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 608
    :try_start_3
    monitor-exit v1

    .line 609
    if-eqz v2, :cond_29

    .line 611
    const/4 v4, 0x0

    .line 612
    goto :goto_1a

    .line 613
    :catchall_2
    move-exception v0

    .line 614
    move-object v2, v0

    .line 615
    monitor-exit v1

    .line 616
    throw v2

    .line 617
    :cond_29
    :goto_1a
    if-eqz v4, :cond_56

    .line 619
    const-string v1, "activity"

    .line 621
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 624
    move-result v1

    .line 625
    if-eqz v1, :cond_33

    .line 627
    const/4 v1, 0x2

    .line 628
    and-int/2addr v1, v3

    .line 629
    if-eqz v1, :cond_2b

    .line 631
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 633
    invoke-virtual {v1, v10, v9}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(ILjava/lang/String;)Z

    .line 636
    move-result v1

    .line 637
    if-eqz v1, :cond_2a

    .line 639
    const/4 v1, 0x1

    .line 640
    :goto_1b
    const/4 v2, 0x1

    .line 641
    :goto_1c
    const/16 v4, 0x8

    .line 643
    goto :goto_1d

    .line 644
    :cond_2a
    const/4 v1, 0x0

    .line 645
    goto :goto_1b

    .line 646
    :cond_2b
    const/4 v1, 0x0

    .line 647
    const/4 v2, 0x0

    .line 648
    goto :goto_1c

    .line 649
    :goto_1d
    and-int/2addr v3, v4

    .line 650
    if-eqz v3, :cond_30

    .line 652
    if-eqz v13, :cond_2d

    .line 654
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 657
    move-result v3

    .line 658
    if-eqz v3, :cond_2d

    .line 660
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 662
    if-eqz v3, :cond_2c

    .line 664
    const-string/jumbo v3, "isSelfIntent :"

    .line 667
    invoke-virtual {v3, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 670
    move-result-object v3

    .line 671
    const-string v4, "BaseRestrictionMgr"

    .line 673
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_2c
    const/4 v3, 0x1

    .line 677
    goto :goto_1e

    .line 678
    :cond_2d
    const/4 v3, 0x0

    .line 679
    :goto_1e
    if-nez v3, :cond_30

    .line 681
    move-object/from16 v3, p8

    .line 683
    invoke-virtual {v0, v3}, Lcom/android/server/am/BaseRestrictionMgr;->isBlockAssociatedActivity(Landroid/content/pm/ActivityInfo;)Z

    .line 686
    move-result v4

    .line 687
    if-nez v4, :cond_2e

    .line 689
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 691
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 693
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 696
    move-result-object v7

    .line 697
    move/from16 p3, v1

    .line 699
    const/16 v1, 0x8

    .line 701
    const/4 v10, 0x0

    .line 702
    invoke-virtual {v4, v1, v7, v10, v10}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 705
    move-result v1

    .line 706
    if-eqz v1, :cond_31

    .line 708
    goto :goto_1f

    .line 709
    :cond_2e
    move/from16 p3, v1

    .line 711
    :goto_1f
    const-string v1, "BaseRestrictionMgr"

    .line 713
    new-instance v2, Ljava/lang/StringBuilder;

    .line 715
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    const-string v4, "Block activity: "

    .line 720
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    .line 726
    move-result-object v3

    .line 727
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    const-string v3, " --- isBlockAssociatedActivity which is not started by itself."

    .line 732
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 738
    move-result-object v2

    .line 739
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    move/from16 v16, p3

    .line 744
    move/from16 p6, v5

    .line 746
    move/from16 v20, v6

    .line 748
    move-object/from16 v21, v8

    .line 750
    :cond_2f
    :goto_20
    const/4 v1, 0x0

    .line 751
    :goto_21
    const/4 v2, 0x1

    .line 752
    goto/16 :goto_33

    .line 754
    :cond_30
    move/from16 p3, v1

    .line 756
    :cond_31
    move/from16 v16, p3

    .line 758
    move/from16 p6, v5

    .line 760
    move/from16 v20, v6

    .line 762
    move-object/from16 v21, v8

    .line 764
    :cond_32
    :goto_22
    const/4 v1, 0x0

    .line 765
    goto/16 :goto_33

    .line 767
    :cond_33
    const-string/jumbo v1, "startService"

    .line 770
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 773
    move-result v1

    .line 774
    if-nez v1, :cond_34

    .line 776
    const-string v1, "bindService"

    .line 778
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 781
    move-result v1

    .line 782
    if-eqz v1, :cond_35

    .line 784
    :cond_34
    move v0, v3

    .line 785
    move/from16 p6, v5

    .line 787
    move/from16 v20, v6

    .line 789
    move-object/from16 v21, v8

    .line 791
    goto/16 :goto_2f

    .line 793
    :cond_35
    const-string/jumbo v1, "provider"

    .line 796
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 799
    move-result v1

    .line 800
    if-eqz v1, :cond_3b

    .line 802
    and-int/lit16 v1, v3, 0x100

    .line 804
    if-eqz v1, :cond_36

    .line 806
    move-object/from16 v1, p0

    .line 808
    move-object/from16 v2, p2

    .line 810
    move v7, v3

    .line 811
    move/from16 v3, p3

    .line 813
    move-object/from16 v4, p1

    .line 815
    move/from16 p6, v5

    .line 817
    move-object/from16 v5, p4

    .line 819
    move/from16 v20, v6

    .line 821
    move-object/from16 v6, p5

    .line 823
    move v0, v7

    .line 824
    move v7, v12

    .line 825
    move-object/from16 v21, v8

    .line 827
    move/from16 v8, p6

    .line 829
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    .line 832
    move-result v1

    .line 833
    if-lez v1, :cond_37

    .line 835
    const/4 v1, 0x1

    .line 836
    goto :goto_23

    .line 837
    :cond_36
    move v0, v3

    .line 838
    move/from16 p6, v5

    .line 840
    move/from16 v20, v6

    .line 842
    move-object/from16 v21, v8

    .line 844
    :cond_37
    const/4 v1, 0x0

    .line 845
    :goto_23
    and-int/lit16 v2, v0, 0x200

    .line 847
    if-eqz v2, :cond_39

    .line 849
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 851
    invoke-virtual {v2, v10, v9}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(ILjava/lang/String;)Z

    .line 854
    move-result v2

    .line 855
    if-eqz v2, :cond_38

    .line 857
    const/4 v1, 0x1

    .line 858
    const/16 v16, 0x1

    .line 860
    goto :goto_24

    .line 861
    :cond_38
    move/from16 v16, v1

    .line 863
    const/4 v1, 0x1

    .line 864
    goto :goto_24

    .line 865
    :cond_39
    move/from16 v16, v1

    .line 867
    const/4 v1, 0x0

    .line 868
    :goto_24
    and-int/lit16 v0, v0, 0x800

    .line 870
    if-eqz v0, :cond_3a

    .line 872
    move-object/from16 v1, p0

    .line 874
    move-object/from16 v2, p2

    .line 876
    move/from16 v3, p3

    .line 878
    move-object/from16 v4, p1

    .line 880
    move-object/from16 v5, p4

    .line 882
    move-object/from16 v6, p5

    .line 884
    move v7, v12

    .line 885
    move/from16 v8, p6

    .line 887
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    .line 890
    move-result v0

    .line 891
    if-lez v0, :cond_2f

    .line 893
    :goto_25
    const/16 v16, 0x1

    .line 895
    goto/16 :goto_20

    .line 897
    :cond_3a
    move v2, v1

    .line 898
    goto/16 :goto_22

    .line 900
    :cond_3b
    move v0, v3

    .line 901
    move/from16 p6, v5

    .line 903
    move/from16 v20, v6

    .line 905
    move-object/from16 v21, v8

    .line 907
    const-string/jumbo v1, "broadcast"

    .line 910
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 913
    move-result v1

    .line 914
    if-eqz v1, :cond_4d

    .line 916
    if-eqz p5, :cond_4c

    .line 918
    and-int/lit16 v1, v0, 0x2000

    .line 920
    if-eqz v1, :cond_3d

    .line 922
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 924
    invoke-virtual {v1, v10, v9}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(ILjava/lang/String;)Z

    .line 927
    move-result v1

    .line 928
    if-eqz v1, :cond_3c

    .line 930
    const/4 v1, 0x1

    .line 931
    :goto_26
    const/4 v2, 0x1

    .line 932
    goto :goto_27

    .line 933
    :cond_3c
    const/4 v1, 0x0

    .line 934
    goto :goto_26

    .line 935
    :cond_3d
    const/4 v1, 0x0

    .line 936
    const/4 v2, 0x0

    .line 937
    :goto_27
    const v3, 0x8000

    .line 940
    and-int/2addr v3, v0

    .line 941
    if-eqz v3, :cond_3f

    .line 943
    const-string/jumbo v2, "com.google.android.c2dm.intent.RECEIVE"

    .line 946
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 949
    move-result-object v3

    .line 950
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 953
    move-result v2

    .line 954
    if-eqz v2, :cond_3e

    .line 956
    const/4 v1, 0x1

    .line 957
    const/4 v2, 0x1

    .line 958
    :goto_28
    const/4 v3, 0x1

    .line 959
    goto :goto_29

    .line 960
    :cond_3e
    move v2, v1

    .line 961
    const/4 v1, 0x0

    .line 962
    goto :goto_28

    .line 963
    :cond_3f
    move v3, v2

    .line 964
    move v2, v1

    .line 965
    const/4 v1, 0x0

    .line 966
    :goto_29
    const/high16 v4, 0x80000

    .line 968
    and-int/2addr v4, v0

    .line 969
    if-eqz v4, :cond_43

    .line 971
    if-eqz v13, :cond_41

    .line 973
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 976
    move-result v3

    .line 977
    if-eqz v3, :cond_41

    .line 979
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 981
    if-eqz v3, :cond_40

    .line 983
    const-string/jumbo v3, "isSelfIntent :"

    .line 986
    invoke-virtual {v3, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 989
    move-result-object v3

    .line 990
    const-string v4, "BaseRestrictionMgr"

    .line 992
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_40
    const/4 v3, 0x1

    .line 996
    goto :goto_2a

    .line 997
    :cond_41
    const/4 v3, 0x0

    .line 998
    :goto_2a
    if-eqz v3, :cond_42

    .line 1000
    const/4 v2, 0x1

    .line 1001
    :cond_42
    const/4 v3, 0x1

    .line 1002
    :cond_43
    const/high16 v4, 0x100000

    .line 1004
    and-int/2addr v4, v0

    .line 1005
    if-eqz v4, :cond_45

    .line 1007
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1010
    move-result-object v3

    .line 1011
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 1013
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1015
    invoke-virtual {v4, v7, v13, v9, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1018
    move-result v3

    .line 1019
    if-eqz v3, :cond_44

    .line 1021
    const/4 v2, 0x1

    .line 1022
    :cond_44
    const/4 v3, 0x1

    .line 1023
    :cond_45
    const/high16 v4, 0x40000

    .line 1025
    and-int/2addr v4, v0

    .line 1026
    if-eqz v4, :cond_48

    .line 1028
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1030
    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    .line 1033
    move-result v3

    .line 1034
    if-eqz v3, :cond_47

    .line 1036
    if-eqz v9, :cond_46

    .line 1038
    sget-object v3, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 1040
    iget-object v3, v3, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    .line 1042
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1045
    move-result v3

    .line 1046
    if-eqz v3, :cond_46

    .line 1048
    const-string v3, "Call from Current Launcher app :"

    .line 1050
    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1053
    move-result-object v3

    .line 1054
    const-string v4, "BaseRestrictionMgr"

    .line 1056
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const/4 v3, 0x1

    .line 1060
    goto :goto_2b

    .line 1061
    :cond_46
    const/4 v3, 0x0

    .line 1062
    :goto_2b
    if-eqz v3, :cond_47

    .line 1064
    const/4 v2, 0x1

    .line 1065
    :cond_47
    const/4 v3, 0x1

    .line 1066
    :cond_48
    const/high16 v4, 0x40000000    # 2.0f

    .line 1068
    and-int/2addr v0, v4

    .line 1069
    if-eqz v0, :cond_4b

    .line 1071
    if-eqz v9, :cond_49

    .line 1073
    const-string/jumbo v0, "com.samsung.android.app.spage"

    .line 1076
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1079
    move-result v0

    .line 1080
    if-eqz v0, :cond_49

    .line 1082
    const-string v0, "Call from spage app :"

    .line 1084
    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1087
    move-result-object v0

    .line 1088
    const-string v3, "BaseRestrictionMgr"

    .line 1090
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const/4 v0, 0x1

    .line 1094
    goto :goto_2c

    .line 1095
    :cond_49
    const/4 v0, 0x0

    .line 1096
    :goto_2c
    if-eqz v0, :cond_4a

    .line 1098
    const/4 v2, 0x1

    .line 1099
    const/16 v16, 0x1

    .line 1101
    goto/16 :goto_33

    .line 1103
    :cond_4a
    move/from16 v16, v2

    .line 1105
    goto/16 :goto_21

    .line 1107
    :cond_4b
    move/from16 v16, v2

    .line 1109
    move v2, v3

    .line 1110
    goto/16 :goto_33

    .line 1112
    :cond_4c
    :goto_2d
    const/4 v1, 0x0

    .line 1113
    const/4 v2, 0x1

    .line 1114
    :goto_2e
    const/16 v16, 0x0

    .line 1116
    goto/16 :goto_33

    .line 1118
    :cond_4d
    const-string v1, "backup"

    .line 1120
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1123
    move-result v1

    .line 1124
    if-eqz v1, :cond_4e

    .line 1126
    const/high16 v1, 0x1000000

    .line 1128
    and-int/2addr v0, v1

    .line 1129
    if-eqz v0, :cond_50

    .line 1131
    goto :goto_2d

    .line 1132
    :cond_4e
    const-string/jumbo v1, "job"

    .line 1135
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1138
    move-result v1

    .line 1139
    if-nez v1, :cond_4f

    .line 1141
    const-string v1, "alarm"

    .line 1143
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1146
    move-result v1

    .line 1147
    if-eqz v1, :cond_50

    .line 1149
    :cond_4f
    const/high16 v1, -0x80000000

    .line 1151
    and-int/2addr v0, v1

    .line 1152
    if-eqz v0, :cond_50

    .line 1154
    goto :goto_2d

    .line 1155
    :cond_50
    const/4 v1, 0x0

    .line 1156
    const/4 v2, 0x0

    .line 1157
    goto :goto_2e

    .line 1158
    :goto_2f
    and-int/lit8 v1, v0, 0x10

    .line 1160
    if-eqz v1, :cond_52

    .line 1162
    move-object/from16 v1, p0

    .line 1164
    move-object/from16 v2, p2

    .line 1166
    move/from16 v3, p3

    .line 1168
    move-object/from16 v4, p1

    .line 1170
    move-object/from16 v5, p4

    .line 1172
    move-object/from16 v6, p5

    .line 1174
    move v7, v12

    .line 1175
    move/from16 v8, p6

    .line 1177
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    .line 1180
    move-result v1

    .line 1181
    if-lez v1, :cond_51

    .line 1183
    const/4 v1, 0x1

    .line 1184
    :goto_30
    const/4 v2, 0x1

    .line 1185
    goto :goto_31

    .line 1186
    :cond_51
    const/4 v1, 0x0

    .line 1187
    goto :goto_30

    .line 1188
    :cond_52
    const/4 v1, 0x0

    .line 1189
    const/4 v2, 0x0

    .line 1190
    :goto_31
    and-int/lit8 v3, v0, 0x20

    .line 1192
    if-eqz v3, :cond_54

    .line 1194
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1196
    invoke-virtual {v2, v10, v9}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(ILjava/lang/String;)Z

    .line 1199
    move-result v2

    .line 1200
    if-eqz v2, :cond_53

    .line 1202
    const/4 v2, 0x1

    .line 1203
    const/16 v16, 0x1

    .line 1205
    goto :goto_32

    .line 1206
    :cond_53
    move/from16 v16, v1

    .line 1208
    const/4 v2, 0x1

    .line 1209
    goto :goto_32

    .line 1210
    :cond_54
    move/from16 v16, v1

    .line 1212
    :goto_32
    and-int/lit16 v0, v0, 0x80

    .line 1214
    if-eqz v0, :cond_32

    .line 1216
    move-object/from16 v1, p0

    .line 1218
    move-object/from16 v2, p2

    .line 1220
    move/from16 v3, p3

    .line 1222
    move-object/from16 v4, p1

    .line 1224
    move-object/from16 v5, p4

    .line 1226
    move-object/from16 v6, p5

    .line 1228
    move v7, v12

    .line 1229
    move/from16 v8, p6

    .line 1231
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    .line 1234
    move-result v0

    .line 1235
    if-lez v0, :cond_2f

    .line 1237
    goto/16 :goto_25

    .line 1239
    :goto_33
    if-nez v2, :cond_55

    .line 1241
    const/4 v0, 0x1

    .line 1242
    const/16 v18, 0x1

    .line 1244
    goto :goto_34

    .line 1245
    :cond_55
    move/from16 v18, v16

    .line 1247
    const/4 v0, 0x1

    .line 1248
    :goto_34
    xor-int/lit8 v4, v18, 0x1

    .line 1250
    move v7, v4

    .line 1251
    goto :goto_35

    .line 1252
    :cond_56
    move/from16 p6, v5

    .line 1254
    move/from16 v20, v6

    .line 1256
    move-object/from16 v21, v8

    .line 1258
    move v7, v4

    .line 1259
    const/4 v1, 0x0

    .line 1260
    :goto_35
    if-nez v7, :cond_57

    .line 1262
    if-eqz v1, :cond_57

    .line 1264
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1266
    const/4 v1, 0x0

    .line 1267
    const/4 v2, 0x1

    .line 1268
    invoke-virtual {v0, v2, v14, v13, v1}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(IILjava/lang/String;Z)V

    .line 1271
    :cond_57
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1273
    iget-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 1275
    if-eqz v1, :cond_5b

    .line 1277
    invoke-virtual {v0, v14, v13}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    .line 1280
    move-result v1

    .line 1281
    if-eqz v1, :cond_5b

    .line 1283
    if-nez v7, :cond_5b

    .line 1285
    const-string/jumbo v1, "broadcast"

    .line 1288
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1291
    move-result v1

    .line 1292
    if-eqz v1, :cond_58

    .line 1294
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1297
    move-result-object v1

    .line 1298
    if-eqz v1, :cond_58

    .line 1300
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1302
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1305
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    const-string v2, "-"

    .line 1310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1316
    move-result-object v2

    .line 1317
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1323
    move-result-object v1

    .line 1324
    goto :goto_36

    .line 1325
    :cond_58
    move-object v1, v11

    .line 1326
    :goto_36
    invoke-virtual {v0, v14, v13, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 1329
    const-string v0, "BaseRestrictionMgr"

    .line 1331
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1333
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1336
    const-string v2, "Package: "

    .line 1338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    const-string v2, ", userid: "

    .line 1346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1352
    const-string v2, ", hostingType: "

    .line 1354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    const-string v2, " is allowed by freecess, caller is: "

    .line 1362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1371
    move-result-object v1

    .line 1372
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 1377
    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 1379
    if-eqz v0, :cond_5a

    .line 1381
    if-eqz p5, :cond_59

    .line 1383
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1386
    move-result-object v0

    .line 1387
    :goto_37
    move-object v4, v0

    .line 1388
    goto :goto_38

    .line 1389
    :cond_59
    const-string v0, ""

    .line 1391
    goto :goto_37

    .line 1392
    :goto_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1395
    move-object v0, v13

    .line 1396
    move-object/from16 v1, p2

    .line 1398
    move-object/from16 v2, p4

    .line 1400
    move/from16 v3, p11

    .line 1402
    move/from16 v5, p10

    .line 1404
    move-object/from16 v6, p9

    .line 1406
    invoke-static/range {v0 .. v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 1409
    :cond_5a
    monitor-exit v15

    .line 1410
    const/4 v0, 0x0

    .line 1411
    return v0

    .line 1412
    :cond_5b
    if-nez v7, :cond_5c

    .line 1414
    move-object/from16 v0, v21

    .line 1416
    if-eqz v0, :cond_5c

    .line 1418
    iget-boolean v1, v0, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget:Z

    .line 1420
    if-nez v1, :cond_5c

    .line 1422
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1424
    const/16 v2, 0x1000

    .line 1426
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 1429
    :cond_5c
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 1431
    if-eqz v0, :cond_5d

    .line 1433
    if-eqz v7, :cond_5d

    .line 1435
    const-string v0, "BaseRestrictionMgr"

    .line 1437
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1439
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1442
    const-string v2, "Package: "

    .line 1444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    const-string v2, ", userid: "

    .line 1452
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1458
    const-string v2, ", hostingType: "

    .line 1460
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    const-string v2, " is Restricted by policy: "

    .line 1468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    move/from16 v2, p6

    .line 1473
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1476
    const-string v2, " caller is: "

    .line 1478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1487
    move-result-object v1

    .line 1488
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_5d
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1492
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1494
    monitor-enter v1

    .line 1495
    :try_start_4
    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1497
    monitor-exit v1

    .line 1498
    if-nez v0, :cond_64

    .line 1500
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    .line 1502
    if-eqz v0, :cond_64

    .line 1504
    move-object/from16 v0, p0

    .line 1506
    iget-object v0, v0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    .line 1508
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 1511
    move-result v0

    .line 1512
    if-ne v0, v14, :cond_64

    .line 1514
    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 1516
    const-string v0, "activity"

    .line 1518
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1521
    move-result v0

    .line 1522
    if-eqz v0, :cond_5e

    .line 1524
    goto/16 :goto_3a

    .line 1526
    :cond_5e
    move/from16 v6, v20

    .line 1528
    const/4 v0, 0x1

    .line 1529
    if-ne v6, v0, :cond_5f

    .line 1531
    if-eqz v17, :cond_5f

    .line 1533
    goto :goto_3a

    .line 1534
    :cond_5f
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1537
    move-result v0

    .line 1538
    if-nez v0, :cond_64

    .line 1540
    sget-object v0, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 1542
    invoke-virtual {v0, v12}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    .line 1545
    move-result v0

    .line 1546
    if-eqz v0, :cond_60

    .line 1548
    goto :goto_3a

    .line 1549
    :cond_60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1552
    move-result-wide v14

    .line 1553
    if-eqz v7, :cond_61

    .line 1555
    if-nez v6, :cond_64

    .line 1557
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 1560
    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 1562
    move-object v1, v13

    .line 1563
    move v2, v7

    .line 1564
    move-object/from16 v3, p2

    .line 1566
    move-wide v4, v14

    .line 1567
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateAppStartUpInfoMsgToDBHandler(Ljava/lang/String;ZLjava/lang/String;J)V

    .line 1570
    goto :goto_3a

    .line 1571
    :cond_61
    if-eqz v6, :cond_62

    .line 1573
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 1576
    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 1578
    move-object v1, v13

    .line 1579
    move v2, v7

    .line 1580
    move-object/from16 v3, p2

    .line 1582
    move-wide v4, v14

    .line 1583
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateAppStartUpInfoMsgToDBHandler(Ljava/lang/String;ZLjava/lang/String;J)V

    .line 1586
    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1588
    const-string/jumbo v1, "markAppStartUpResult: auto run "

    .line 1591
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1594
    if-nez v6, :cond_63

    .line 1596
    const-string/jumbo v1, "off"

    .line 1599
    goto :goto_39

    .line 1600
    :cond_63
    const-string/jumbo v1, "on"

    .line 1603
    :goto_39
    const-string v2, " case : "

    .line 1605
    const-string v3, " start process "

    .line 1607
    invoke-static {v0, v1, v2, v9, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    const-string v1, " at "

    .line 1615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1624
    move-result-object v0

    .line 1625
    const-string v1, "MARsComponentTracker"

    .line 1627
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_64
    :goto_3a
    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    .line 1632
    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    .line 1634
    if-eqz v0, :cond_66

    .line 1636
    if-nez v7, :cond_66

    .line 1638
    if-eqz p5, :cond_65

    .line 1640
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1643
    move-result-object v0

    .line 1644
    :goto_3b
    move-object v4, v0

    .line 1645
    goto :goto_3c

    .line 1646
    :cond_65
    const-string v0, ""

    .line 1648
    goto :goto_3b

    .line 1649
    :goto_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1652
    move-object v0, v13

    .line 1653
    move-object/from16 v1, p2

    .line 1655
    move-object/from16 v2, p4

    .line 1657
    move/from16 v3, p11

    .line 1659
    move/from16 v5, p10

    .line 1661
    move-object/from16 v6, p9

    .line 1663
    invoke-static/range {v0 .. v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 1666
    :cond_66
    return v7

    .line 1667
    :catchall_3
    move-exception v0

    .line 1668
    move-object v2, v0

    .line 1669
    monitor-exit v1

    .line 1670
    throw v2

    .line 1671
    :goto_3d
    :try_start_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1672
    throw v0
.end method
