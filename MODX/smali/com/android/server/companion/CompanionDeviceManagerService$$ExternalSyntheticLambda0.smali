.class public final synthetic Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 14

    .line 1
    check-cast p1, Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo p0, "maybeGrantAutoRevokeExemptions()"

    .line 9
    const-string v0, "CDM_CompanionDeviceManagerService"

    .line 11
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    move-result-object p0

    .line 22
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 24
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 30
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 33
    move-result-object v1

    .line 34
    array-length v2, v1

    .line 35
    const/4 v3, 0x0

    .line 36
    move v4, v3

    .line 37
    :goto_0
    if-ge v4, v2, :cond_2

    .line 39
    aget v5, v1, v4

    .line 41
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v6

    .line 45
    new-instance v7, Ljava/io/File;

    .line 47
    invoke-static {v5}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 50
    move-result-object v8

    .line 51
    const-string/jumbo v9, "companion_device_preferences.xml"

    .line 54
    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    .line 60
    move-result-object v6

    .line 61
    const-string v7, "auto_revoke_grants_done"

    .line 63
    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_0

    .line 69
    goto :goto_2

    .line 70
    :cond_0
    const/4 v8, 0x1

    .line 71
    :try_start_0
    iget-object v9, p1, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 73
    invoke-virtual {v9, v5}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    .line 76
    move-result-object v9

    .line 77
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object v9

    .line 81
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result v10

    .line 85
    if-eqz v10, :cond_1

    .line 87
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v10

    .line 91
    check-cast v10, Landroid/companion/AssociationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 96
    move-result-object v11

    .line 97
    invoke-virtual {p0, v11, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 100
    move-result v11

    .line 101
    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 104
    move-result-object v12

    .line 105
    invoke-virtual {p1, v11, v12}, Lcom/android/server/companion/CompanionDeviceManagerService;->exemptFromAutoRevoke(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    goto :goto_1

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_3

    .line 111
    :catch_0
    move-exception v11

    .line 112
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    const-string v13, "Unknown companion package: "

    .line 119
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 125
    move-result-object v10

    .line 126
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v10

    .line 133
    invoke-static {v0, v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    goto :goto_1

    .line 137
    :cond_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 140
    move-result-object v5

    .line 141
    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    move-result-object v5

    .line 145
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 150
    goto :goto_0

    .line 151
    :goto_3
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 154
    move-result-object p1

    .line 155
    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 158
    move-result-object p1

    .line 159
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    throw p0

    .line 163
    :cond_2
    return-void
.end method
