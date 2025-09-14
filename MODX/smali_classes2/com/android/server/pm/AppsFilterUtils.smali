.class public abstract Lcom/android/server/pm/AppsFilterUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static canQueryAsInstaller(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    return v1

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public static canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

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
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/content/Intent;

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static {v2, v3, v4}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArraySet;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v2, v3, v4}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArraySet;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v2, v3, p2}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArraySet;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v2, v3, v4}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArraySet;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_0

    .line 75
    .line 76
    :goto_0
    return v1

    .line 77
    :cond_4
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesProviders()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    const/4 v0, 0x0

    .line 86
    if-nez p2, :cond_9

    .line 87
    .line 88
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesProviders()Ljava/util/Set;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    sub-int/2addr p2, v1

    .line 101
    :goto_1
    if-ltz p2, :cond_9

    .line 102
    .line 103
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 112
    .line 113
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isExported()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-nez v3, :cond_5

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    if-nez v3, :cond_6

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_6
    new-instance v3, Ljava/util/StringTokenizer;

    .line 128
    .line 129
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const-string v4, ";"

    .line 134
    .line 135
    invoke-direct {v3, v2, v4, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    .line 137
    .line 138
    :cond_7
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_8

    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_7

    .line 153
    .line 154
    return v1

    .line 155
    :cond_8
    :goto_2
    add-int/lit8 p2, p2, -0x1

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_9
    return v0
.end method

.method public static canQueryViaUsesLibrary(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

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
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    move v2, v1

    .line 22
    :goto_0
    if-ge v2, v0, :cond_3

    .line 23
    .line 24
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_2

    .line 39
    .line 40
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 55
    return p0

    .line 56
    :cond_3
    return v1
.end method

.method public static matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArraySet;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    :goto_0
    if-ltz v1, :cond_4

    .line 10
    .line 11
    move-object/from16 v3, p1

    .line 12
    .line 13
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 18
    .line 19
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isExported()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    goto :goto_4

    .line 26
    :cond_0
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    sub-int/2addr v5, v2

    .line 35
    :goto_1
    if-ltz v5, :cond_3

    .line 36
    .line 37
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 42
    .line 43
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    iget-object v6, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 70
    .line 71
    :goto_2
    move-object v15, v6

    .line 72
    goto :goto_3

    .line 73
    :cond_1
    const/4 v6, 0x0

    .line 74
    goto :goto_2

    .line 75
    :goto_3
    const-string v13, "AppsFilter"

    .line 76
    .line 77
    const/4 v14, 0x1

    .line 78
    invoke-virtual/range {v7 .. v15}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-lez v6, :cond_2

    .line 83
    .line 84
    return v2

    .line 85
    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    const/4 v0, 0x0

    .line 92
    return v0
.end method
