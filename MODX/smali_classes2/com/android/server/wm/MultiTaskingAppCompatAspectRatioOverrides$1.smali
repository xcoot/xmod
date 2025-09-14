.class public final Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/PackagesChange$PackagesUserChangeCallback;


# instance fields
.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dumpUserChanges(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$1;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$1;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$1;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v0, v1

    .line 26
    :goto_0
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    array-length v3, v0

    .line 30
    if-nez v3, :cond_3

    .line 31
    .line 32
    :cond_2
    const/4 v0, 0x1

    .line 33
    new-array v0, v0, [I

    .line 34
    .line 35
    aput v2, v0, v2

    .line 36
    .line 37
    :cond_3
    const-string v3, "  "

    .line 38
    .line 39
    invoke-static {p2, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    array-length v4, v0

    .line 44
    move v5, v2

    .line 45
    :goto_1
    if-ge v5, v4, :cond_8

    .line 46
    .line 47
    aget v6, v0, v5

    .line 48
    .line 49
    new-instance v7, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$1$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    invoke-direct {v7, p2, v6}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    if-eqz v8, :cond_4

    .line 59
    .line 60
    invoke-virtual {v8, v2, v6}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    const-string v8, "MultiTaskingAppCompat"

    .line 66
    .line 67
    const-string v9, "PackageManager is null."

    .line 68
    .line 69
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-object v8, v1

    .line 73
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_7

    .line 82
    .line 83
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 88
    .line 89
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v10, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 92
    .line 93
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {v6, v9}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode(ILjava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-eqz v10, :cond_5

    .line 101
    .line 102
    if-eqz v7, :cond_6

    .line 103
    .line 104
    invoke-virtual {v7}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$1$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    check-cast v7, Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    move-object v7, v1

    .line 114
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v12, "["

    .line 123
    .line 124
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v9, "] "

    .line 131
    .line 132
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_8
    return-void
.end method

.method public final onSystemReady()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->mUserMinAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->onLoadFileCompletedAndSystemReady(ZZ)V

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0

    .line 20
    :cond_0
    :goto_0
    return-void
.end method

.method public final resetAllIfNeeded(II)V
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    and-int/2addr p2, v0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 8
    .line 9
    iget-object p2, p2, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->mUserMinAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;

    .line 10
    .line 11
    if-eqz p2, :cond_2

    .line 12
    .line 13
    monitor-enter p2

    .line 14
    :try_start_0
    iget-object v1, p2, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 15
    .line 16
    iget v2, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    .line 17
    .line 18
    and-int/2addr v0, v2

    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->reset(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    monitor-exit p2

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const/4 v0, 0x0

    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    invoke-virtual {p2, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    const-string p2, "MultiTaskingAppCompat"

    .line 42
    .line 43
    const-string v1, "PackageManager is null."

    .line 44
    .line 45
    invoke-static {p2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    :goto_1
    const-string v1, "MultiTaskingAppCompat"

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v3, "Reset UserMinAspectRatioOverride. size="

    .line 54
    .line 55
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 89
    .line 90
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-static {v1, p1, v0}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->setUserMinAspectRatioOverrideCode(Ljava/lang/String;II)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    return-void
.end method
