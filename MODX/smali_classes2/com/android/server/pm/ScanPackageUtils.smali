.class public abstract Lcom/android/server/pm/ScanPackageUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static apkHasCode(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Landroid/util/jar/StrictJarFile;

    .line 4
    .line 5
    invoke-direct {v2, p0, v0, v0}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    .line 8
    :try_start_1
    const-string p0, "classes.dex"

    .line 9
    .line 10
    invoke-virtual {v2, p0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    return v0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    move-object v1, v2

    .line 23
    goto :goto_0

    .line 24
    :catch_1
    move-object v1, v2

    .line 25
    goto :goto_1

    .line 26
    :catchall_1
    move-exception p0

    .line 27
    :goto_0
    if-eqz v1, :cond_1

    .line 28
    .line 29
    :try_start_3
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 30
    .line 31
    .line 32
    :catch_2
    :cond_1
    throw p0

    .line 33
    :catch_3
    :goto_1
    if-eqz v1, :cond_2

    .line 34
    .line 35
    :try_start_4
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 36
    .line 37
    .line 38
    :catch_4
    :cond_2
    return v0
.end method

.method public static applyAdjustedAbiToSharedUser(Lcom/android/server/pm/SharedUserSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1, p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_5

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_4

    .line 39
    .line 40
    :cond_1
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iput-object p2, v2, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 51
    .line 52
    .line 53
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 54
    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    check-cast v3, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 58
    .line 59
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_4

    .line 68
    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 77
    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    return-object v0
.end method

.method public static applyPolicy(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/pkg/AndroidPackage;Z)V
    .locals 5

    .line 1
    const/high16 v0, 0x10000

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-interface {p0, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSystem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isDirectBootAware()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setAllComponentsDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    array-length v0, v0

    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    invoke-interface {p0, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setStub(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 34
    .line 35
    .line 36
    :cond_1
    move v0, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->clearProtectedBroadcasts()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setCoreApp(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->capPermissionPriorities()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 59
    .line 60
    .line 61
    move v0, p3

    .line 62
    :goto_0
    const/high16 v3, 0x20000

    .line 63
    .line 64
    and-int/2addr v3, p1

    .line 65
    if-nez v3, :cond_3

    .line 66
    .line 67
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 68
    .line 69
    .line 70
    :cond_3
    const/high16 v4, 0x4000000

    .line 71
    .line 72
    and-int/2addr v4, p1

    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    move v4, v2

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    move v4, v1

    .line 78
    :goto_1
    invoke-interface {p0, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setApex(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 79
    .line 80
    .line 81
    if-eqz v3, :cond_5

    .line 82
    .line 83
    move v3, v2

    .line 84
    goto :goto_2

    .line 85
    :cond_5
    move v3, v1

    .line 86
    :goto_2
    invoke-interface {p0, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrivileged(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    const/high16 v4, 0x40000

    .line 91
    .line 92
    and-int/2addr v4, p1

    .line 93
    if-eqz v4, :cond_6

    .line 94
    .line 95
    move v4, v2

    .line 96
    goto :goto_3

    .line 97
    :cond_6
    move v4, v1

    .line 98
    :goto_3
    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setOem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const/high16 v4, 0x80000

    .line 103
    .line 104
    and-int/2addr v4, p1

    .line 105
    if-eqz v4, :cond_7

    .line 106
    .line 107
    move v4, v2

    .line 108
    goto :goto_4

    .line 109
    :cond_7
    move v4, v1

    .line 110
    :goto_4
    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setVendor(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const/high16 v4, 0x100000

    .line 115
    .line 116
    and-int/2addr v4, p1

    .line 117
    if-eqz v4, :cond_8

    .line 118
    .line 119
    move v4, v2

    .line 120
    goto :goto_5

    .line 121
    :cond_8
    move v4, v1

    .line 122
    :goto_5
    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setProduct(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const/high16 v4, 0x200000

    .line 127
    .line 128
    and-int/2addr v4, p1

    .line 129
    if-eqz v4, :cond_9

    .line 130
    .line 131
    move v4, v2

    .line 132
    goto :goto_6

    .line 133
    :cond_9
    move v4, v1

    .line 134
    :goto_6
    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSystemExt(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    const/high16 v4, 0x400000

    .line 139
    .line 140
    and-int/2addr p1, v4

    .line 141
    if-eqz p1, :cond_a

    .line 142
    .line 143
    move p1, v2

    .line 144
    goto :goto_7

    .line 145
    :cond_a
    move p1, v1

    .line 146
    :goto_7
    invoke-interface {v3, p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setOdm(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 147
    .line 148
    .line 149
    const-string p1, "android"

    .line 150
    .line 151
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_b

    .line 160
    .line 161
    if-eqz p2, :cond_c

    .line 162
    .line 163
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-nez p1, :cond_c

    .line 176
    .line 177
    :cond_b
    move v1, v2

    .line 178
    :cond_c
    invoke-interface {p0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSignedWithPlatformKey(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 179
    .line 180
    .line 181
    if-nez v0, :cond_d

    .line 182
    .line 183
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->clearOriginalPackages()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->clearAdoptPermissions()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 188
    .line 189
    .line 190
    :cond_d
    invoke-static {p0, v0, p3}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->modifySharedLibraries(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V

    .line 191
    .line 192
    .line 193
    return-void
.end method

.method public static assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    :goto_0
    if-ltz v0, :cond_2

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 32
    .line 33
    const-string p2, "Can\'t install because "

    .line 34
    .line 35
    const-string v0, " "

    .line 36
    .line 37
    invoke-static {p2, p3, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p3, "\'s process attribute "

    .line 49
    .line 50
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p3, " (in package "

    .line 61
    .line 62
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p0, ") is not included in the <processes> list"

    .line 73
    .line 74
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const/16 p2, -0x7a

    .line 82
    .line 83
    invoke-direct {p1, p2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_2
    return-void
.end method

.method public static assertProcessesAreValid(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "activity"

    .line 26
    .line 27
    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string/jumbo v2, "service"

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string/jumbo v2, "receiver"

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string/jumbo v2, "provider"

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "Can\'t install because application tag\'s process attribute "

    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, " (in package "

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p0, ") is not included in the <processes> list"

    .line 90
    .line 91
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const/16 v1, -0x7a

    .line 99
    .line 100
    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_1
    :goto_0
    return-void
.end method

.method public static assertStaticSharedLibraryIsValid(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1a

    .line 6
    .line 7
    if-lt v0, v1, :cond_d

    .line 8
    .line 9
    and-int/lit16 p1, p1, 0x2000

    .line 10
    .line 11
    if-nez p1, :cond_c

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_b

    .line 22
    .line 23
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_a

    .line 32
    .line 33
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_9

    .line 38
    .line 39
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_8

    .line 48
    .line 49
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_7

    .line 58
    .line 59
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_6

    .line 68
    .line 69
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_1

    .line 118
    .line 119
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    if-nez p0, :cond_0

    .line 124
    .line 125
    return-void

    .line 126
    :cond_0
    const-string p0, "Static shared libs cannot be overlay targets"

    .line 127
    .line 128
    const/16 p1, -0x23

    .line 129
    .line 130
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    throw p0

    .line 135
    :cond_1
    const-string p0, "Static shared libs cannot declare protected broadcasts"

    .line 136
    .line 137
    const/16 p1, -0x22

    .line 138
    .line 139
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    throw p0

    .line 144
    :cond_2
    const-string p0, "Static shared libs cannot declare permissions"

    .line 145
    .line 146
    const/16 p1, -0x21

    .line 147
    .line 148
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    throw p0

    .line 153
    :cond_3
    const-string p0, "Static shared libs cannot declare features"

    .line 154
    .line 155
    const/16 p1, -0x20

    .line 156
    .line 157
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    throw p0

    .line 162
    :cond_4
    const-string p0, "Static shared libs cannot declare permission groups"

    .line 163
    .line 164
    const/16 p1, -0x1f

    .line 165
    .line 166
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    throw p0

    .line 171
    :cond_5
    const-string p0, "Static shared libs cannot declare broadcast receivers"

    .line 172
    .line 173
    const/16 p1, -0x1e

    .line 174
    .line 175
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    throw p0

    .line 180
    :cond_6
    const-string p0, "Static shared libs cannot declare content providers"

    .line 181
    .line 182
    const/16 p1, -0x1d

    .line 183
    .line 184
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    throw p0

    .line 189
    :cond_7
    const-string p0, "Static shared libs cannot declare services"

    .line 190
    .line 191
    const/16 p1, -0x1c

    .line 192
    .line 193
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    throw p0

    .line 198
    :cond_8
    const-string p0, "Static shared libs cannot declare activities"

    .line 199
    .line 200
    const/16 p1, -0x1b

    .line 201
    .line 202
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    throw p0

    .line 207
    :cond_9
    const-string p0, "Packages declaring static-shared libs cannot declare shared users"

    .line 208
    .line 209
    const/16 p1, -0x1a

    .line 210
    .line 211
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    throw p0

    .line 216
    :cond_a
    const-string p0, "Packages declaring static-shared libs cannot declare dynamic libs"

    .line 217
    .line 218
    const/16 p1, -0x19

    .line 219
    .line 220
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    throw p0

    .line 225
    :cond_b
    const-string p0, "Packages declaring static-shared libs cannot be renamed"

    .line 226
    .line 227
    const/16 p1, -0x18

    .line 228
    .line 229
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    throw p0

    .line 234
    :cond_c
    const-string p0, "Packages declaring static-shared libs cannot be instant apps"

    .line 235
    .line 236
    const/16 p1, -0x17

    .line 237
    .line 238
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    throw p0

    .line 243
    :cond_d
    const-string p0, "Packages declaring static-shared libs must target O SDK or higher"

    .line 244
    .line 245
    const/16 p1, -0x16

    .line 246
    .line 247
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    throw p0
.end method

.method public static getVendorPartitionVersion()I
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.vndk.version"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return v0

    .line 19
    :catch_0
    sget-object v1, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/16 v0, 0x2710

    .line 28
    .line 29
    return v0

    .line 30
    :cond_0
    const/16 v0, 0x1c

    .line 31
    .line 32
    return v0
.end method

.method public static scanPackageOnlyLI(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;
    .locals 81
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v3, p3

    .line 6
    .line 7
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerServiceInjector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    .line 8
    .line 9
    iget-object v15, v2, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 10
    .line 11
    iget-object v8, v2, Lcom/android/server/pm/ScanRequest;->mUser:Landroid/os/UserHandle;

    .line 12
    .line 13
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_LDU:Z

    .line 14
    .line 15
    const-string v13, "PackageManager"

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v9, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    .line 24
    .line 25
    if-nez v9, :cond_0

    .line 26
    .line 27
    const-string v9, "/system/etc/ldu_blocklist.xml"

    .line 28
    .line 29
    invoke-static {v9}, Lcom/samsung/android/server/pm/install/PmConfigParser;->parsePackages(Ljava/lang/String;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    new-instance v10, Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-direct {v10, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    sput-object v10, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    .line 39
    .line 40
    :cond_0
    sget-object v9, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-virtual {v9, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "This package ["

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "] is forbidden to install"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v2, "This package "

    .line 80
    .line 81
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, " is forbidden to install"

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const/16 v2, -0x6e

    .line 101
    .line 102
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_2
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 107
    .line 108
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget v12, v2, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    .line 116
    .line 117
    and-int/lit16 v9, v12, 0x1000

    .line 118
    .line 119
    if-eqz v9, :cond_3

    .line 120
    .line 121
    const/4 v9, 0x1

    .line 122
    goto :goto_1

    .line 123
    :cond_3
    const/4 v9, 0x0

    .line 124
    :goto_1
    const/high16 v10, 0x4000000

    .line 125
    .line 126
    and-int/2addr v10, v12

    .line 127
    if-eqz v10, :cond_4

    .line 128
    .line 129
    const/16 v23, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    const/16 v23, 0x0

    .line 133
    .line 134
    :goto_2
    iget-object v6, v2, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 135
    .line 136
    if-nez v9, :cond_7

    .line 137
    .line 138
    if-eqz v6, :cond_5

    .line 139
    .line 140
    iget-object v11, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 141
    .line 142
    if-eqz v11, :cond_6

    .line 143
    .line 144
    invoke-interface {v11}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStub()Z

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    if-eqz v11, :cond_6

    .line 149
    .line 150
    :cond_5
    const/4 v7, 0x0

    .line 151
    const/4 v9, 0x1

    .line 152
    :goto_3
    const/4 v11, 0x0

    .line 153
    goto :goto_4

    .line 154
    :cond_6
    iget-object v11, v6, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 155
    .line 156
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_7
    const/4 v7, 0x0

    .line 160
    goto :goto_3

    .line 161
    :goto_4
    const-string v5, " shared user changed from "

    .line 162
    .line 163
    const-string v3, "Package "

    .line 164
    .line 165
    const-string v4, " to "

    .line 166
    .line 167
    const-string v16, "<nothing>"

    .line 168
    .line 169
    move-object/from16 v24, v7

    .line 170
    .line 171
    iget-object v7, v2, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 172
    .line 173
    move-object/from16 v25, v11

    .line 174
    .line 175
    iget-object v11, v2, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 176
    .line 177
    if-eqz v6, :cond_a

    .line 178
    .line 179
    if-eq v7, v11, :cond_a

    .line 180
    .line 181
    move-object/from16 v26, v14

    .line 182
    .line 183
    new-instance v14, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    move/from16 v27, v9

    .line 189
    .line 190
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    if-eqz v7, :cond_8

    .line 201
    .line 202
    iget-object v9, v7, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_8
    move-object/from16 v9, v16

    .line 206
    .line 207
    :goto_5
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    if-eqz v11, :cond_9

    .line 214
    .line 215
    iget-object v9, v11, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 216
    .line 217
    move/from16 v28, v10

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_9
    move/from16 v28, v10

    .line 221
    .line 222
    move-object/from16 v9, v16

    .line 223
    .line 224
    :goto_6
    const-string v10, "; replacing with new"

    .line 225
    .line 226
    invoke-static {v14, v9, v10}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 231
    .line 232
    const/4 v10, 0x5

    .line 233
    invoke-static {v10, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const/16 v9, 0x10

    .line 237
    .line 238
    invoke-virtual {v6, v9}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    move v9, v6

    .line 243
    const/4 v6, 0x0

    .line 244
    goto :goto_7

    .line 245
    :cond_a
    move/from16 v27, v9

    .line 246
    .line 247
    move/from16 v28, v10

    .line 248
    .line 249
    move-object/from16 v26, v14

    .line 250
    .line 251
    const/4 v9, 0x0

    .line 252
    :goto_7
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v10

    .line 256
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 257
    .line 258
    .line 259
    move-result v10

    .line 260
    if-nez v10, :cond_b

    .line 261
    .line 262
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 267
    .line 268
    .line 269
    move-result v10

    .line 270
    new-array v10, v10, [Ljava/lang/String;

    .line 271
    .line 272
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v14

    .line 276
    invoke-interface {v14, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_b
    const/4 v10, 0x0

    .line 281
    :goto_8
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object v14

    .line 285
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 286
    .line 287
    .line 288
    move-result v14

    .line 289
    if-nez v14, :cond_c

    .line 290
    .line 291
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    .line 292
    .line 293
    .line 294
    move-result-object v14

    .line 295
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 296
    .line 297
    .line 298
    move-result v14

    .line 299
    new-array v14, v14, [Ljava/lang/String;

    .line 300
    .line 301
    move-object/from16 v29, v13

    .line 302
    .line 303
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    .line 304
    .line 305
    .line 306
    move-result-object v13

    .line 307
    invoke-interface {v13, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    goto :goto_9

    .line 311
    :cond_c
    move-object/from16 v29, v13

    .line 312
    .line 313
    const/4 v14, 0x0

    .line 314
    :goto_9
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerServiceInjector;->mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 315
    .line 316
    move-object/from16 v30, v4

    .line 317
    .line 318
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 319
    .line 320
    invoke-virtual {v13, v4, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    check-cast v4, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 325
    .line 326
    check-cast v4, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 327
    .line 328
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    if-nez v6, :cond_d

    .line 336
    .line 337
    const/16 v31, 0x1

    .line 338
    .line 339
    goto :goto_a

    .line 340
    :cond_d
    const/16 v31, 0x0

    .line 341
    .line 342
    :goto_a
    const-string v13, " package "

    .line 343
    .line 344
    const-string v32, " system"

    .line 345
    .line 346
    const-string v1, "Update"

    .line 347
    .line 348
    move-object/from16 v33, v13

    .line 349
    .line 350
    const-string v13, ""

    .line 351
    .line 352
    move-object/from16 v34, v13

    .line 353
    .line 354
    iget-object v13, v2, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 355
    .line 356
    move-object/from16 v35, v1

    .line 357
    .line 358
    iget-object v1, v2, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 359
    .line 360
    if-eqz v31, :cond_22

    .line 361
    .line 362
    and-int/lit16 v3, v12, 0x2000

    .line 363
    .line 364
    if-eqz v3, :cond_e

    .line 365
    .line 366
    const/4 v3, 0x1

    .line 367
    goto :goto_b

    .line 368
    :cond_e
    const/4 v3, 0x0

    .line 369
    :goto_b
    const v5, 0x8000

    .line 370
    .line 371
    .line 372
    and-int/2addr v5, v12

    .line 373
    if-eqz v5, :cond_f

    .line 374
    .line 375
    const/4 v5, 0x1

    .line 376
    goto :goto_c

    .line 377
    :cond_f
    const/4 v5, 0x0

    .line 378
    :goto_c
    const/high16 v6, 0x8000000

    .line 379
    .line 380
    and-int/2addr v6, v12

    .line 381
    move-object/from16 v62, v7

    .line 382
    .line 383
    move/from16 v63, v12

    .line 384
    .line 385
    if-eqz v6, :cond_10

    .line 386
    .line 387
    const/4 v6, 0x1

    .line 388
    :goto_d
    const/4 v7, 0x0

    .line 389
    goto :goto_e

    .line 390
    :cond_10
    const/4 v6, 0x0

    .line 391
    goto :goto_d

    .line 392
    :goto_e
    invoke-static {v15, v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    .line 393
    .line 394
    .line 395
    move-result v12

    .line 396
    invoke-static {v15}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I

    .line 397
    .line 398
    .line 399
    move-result v7

    .line 400
    move/from16 v64, v9

    .line 401
    .line 402
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v9

    .line 406
    move-object/from16 v65, v13

    .line 407
    .line 408
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v13

    .line 412
    move-object/from16 v16, v15

    .line 413
    .line 414
    check-cast v16, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 415
    .line 416
    move/from16 v36, v6

    .line 417
    .line 418
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v6

    .line 422
    move/from16 v66, v5

    .line 423
    .line 424
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getSecondaryCpuAbi()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    move/from16 v67, v3

    .line 429
    .line 430
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    .line 431
    .line 432
    .line 433
    move-result-wide v2

    .line 434
    move-object/from16 v68, v11

    .line 435
    .line 436
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 437
    .line 438
    .line 439
    move-result-object v11

    .line 440
    move-object/from16 v69, v11

    .line 441
    .line 442
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesVersionsMajor()[J

    .line 443
    .line 444
    .line 445
    move-result-object v11

    .line 446
    move-object/from16 v70, v8

    .line 447
    .line 448
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesOptional()[Z

    .line 449
    .line 450
    .line 451
    move-result-object v8

    .line 452
    move/from16 v21, v7

    .line 453
    .line 454
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibrariesVersions()[J

    .line 455
    .line 456
    .line 457
    move-result-object v7

    .line 458
    move/from16 v37, v12

    .line 459
    .line 460
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMimeGroups()Ljava/util/Set;

    .line 461
    .line 462
    .line 463
    move-result-object v12

    .line 464
    move-object/from16 v38, v12

    .line 465
    .line 466
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    .line 467
    .line 468
    .line 469
    move-result v12

    .line 470
    move/from16 v39, v12

    .line 471
    .line 472
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRestrictUpdateHash()[B

    .line 473
    .line 474
    .line 475
    move-result-object v12

    .line 476
    if-eqz v1, :cond_11

    .line 477
    .line 478
    move-object/from16 v71, v15

    .line 479
    .line 480
    new-instance v15, Lcom/android/server/pm/PackageSetting;

    .line 481
    .line 482
    move-object/from16 v40, v12

    .line 483
    .line 484
    const/4 v12, 0x0

    .line 485
    invoke-direct {v15, v1, v12}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    .line 486
    .line 487
    .line 488
    iput-object v9, v15, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 489
    .line 490
    invoke-virtual {v15, v0}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    .line 491
    .line 492
    .line 493
    move-result-object v9

    .line 494
    iput-object v13, v9, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 495
    .line 496
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 497
    .line 498
    .line 499
    iput-object v6, v9, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 500
    .line 501
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 502
    .line 503
    .line 504
    iput-object v5, v9, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 505
    .line 506
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 507
    .line 508
    .line 509
    new-instance v5, Lcom/android/server/pm/PackageSignatures;

    .line 510
    .line 511
    invoke-direct {v5}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    .line 512
    .line 513
    .line 514
    iput-object v5, v9, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 515
    .line 516
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 517
    .line 518
    .line 519
    iput-wide v2, v9, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 520
    .line 521
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 522
    .line 523
    .line 524
    iput-object v10, v9, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 525
    .line 526
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 527
    .line 528
    .line 529
    iput-object v11, v9, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 530
    .line 531
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 532
    .line 533
    .line 534
    iput-object v8, v9, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    .line 535
    .line 536
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 537
    .line 538
    .line 539
    iput-object v14, v9, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 540
    .line 541
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 542
    .line 543
    .line 544
    iput-object v7, v9, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 545
    .line 546
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 550
    .line 551
    .line 552
    move-result-wide v2

    .line 553
    iput-wide v2, v9, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 554
    .line 555
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 556
    .line 557
    .line 558
    iput-object v4, v9, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 559
    .line 560
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 561
    .line 562
    .line 563
    move/from16 v12, v39

    .line 564
    .line 565
    iput v12, v9, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 566
    .line 567
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 568
    .line 569
    .line 570
    move-object/from16 v15, v40

    .line 571
    .line 572
    iput-object v15, v9, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 573
    .line 574
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 575
    .line 576
    .line 577
    move/from16 v0, v37

    .line 578
    .line 579
    iput v0, v9, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 580
    .line 581
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 582
    .line 583
    .line 584
    move/from16 v0, v21

    .line 585
    .line 586
    invoke-virtual {v9, v0}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    .line 587
    .line 588
    .line 589
    const/16 v7, 0x8

    .line 590
    .line 591
    move-object/from16 v72, v1

    .line 592
    .line 593
    move-object/from16 v8, v65

    .line 594
    .line 595
    move-object/from16 v2, v68

    .line 596
    .line 597
    move-object/from16 v1, p0

    .line 598
    .line 599
    goto/16 :goto_1a

    .line 600
    .line 601
    :cond_11
    move-object/from16 v71, v15

    .line 602
    .line 603
    move-object v15, v12

    .line 604
    move/from16 v12, v39

    .line 605
    .line 606
    if-eqz v70, :cond_12

    .line 607
    .line 608
    invoke-virtual/range {v70 .. v70}, Landroid/os/UserHandle;->getIdentifier()I

    .line 609
    .line 610
    .line 611
    move-result v16

    .line 612
    move-wide/from16 v79, v2

    .line 613
    .line 614
    move/from16 v2, v16

    .line 615
    .line 616
    move-wide/from16 v16, v79

    .line 617
    .line 618
    goto :goto_f

    .line 619
    :cond_12
    move-wide/from16 v16, v2

    .line 620
    .line 621
    const/4 v2, 0x0

    .line 622
    :goto_f
    new-instance v3, Lcom/android/server/pm/PackageSetting;

    .line 623
    .line 624
    move-object/from16 v72, v1

    .line 625
    .line 626
    move/from16 v75, v2

    .line 627
    .line 628
    move-wide/from16 v73, v16

    .line 629
    .line 630
    move-object/from16 v1, p0

    .line 631
    .line 632
    iget-object v2, v1, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    .line 633
    .line 634
    move-object/from16 v16, v3

    .line 635
    .line 636
    move-object/from16 v17, v9

    .line 637
    .line 638
    move-object/from16 v18, v2

    .line 639
    .line 640
    move-object/from16 v19, v0

    .line 641
    .line 642
    move/from16 v20, v37

    .line 643
    .line 644
    move-object/from16 v22, v4

    .line 645
    .line 646
    invoke-direct/range {v16 .. v22}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V

    .line 647
    .line 648
    .line 649
    iput-object v10, v3, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 650
    .line 651
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 652
    .line 653
    .line 654
    iput-object v11, v3, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 655
    .line 656
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 657
    .line 658
    .line 659
    iput-object v8, v3, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    .line 660
    .line 661
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 662
    .line 663
    .line 664
    iput-object v14, v3, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 665
    .line 666
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 667
    .line 668
    .line 669
    iput-object v7, v3, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 670
    .line 671
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 672
    .line 673
    .line 674
    iput-object v13, v3, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 675
    .line 676
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 677
    .line 678
    .line 679
    iput-object v6, v3, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 680
    .line 681
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 682
    .line 683
    .line 684
    iput-object v5, v3, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 685
    .line 686
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 687
    .line 688
    .line 689
    move-wide/from16 v4, v73

    .line 690
    .line 691
    iput-wide v4, v3, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 692
    .line 693
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 694
    .line 695
    .line 696
    if-nez v38, :cond_13

    .line 697
    .line 698
    const/4 v2, 0x0

    .line 699
    goto :goto_10

    .line 700
    :cond_13
    new-instance v2, Lcom/android/server/pm/Settings$KeySetToValueMap;

    .line 701
    .line 702
    new-instance v4, Landroid/util/ArraySet;

    .line 703
    .line 704
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 705
    .line 706
    .line 707
    move-object/from16 v5, v38

    .line 708
    .line 709
    invoke-direct {v2, v5, v4}, Lcom/android/server/pm/Settings$KeySetToValueMap;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    .line 710
    .line 711
    .line 712
    :goto_10
    if-eqz v2, :cond_14

    .line 713
    .line 714
    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 718
    .line 719
    .line 720
    :cond_14
    iput v12, v3, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 721
    .line 722
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 723
    .line 724
    .line 725
    iput-object v15, v3, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 726
    .line 727
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 731
    .line 732
    .line 733
    move-result-wide v4

    .line 734
    iput-wide v4, v3, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 735
    .line 736
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 737
    .line 738
    .line 739
    move-object/from16 v2, v68

    .line 740
    .line 741
    if-eqz v68, :cond_15

    .line 742
    .line 743
    iget v0, v2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 744
    .line 745
    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    .line 746
    .line 747
    .line 748
    :cond_15
    const/4 v4, 0x1

    .line 749
    and-int/lit8 v0, v37, 0x1

    .line 750
    .line 751
    if-nez v0, :cond_1a

    .line 752
    .line 753
    move-object/from16 v0, v69

    .line 754
    .line 755
    const/4 v4, 0x0

    .line 756
    invoke-static {v0, v4, v4}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    .line 757
    .line 758
    .line 759
    move-result-object v5

    .line 760
    if-eqz v5, :cond_19

    .line 761
    .line 762
    check-cast v5, Ljava/util/ArrayList;

    .line 763
    .line 764
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 765
    .line 766
    .line 767
    move-result-object v4

    .line 768
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 769
    .line 770
    .line 771
    move-result v5

    .line 772
    if-eqz v5, :cond_19

    .line 773
    .line 774
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v5

    .line 778
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 779
    .line 780
    move/from16 v6, v75

    .line 781
    .line 782
    if-eqz v70, :cond_18

    .line 783
    .line 784
    const/4 v7, -0x1

    .line 785
    if-ne v6, v7, :cond_16

    .line 786
    .line 787
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    .line 788
    .line 789
    const-string/jumbo v8, "no_debugging_features"

    .line 790
    .line 791
    .line 792
    invoke-virtual {v0, v8, v7}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 793
    .line 794
    .line 795
    move-result v7

    .line 796
    if-nez v7, :cond_16

    .line 797
    .line 798
    iget-boolean v7, v5, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 799
    .line 800
    if-eqz v7, :cond_18

    .line 801
    .line 802
    :cond_16
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    .line 803
    .line 804
    if-ne v6, v7, :cond_17

    .line 805
    .line 806
    goto :goto_12

    .line 807
    :cond_17
    const/16 v43, 0x0

    .line 808
    .line 809
    goto :goto_13

    .line 810
    :cond_18
    :goto_12
    const/16 v43, 0x1

    .line 811
    .line 812
    :goto_13
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 813
    .line 814
    move/from16 v37, v5

    .line 815
    .line 816
    const/16 v60, 0x0

    .line 817
    .line 818
    const/16 v61, 0x0

    .line 819
    .line 820
    const-wide/16 v38, 0x0

    .line 821
    .line 822
    const-wide/16 v40, 0x0

    .line 823
    .line 824
    const/16 v42, 0x0

    .line 825
    .line 826
    const/16 v44, 0x1

    .line 827
    .line 828
    const/16 v45, 0x1

    .line 829
    .line 830
    const/16 v46, 0x0

    .line 831
    .line 832
    const/16 v47, 0x0

    .line 833
    .line 834
    const/16 v48, 0x0

    .line 835
    .line 836
    const/16 v51, 0x0

    .line 837
    .line 838
    const/16 v52, 0x0

    .line 839
    .line 840
    const/16 v53, 0x0

    .line 841
    .line 842
    const/16 v54, 0x0

    .line 843
    .line 844
    const/16 v55, 0x0

    .line 845
    .line 846
    const/16 v56, 0x0

    .line 847
    .line 848
    const/16 v57, 0x0

    .line 849
    .line 850
    const-wide/16 v58, 0x0

    .line 851
    .line 852
    move-object/from16 v36, v3

    .line 853
    .line 854
    move/from16 v49, v67

    .line 855
    .line 856
    move/from16 v50, v66

    .line 857
    .line 858
    invoke-virtual/range {v36 .. v61}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V

    .line 859
    .line 860
    .line 861
    move/from16 v75, v6

    .line 862
    .line 863
    goto :goto_11

    .line 864
    :cond_19
    const/16 v7, 0x8

    .line 865
    .line 866
    goto :goto_14

    .line 867
    :cond_1a
    move-object/from16 v0, v69

    .line 868
    .line 869
    move/from16 v6, v75

    .line 870
    .line 871
    if-eqz v36, :cond_19

    .line 872
    .line 873
    invoke-virtual {v3, v6}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 874
    .line 875
    .line 876
    move-result-object v4

    .line 877
    const/4 v5, 0x2

    .line 878
    const/4 v6, 0x1

    .line 879
    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 886
    .line 887
    .line 888
    const/16 v7, 0x8

    .line 889
    .line 890
    invoke-virtual {v3, v7, v6}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 894
    .line 895
    .line 896
    :goto_14
    if-eqz v2, :cond_1c

    .line 897
    .line 898
    iget v0, v2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 899
    .line 900
    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V

    .line 901
    .line 902
    .line 903
    :cond_1b
    move-object/from16 v8, v65

    .line 904
    .line 905
    goto/16 :goto_19

    .line 906
    .line 907
    :cond_1c
    if-eqz v65, :cond_1b

    .line 908
    .line 909
    new-instance v4, Lcom/android/server/pm/PackageSignatures;

    .line 910
    .line 911
    move-object/from16 v8, v65

    .line 912
    .line 913
    iget-object v5, v8, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 914
    .line 915
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 916
    .line 917
    .line 918
    if-eqz v5, :cond_1d

    .line 919
    .line 920
    iget-object v6, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 921
    .line 922
    sget-object v9, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 923
    .line 924
    if-eq v6, v9, :cond_1d

    .line 925
    .line 926
    new-instance v6, Landroid/content/pm/SigningDetails;

    .line 927
    .line 928
    iget-object v5, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 929
    .line 930
    invoke-direct {v6, v5}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    .line 931
    .line 932
    .line 933
    iput-object v6, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 934
    .line 935
    goto :goto_15

    .line 936
    :cond_1d
    sget-object v5, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 937
    .line 938
    iput-object v5, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 939
    .line 940
    :goto_15
    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 941
    .line 942
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 943
    .line 944
    .line 945
    iget v4, v8, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 946
    .line 947
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V

    .line 948
    .line 949
    .line 950
    iget-object v4, v3, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 951
    .line 952
    iget-object v5, v8, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 953
    .line 954
    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V

    .line 955
    .line 956
    .line 957
    const/4 v4, 0x0

    .line 958
    invoke-static {v0, v4, v4}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    .line 959
    .line 960
    .line 961
    move-result-object v0

    .line 962
    if-eqz v0, :cond_20

    .line 963
    .line 964
    check-cast v0, Ljava/util/ArrayList;

    .line 965
    .line 966
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 967
    .line 968
    .line 969
    move-result-object v0

    .line 970
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 971
    .line 972
    .line 973
    move-result v4

    .line 974
    if-eqz v4, :cond_20

    .line 975
    .line 976
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    move-result-object v4

    .line 980
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 981
    .line 982
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 983
    .line 984
    invoke-virtual {v8, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 985
    .line 986
    .line 987
    move-result-object v5

    .line 988
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    .line 989
    .line 990
    .line 991
    move-result-object v5

    .line 992
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 993
    .line 994
    .line 995
    move-result-object v6

    .line 996
    if-eqz v5, :cond_1e

    .line 997
    .line 998
    iget-object v5, v5, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 999
    .line 1000
    goto :goto_17

    .line 1001
    :cond_1e
    const/4 v5, 0x0

    .line 1002
    :goto_17
    invoke-virtual {v6, v5}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)V

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v8, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v5

    .line 1012
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v5

    .line 1016
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v4

    .line 1020
    if-eqz v5, :cond_1f

    .line 1021
    .line 1022
    iget-object v5, v5, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 1023
    .line 1024
    goto :goto_18

    .line 1025
    :cond_1f
    const/4 v5, 0x0

    .line 1026
    :goto_18
    invoke-virtual {v4, v5}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1030
    .line 1031
    .line 1032
    goto :goto_16

    .line 1033
    :cond_20
    :goto_19
    move-object v9, v3

    .line 1034
    :goto_1a
    if-eqz v64, :cond_21

    .line 1035
    .line 1036
    const/4 v3, 0x1

    .line 1037
    const/16 v4, 0x10

    .line 1038
    .line 1039
    invoke-virtual {v9, v4, v3}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1043
    .line 1044
    .line 1045
    :cond_21
    move-object/from16 v68, v2

    .line 1046
    .line 1047
    move-object v4, v9

    .line 1048
    move-object/from16 v2, v29

    .line 1049
    .line 1050
    move-object/from16 v3, v30

    .line 1051
    .line 1052
    const/4 v7, 0x0

    .line 1053
    goto/16 :goto_26

    .line 1054
    .line 1055
    :cond_22
    move-object/from16 v72, v1

    .line 1056
    .line 1057
    move-object v1, v2

    .line 1058
    move-object/from16 v62, v7

    .line 1059
    .line 1060
    move-object/from16 v70, v8

    .line 1061
    .line 1062
    move-object v2, v11

    .line 1063
    move/from16 v63, v12

    .line 1064
    .line 1065
    move-object v8, v13

    .line 1066
    move-object/from16 v71, v15

    .line 1067
    .line 1068
    const/16 v7, 0x8

    .line 1069
    .line 1070
    new-instance v9, Lcom/android/server/pm/PackageSetting;

    .line 1071
    .line 1072
    const/4 v11, 0x0

    .line 1073
    invoke-direct {v9, v6, v11}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    .line 1074
    .line 1075
    .line 1076
    move-object/from16 v15, v71

    .line 1077
    .line 1078
    check-cast v15, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 1079
    .line 1080
    iput-object v15, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 1081
    .line 1082
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1083
    .line 1084
    .line 1085
    move/from16 v6, v63

    .line 1086
    .line 1087
    and-int/lit16 v11, v6, 0x400

    .line 1088
    .line 1089
    if-eqz v11, :cond_23

    .line 1090
    .line 1091
    const/4 v11, 0x1

    .line 1092
    goto :goto_1b

    .line 1093
    :cond_23
    const/4 v11, 0x0

    .line 1094
    :goto_1b
    invoke-interface/range {v71 .. v71}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryDir()Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v12

    .line 1098
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v13

    .line 1102
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v15

    .line 1106
    move-object/from16 v7, v71

    .line 1107
    .line 1108
    invoke-static {v7, v9}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    .line 1109
    .line 1110
    .line 1111
    move-result v17

    .line 1112
    invoke-static {v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I

    .line 1113
    .line 1114
    .line 1115
    move-result v1

    .line 1116
    move/from16 v63, v6

    .line 1117
    .line 1118
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v6

    .line 1122
    move/from16 v18, v1

    .line 1123
    .line 1124
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesVersionsMajor()[J

    .line 1125
    .line 1126
    .line 1127
    move-result-object v1

    .line 1128
    move-object/from16 v19, v14

    .line 1129
    .line 1130
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesOptional()[Z

    .line 1131
    .line 1132
    .line 1133
    move-result-object v14

    .line 1134
    move-object/from16 v20, v14

    .line 1135
    .line 1136
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibrariesVersions()[J

    .line 1137
    .line 1138
    .line 1139
    move-result-object v14

    .line 1140
    move-object/from16 v21, v14

    .line 1141
    .line 1142
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMimeGroups()Ljava/util/Set;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v14

    .line 1146
    move-object/from16 v22, v1

    .line 1147
    .line 1148
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    .line 1149
    .line 1150
    .line 1151
    move-result v1

    .line 1152
    move-object/from16 v36, v10

    .line 1153
    .line 1154
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRestrictUpdateHash()[B

    .line 1155
    .line 1156
    .line 1157
    move-result-object v10

    .line 1158
    iget-object v7, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 1159
    .line 1160
    move-object/from16 v37, v10

    .line 1161
    .line 1162
    iget-object v10, v9, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 1163
    .line 1164
    if-eqz v2, :cond_26

    .line 1165
    .line 1166
    move/from16 v38, v1

    .line 1167
    .line 1168
    move-object/from16 v1, v62

    .line 1169
    .line 1170
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1171
    .line 1172
    .line 1173
    move-result v39

    .line 1174
    if-nez v39, :cond_25

    .line 1175
    .line 1176
    invoke-static {v3, v7, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v0

    .line 1180
    if-eqz v1, :cond_24

    .line 1181
    .line 1182
    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 1183
    .line 1184
    goto :goto_1c

    .line 1185
    :cond_24
    move-object/from16 v1, v16

    .line 1186
    .line 1187
    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    .line 1189
    .line 1190
    move-object/from16 v3, v30

    .line 1191
    .line 1192
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    .line 1194
    .line 1195
    iget-object v1, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 1196
    .line 1197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v0

    .line 1204
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1205
    .line 1206
    const/4 v1, 0x5

    .line 1207
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 1208
    .line 1209
    .line 1210
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 1211
    .line 1212
    const-string v1, "Updating application package "

    .line 1213
    .line 1214
    const-string v2, " failed"

    .line 1215
    .line 1216
    invoke-static {v1, v7, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v1

    .line 1220
    const/16 v2, -0x18

    .line 1221
    .line 1222
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 1223
    .line 1224
    .line 1225
    throw v0

    .line 1226
    :cond_25
    move-object/from16 v3, v30

    .line 1227
    .line 1228
    iget v5, v2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 1229
    .line 1230
    invoke-virtual {v9, v5}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    .line 1231
    .line 1232
    .line 1233
    goto :goto_1d

    .line 1234
    :cond_26
    move/from16 v38, v1

    .line 1235
    .line 1236
    move-object/from16 v3, v30

    .line 1237
    .line 1238
    move-object/from16 v1, v62

    .line 1239
    .line 1240
    const/4 v5, -0x1

    .line 1241
    invoke-virtual {v9, v5}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    .line 1242
    .line 1243
    .line 1244
    :goto_1d
    invoke-virtual {v10, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 1245
    .line 1246
    .line 1247
    move-result v5

    .line 1248
    if-nez v5, :cond_2c

    .line 1249
    .line 1250
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 1251
    .line 1252
    .line 1253
    move-result v5

    .line 1254
    move-object/from16 v62, v1

    .line 1255
    .line 1256
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1257
    .line 1258
    move-object/from16 v68, v2

    .line 1259
    .line 1260
    move-object/from16 v2, v35

    .line 1261
    .line 1262
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1263
    .line 1264
    .line 1265
    move-object/from16 v16, v4

    .line 1266
    .line 1267
    if-eqz v5, :cond_27

    .line 1268
    .line 1269
    move-object/from16 v2, v32

    .line 1270
    .line 1271
    goto :goto_1e

    .line 1272
    :cond_27
    move-object/from16 v2, v34

    .line 1273
    .line 1274
    :goto_1e
    const-string v4, " code path from "

    .line 1275
    .line 1276
    move-object/from16 v30, v14

    .line 1277
    .line 1278
    move-object/from16 v14, v33

    .line 1279
    .line 1280
    invoke-static {v1, v2, v14, v7, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    .line 1282
    .line 1283
    iget-object v2, v9, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 1284
    .line 1285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    .line 1290
    .line 1291
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v2

    .line 1295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    .line 1297
    .line 1298
    const-string v2, "; Retain data and using new"

    .line 1299
    .line 1300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v1

    .line 1307
    move-object/from16 v2, v29

    .line 1308
    .line 1309
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    .line 1311
    .line 1312
    if-nez v5, :cond_2b

    .line 1313
    .line 1314
    const/4 v1, 0x1

    .line 1315
    and-int/lit8 v4, v17, 0x1

    .line 1316
    .line 1317
    if-eqz v4, :cond_2a

    .line 1318
    .line 1319
    if-nez v8, :cond_2a

    .line 1320
    .line 1321
    const/4 v1, 0x0

    .line 1322
    invoke-static {v6, v1, v1}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v4

    .line 1326
    if-eqz v4, :cond_2a

    .line 1327
    .line 1328
    check-cast v4, Ljava/util/ArrayList;

    .line 1329
    .line 1330
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v1

    .line 1334
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1335
    .line 1336
    .line 1337
    move-result v4

    .line 1338
    if-eqz v4, :cond_2a

    .line 1339
    .line 1340
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v4

    .line 1344
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1345
    .line 1346
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 1347
    .line 1348
    .line 1349
    move-result v5

    .line 1350
    if-nez v5, :cond_29

    .line 1351
    .line 1352
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    .line 1353
    .line 1354
    .line 1355
    move-result v5

    .line 1356
    if-eqz v5, :cond_28

    .line 1357
    .line 1358
    goto :goto_20

    .line 1359
    :cond_28
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1360
    .line 1361
    const/4 v6, 0x1

    .line 1362
    invoke-virtual {v9, v5, v6}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 1363
    .line 1364
    .line 1365
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1366
    .line 1367
    const/4 v5, 0x0

    .line 1368
    invoke-virtual {v9, v5, v4}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 1369
    .line 1370
    .line 1371
    goto :goto_1f

    .line 1372
    :cond_29
    :goto_20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1373
    .line 1374
    const-string v6, "User "

    .line 1375
    .line 1376
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1377
    .line 1378
    .line 1379
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1380
    .line 1381
    move-object/from16 v29, v1

    .line 1382
    .line 1383
    const-string v1, " is Premium container. do not set install flag. / "

    .line 1384
    .line 1385
    move-object/from16 v33, v14

    .line 1386
    .line 1387
    const-string v14, " / installed = "

    .line 1388
    .line 1389
    invoke-static {v6, v1, v7, v14, v5}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1390
    .line 1391
    .line 1392
    iget v1, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1393
    .line 1394
    invoke-virtual {v9, v1}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 1395
    .line 1396
    .line 1397
    move-result v1

    .line 1398
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v1

    .line 1405
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    .line 1407
    .line 1408
    move-object/from16 v1, v29

    .line 1409
    .line 1410
    move-object/from16 v14, v33

    .line 1411
    .line 1412
    goto :goto_1f

    .line 1413
    :cond_2a
    move-object/from16 v33, v14

    .line 1414
    .line 1415
    iput-object v12, v9, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 1416
    .line 1417
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1418
    .line 1419
    .line 1420
    goto :goto_21

    .line 1421
    :cond_2b
    move-object/from16 v33, v14

    .line 1422
    .line 1423
    :goto_21
    invoke-virtual {v9, v0}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    .line 1424
    .line 1425
    .line 1426
    if-eqz v11, :cond_2d

    .line 1427
    .line 1428
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->improveInstallDontKill()Z

    .line 1429
    .line 1430
    .line 1431
    move-result v0

    .line 1432
    if-eqz v0, :cond_2d

    .line 1433
    .line 1434
    invoke-virtual {v9, v10}, Lcom/android/server/pm/PackageSetting;->addOldPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    .line 1435
    .line 1436
    .line 1437
    goto :goto_22

    .line 1438
    :cond_2c
    move-object/from16 v62, v1

    .line 1439
    .line 1440
    move-object/from16 v68, v2

    .line 1441
    .line 1442
    move-object/from16 v16, v4

    .line 1443
    .line 1444
    move-object/from16 v30, v14

    .line 1445
    .line 1446
    move-object/from16 v2, v29

    .line 1447
    .line 1448
    :cond_2d
    :goto_22
    iput-object v13, v9, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 1449
    .line 1450
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1451
    .line 1452
    .line 1453
    iput-object v15, v9, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 1454
    .line 1455
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1456
    .line 1457
    .line 1458
    move-object/from16 v0, v30

    .line 1459
    .line 1460
    invoke-virtual {v9, v0}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)V

    .line 1461
    .line 1462
    .line 1463
    move-object/from16 v0, v16

    .line 1464
    .line 1465
    iput-object v0, v9, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 1466
    .line 1467
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1468
    .line 1469
    .line 1470
    move/from16 v0, v38

    .line 1471
    .line 1472
    iput v0, v9, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 1473
    .line 1474
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1475
    .line 1476
    .line 1477
    move-object/from16 v0, v37

    .line 1478
    .line 1479
    iput-object v0, v9, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 1480
    .line 1481
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1482
    .line 1483
    .line 1484
    if-eqz v36, :cond_2e

    .line 1485
    .line 1486
    if-eqz v22, :cond_2e

    .line 1487
    .line 1488
    if-eqz v20, :cond_2e

    .line 1489
    .line 1490
    move-object/from16 v10, v36

    .line 1491
    .line 1492
    array-length v0, v10

    .line 1493
    move-object/from16 v1, v22

    .line 1494
    .line 1495
    array-length v4, v1

    .line 1496
    if-ne v0, v4, :cond_2e

    .line 1497
    .line 1498
    array-length v0, v10

    .line 1499
    move-object/from16 v4, v20

    .line 1500
    .line 1501
    array-length v5, v4

    .line 1502
    if-ne v0, v5, :cond_2e

    .line 1503
    .line 1504
    iput-object v10, v9, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 1505
    .line 1506
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1507
    .line 1508
    .line 1509
    iput-object v1, v9, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 1510
    .line 1511
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1512
    .line 1513
    .line 1514
    iput-object v4, v9, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    .line 1515
    .line 1516
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1517
    .line 1518
    .line 1519
    goto :goto_23

    .line 1520
    :cond_2e
    const/4 v1, 0x0

    .line 1521
    iput-object v1, v9, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 1522
    .line 1523
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1524
    .line 1525
    .line 1526
    iput-object v1, v9, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 1527
    .line 1528
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1529
    .line 1530
    .line 1531
    iput-object v1, v9, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    .line 1532
    .line 1533
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1534
    .line 1535
    .line 1536
    :goto_23
    if-eqz v19, :cond_2f

    .line 1537
    .line 1538
    if-eqz v21, :cond_2f

    .line 1539
    .line 1540
    move-object/from16 v14, v19

    .line 1541
    .line 1542
    array-length v0, v14

    .line 1543
    move-object/from16 v1, v21

    .line 1544
    .line 1545
    array-length v4, v1

    .line 1546
    if-ne v0, v4, :cond_2f

    .line 1547
    .line 1548
    iput-object v14, v9, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 1549
    .line 1550
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1551
    .line 1552
    .line 1553
    iput-object v1, v9, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 1554
    .line 1555
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1556
    .line 1557
    .line 1558
    const/4 v7, 0x0

    .line 1559
    goto :goto_24

    .line 1560
    :cond_2f
    const/4 v7, 0x0

    .line 1561
    iput-object v7, v9, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 1562
    .line 1563
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1564
    .line 1565
    .line 1566
    iput-object v7, v9, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 1567
    .line 1568
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1569
    .line 1570
    .line 1571
    :goto_24
    iget v0, v9, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 1572
    .line 1573
    and-int/lit8 v0, v0, -0x2

    .line 1574
    .line 1575
    const/4 v1, 0x1

    .line 1576
    and-int/lit8 v4, v17, 0x1

    .line 1577
    .line 1578
    or-int/2addr v0, v4

    .line 1579
    iput v0, v9, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 1580
    .line 1581
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 1582
    .line 1583
    .line 1584
    iget v0, v9, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 1585
    .line 1586
    and-int/lit16 v0, v0, 0x200

    .line 1587
    .line 1588
    if-eqz v0, :cond_30

    .line 1589
    .line 1590
    move/from16 v0, v18

    .line 1591
    .line 1592
    or-int/lit16 v0, v0, 0x200

    .line 1593
    .line 1594
    goto :goto_25

    .line 1595
    :cond_30
    move/from16 v0, v18

    .line 1596
    .line 1597
    and-int/lit16 v0, v0, -0x201

    .line 1598
    .line 1599
    :goto_25
    invoke-virtual {v9, v0}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    .line 1600
    .line 1601
    .line 1602
    move-object v4, v9

    .line 1603
    :goto_26
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 1604
    .line 1605
    and-int/lit8 v1, v63, 0x4

    .line 1606
    .line 1607
    if-eqz v1, :cond_31

    .line 1608
    .line 1609
    const/4 v5, 0x1

    .line 1610
    :goto_27
    const/16 v6, 0x10

    .line 1611
    .line 1612
    goto :goto_28

    .line 1613
    :cond_31
    const/4 v5, 0x0

    .line 1614
    goto :goto_27

    .line 1615
    :goto_28
    and-int/lit8 v14, v63, 0x10

    .line 1616
    .line 1617
    if-eqz v14, :cond_32

    .line 1618
    .line 1619
    const/4 v6, 0x1

    .line 1620
    goto :goto_29

    .line 1621
    :cond_32
    const/4 v6, 0x0

    .line 1622
    :goto_29
    if-eqz v28, :cond_34

    .line 1623
    .line 1624
    :cond_33
    move-object/from16 v15, p0

    .line 1625
    .line 1626
    move-object/from16 v29, v2

    .line 1627
    .line 1628
    move-object/from16 v13, v34

    .line 1629
    .line 1630
    move-object/from16 v7, v70

    .line 1631
    .line 1632
    const/4 v12, 0x0

    .line 1633
    goto/16 :goto_33

    .line 1634
    .line 1635
    :cond_34
    const-string v9, "PersonaServiceHelper"

    .line 1636
    .line 1637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1638
    .line 1639
    .line 1640
    move-result-wide v10

    .line 1641
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v0

    .line 1645
    const/4 v12, 0x0

    .line 1646
    const/4 v13, 0x1

    .line 1647
    invoke-virtual {v0, v13, v12, v13}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1651
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1652
    .line 1653
    .line 1654
    goto :goto_2a

    .line 1655
    :catchall_0
    move-exception v0

    .line 1656
    goto/16 :goto_4f

    .line 1657
    .line 1658
    :catch_0
    move-exception v0

    .line 1659
    :try_start_1
    const-string/jumbo v12, "user manager exception "

    .line 1660
    .line 1661
    .line 1662
    invoke-static {v9, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1663
    .line 1664
    .line 1665
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1666
    .line 1667
    .line 1668
    move-object v0, v7

    .line 1669
    :goto_2a
    if-eqz v0, :cond_33

    .line 1670
    .line 1671
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v0

    .line 1675
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1676
    .line 1677
    .line 1678
    move-result v10

    .line 1679
    if-eqz v10, :cond_33

    .line 1680
    .line 1681
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1682
    .line 1683
    .line 1684
    move-result-object v10

    .line 1685
    check-cast v10, Landroid/content/pm/UserInfo;

    .line 1686
    .line 1687
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 1688
    .line 1689
    .line 1690
    move-result v11

    .line 1691
    move-object/from16 v15, p0

    .line 1692
    .line 1693
    iget-object v12, v15, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 1694
    .line 1695
    if-nez v11, :cond_36

    .line 1696
    .line 1697
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    .line 1698
    .line 1699
    .line 1700
    move-result v11

    .line 1701
    if-nez v11, :cond_36

    .line 1702
    .line 1703
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1704
    .line 1705
    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 1706
    .line 1707
    .line 1708
    move-result v11

    .line 1709
    if-eqz v11, :cond_35

    .line 1710
    .line 1711
    goto :goto_2c

    .line 1712
    :cond_35
    move-object/from16 v29, v2

    .line 1713
    .line 1714
    move-object/from16 v13, v34

    .line 1715
    .line 1716
    move-object/from16 v7, v70

    .line 1717
    .line 1718
    goto/16 :goto_2f

    .line 1719
    .line 1720
    :cond_36
    :goto_2c
    iget-object v11, v4, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 1721
    .line 1722
    const/4 v13, 0x1

    .line 1723
    invoke-static {v11, v13, v10}, Lcom/android/server/pm/PersonaServiceHelper;->containsPackage(Ljava/lang/String;ZLandroid/content/pm/UserInfo;)Z

    .line 1724
    .line 1725
    .line 1726
    move-result v11

    .line 1727
    if-eqz v11, :cond_37

    .line 1728
    .line 1729
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1730
    .line 1731
    invoke-virtual {v4, v11, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 1732
    .line 1733
    .line 1734
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1735
    .line 1736
    move-object/from16 v13, v34

    .line 1737
    .line 1738
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1739
    .line 1740
    .line 1741
    iget-object v7, v4, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 1742
    .line 1743
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    .line 1745
    .line 1746
    const-string v7, " is installed in "

    .line 1747
    .line 1748
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    .line 1750
    .line 1751
    iget v7, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1752
    .line 1753
    invoke-static {v11, v7, v9}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1754
    .line 1755
    .line 1756
    const/4 v7, 0x1

    .line 1757
    goto :goto_2d

    .line 1758
    :cond_37
    move-object/from16 v13, v34

    .line 1759
    .line 1760
    const/4 v7, 0x0

    .line 1761
    :goto_2d
    iget-object v11, v4, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 1762
    .line 1763
    move-object/from16 v29, v2

    .line 1764
    .line 1765
    const/4 v2, 0x0

    .line 1766
    invoke-static {v11, v2, v10}, Lcom/android/server/pm/PersonaServiceHelper;->containsPackage(Ljava/lang/String;ZLandroid/content/pm/UserInfo;)Z

    .line 1767
    .line 1768
    .line 1769
    move-result v11

    .line 1770
    if-eqz v11, :cond_38

    .line 1771
    .line 1772
    iget v7, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1773
    .line 1774
    invoke-virtual {v4, v7, v2}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 1775
    .line 1776
    .line 1777
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1778
    .line 1779
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1780
    .line 1781
    .line 1782
    iget-object v7, v4, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 1783
    .line 1784
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    .line 1786
    .line 1787
    const-string v7, " is uninstalled in "

    .line 1788
    .line 1789
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    .line 1791
    .line 1792
    iget v7, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1793
    .line 1794
    invoke-static {v2, v7, v9}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1795
    .line 1796
    .line 1797
    const/4 v7, 0x1

    .line 1798
    :cond_38
    invoke-interface/range {v71 .. v71}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v2

    .line 1802
    if-eqz v2, :cond_39

    .line 1803
    .line 1804
    invoke-interface/range {v71 .. v71}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isOverlayIsStatic()Z

    .line 1805
    .line 1806
    .line 1807
    move-result v2

    .line 1808
    if-eqz v2, :cond_39

    .line 1809
    .line 1810
    const-string v2, "android"

    .line 1811
    .line 1812
    invoke-interface/range {v71 .. v71}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getOverlayTarget()Ljava/lang/String;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v11

    .line 1816
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1817
    .line 1818
    .line 1819
    move-result v2

    .line 1820
    if-eqz v2, :cond_39

    .line 1821
    .line 1822
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1823
    .line 1824
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1825
    .line 1826
    .line 1827
    iget-object v7, v4, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 1828
    .line 1829
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    .line 1831
    .line 1832
    const-string v7, " is (system overlay package) skip trim in "

    .line 1833
    .line 1834
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    .line 1836
    .line 1837
    iget v7, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1838
    .line 1839
    invoke-static {v2, v7, v9}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1840
    .line 1841
    .line 1842
    const/4 v7, 0x1

    .line 1843
    :cond_39
    if-eqz v7, :cond_3a

    .line 1844
    .line 1845
    :goto_2e
    move-object/from16 v34, v13

    .line 1846
    .line 1847
    move-object/from16 v2, v29

    .line 1848
    .line 1849
    const/4 v7, 0x0

    .line 1850
    goto/16 :goto_2b

    .line 1851
    .line 1852
    :cond_3a
    if-eqz v70, :cond_3c

    .line 1853
    .line 1854
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1855
    .line 1856
    move-object/from16 v7, v70

    .line 1857
    .line 1858
    invoke-virtual {v2, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 1859
    .line 1860
    .line 1861
    move-result v2

    .line 1862
    if-eqz v2, :cond_3d

    .line 1863
    .line 1864
    if-eqz v12, :cond_3b

    .line 1865
    .line 1866
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1867
    .line 1868
    invoke-virtual {v12, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 1869
    .line 1870
    .line 1871
    move-result v2

    .line 1872
    const/4 v11, 0x1

    .line 1873
    if-ne v2, v11, :cond_3b

    .line 1874
    .line 1875
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1876
    .line 1877
    const-string v11, "if already installed, then don\'t trim it\n set true for persona "

    .line 1878
    .line 1879
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1880
    .line 1881
    .line 1882
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1883
    .line 1884
    invoke-static {v2, v11, v9}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1885
    .line 1886
    .line 1887
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1888
    .line 1889
    const/4 v11, 0x1

    .line 1890
    invoke-virtual {v4, v2, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 1891
    .line 1892
    .line 1893
    goto/16 :goto_2f

    .line 1894
    .line 1895
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1896
    .line 1897
    const-string v11, "in trim for persona "

    .line 1898
    .line 1899
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1900
    .line 1901
    .line 1902
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1903
    .line 1904
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1905
    .line 1906
    .line 1907
    const-string v11, " setting false "

    .line 1908
    .line 1909
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1910
    .line 1911
    .line 1912
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1913
    .line 1914
    .line 1915
    const-string v11, " "

    .line 1916
    .line 1917
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    .line 1919
    .line 1920
    iget-object v11, v4, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 1921
    .line 1922
    invoke-static {v2, v11, v9}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    .line 1924
    .line 1925
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1926
    .line 1927
    const/4 v11, 0x0

    .line 1928
    invoke-virtual {v4, v2, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 1929
    .line 1930
    .line 1931
    goto :goto_2f

    .line 1932
    :cond_3c
    move-object/from16 v7, v70

    .line 1933
    .line 1934
    :cond_3d
    if-eqz v5, :cond_3e

    .line 1935
    .line 1936
    if-nez v7, :cond_3e

    .line 1937
    .line 1938
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1939
    .line 1940
    const-string v11, "New installation & target user = null or all\n set false for persona "

    .line 1941
    .line 1942
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1943
    .line 1944
    .line 1945
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1946
    .line 1947
    invoke-static {v2, v11, v9}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1948
    .line 1949
    .line 1950
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1951
    .line 1952
    const/4 v11, 0x0

    .line 1953
    invoke-virtual {v4, v2, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 1954
    .line 1955
    .line 1956
    goto :goto_2f

    .line 1957
    :cond_3e
    if-eqz v6, :cond_41

    .line 1958
    .line 1959
    if-eqz v7, :cond_3f

    .line 1960
    .line 1961
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1962
    .line 1963
    invoke-virtual {v2, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 1964
    .line 1965
    .line 1966
    move-result v2

    .line 1967
    if-nez v2, :cond_3f

    .line 1968
    .line 1969
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    .line 1970
    .line 1971
    .line 1972
    move-result v2

    .line 1973
    if-eqz v2, :cond_41

    .line 1974
    .line 1975
    :cond_3f
    if-nez v12, :cond_40

    .line 1976
    .line 1977
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1978
    .line 1979
    const-string v11, "If no info about old packages trim it\n set false for persona "

    .line 1980
    .line 1981
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1982
    .line 1983
    .line 1984
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1985
    .line 1986
    invoke-static {v2, v11, v9}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1987
    .line 1988
    .line 1989
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1990
    .line 1991
    const/4 v11, 0x0

    .line 1992
    invoke-virtual {v4, v2, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 1993
    .line 1994
    .line 1995
    goto :goto_2f

    .line 1996
    :cond_40
    const/4 v11, 0x0

    .line 1997
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1998
    .line 1999
    invoke-virtual {v12, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 2000
    .line 2001
    .line 2002
    move-result v2

    .line 2003
    const/4 v11, 0x1

    .line 2004
    if-eq v2, v11, :cond_41

    .line 2005
    .line 2006
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2007
    .line 2008
    const-string v11, "if already not installed, then trim it\n set false for persona "

    .line 2009
    .line 2010
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2011
    .line 2012
    .line 2013
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    .line 2014
    .line 2015
    invoke-static {v2, v11, v9}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 2016
    .line 2017
    .line 2018
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 2019
    .line 2020
    const/4 v11, 0x0

    .line 2021
    invoke-virtual {v4, v2, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 2022
    .line 2023
    .line 2024
    :cond_41
    :goto_2f
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 2025
    .line 2026
    invoke-virtual {v4, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 2027
    .line 2028
    .line 2029
    move-result v2

    .line 2030
    if-nez v2, :cond_42

    .line 2031
    .line 2032
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 2033
    .line 2034
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 2035
    .line 2036
    .line 2037
    move-result v2

    .line 2038
    if-eqz v2, :cond_42

    .line 2039
    .line 2040
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 2041
    .line 2042
    invoke-static {v4, v2}, Lcom/android/server/pm/PersonaServiceHelper;->isRequiredAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z

    .line 2043
    .line 2044
    .line 2045
    move-result v2

    .line 2046
    if-eqz v2, :cond_42

    .line 2047
    .line 2048
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 2049
    .line 2050
    const/4 v11, 0x1

    .line 2051
    invoke-virtual {v4, v2, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 2052
    .line 2053
    .line 2054
    :cond_42
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 2055
    .line 2056
    invoke-virtual {v4, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 2057
    .line 2058
    .line 2059
    move-result v2

    .line 2060
    if-nez v2, :cond_43

    .line 2061
    .line 2062
    if-eqz v12, :cond_43

    .line 2063
    .line 2064
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 2065
    .line 2066
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 2067
    .line 2068
    .line 2069
    move-result v2

    .line 2070
    if-eqz v2, :cond_43

    .line 2071
    .line 2072
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 2073
    .line 2074
    invoke-static {v12, v2}, Lcom/android/server/pm/PersonaServiceHelper;->isRequiredAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z

    .line 2075
    .line 2076
    .line 2077
    move-result v2

    .line 2078
    if-eqz v2, :cond_43

    .line 2079
    .line 2080
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 2081
    .line 2082
    const/4 v11, 0x1

    .line 2083
    invoke-virtual {v4, v2, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 2084
    .line 2085
    .line 2086
    :cond_43
    if-eqz v12, :cond_44

    .line 2087
    .line 2088
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 2089
    .line 2090
    invoke-virtual {v12, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 2091
    .line 2092
    .line 2093
    move-result v2

    .line 2094
    if-eqz v2, :cond_44

    .line 2095
    .line 2096
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 2097
    .line 2098
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 2099
    .line 2100
    .line 2101
    move-result v2

    .line 2102
    if-nez v2, :cond_45

    .line 2103
    .line 2104
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 2105
    .line 2106
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 2107
    .line 2108
    .line 2109
    move-result v2

    .line 2110
    if-eqz v2, :cond_44

    .line 2111
    .line 2112
    goto :goto_30

    .line 2113
    :cond_44
    const/4 v12, 0x0

    .line 2114
    goto :goto_32

    .line 2115
    :cond_45
    :goto_30
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 2116
    .line 2117
    invoke-static {v4}, Lcom/android/server/pm/PersonaServiceHelper;->getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;

    .line 2118
    .line 2119
    .line 2120
    move-result-object v11

    .line 2121
    if-nez v11, :cond_46

    .line 2122
    .line 2123
    const/4 v12, 0x0

    .line 2124
    goto :goto_31

    .line 2125
    :cond_46
    iget-object v12, v4, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 2126
    .line 2127
    invoke-static {v2, v12, v11}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(ILjava/lang/String;Landroid/os/Bundle;)Z

    .line 2128
    .line 2129
    .line 2130
    move-result v12

    .line 2131
    :goto_31
    if-eqz v12, :cond_44

    .line 2132
    .line 2133
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    .line 2134
    .line 2135
    const/4 v12, 0x0

    .line 2136
    invoke-virtual {v4, v2, v12}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 2137
    .line 2138
    .line 2139
    :goto_32
    move-object/from16 v70, v7

    .line 2140
    .line 2141
    goto/16 :goto_2e

    .line 2142
    .line 2143
    :goto_33
    if-eqz v31, :cond_47

    .line 2144
    .line 2145
    if-eqz v72, :cond_47

    .line 2146
    .line 2147
    move-object/from16 v2, v72

    .line 2148
    .line 2149
    iget-object v0, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 2150
    .line 2151
    move-object/from16 v2, v71

    .line 2152
    .line 2153
    invoke-interface {v2, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2154
    .line 2155
    .line 2156
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2157
    .line 2158
    const-string v5, "New package "

    .line 2159
    .line 2160
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2161
    .line 2162
    .line 2163
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 2164
    .line 2165
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2166
    .line 2167
    .line 2168
    const-string v5, " renamed to replace old package "

    .line 2169
    .line 2170
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2171
    .line 2172
    .line 2173
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 2174
    .line 2175
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2176
    .line 2177
    .line 2178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2179
    .line 2180
    .line 2181
    move-result-object v0

    .line 2182
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2183
    .line 2184
    const/4 v5, 0x5

    .line 2185
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2186
    .line 2187
    .line 2188
    goto :goto_34

    .line 2189
    :cond_47
    move-object/from16 v2, v71

    .line 2190
    .line 2191
    :goto_34
    if-nez v7, :cond_48

    .line 2192
    .line 2193
    move v0, v12

    .line 2194
    goto :goto_35

    .line 2195
    :cond_48
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 2196
    .line 2197
    .line 2198
    move-result v0

    .line 2199
    :goto_35
    if-nez v31, :cond_4b

    .line 2200
    .line 2201
    move/from16 v5, v63

    .line 2202
    .line 2203
    and-int/lit16 v6, v5, 0x2000

    .line 2204
    .line 2205
    if-eqz v6, :cond_49

    .line 2206
    .line 2207
    const/4 v6, 0x1

    .line 2208
    goto :goto_36

    .line 2209
    :cond_49
    move v6, v12

    .line 2210
    :goto_36
    and-int/lit16 v7, v5, 0x4000

    .line 2211
    .line 2212
    move-object/from16 v9, p1

    .line 2213
    .line 2214
    if-eqz v7, :cond_4a

    .line 2215
    .line 2216
    move-object/from16 v11, v35

    .line 2217
    .line 2218
    const/4 v7, 0x1

    .line 2219
    goto :goto_37

    .line 2220
    :cond_4a
    move v7, v12

    .line 2221
    move-object/from16 v11, v35

    .line 2222
    .line 2223
    :goto_37
    invoke-static {v9, v4, v0, v6, v7}, Lcom/android/server/pm/ScanPackageUtils;->setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V

    .line 2224
    .line 2225
    .line 2226
    goto :goto_38

    .line 2227
    :cond_4b
    move-object/from16 v9, p1

    .line 2228
    .line 2229
    move-object/from16 v11, v35

    .line 2230
    .line 2231
    move/from16 v5, v63

    .line 2232
    .line 2233
    :goto_38
    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 2234
    .line 2235
    if-nez v8, :cond_4c

    .line 2236
    .line 2237
    if-eqz v1, :cond_4d

    .line 2238
    .line 2239
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 2240
    .line 2241
    .line 2242
    move-result v7

    .line 2243
    if-eqz v7, :cond_4d

    .line 2244
    .line 2245
    :cond_4c
    const/4 v7, 0x1

    .line 2246
    invoke-virtual {v6, v7}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)V

    .line 2247
    .line 2248
    .line 2249
    :cond_4d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    .line 2250
    .line 2251
    .line 2252
    move-result-object v7

    .line 2253
    move-object/from16 v8, v68

    .line 2254
    .line 2255
    invoke-static {v4, v2, v8, v7}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/compat/PlatformCompat;)Ljava/lang/String;

    .line 2256
    .line 2257
    .line 2258
    move-result-object v7

    .line 2259
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2260
    .line 2261
    .line 2262
    invoke-static {v7}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    .line 2263
    .line 2264
    .line 2265
    move-result-object v7

    .line 2266
    iput-object v7, v6, Lcom/android/server/pm/pkg/PackageStateUnserialized;->seInfo:Ljava/lang/String;

    .line 2267
    .line 2268
    iget-object v7, v6, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    .line 2269
    .line 2270
    invoke-virtual {v7}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 2271
    .line 2272
    .line 2273
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 2274
    .line 2275
    .line 2276
    move-result v7

    .line 2277
    if-eqz v7, :cond_56

    .line 2278
    .line 2279
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 2280
    .line 2281
    .line 2282
    move-result-object v7

    .line 2283
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 2284
    .line 2285
    .line 2286
    move-result-object v8

    .line 2287
    iget-object v7, v7, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    .line 2288
    .line 2289
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2290
    .line 2291
    .line 2292
    move-result-object v7

    .line 2293
    check-cast v7, Landroid/util/ArrayMap;

    .line 2294
    .line 2295
    if-nez v7, :cond_4e

    .line 2296
    .line 2297
    goto/16 :goto_3d

    .line 2298
    .line 2299
    :cond_4e
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    .line 2300
    .line 2301
    .line 2302
    move-result-object v8

    .line 2303
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 2304
    .line 2305
    .line 2306
    move-result v8

    .line 2307
    const/4 v9, 0x1

    .line 2308
    sub-int/2addr v8, v9

    .line 2309
    :goto_39
    if-ltz v8, :cond_50

    .line 2310
    .line 2311
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    .line 2312
    .line 2313
    .line 2314
    move-result-object v9

    .line 2315
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2316
    .line 2317
    .line 2318
    move-result-object v9

    .line 2319
    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 2320
    .line 2321
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    .line 2322
    .line 2323
    .line 2324
    move-result-object v10

    .line 2325
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2326
    .line 2327
    .line 2328
    move-result-object v10

    .line 2329
    check-cast v10, Ljava/lang/Boolean;

    .line 2330
    .line 2331
    if-eqz v10, :cond_4f

    .line 2332
    .line 2333
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2334
    .line 2335
    .line 2336
    move-result v10

    .line 2337
    invoke-static {v9, v10}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 2338
    .line 2339
    .line 2340
    :cond_4f
    const/4 v9, -0x1

    .line 2341
    add-int/2addr v8, v9

    .line 2342
    goto :goto_39

    .line 2343
    :cond_50
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    .line 2344
    .line 2345
    .line 2346
    move-result-object v8

    .line 2347
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 2348
    .line 2349
    .line 2350
    move-result v8

    .line 2351
    const/4 v9, 0x1

    .line 2352
    sub-int/2addr v8, v9

    .line 2353
    :goto_3a
    if-ltz v8, :cond_52

    .line 2354
    .line 2355
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    .line 2356
    .line 2357
    .line 2358
    move-result-object v9

    .line 2359
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2360
    .line 2361
    .line 2362
    move-result-object v9

    .line 2363
    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 2364
    .line 2365
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    .line 2366
    .line 2367
    .line 2368
    move-result-object v10

    .line 2369
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2370
    .line 2371
    .line 2372
    move-result-object v10

    .line 2373
    check-cast v10, Ljava/lang/Boolean;

    .line 2374
    .line 2375
    if-eqz v10, :cond_51

    .line 2376
    .line 2377
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2378
    .line 2379
    .line 2380
    move-result v10

    .line 2381
    invoke-static {v9, v10}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 2382
    .line 2383
    .line 2384
    :cond_51
    const/4 v9, -0x1

    .line 2385
    add-int/2addr v8, v9

    .line 2386
    goto :goto_3a

    .line 2387
    :cond_52
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 2388
    .line 2389
    .line 2390
    move-result-object v8

    .line 2391
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 2392
    .line 2393
    .line 2394
    move-result v8

    .line 2395
    const/4 v9, 0x1

    .line 2396
    sub-int/2addr v8, v9

    .line 2397
    :goto_3b
    if-ltz v8, :cond_54

    .line 2398
    .line 2399
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 2400
    .line 2401
    .line 2402
    move-result-object v9

    .line 2403
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2404
    .line 2405
    .line 2406
    move-result-object v9

    .line 2407
    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 2408
    .line 2409
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    .line 2410
    .line 2411
    .line 2412
    move-result-object v10

    .line 2413
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    .line 2415
    .line 2416
    move-result-object v10

    .line 2417
    check-cast v10, Ljava/lang/Boolean;

    .line 2418
    .line 2419
    if-eqz v10, :cond_53

    .line 2420
    .line 2421
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2422
    .line 2423
    .line 2424
    move-result v10

    .line 2425
    invoke-static {v9, v10}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 2426
    .line 2427
    .line 2428
    :cond_53
    const/4 v9, -0x1

    .line 2429
    add-int/2addr v8, v9

    .line 2430
    goto :goto_3b

    .line 2431
    :cond_54
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    .line 2432
    .line 2433
    .line 2434
    move-result-object v8

    .line 2435
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 2436
    .line 2437
    .line 2438
    move-result v8

    .line 2439
    const/4 v9, 0x1

    .line 2440
    sub-int/2addr v8, v9

    .line 2441
    :goto_3c
    if-ltz v8, :cond_56

    .line 2442
    .line 2443
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    .line 2444
    .line 2445
    .line 2446
    move-result-object v9

    .line 2447
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2448
    .line 2449
    .line 2450
    move-result-object v9

    .line 2451
    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 2452
    .line 2453
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedService;->getName()Ljava/lang/String;

    .line 2454
    .line 2455
    .line 2456
    move-result-object v10

    .line 2457
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2458
    .line 2459
    .line 2460
    move-result-object v10

    .line 2461
    check-cast v10, Ljava/lang/Boolean;

    .line 2462
    .line 2463
    if-eqz v10, :cond_55

    .line 2464
    .line 2465
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2466
    .line 2467
    .line 2468
    move-result v10

    .line 2469
    invoke-static {v9, v10}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 2470
    .line 2471
    .line 2472
    :cond_55
    const/4 v9, -0x1

    .line 2473
    add-int/2addr v8, v9

    .line 2474
    goto :goto_3c

    .line 2475
    :cond_56
    :goto_3d
    sget-boolean v7, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 2476
    .line 2477
    const-string v7, "-"

    .line 2478
    .line 2479
    iget-object v8, v15, Lcom/android/server/pm/ScanRequest;->mCpuAbiOverride:Ljava/lang/String;

    .line 2480
    .line 2481
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2482
    .line 2483
    .line 2484
    move-result v7

    .line 2485
    if-eqz v7, :cond_57

    .line 2486
    .line 2487
    const/4 v7, 0x0

    .line 2488
    goto :goto_3e

    .line 2489
    :cond_57
    move-object v7, v8

    .line 2490
    :goto_3e
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 2491
    .line 2492
    .line 2493
    move-result v10

    .line 2494
    iget-boolean v6, v6, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 2495
    .line 2496
    new-instance v9, Ljava/io/File;

    .line 2497
    .line 2498
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 2499
    .line 2500
    .line 2501
    move-result-object v8

    .line 2502
    const-string v12, "app-lib"

    .line 2503
    .line 2504
    invoke-direct {v9, v8, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2505
    .line 2506
    .line 2507
    if-nez v23, :cond_5f

    .line 2508
    .line 2509
    if-nez v1, :cond_5a

    .line 2510
    .line 2511
    if-eqz v27, :cond_59

    .line 2512
    .line 2513
    move/from16 v16, v14

    .line 2514
    .line 2515
    const-wide/32 v14, 0x40000

    .line 2516
    .line 2517
    .line 2518
    const-string v8, "derivePackageAbi"

    .line 2519
    .line 2520
    invoke-static {v14, v15, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2521
    .line 2522
    .line 2523
    move-object/from16 v8, v26

    .line 2524
    .line 2525
    move-object v12, v9

    .line 2526
    move-object v9, v2

    .line 2527
    move/from16 p1, v10

    .line 2528
    .line 2529
    move-object/from16 v76, v11

    .line 2530
    .line 2531
    const/16 v17, 0x0

    .line 2532
    .line 2533
    move v11, v6

    .line 2534
    move-object/from16 v18, v12

    .line 2535
    .line 2536
    move-object v12, v7

    .line 2537
    move-object/from16 v20, v13

    .line 2538
    .line 2539
    move-object/from16 v77, v29

    .line 2540
    .line 2541
    move-object/from16 v78, v33

    .line 2542
    .line 2543
    const/16 v19, 0x8

    .line 2544
    .line 2545
    move-object/from16 v13, v18

    .line 2546
    .line 2547
    :try_start_2
    invoke-interface/range {v8 .. v13}, Lcom/android/server/pm/PackageAbiHelper;->derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;

    .line 2548
    .line 2549
    .line 2550
    move-result-object v8

    .line 2551
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2552
    .line 2553
    check-cast v9, Lcom/android/server/pm/PackageAbiHelper$Abis;

    .line 2554
    .line 2555
    iget-object v10, v9, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    .line 2556
    .line 2557
    invoke-interface {v2, v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2558
    .line 2559
    .line 2560
    move-result-object v10

    .line 2561
    iget-object v9, v9, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    .line 2562
    .line 2563
    invoke-interface {v10, v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2564
    .line 2565
    .line 2566
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 2567
    .line 2568
    check-cast v8, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    .line 2569
    .line 2570
    invoke-virtual {v8, v2}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2571
    .line 2572
    .line 2573
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 2574
    .line 2575
    .line 2576
    move-object v15, v2

    .line 2577
    check-cast v15, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 2578
    .line 2579
    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 2580
    .line 2581
    .line 2582
    move-result-object v8

    .line 2583
    move/from16 v13, p1

    .line 2584
    .line 2585
    if-eqz v13, :cond_58

    .line 2586
    .line 2587
    if-nez v6, :cond_58

    .line 2588
    .line 2589
    if-nez v8, :cond_58

    .line 2590
    .line 2591
    move-object/from16 v12, v26

    .line 2592
    .line 2593
    invoke-interface {v12, v2}, Lcom/android/server/pm/PackageAbiHelper;->getBundledAppAbis(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    .line 2594
    .line 2595
    .line 2596
    move-result-object v8

    .line 2597
    iget-object v9, v8, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    .line 2598
    .line 2599
    invoke-interface {v2, v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2600
    .line 2601
    .line 2602
    move-result-object v10

    .line 2603
    iget-object v8, v8, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    .line 2604
    .line 2605
    invoke-interface {v10, v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2606
    .line 2607
    .line 2608
    iput-object v9, v4, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 2609
    .line 2610
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 2611
    .line 2612
    .line 2613
    iput-object v8, v4, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 2614
    .line 2615
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 2616
    .line 2617
    .line 2618
    move-object/from16 v14, v18

    .line 2619
    .line 2620
    invoke-interface {v12, v2, v13, v6, v14}, Lcom/android/server/pm/PackageAbiHelper;->deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    .line 2621
    .line 2622
    .line 2623
    move-result-object v6

    .line 2624
    invoke-virtual {v6, v2}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    .line 2625
    .line 2626
    .line 2627
    goto :goto_3f

    .line 2628
    :cond_58
    move-object/from16 v12, v26

    .line 2629
    .line 2630
    :goto_3f
    move-object/from16 v6, p0

    .line 2631
    .line 2632
    move-object/from16 v30, v3

    .line 2633
    .line 2634
    move-object v15, v12

    .line 2635
    move v3, v13

    .line 2636
    goto/16 :goto_41

    .line 2637
    .line 2638
    :catchall_1
    move-exception v0

    .line 2639
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 2640
    .line 2641
    .line 2642
    throw v0

    .line 2643
    :cond_59
    move-object/from16 v76, v11

    .line 2644
    .line 2645
    move-object/from16 v20, v13

    .line 2646
    .line 2647
    move/from16 v16, v14

    .line 2648
    .line 2649
    move-object/from16 v11, v25

    .line 2650
    .line 2651
    move-object/from16 v12, v26

    .line 2652
    .line 2653
    move-object/from16 v77, v29

    .line 2654
    .line 2655
    move-object/from16 v78, v33

    .line 2656
    .line 2657
    const/16 v17, 0x0

    .line 2658
    .line 2659
    const/16 v19, 0x8

    .line 2660
    .line 2661
    move-object v14, v9

    .line 2662
    move v13, v10

    .line 2663
    invoke-interface {v2, v11}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2664
    .line 2665
    .line 2666
    move-result-object v8

    .line 2667
    move-object/from16 v9, v24

    .line 2668
    .line 2669
    invoke-interface {v8, v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2670
    .line 2671
    .line 2672
    invoke-interface {v12, v2, v13, v6, v14}, Lcom/android/server/pm/PackageAbiHelper;->deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    .line 2673
    .line 2674
    .line 2675
    move-result-object v6

    .line 2676
    invoke-virtual {v6, v2}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    .line 2677
    .line 2678
    .line 2679
    goto :goto_3f

    .line 2680
    :cond_5a
    move-object/from16 v76, v11

    .line 2681
    .line 2682
    move-object/from16 v20, v13

    .line 2683
    .line 2684
    move/from16 v16, v14

    .line 2685
    .line 2686
    move-object/from16 v12, v26

    .line 2687
    .line 2688
    move-object/from16 v77, v29

    .line 2689
    .line 2690
    move-object/from16 v78, v33

    .line 2691
    .line 2692
    const/16 v17, 0x0

    .line 2693
    .line 2694
    const/16 v19, 0x8

    .line 2695
    .line 2696
    move-object v14, v9

    .line 2697
    move v13, v10

    .line 2698
    and-int/lit16 v8, v5, 0x100

    .line 2699
    .line 2700
    if-eqz v8, :cond_5c

    .line 2701
    .line 2702
    iget-object v8, v4, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 2703
    .line 2704
    invoke-interface {v2, v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2705
    .line 2706
    .line 2707
    move-result-object v8

    .line 2708
    iget-object v9, v4, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 2709
    .line 2710
    invoke-interface {v8, v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2711
    .line 2712
    .line 2713
    :cond_5b
    move-object/from16 v30, v3

    .line 2714
    .line 2715
    move-object v15, v12

    .line 2716
    move v3, v13

    .line 2717
    goto :goto_40

    .line 2718
    :cond_5c
    invoke-static {v2}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 2719
    .line 2720
    .line 2721
    move-result v8

    .line 2722
    if-eqz v8, :cond_5b

    .line 2723
    .line 2724
    move-object v8, v12

    .line 2725
    move-object v9, v2

    .line 2726
    move v10, v13

    .line 2727
    move v11, v6

    .line 2728
    move-object v15, v12

    .line 2729
    move-object v12, v7

    .line 2730
    move-object/from16 v30, v3

    .line 2731
    .line 2732
    move v3, v13

    .line 2733
    move-object v13, v14

    .line 2734
    invoke-interface/range {v8 .. v13}, Lcom/android/server/pm/PackageAbiHelper;->derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;

    .line 2735
    .line 2736
    .line 2737
    move-result-object v8

    .line 2738
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2739
    .line 2740
    check-cast v9, Lcom/android/server/pm/PackageAbiHelper$Abis;

    .line 2741
    .line 2742
    iget-object v10, v9, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    .line 2743
    .line 2744
    invoke-interface {v2, v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2745
    .line 2746
    .line 2747
    move-result-object v10

    .line 2748
    iget-object v9, v9, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    .line 2749
    .line 2750
    invoke-interface {v10, v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2751
    .line 2752
    .line 2753
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 2754
    .line 2755
    check-cast v8, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    .line 2756
    .line 2757
    invoke-virtual {v8, v2}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    .line 2758
    .line 2759
    .line 2760
    :goto_40
    invoke-interface {v15, v2, v3, v6, v14}, Lcom/android/server/pm/PackageAbiHelper;->deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    .line 2761
    .line 2762
    .line 2763
    move-result-object v6

    .line 2764
    invoke-virtual {v6, v2}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    .line 2765
    .line 2766
    .line 2767
    move-object/from16 v6, p0

    .line 2768
    .line 2769
    :goto_41
    iget-boolean v8, v6, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    .line 2770
    .line 2771
    if-eqz v8, :cond_5e

    .line 2772
    .line 2773
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 2774
    .line 2775
    .line 2776
    move-result-object v8

    .line 2777
    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->is64Bit()Z

    .line 2778
    .line 2779
    .line 2780
    move-result v8

    .line 2781
    if-eqz v8, :cond_5d

    .line 2782
    .line 2783
    sget-object v8, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 2784
    .line 2785
    aget-object v8, v8, v17

    .line 2786
    .line 2787
    goto :goto_42

    .line 2788
    :cond_5d
    sget-object v8, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 2789
    .line 2790
    aget-object v8, v8, v17

    .line 2791
    .line 2792
    :goto_42
    invoke-interface {v2, v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2793
    .line 2794
    .line 2795
    :cond_5e
    :goto_43
    const/4 v8, 0x1

    .line 2796
    goto :goto_44

    .line 2797
    :cond_5f
    move-object/from16 v30, v3

    .line 2798
    .line 2799
    move v3, v10

    .line 2800
    move-object/from16 v76, v11

    .line 2801
    .line 2802
    move-object/from16 v20, v13

    .line 2803
    .line 2804
    move/from16 v16, v14

    .line 2805
    .line 2806
    move-object v6, v15

    .line 2807
    move-object/from16 v15, v26

    .line 2808
    .line 2809
    move-object/from16 v77, v29

    .line 2810
    .line 2811
    move-object/from16 v78, v33

    .line 2812
    .line 2813
    const/16 v17, 0x0

    .line 2814
    .line 2815
    const/16 v19, 0x8

    .line 2816
    .line 2817
    goto :goto_43

    .line 2818
    :goto_44
    and-int/lit8 v9, v5, 0x1

    .line 2819
    .line 2820
    if-nez v9, :cond_60

    .line 2821
    .line 2822
    if-eqz v1, :cond_60

    .line 2823
    .line 2824
    if-nez v7, :cond_60

    .line 2825
    .line 2826
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2827
    .line 2828
    const-string v8, "Ignoring persisted ABI override for package "

    .line 2829
    .line 2830
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2831
    .line 2832
    .line 2833
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 2834
    .line 2835
    .line 2836
    move-result-object v8

    .line 2837
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2838
    .line 2839
    .line 2840
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2841
    .line 2842
    .line 2843
    move-result-object v1

    .line 2844
    move-object/from16 v8, v77

    .line 2845
    .line 2846
    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    .line 2848
    .line 2849
    goto :goto_45

    .line 2850
    :cond_60
    move-object/from16 v8, v77

    .line 2851
    .line 2852
    :goto_45
    move-object v1, v2

    .line 2853
    check-cast v1, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 2854
    .line 2855
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 2856
    .line 2857
    .line 2858
    move-result-object v9

    .line 2859
    iput-object v9, v4, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 2860
    .line 2861
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 2862
    .line 2863
    .line 2864
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getSecondaryCpuAbi()Ljava/lang/String;

    .line 2865
    .line 2866
    .line 2867
    move-result-object v1

    .line 2868
    iput-object v1, v4, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 2869
    .line 2870
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 2871
    .line 2872
    .line 2873
    iput-object v7, v4, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 2874
    .line 2875
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 2876
    .line 2877
    .line 2878
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    .line 2879
    .line 2880
    .line 2881
    move-result-object v1

    .line 2882
    iput-object v1, v4, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 2883
    .line 2884
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 2885
    .line 2886
    .line 2887
    if-nez v16, :cond_61

    .line 2888
    .line 2889
    if-eqz v62, :cond_61

    .line 2890
    .line 2891
    move-object/from16 v1, v62

    .line 2892
    .line 2893
    iget-object v7, v1, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 2894
    .line 2895
    iget-object v7, v7, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 2896
    .line 2897
    invoke-interface {v15, v7, v2}, Lcom/android/server/pm/PackageAbiHelper;->getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    .line 2898
    .line 2899
    .line 2900
    move-result-object v7

    .line 2901
    invoke-static {v1, v2, v7}, Lcom/android/server/pm/ScanPackageUtils;->applyAdjustedAbiToSharedUser(Lcom/android/server/pm/SharedUserSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)Ljava/util/List;

    .line 2902
    .line 2903
    .line 2904
    :cond_61
    if-eqz p2, :cond_62

    .line 2905
    .line 2906
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 2907
    .line 2908
    .line 2909
    move-result-object v1

    .line 2910
    const-string v7, "android.permission.FACTORY_TEST"

    .line 2911
    .line 2912
    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2913
    .line 2914
    .line 2915
    move-result v1

    .line 2916
    if-eqz v1, :cond_62

    .line 2917
    .line 2918
    const/4 v11, 0x1

    .line 2919
    goto :goto_46

    .line 2920
    :cond_62
    move/from16 v11, v17

    .line 2921
    .line 2922
    :goto_46
    invoke-interface {v2, v11}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setFactoryTest(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2923
    .line 2924
    .line 2925
    if-eqz v3, :cond_64

    .line 2926
    .line 2927
    iget-object v1, v4, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 2928
    .line 2929
    iget-boolean v3, v1, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    .line 2930
    .line 2931
    const/4 v7, 0x1

    .line 2932
    if-ne v7, v3, :cond_63

    .line 2933
    .line 2934
    goto :goto_47

    .line 2935
    :cond_63
    iget-object v3, v1, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    .line 2936
    .line 2937
    iget v10, v1, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    .line 2938
    .line 2939
    iget-object v12, v1, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 2940
    .line 2941
    iget-object v13, v1, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 2942
    .line 2943
    iget-object v14, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 2944
    .line 2945
    iget v9, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    .line 2946
    .line 2947
    iget-object v15, v1, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 2948
    .line 2949
    iget-boolean v11, v1, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    .line 2950
    .line 2951
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 2952
    .line 2953
    move/from16 v18, v11

    .line 2954
    .line 2955
    move-object v11, v1

    .line 2956
    move-object/from16 v16, v3

    .line 2957
    .line 2958
    move/from16 v17, v7

    .line 2959
    .line 2960
    invoke-static/range {v9 .. v18}, Lcom/android/server/pm/InstallSource;->createInternal(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    .line 2961
    .line 2962
    .line 2963
    move-result-object v1

    .line 2964
    :goto_47
    iput-object v1, v4, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 2965
    .line 2966
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 2967
    .line 2968
    .line 2969
    :cond_64
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isDebuggable()Z

    .line 2970
    .line 2971
    .line 2972
    move-result v1

    .line 2973
    const/16 v3, 0x20

    .line 2974
    .line 2975
    invoke-virtual {v4, v3, v1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 2976
    .line 2977
    .line 2978
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 2979
    .line 2980
    .line 2981
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseRevisionCode()I

    .line 2982
    .line 2983
    .line 2984
    move-result v1

    .line 2985
    iput v1, v4, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    .line 2986
    .line 2987
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 2988
    .line 2989
    .line 2990
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->getLastModifiedTime(Lcom/android/server/pm/pkg/AndroidPackage;)J

    .line 2991
    .line 2992
    .line 2993
    move-result-wide v9

    .line 2994
    const/4 v1, -0x1

    .line 2995
    if-ne v0, v1, :cond_65

    .line 2996
    .line 2997
    iget-object v1, v4, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 2998
    .line 2999
    invoke-static {v1}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    .line 3000
    .line 3001
    .line 3002
    move-result-wide v11

    .line 3003
    goto :goto_48

    .line 3004
    :cond_65
    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 3005
    .line 3006
    .line 3007
    move-result-object v1

    .line 3008
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    .line 3009
    .line 3010
    .line 3011
    move-result-wide v11

    .line 3012
    :goto_48
    const-wide/16 v13, 0x0

    .line 3013
    .line 3014
    move-object/from16 v77, v8

    .line 3015
    .line 3016
    move-wide/from16 v7, p3

    .line 3017
    .line 3018
    cmp-long v1, v7, v13

    .line 3019
    .line 3020
    if-eqz v1, :cond_67

    .line 3021
    .line 3022
    cmp-long v1, v11, v13

    .line 3023
    .line 3024
    if-nez v1, :cond_66

    .line 3025
    .line 3026
    invoke-virtual {v4, v0, v7, v8}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(IJ)V

    .line 3027
    .line 3028
    .line 3029
    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V

    .line 3030
    .line 3031
    .line 3032
    goto :goto_49

    .line 3033
    :cond_66
    and-int/lit8 v0, v5, 0x8

    .line 3034
    .line 3035
    if-eqz v0, :cond_69

    .line 3036
    .line 3037
    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V

    .line 3038
    .line 3039
    .line 3040
    goto :goto_49

    .line 3041
    :cond_67
    cmp-long v1, v11, v13

    .line 3042
    .line 3043
    if-nez v1, :cond_68

    .line 3044
    .line 3045
    invoke-virtual {v4, v0, v9, v10}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(IJ)V

    .line 3046
    .line 3047
    .line 3048
    invoke-virtual {v4, v9, v10}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V

    .line 3049
    .line 3050
    .line 3051
    goto :goto_49

    .line 3052
    :cond_68
    iget v0, v6, Lcom/android/server/pm/ScanRequest;->mParseFlags:I

    .line 3053
    .line 3054
    const/16 v1, 0x10

    .line 3055
    .line 3056
    and-int/2addr v0, v1

    .line 3057
    if-eqz v0, :cond_69

    .line 3058
    .line 3059
    iget-wide v0, v4, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 3060
    .line 3061
    cmp-long v0, v9, v0

    .line 3062
    .line 3063
    if-eqz v0, :cond_69

    .line 3064
    .line 3065
    invoke-virtual {v4, v9, v10}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V

    .line 3066
    .line 3067
    .line 3068
    :cond_69
    :goto_49
    iput-wide v9, v4, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 3069
    .line 3070
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 3071
    .line 3072
    .line 3073
    move-object v15, v2

    .line 3074
    check-cast v15, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 3075
    .line 3076
    iput-object v15, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 3077
    .line 3078
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 3079
    .line 3080
    .line 3081
    invoke-static {v2, v4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    .line 3082
    .line 3083
    .line 3084
    move-result v0

    .line 3085
    iput v0, v4, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 3086
    .line 3087
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 3088
    .line 3089
    .line 3090
    invoke-static {v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I

    .line 3091
    .line 3092
    .line 3093
    move-result v0

    .line 3094
    invoke-virtual {v4, v0}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    .line 3095
    .line 3096
    .line 3097
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    .line 3098
    .line 3099
    .line 3100
    move-result-wide v0

    .line 3101
    iget-wide v7, v4, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 3102
    .line 3103
    cmp-long v0, v0, v7

    .line 3104
    .line 3105
    if-eqz v0, :cond_6a

    .line 3106
    .line 3107
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    .line 3108
    .line 3109
    .line 3110
    move-result-wide v0

    .line 3111
    iput-wide v0, v4, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 3112
    .line 3113
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 3114
    .line 3115
    .line 3116
    :cond_6a
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getVolumeUuid()Ljava/lang/String;

    .line 3117
    .line 3118
    .line 3119
    move-result-object v0

    .line 3120
    iget-object v1, v4, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 3121
    .line 3122
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3123
    .line 3124
    .line 3125
    move-result v1

    .line 3126
    if-nez v1, :cond_6c

    .line 3127
    .line 3128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3129
    .line 3130
    move-object/from16 v3, v76

    .line 3131
    .line 3132
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3133
    .line 3134
    .line 3135
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 3136
    .line 3137
    .line 3138
    move-result v3

    .line 3139
    if-eqz v3, :cond_6b

    .line 3140
    .line 3141
    move-object/from16 v3, v32

    .line 3142
    .line 3143
    goto :goto_4a

    .line 3144
    :cond_6b
    move-object/from16 v3, v20

    .line 3145
    .line 3146
    :goto_4a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3147
    .line 3148
    .line 3149
    move-object/from16 v3, v78

    .line 3150
    .line 3151
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3152
    .line 3153
    .line 3154
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 3155
    .line 3156
    .line 3157
    move-result-object v3

    .line 3158
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3159
    .line 3160
    .line 3161
    const-string v3, " volume from "

    .line 3162
    .line 3163
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3164
    .line 3165
    .line 3166
    iget-object v3, v4, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 3167
    .line 3168
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3169
    .line 3170
    .line 3171
    move-object/from16 v3, v30

    .line 3172
    .line 3173
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3174
    .line 3175
    .line 3176
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3177
    .line 3178
    .line 3179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3180
    .line 3181
    .line 3182
    move-result-object v1

    .line 3183
    move-object/from16 v3, v77

    .line 3184
    .line 3185
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    .line 3187
    .line 3188
    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 3189
    .line 3190
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 3191
    .line 3192
    .line 3193
    :cond_6c
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibraryName()Ljava/lang/String;

    .line 3194
    .line 3195
    .line 3196
    move-result-object v0

    .line 3197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3198
    .line 3199
    .line 3200
    move-result v0

    .line 3201
    if-nez v0, :cond_6d

    .line 3202
    .line 3203
    new-instance v0, Landroid/content/pm/SharedLibraryInfo;

    .line 3204
    .line 3205
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 3206
    .line 3207
    .line 3208
    move-result-object v9

    .line 3209
    invoke-static {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    .line 3210
    .line 3211
    .line 3212
    move-result-object v10

    .line 3213
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    .line 3214
    .line 3215
    .line 3216
    move-result-object v11

    .line 3217
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    .line 3218
    .line 3219
    .line 3220
    move-result v1

    .line 3221
    int-to-long v12, v1

    .line 3222
    new-instance v15, Landroid/content/pm/VersionedPackage;

    .line 3223
    .line 3224
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    .line 3225
    .line 3226
    .line 3227
    move-result-object v1

    .line 3228
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 3229
    .line 3230
    .line 3231
    move-result-wide v7

    .line 3232
    invoke-direct {v15, v1, v7, v8}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 3233
    .line 3234
    .line 3235
    const/16 v17, 0x0

    .line 3236
    .line 3237
    const/16 v18, 0x0

    .line 3238
    .line 3239
    const/4 v8, 0x0

    .line 3240
    const/4 v14, 0x3

    .line 3241
    const/16 v16, 0x0

    .line 3242
    .line 3243
    move-object v7, v0

    .line 3244
    invoke-direct/range {v7 .. v18}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 3245
    .line 3246
    .line 3247
    move-object v5, v0

    .line 3248
    goto :goto_4b

    .line 3249
    :cond_6d
    const/4 v5, 0x0

    .line 3250
    :goto_4b
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 3251
    .line 3252
    .line 3253
    move-result-object v0

    .line 3254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3255
    .line 3256
    .line 3257
    move-result v0

    .line 3258
    if-nez v0, :cond_6e

    .line 3259
    .line 3260
    new-instance v0, Landroid/content/pm/SharedLibraryInfo;

    .line 3261
    .line 3262
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 3263
    .line 3264
    .line 3265
    move-result-object v9

    .line 3266
    invoke-static {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    .line 3267
    .line 3268
    .line 3269
    move-result-object v10

    .line 3270
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 3271
    .line 3272
    .line 3273
    move-result-object v11

    .line 3274
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    .line 3275
    .line 3276
    .line 3277
    move-result-wide v12

    .line 3278
    new-instance v15, Landroid/content/pm/VersionedPackage;

    .line 3279
    .line 3280
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    .line 3281
    .line 3282
    .line 3283
    move-result-object v1

    .line 3284
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 3285
    .line 3286
    .line 3287
    move-result-wide v7

    .line 3288
    invoke-direct {v15, v1, v7, v8}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 3289
    .line 3290
    .line 3291
    const/16 v17, 0x0

    .line 3292
    .line 3293
    const/16 v18, 0x0

    .line 3294
    .line 3295
    const/4 v8, 0x0

    .line 3296
    const/4 v14, 0x2

    .line 3297
    const/16 v16, 0x0

    .line 3298
    .line 3299
    move-object v7, v0

    .line 3300
    invoke-direct/range {v7 .. v18}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 3301
    .line 3302
    .line 3303
    goto :goto_4c

    .line 3304
    :cond_6e
    const/4 v0, 0x0

    .line 3305
    :goto_4c
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    .line 3306
    .line 3307
    .line 3308
    move-result-object v1

    .line 3309
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 3310
    .line 3311
    .line 3312
    move-result v1

    .line 3313
    if-nez v1, :cond_70

    .line 3314
    .line 3315
    new-instance v1, Ljava/util/ArrayList;

    .line 3316
    .line 3317
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    .line 3318
    .line 3319
    .line 3320
    move-result-object v3

    .line 3321
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 3322
    .line 3323
    .line 3324
    move-result v3

    .line 3325
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3326
    .line 3327
    .line 3328
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    .line 3329
    .line 3330
    .line 3331
    move-result-object v3

    .line 3332
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 3333
    .line 3334
    .line 3335
    move-result-object v3

    .line 3336
    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 3337
    .line 3338
    .line 3339
    move-result v7

    .line 3340
    if-eqz v7, :cond_6f

    .line 3341
    .line 3342
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3343
    .line 3344
    .line 3345
    move-result-object v7

    .line 3346
    move-object v12, v7

    .line 3347
    check-cast v12, Ljava/lang/String;

    .line 3348
    .line 3349
    new-instance v7, Landroid/content/pm/SharedLibraryInfo;

    .line 3350
    .line 3351
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 3352
    .line 3353
    .line 3354
    move-result-object v10

    .line 3355
    invoke-static {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    .line 3356
    .line 3357
    .line 3358
    move-result-object v11

    .line 3359
    new-instance v15, Landroid/content/pm/VersionedPackage;

    .line 3360
    .line 3361
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 3362
    .line 3363
    .line 3364
    move-result-object v8

    .line 3365
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 3366
    .line 3367
    .line 3368
    move-result-wide v13

    .line 3369
    invoke-direct {v15, v8, v13, v14}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 3370
    .line 3371
    .line 3372
    const/16 v18, 0x0

    .line 3373
    .line 3374
    const/16 v19, 0x0

    .line 3375
    .line 3376
    const/4 v9, 0x0

    .line 3377
    const-wide/16 v13, -0x1

    .line 3378
    .line 3379
    const/16 v16, 0x1

    .line 3380
    .line 3381
    const/16 v17, 0x0

    .line 3382
    .line 3383
    move-object v8, v7

    .line 3384
    move-object/from16 v20, v15

    .line 3385
    .line 3386
    move/from16 v15, v16

    .line 3387
    .line 3388
    move-object/from16 v16, v20

    .line 3389
    .line 3390
    invoke-direct/range {v8 .. v19}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 3391
    .line 3392
    .line 3393
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3394
    .line 3395
    .line 3396
    goto :goto_4d

    .line 3397
    :cond_6f
    move-object v7, v1

    .line 3398
    goto :goto_4e

    .line 3399
    :cond_70
    const/4 v7, 0x0

    .line 3400
    :goto_4e
    new-instance v8, Lcom/android/server/pm/ScanResult;

    .line 3401
    .line 3402
    const/4 v1, 0x1

    .line 3403
    xor-int/lit8 v9, v31, 0x1

    .line 3404
    .line 3405
    move-object v1, v8

    .line 3406
    move-object/from16 v2, p0

    .line 3407
    .line 3408
    move-object v3, v4

    .line 3409
    move v4, v9

    .line 3410
    move-object v6, v0

    .line 3411
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ScanResult;-><init>(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageSetting;ZLandroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;Ljava/util/List;)V

    .line 3412
    .line 3413
    .line 3414
    return-object v8

    .line 3415
    :goto_4f
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3416
    .line 3417
    .line 3418
    throw v0
.end method

.method public static setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V
    .locals 6

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    if-nez p4, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eq p2, v2, :cond_2

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    if-eqz p4, :cond_5

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_5

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    array-length p2, p0

    .line 70
    move v2, v3

    .line 71
    :goto_0
    if-ge v2, p2, :cond_5

    .line 72
    .line 73
    aget v4, p0, v2

    .line 74
    .line 75
    if-eqz p3, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v4, v1, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    if-eqz p4, :cond_4

    .line 98
    .line 99
    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_4

    .line 104
    .line 105
    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4, v1, v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 116
    .line 117
    .line 118
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_5
    :goto_2
    return-void
.end method
