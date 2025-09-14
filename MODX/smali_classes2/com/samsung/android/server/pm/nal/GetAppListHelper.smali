.class public final Lcom/samsung/android/server/pm/nal/GetAppListHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final EXEMPTED_PACKAGES:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.google.android.wearable.app.cn"

    .line 5
    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->EXEMPTED_PACKAGES:[Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static checkCallingGetAppList(Landroid/content/Context;IZLjava/util/function/Function;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const-string v1, "com.samsung.android.permission.GET_APP_LIST"

    .line 10
    .line 11
    invoke-static {v1, p1}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-nez v2, :cond_4

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, [Ljava/lang/String;

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    array-length p3, p1

    .line 35
    if-nez p3, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    aget-object p1, p1, v0

    .line 39
    .line 40
    const-class p3, Landroid/permission/PermissionManager;

    .line 41
    .line 42
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Landroid/permission/PermissionManager;

    .line 47
    .line 48
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p0, p1, v1, p2}, Landroid/permission/PermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 53
    .line 54
    .line 55
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    and-int/lit8 p0, p0, 0x8

    .line 57
    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    return v3

    .line 64
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    return v0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    return v3

    .line 74
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_4
    return v3
.end method

.method public static getTaskIdOfVisibleActivity(Ljava/util/List;)I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/app/ActivityManager$AppTask;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-boolean v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iget-boolean v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "android.intent.action.MAIN"

    .line 42
    .line 43
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v5, "android.intent.category.LAUNCHER"

    .line 60
    .line 61
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_2

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const-string v5, "android.intent.category.LEANBACK_LAUNCHER"

    .line 72
    .line 73
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_2

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const-string v4, "android.intent.category.CAR_LAUNCHER"

    .line 84
    .line 85
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_1

    .line 90
    .line 91
    :cond_2
    iget p0, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 92
    .line 93
    return p0

    .line 94
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Landroid/app/ActivityManager$AppTask;

    .line 109
    .line 110
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    iget-boolean v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    .line 117
    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    iget-boolean v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    .line 121
    .line 122
    if-eqz v2, :cond_4

    .line 123
    .line 124
    iget p0, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 125
    .line 126
    return p0

    .line 127
    :cond_5
    return v0
.end method

.method public static requestGetAppListPermIfNeeded(Landroid/content/Context;II)V
    .locals 5

    .line 1
    const-string v0, "GetAppListHelper"

    .line 2
    .line 3
    const-string v1, "Failed to get app tasks for "

    .line 4
    .line 5
    :try_start_0
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 12
    .line 13
    invoke-virtual {v2, p2}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 26
    .line 27
    :try_start_1
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAppTasks(ILjava/lang/String;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    :try_start_2
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    :goto_0
    if-nez v1, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroid/app/ActivityManager$AppTask;

    .line 58
    .line 59
    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    iget-boolean v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    .line 66
    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    iget-boolean v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    .line 70
    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    invoke-static {v1}, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->getTaskIdOfVisibleActivity(Ljava/util/List;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-static {p0, p2, v1, v2}, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->showGetAppListConfirmDialog(Landroid/content/Context;Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_1
    const-string p0, "Failed to request GET_APP_LIST for "

    .line 86
    .line 87
    invoke-static {p1, p0, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_1
    return-void
.end method

.method public static showGetAppListConfirmDialog(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 5

    .line 1
    const-string v0, "Request GET_APP_LIST permission for "

    .line 2
    .line 3
    if-gez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    const-string v1, "GetAppListHelper"

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v1, "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    .line 23
    .line 24
    const-string v2, "com.samsung.android.permission.GET_APP_LIST"

    .line 25
    .line 26
    filled-new-array {v2}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string v1, "com.samsung.android.permissioncontroller"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    .line 39
    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    const/high16 p1, 0x10040000

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    new-instance p1, Landroid/app/ActivityOptions;

    .line 53
    .line 54
    new-instance v3, Landroid/os/Bundle;

    .line 55
    .line 56
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, v3}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 60
    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-virtual {p1, v3, v4}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception p0

    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    :goto_1
    return-void
.end method


# virtual methods
.method public final isExemptedPackage(ILcom/android/server/pm/SettingBase;)Z
    .locals 6

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_c

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_4

    .line 9
    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    return p1

    .line 14
    :cond_1
    iget v0, p2, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 15
    .line 16
    and-int/2addr v0, v1

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    return v1

    .line 20
    :cond_2
    instance-of v0, p2, Lcom/android/server/pm/SharedUserSetting;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->EXEMPTED_PACKAGES:[Ljava/lang/String;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v0, :cond_7

    .line 26
    .line 27
    check-cast p2, Lcom/android/server/pm/SharedUserSetting;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 30
    .line 31
    iget-object p2, p2, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 32
    .line 33
    if-eqz p2, :cond_a

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-lez v0, :cond_a

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_6

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 56
    .line 57
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-nez v2, :cond_4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    array-length v3, p0

    .line 65
    move v4, p1

    .line 66
    :goto_1
    if-ge v4, v3, :cond_3

    .line 67
    .line 68
    aget-object v5, p0, v4

    .line 69
    .line 70
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_5

    .line 75
    .line 76
    return v1

    .line 77
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_6
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    move-object v2, p0

    .line 85
    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_7
    instance-of v0, p2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 89
    .line 90
    if-eqz v0, :cond_a

    .line 91
    .line 92
    move-object v2, p2

    .line 93
    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 94
    .line 95
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    if-nez p2, :cond_8

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_8
    array-length v0, p0

    .line 103
    move v3, p1

    .line 104
    :goto_2
    if-ge v3, v0, :cond_a

    .line 105
    .line 106
    aget-object v4, p0, v3

    .line 107
    .line 108
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_9

    .line 113
    .line 114
    return v1

    .line 115
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_a
    :goto_3
    if-eqz v2, :cond_b

    .line 119
    .line 120
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getRequestedPermissions()Ljava/util/Set;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const-string p2, "com.samsung.android.permission.GET_APP_LIST"

    .line 129
    .line 130
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-nez p0, :cond_b

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_b
    move v1, p1

    .line 138
    :cond_c
    :goto_4
    return v1
.end method
