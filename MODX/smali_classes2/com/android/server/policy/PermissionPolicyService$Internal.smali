.class public final Lcom/android/server/policy/PermissionPolicyService$Internal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityInterceptorCallback:Lcom/android/server/policy/PermissionPolicyService$Internal$1;

.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/policy/PermissionPolicyService$Internal$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/server/policy/PermissionPolicyService$Internal$1;-><init>(Lcom/android/server/policy/PermissionPolicyService$Internal;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->mActivityInterceptorCallback:Lcom/android/server/policy/PermissionPolicyService$Internal$1;

    .line 12
    .line 13
    return-void
.end method

.method public static isLauncherIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.action.MAIN"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "android.intent.category.LAUNCHER"

    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "android.intent.category.LEANBACK_LAUNCHER"

    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string v0, "android.intent.category.CAR_LAUNCHER"

    .line 48
    .line 49
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    :cond_0
    const/4 p0, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 p0, 0x0

    .line 58
    :goto_0
    return p0
.end method


# virtual methods
.method public final checkStartActivity(Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 4

    .line 1
    const-string v0, "PermissionPolicyService"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_3

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v3, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    const-string v3, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0, p2, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    const/16 v2, 0x1d

    .line 51
    .line 52
    if-lt p0, v2, :cond_2

    .line 53
    .line 54
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "Action Removed: starting "

    .line 57
    .line 58
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, " from "

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p1, " (uid="

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, ")"

    .line 82
    .line 83
    invoke-static {p0, p3, p1, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return v1

    .line 87
    :catch_0
    const-string p0, "Cannot find application info for "

    .line 88
    .line 89
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_2
    const-string p0, "android.intent.extra.CALLING_PACKAGE"

    .line 97
    .line 98
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_0
    const-string p0, "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_5

    .line 112
    .line 113
    const/16 p0, 0x3e8

    .line 114
    .line 115
    if-ne p3, p0, :cond_4

    .line 116
    .line 117
    const-string p0, "android"

    .line 118
    .line 119
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-nez p0, :cond_5

    .line 124
    .line 125
    :cond_4
    return v1

    .line 126
    :cond_5
    const/4 p0, 0x1

    .line 127
    return p0
.end method

.method public final shouldShowNotificationDialogOrClearFlags(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_6

    .line 3
    .line 4
    if-eqz p2, :cond_6

    .line 5
    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    if-eqz p6, :cond_6

    .line 9
    .line 10
    iget-boolean v1, p1, Landroid/app/TaskInfo;->isFocused:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-boolean v1, p1, Landroid/app/TaskInfo;->isVisible:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-boolean v1, p1, Landroid/app/TaskInfo;->isRunning:Z

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    :cond_0
    if-nez p7, :cond_1

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_1
    invoke-static {p4}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isLauncherIntent(Landroid/content/Intent;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-nez v1, :cond_5

    .line 32
    .line 33
    if-eqz p5, :cond_2

    .line 34
    .line 35
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->isEligibleForLegacyPermissionPrompt()Z

    .line 36
    .line 37
    .line 38
    move-result p5

    .line 39
    if-nez p5, :cond_5

    .line 40
    .line 41
    :cond_2
    iget-object p5, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 42
    .line 43
    if-eqz p5, :cond_3

    .line 44
    .line 45
    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p5

    .line 49
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p5

    .line 53
    if-eqz p5, :cond_3

    .line 54
    .line 55
    iget-object p5, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 56
    .line 57
    invoke-static {p5}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isLauncherIntent(Landroid/content/Intent;)Z

    .line 58
    .line 59
    .line 60
    move-result p5

    .line 61
    if-eqz p5, :cond_3

    .line 62
    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :cond_3
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    if-eqz p3, :cond_6

    .line 70
    .line 71
    iget-object p3, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 72
    .line 73
    invoke-virtual {p3, p4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    if-eqz p3, :cond_6

    .line 78
    .line 79
    iget p3, p1, Landroid/app/TaskInfo;->numActivities:I

    .line 80
    .line 81
    if-ne p3, v2, :cond_6

    .line 82
    .line 83
    iget-object p3, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 84
    .line 85
    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-eqz p3, :cond_6

    .line 92
    .line 93
    if-eqz p7, :cond_5

    .line 94
    .line 95
    const-class p3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 96
    .line 97
    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    check-cast p3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 102
    .line 103
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 106
    .line 107
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    invoke-virtual {p3, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAppTasks(ILjava/lang/String;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    move p3, v0

    .line 116
    :goto_0
    move-object p4, p0

    .line 117
    check-cast p4, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result p5

    .line 123
    if-ge p3, p5, :cond_6

    .line 124
    .line 125
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p4

    .line 129
    check-cast p4, Landroid/app/ActivityManager$AppTask;

    .line 130
    .line 131
    invoke-virtual {p4}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    iget p5, p4, Landroid/app/TaskInfo;->taskId:I

    .line 136
    .line 137
    iget p6, p1, Landroid/app/TaskInfo;->taskId:I

    .line 138
    .line 139
    if-eq p5, p6, :cond_4

    .line 140
    .line 141
    iget-boolean p5, p4, Landroid/app/TaskInfo;->isFocused:Z

    .line 142
    .line 143
    if-eqz p5, :cond_4

    .line 144
    .line 145
    iget-boolean p5, p4, Landroid/app/TaskInfo;->isRunning:Z

    .line 146
    .line 147
    if-eqz p5, :cond_4

    .line 148
    .line 149
    iget-object p5, p4, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 150
    .line 151
    if-eqz p5, :cond_4

    .line 152
    .line 153
    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p5

    .line 157
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p5

    .line 161
    if-eqz p5, :cond_4

    .line 162
    .line 163
    iget-object p4, p4, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 164
    .line 165
    invoke-static {p4}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isLauncherIntent(Landroid/content/Intent;)Z

    .line 166
    .line 167
    .line 168
    move-result p4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    if-eqz p4, :cond_4

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_4
    add-int/lit8 p3, p3, 0x1

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_5
    :goto_1
    move v0, v2

    .line 176
    :catch_0
    :cond_6
    :goto_2
    return v0
.end method

.method public final showNotificationPromptIfNeeded(Ljava/lang/String;IILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .locals 6

    .line 1
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p1, :cond_b

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p3, v0, :cond_b

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_a

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_a

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_a

    .line 39
    .line 40
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/16 v2, 0x17

    .line 45
    .line 46
    if-ge v1, v2, :cond_0

    .line 47
    .line 48
    goto/16 :goto_7

    .line 49
    .line 50
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 56
    .line 57
    iget-boolean v2, v2, Lcom/android/server/policy/PermissionPolicyService;->mBootCompleted:Z

    .line 58
    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    monitor-exit v1

    .line 62
    goto/16 :goto_8

    .line 63
    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "android.permission.POST_NOTIFICATIONS"

    .line 73
    .line 74
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_b

    .line 79
    .line 80
    const-wide/32 v1, 0xb9cec21

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v2, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_b

    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 90
    .line 91
    iget-object v1, v1, Lcom/android/server/policy/PermissionPolicyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    goto/16 :goto_8

    .line 100
    .line 101
    :cond_2
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-virtual {p2, v0}, Landroid/os/UserHandle;->getUid(I)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 110
    .line 111
    iget-object v2, v1, Lcom/android/server/policy/PermissionPolicyService;->mNotificationManager:Lcom/android/server/notification/NotificationManagerInternal;

    .line 112
    .line 113
    if-nez v2, :cond_3

    .line 114
    .line 115
    const-class v2, Lcom/android/server/notification/NotificationManagerInternal;

    .line 116
    .line 117
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Lcom/android/server/notification/NotificationManagerInternal;

    .line 122
    .line 123
    iput-object v2, v1, Lcom/android/server/policy/PermissionPolicyService;->mNotificationManager:Lcom/android/server/notification/NotificationManagerInternal;

    .line 124
    .line 125
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 126
    .line 127
    iget-object v1, v1, Lcom/android/server/policy/PermissionPolicyService;->mNotificationManager:Lcom/android/server/notification/NotificationManagerInternal;

    .line 128
    .line 129
    check-cast v1, Lcom/android/server/notification/NotificationManagerService$18;

    .line 130
    .line 131
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 132
    .line 133
    const/4 v2, 0x1

    .line 134
    invoke-virtual {v1, p1, v0, v2}, Lcom/android/server/notification/NotificationManagerService;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    const/4 v3, 0x0

    .line 139
    if-lez v1, :cond_4

    .line 140
    .line 141
    move v1, v2

    .line 142
    goto :goto_0

    .line 143
    :cond_4
    move v1, v3

    .line 144
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 145
    .line 146
    iget-object v4, v4, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 147
    .line 148
    const-string v5, "android.permission.POST_NOTIFICATIONS"

    .line 149
    .line 150
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 151
    .line 152
    invoke-virtual {v4, v0, v5, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(ILjava/lang/String;I)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_5

    .line 157
    .line 158
    move v0, v2

    .line 159
    goto :goto_1

    .line 160
    :cond_5
    move v0, v3

    .line 161
    :goto_1
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 162
    .line 163
    iget-object v4, v4, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 164
    .line 165
    const-string v5, "android.permission.POST_NOTIFICATIONS"

    .line 166
    .line 167
    invoke-virtual {v4, v5, p1, p2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    const v5, 0x8037

    .line 172
    .line 173
    .line 174
    and-int/2addr v4, v5

    .line 175
    if-eqz v4, :cond_6

    .line 176
    .line 177
    move v4, v2

    .line 178
    goto :goto_2

    .line 179
    :cond_6
    move v4, v3

    .line 180
    :goto_2
    if-nez v0, :cond_b

    .line 181
    .line 182
    if-eqz v1, :cond_b

    .line 183
    .line 184
    if-nez v4, :cond_b

    .line 185
    .line 186
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 187
    .line 188
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 189
    .line 190
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 191
    .line 192
    filled-new-array {v1}, [Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const/high16 v1, 0x10040000

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    .line 204
    .line 205
    const-string v1, "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    .line 209
    .line 210
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    .line 211
    .line 212
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    .line 214
    .line 215
    if-eqz p4, :cond_7

    .line 216
    .line 217
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCheckedOptions()Landroid/app/ActivityOptions;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-eqz v1, :cond_7

    .line 222
    .line 223
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCheckedOptions()Landroid/app/ActivityOptions;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimationType()I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    const/16 v4, 0xd

    .line 232
    .line 233
    if-ne v1, v4, :cond_7

    .line 234
    .line 235
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getClearOptionsAnimationRunnable()Ljava/lang/Runnable;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    if-eqz v1, :cond_7

    .line 240
    .line 241
    move v1, v2

    .line 242
    goto :goto_3

    .line 243
    :cond_7
    move v1, v3

    .line 244
    :goto_3
    if-eqz v1, :cond_8

    .line 245
    .line 246
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCheckedOptions()Landroid/app/ActivityOptions;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCheckedOptions()Landroid/app/ActivityOptions;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    invoke-static {v4, v5}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    goto :goto_4

    .line 267
    :cond_8
    new-instance v4, Landroid/app/ActivityOptions;

    .line 268
    .line 269
    new-instance v5, Landroid/os/Bundle;

    .line 270
    .line 271
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-direct {v4, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 275
    .line 276
    .line 277
    :goto_4
    invoke-virtual {v4, v2, v3}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4, p3}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 281
    .line 282
    .line 283
    if-eqz v1, :cond_9

    .line 284
    .line 285
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getClearOptionsAnimationRunnable()Ljava/lang/Runnable;

    .line 286
    .line 287
    .line 288
    move-result-object p3

    .line 289
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 290
    .line 291
    .line 292
    :cond_9
    :try_start_1
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    .line 293
    .line 294
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 295
    .line 296
    .line 297
    move-result-object p3

    .line 298
    invoke-virtual {p0, v0, p3, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 299
    .line 300
    .line 301
    goto :goto_5

    .line 302
    :catch_0
    move-exception p0

    .line 303
    const-string p2, "couldn\'t start grant permission dialogfor other package "

    .line 304
    .line 305
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    const-string p2, "PermissionPolicyService"

    .line 310
    .line 311
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    .line 313
    .line 314
    :goto_5
    return-void

    .line 315
    :goto_6
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    throw p0

    .line 317
    :cond_a
    :goto_7
    if-nez v0, :cond_b

    .line 318
    .line 319
    const-string p0, "PermissionPolicyService"

    .line 320
    .line 321
    const-string p2, "Cannot check for Notification prompt, no package for "

    .line 322
    .line 323
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    :cond_b
    :goto_8
    return-void
.end method
